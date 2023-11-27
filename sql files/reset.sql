DELETE FROM Songs;
DELETE FROM Albums;
DELETE FROM Artists;
DELETE FROM Users;
DELETE FROM Frequency_heard;


-- Artists Data
INSERT INTO Artists (Artist_Id, Artist_Name, Total_albums, Total_songs) VALUES
(1, 'Taylor Swift', 9, 89),
(2, 'Ed Sheeran', 6, 65),
(3, 'Beyoncé', 6, 76),
(4, 'Drake', 5, 63),
(5, 'Ariana Grande', 5, 45),
(6, 'Kanye West', 8, 97),
(7, 'Rihanna', 8, 73),
(8, 'Justin Bieber', 7, 68),
(9, 'Eminem', 11, 150),
(10, 'Lady Gaga', 6, 57),
(11, 'Jay-Z', 13, 134),
(12, 'Katy Perry', 5, 42),
(13, 'The Weeknd', 4, 40),
(14, 'Cardi B', 1, 15),
(15, 'Bruno Mars', 3, 33),
(16, 'Shawn Mendes', 4, 38),
(17, 'Adele', 3, 30),
(18, 'Travis Scott', 4, 42),
(19, 'Sia', 9, 85),
(20, 'Post Malone', 4, 40),
(21, 'Dua Lipa', 2, 20),
(22, 'Harry Styles', 2, 22),
(23, 'Nicki Minaj', 4, 45),
(24, 'Chris Brown', 9, 110),
(25, 'Lizzo', 1, 12),
(26, 'Sam Smith', 3, 28),
(27, 'Megan Thee Stallion', 1, 10),
(28, 'John Legend', 7, 60),
(29, 'G-Eazy', 5, 55),
(30, 'Lana Del Rey', 6, 50),
(31, 'Logic', 6, 70),
(32, 'Janelle Monáe', 4, 38),
(33, 'Halsey', 3, 25),
(34, 'Zayn Malik', 2, 18),
(35, 'Khalid', 2, 22),
(36, 'Imagine Dragons', 4, 40),
(37, 'Miley Cyrus', 7, 68),
(38, 'Maroon 5', 7, 75),
(39, 'Alicia Keys', 6, 55),
(40, 'Childish Gambino', 3, 30),
(41, 'Charlie Puth', 2, 18),
(42, 'Twenty One Pilots', 5, 45),
(43, 'Shakira', 11, 90),
(44, 'Billie Eilish', 1, 14),
(45, 'Fetty Wap', 2, 22),
(46, 'Shania Twain', 5, 40),
(47, 'Justin Timberlake', 4, 42),
(48, 'Linkin Park', 7, 60),
(49, 'Blake Shelton', 12, 110),
(50, 'Queen', 15, 150);

-- Albums data
INSERT INTO Albums (Album_Id, Title, Artist_Id, Duration, Release_Date, No_of_tracks, Genre) VALUES
(1, '1989', 1, '00:48:41', '2014-10-27', 13, 'Pop'),
(2, '÷ (Divide)', 2, '00:46:14', '2017-03-03', 12, 'Pop'),
(3, 'Lemonade', 3, '00:45:42', '2016-04-23', 12, 'R&B'),
(4, 'Scorpion', 4, '01:30:09', '2018-06-29', 25, 'Hip-Hop'),
(5, 'Dangerous Woman', 5, '00:39:40', '2016-05-20', 15, 'Pop'),
(6, 'My Beautiful Dark Twisted Fantasy', 6, '01:08:08', '2010-11-22', 13, 'Hip-Hop'),
(7, 'Anti', 7, '00:54:54', '2016-01-28', 16, 'R&B'),
(8, 'Purpose', 8, '00:48:46', '2015-11-13', 13, 'Pop'),
(9, 'The Marshall Mathers LP', 9, '01:18:51', '2000-05-23', 18, 'Hip-Hop'),
(10, 'The Fame', 10, '00:49:59', '2008-08-19', 12, 'Pop'),
(11, '1984', 1, '00:33:34', '1984-10-22', 9, 'Pop'),
(12, 'Multiply', 2, '00:50:20', '2014-06-23', 16, 'Pop'),
(13, '4:44', 11, '00:36:11', '2017-06-30', 10, 'Hip-Hop'),
(14, 'More Life', 4, '01:21:55', '2017-03-18', 22, 'Hip-Hop'),
(15, 'Sweetener', 5, '00:47:25', '2018-08-17', 15, 'Pop'),
(16, 'Yeezus', 6, '00:40:01', '2013-06-18', 10, 'Hip-Hop'),
(17, 'Talk That Talk', 7, '00:37:18', '2011-11-18', 11, 'R&B'),
(18, 'Believe', 8, '00:48:24', '2012-06-15', 13, 'Pop'),
(19, 'Recovery', 9, '01:16:25', '2010-06-18', 17, 'Hip-Hop'),
(20, 'Joanne', 10, '00:39:02', '2016-10-21', 11, 'Pop'),
(21, 'Starboy', 13, '01:08:40', '2016-11-25', 18, 'R&B'),
(22, 'In The Lonely Hour', 26, '00:54:54', '2014-05-26', 10, 'Pop'),
(23, 'Good News', 31, '00:49:05', '2020-11-10', 16, 'Hip-Hop'),
(24, 'Love Is An Art', 32, '00:44:30', '2020-03-20', 13, 'Pop'),
(25, '25', 17, '00:48:26', '2015-11-20', 11, 'Pop'),
(26, 'Astroworld', 18, '00:58:31', '2018-08-03', 17, 'Hip-Hop'),
(27, 'This Is Acting', 19, '00:46:38', '2016-01-29', 12, 'Pop'),
(28, 'Hollywood Bleeding', 20, '00:51:38', '2019-09-06', 17, 'Hip-Hop'),
(29, 'Future Nostalgia', 21, '00:37:16', '2020-03-27', 11, 'Pop'),
(30, 'Harry Styles', 22, '00:46:31', '2017-05-12', 10, 'Pop'),
(31, 'Happier Than Ever', 44, '00:56:43', '2021-07-30', 16, 'Pop'),
(32, 'Fetty Wap', 45, '01:01:29', '2015-09-25', 20, 'Hip-Hop'),
(33, 'Up All Night', 46, '00:45:24', '2011-11-18', 13, 'Pop'),
(34, 'Manic', 33, '00:47:52', '2020-01-17', 16, 'Pop'),
(35, 'Rodeo', 18, '01:05:23', '2015-09-04', 16, 'Hip-Hop'),
(36, 'Norman Fucking Rockwell!', 30, '01:07:18', '2019-08-30', 14, 'Pop'),
(37, 'Cuz I Love You', 25, '00:33:47', '2019-04-19', 11, 'R&B'),
(38, 'Fine Line', 22, '00:47:29', '2019-12-13', 12, 'Pop'),
(39, 'Divinely Uninspired to a Hellish Extent', 26, '00:50:30', '2019-05-17', 12, 'Pop'),
(40, 'K.T.S.E.', 28, '00:22:37', '2018-06-22', 8, 'R&B'),
(41, 'Unapologetically', 37, '00:43:08', '2017-11-03', 13, 'Country'),
(42, 'Songs About Jane', 38, '00:46:38', '2002-06-25', 12, 'Pop'),
(43, 'The Diary of Alicia Keys', 39, '00:57:56', '2003-12-01', 15, 'R&B'),
(44, 'Kamikaze', 9, '00:45:06', '2018-08-31', 13, 'Hip-Hop'),
(45, 'Rainbow', 40, '00:52:48', '1999-11-02', 13, 'Pop'),
(46, 'Hozier', 41, '00:53:34', '2014-09-19', 13, 'Rock'),
(47, 'Currents', 42, '00:51:08', '2015-07-17', 13, 'Psychedelic Rock'),
(48, 'High Off Life', 29, '01:13:09', '2020-05-15', 21, 'Hip-Hop'),
(49, 'folklore', 43, '01:03:07', '2020-07-24', 16, 'Indie Folk'),
(50, 'Take Care', 4, '01:20:19', '2011-11-15', 19, 'Hip-Hop'),
(51, 'Golden Hour', 47, '00:45:46', '2018-03-30', 13, 'Country'),
(52, 'Hot Pink', 27, '00:30:56', '2019-11-07', 12, 'Hip-Hop'),
(53, 'The College Dropout', 6, '01:16:34', '2004-02-10', 21, 'Hip-Hop'),
(54, 'Thank U, Next', 5, '00:41:30', '2019-02-08', 12, 'Pop'),
(55, 'Views', 4, '01:21:19', '2016-04-29', 20, 'Hip-Hop'),
(56, 'Reputation', 1, '00:55:38', '2017-11-10', 15, 'Pop'),
(57, 'Good Kid, M.A.A.D City', 11, '01:08:22', '2012-10-22', 12, 'Hip-Hop'),
(58, '21', 25, '00:48:12', '2011-01-24', 12, 'Pop'),
(59, 'Invasion of Privacy', 14, '00:48:15', '2018-04-06', 13, 'Hip-Hop'),
(60, '24k Magic', 15, '00:33:32', '2016-11-18', 9, 'Pop'),
(61, 'Ctrl', 27, '00:45:07', '2017-06-09', 14, 'R&B'),
(62, 'Red', 1, '01:19:45', '2012-10-22', 16, 'Pop'),
(63, 'The Life of Pablo', 6, '01:06:01', '2016-02-14', 20, 'Hip-Hop'),
(64, 'Unorthodox Jukebox', 15, '00:34:22', '2012-12-07', 10, 'Pop'),
(65, 'Birds in the Trap Sing McKnight', 18, '00:53:38', '2016-09-02', 14, 'Hip-Hop'),
(66, 'Witness', 12, '00:57:45', '2017-06-09', 15, 'Pop'),
(67, 'Revival', 24, '01:17:47', '2017-12-15', 19, 'Hip-Hop'),
(68, 'Honeymoon', 30, '01:05:29', '2015-09-18', 14, 'Indie Pop'),
(69, 'Kaleidoscope EP', 10, '00:24:34', '2017-07-14', 5, 'Pop'),
(70, 'DS2', 29, '01:11:17', '2015-07-17', 18, 'Hip-Hop'),
(71, 'Sweetener', 5, '00:47:25', '2018-08-17', 15, 'Pop'),
(72, 'Yeezus', 6, '00:40:01', '2013-06-18', 10, 'Hip-Hop'),
(73, 'Talk That Talk', 7, '00:37:18', '2011-11-18', 11, 'R&B'),
(74, 'Believe', 8, '00:48:24', '2012-06-15', 13, 'Pop'),
(75, 'Recovery', 9, '01:16:25', '2010-06-18', 17, 'Hip-Hop'),
(76, 'Joanne', 10, '00:39:02', '2016-10-21', 11, 'Pop'),
(77, 'In The Lonely Hour', 26, '00:54:54', '2014-05-26', 10, 'Pop'),
(78, 'Good News', 31, '00:49:05', '2020-11-10', 16, 'Hip-Hop'),
(79, 'Love Is An Art', 32, '00:44:30', '2020-03-20', 13, 'Pop');

INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(1, 1, 'Welcome to New York', '00:03:32', 800),
(1, 2, 'Blank Space', '00:03:51', 950),
(1, 3, 'Style', '00:03:51', 700),
(1, 4, 'Out of the Woods', '00:03:55', 900),
(1, 5, 'All You Had to Do Was Stay', '00:03:13', 800),
(1, 6, 'Shake It Off', '00:03:39', 950),
(1, 7, 'Bad Blood', '00:03:31', 1200),
(1, 8, 'Wildest Dreams', '00:03:40', 900),
(1, 9, 'How You Get the Girl', '00:04:07', 850),
(1, 10, 'Clean', '00:04:31', 800),
(1, 11, 'This Love', '00:04:10', 700),
(1, 12, 'I Know Places', '00:03:15', 900),
(1, 13, 'Wonderland', '00:04:05', 950);

-- Songs for Album 8 (÷)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(2, 1, 'Eraser', '00:03:47', 800),
(2, 2, 'Castle on the Hill', '00:04:21', 1000),
(2, 3, 'Dive', '00:03:58', 900),
(2, 4, 'Shape of You', '00:03:53', 1500),
(2, 5, 'Perfect', '00:04:23', 1200),
(2, 6, 'Galway Girl', '00:02:50', 1000),
(2, 7, 'Happier', '00:03:27', 1200),
(2, 8, 'New Man', '00:03:09', 900),
(2, 9, 'Hearts Dont Break Around Here', '00:04:08', 1100),
(2, 10, 'Supermarket Flowers', '00:03:41', 800),
(2, 11, 'Barcelona', '00:03:11', 950),
(2, 12, 'Bibia Be Ye Ye', '00:02:56', 700);

INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(3, 1, 'Pray You Catch Me', '00:03:15', 700),
(3, 2, 'Hold Up', '00:03:41', 800),
(3, 3, 'Dont Hurt Yourself', '00:03:54', 600),
(3, 4, 'Sorry', '00:03:53', 900),
(3, 5, 'Formation', '00:03:26', 1000),
(3, 6, '6 Inch', '00:04:20', 700),
(3, 7, 'Daddy Lessons', '00:04:48', 850),
(3, 8, 'Love Drought', '00:03:57', 900),
(3, 9, 'Sandcastles', '00:03:03', 800),
(3, 10, 'All Night', '00:05:22', 950),
(3, 11, 'Hold Up', '00:03:41', 800),
(3, 12, 'Freedom', '00:04:50', 700);

-- Songs for Album 4 (Scorpion)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(4, 1, 'Survival', '00:04:32', 800),
(4, 2, 'Nonstop', '00:03:58', 1200),
(4, 3, 'Gods Plan', '00:03:18', 1500),
(4, 4, 'Im Upset', '00:03:34', 1000),
(4, 5, 'In My Feelings', '00:03:38', 1300),
(4, 6, 'Elevate', '00:03:04', 1000),
(4, 7, 'Emotionless', '00:05:02', 1200),
(4, 8, '8 Out of 10', '00:03:16', 1100),
(4, 9, 'Mob Ties', '00:03:25', 900),
(4, 10, 'Cant Take a Joke', '00:02:43', 850),
(4, 11, 'Sandras Rose', '00:03:04', 800),
(4, 12, 'Talk Up', '00:03:43', 950),
(4, 13, 'Is There More', '00:03:46', 1000),
(4, 14, 'Peak', '00:03:26', 700),
(4, 15, 'Summer Games', '00:04:07', 850),
(4, 16, 'Jaded', '00:04:22', 900),
(4, 17, 'Nice for What', '00:03:31', 1200),
(4, 18, 'Finesse', '00:03:02', 1000),
(4, 19, 'Ratchet Happy Birthday', '00:03:26', 1100),
(4, 20, 'Thats How You Feel', '00:02:39', 950),
(4, 21, 'Blue Tint', '00:02:42', 800),
(4, 22, 'In My Feelings', '00:03:37', 900),
(4, 23, 'Dont Matter to Me', '00:04:05', 1000),
(4, 24, 'After Dark', '00:04:50', 700),
(4, 25, 'Final Fantasy', '00:03:40', 800);
-- Add more songs for Album 4 if needed...

INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(5, 1, 'Moonlight', '00:03:22', 700),
(5, 2, 'Dangerous Woman', '00:03:55', 900),
(5, 3, 'Be Alright', '00:02:59', 800),
(5, 4, 'Into You', '00:04:04', 1100),
(5, 5, 'Side to Side', '00:03:46', 1200),
(5, 6, 'Everyday', '00:03:13', 700),
(5, 7, 'Sometimes', '00:03:46', 850),
(5, 8, 'Bad Decisions', '00:03:58', 900),
(5, 9, 'Touch It', '00:04:20', 800),
(5, 10, 'Knew Better / Forever Boy', '00:04:59', 950),
(5, 11, 'Thinking Bout You', '00:03:20', 1000),
(5, 12, 'Focus', '00:03:31', 750),
(5, 13, 'Step On Up', '00:03:01', 850),
(5, 14, 'Jasons Song (Gave It Away)', '00:04:25', 900),
(5, 15, 'I Dont Care', '00:02:58', 800);

-- Songs for Album 6 (My Beautiful Dark Twisted Fantasy)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(6, 1, 'Dark Fantasy', '00:04:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 2, 'Gorgeous', '00:05:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 3, 'POWER', '00:04:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 4, 'All of the Lights (Interlude)', '00:01:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 5, 'All of the Lights', '00:04:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 6, 'Monster', '00:06:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 7, 'So Appalled', '00:06:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 8, 'Devil in a New Dress', '00:05:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 9, 'Runaway', '00:09:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 10, 'Hell of a Life', '00:05:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 11, 'Blame Game', '00:07:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 12, 'Lost in the World', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(6, 13, 'Who Will Survive in America', '00:01:38', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 7 (Anti)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(7, 1, 'Consideration', '00:02:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 2, 'James Joint', '00:01:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 3, 'Kiss It Better', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 4, 'Work', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 5, 'Desperado', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 6, 'Woo', '00:03:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 7, 'Needed Me', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 8, 'Yeah, I Said It', '00:02:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 9, 'Same Ol’ Mistakes', '00:06:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 10, 'Never Ending', '00:03:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 11, 'Love on the Brain', '00:03:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 12, 'Higher', '00:02:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 13, 'Close to You', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 14, 'Goodnight Gotham', '00:01:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 15, 'Pose', '00:02:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(7, 16, 'Sex with Me', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 8 (Purpose)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(8, 1, 'Mark My Words', '00:02:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 2, 'Ill Show You', '00:03:19', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 3, 'What Do You Mean?', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 4, 'Sorry', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 5, 'Love Yourself', '00:03:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 6, 'Company', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 7, 'No Pressure', '00:04:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 8, 'No Sense', '00:04:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 9, 'The Feeling', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 10, 'Life Is Worth Living', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 11, 'Where Are Ü Now', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 12, 'Children', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(8, 13, 'Purpose', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 9 (The Marshall Mathers LP)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(9, 1, 'Public Service Announcement 2000', '00:00:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 2, 'Kill You', '00:04:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 3, 'Stan', '00:06:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 4, 'Paul (Skit)', '00:00:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 5, 'Who Knew', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 6, 'The Way I Am', '00:04:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 7, 'The Real Slim Shady', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 8, 'Remember Me?', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 9, 'Im Back', '00:05:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 10, 'Marshall Mathers', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 11, 'Ken Kaniff (Skit)', '00:01:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 12, 'Drug Ballad', '00:05:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 13, 'Amityville', '00:04:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 14, 'Bitch Please II', '00:04:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 15, 'Kim', '00:06:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 16, 'Under the Influence', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 17, 'Criminal', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(9, 18, 'The Kids', '00:05:06', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 10 (The Fame)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(10, 1, 'Just Dance', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 2, 'LoveGame', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 3, 'Paparazzi', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 4, 'Poker Face', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 5, 'Eh, Eh (Nothing Else I Can Say)', '00:02:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 6, 'Beautiful, Dirty, Rich', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 7, 'The Fame', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 8, 'Money Honey', '00:02:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 9, 'Starstruck', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 10, 'Boys Boys Boys', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 11, 'Paper Gangsta', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(10, 12, 'Brown Eyes', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 11 (1984)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(11, 1, '1984', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 2, 'Jump', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 3, 'Panama', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 4, 'Top Jimmy', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 5, 'Drop Dead Legs', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 6, 'Hot for Teacher', '00:04:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 7, 'Ill Wait', '00:04:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 8, 'Girl Gone Bad', '00:04:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(11, 9, 'House of Pain', '00:03:19', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 12 (Multiply)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(12, 1, 'One', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 2, 'I’m Not the Only One', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 3, 'Stay With Me', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 4, 'Leave Your Lover', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 5, 'I Know I’m Not the Only One', '00:04:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 6, 'Like I Can', '00:02:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 7, 'Restart', '00:03:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 8, 'Lay Me Down', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 9, 'Money on My Mind', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 10, 'Have Yourself a Merry Little Christmas', '00:02:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 11, 'Do They Know It’s Christmas? - Live from Spotify London', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 12, 'Latch (Acoustic)', '00:03:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 13, 'Make It to Me', '00:02:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 14, 'Drowning Shadows', '00:04:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 15, 'Love Is a Losing Game', '00:02:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(12, 16, 'Nirvana', '00:03:22', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 13 (4:44)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(13, 1, 'Kill Jay Z', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 2, 'The Story of O.J.', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 3, 'Smile', '00:04:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 4, 'Caught Their Eyes', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 5, '4:44', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 6, 'Family Feud', '00:04:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 7, 'Bam', '00:03:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 8, 'Moonlight', '00:02:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 9, 'Marcy Me', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(13, 10, 'Legacy', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 14 (More Life)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(14, 1, 'Free Smoke', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 2, 'No Long Talk', '00:02:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 3, 'Passionfruit', '00:04:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 4, 'Jorja Interlude', '00:01:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 5, 'Get It Together', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 6, 'Madiba Riddim', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 7, 'Blem', '00:03:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 8, '4422', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 9, 'Gyalchester', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 10, 'Skepta Interlude', '00:02:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 11, 'Portland', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 12, 'Sacrifices', '00:04:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 13, 'Nothings Into Somethings', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 14, 'Teenage Fever', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 15, 'KMT', '00:02:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 16, 'Lose You', '00:05:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 17, 'Can’t Have Everything', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 18, 'Glow', '00:05:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 19, 'Since Way Back', '00:06:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 20, 'Fake Love', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 21, 'Ice Melts', '00:04:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(14, 22, 'Do Not Disturb', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 15 (Sweetener)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(15, 1, 'raindrops (an angel cried)', '00:00:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 2, 'blazed', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 3, 'the light is coming', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 4, 'R.E.M', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 5, 'God is a woman', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 6, 'sweetener', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 7, 'successful', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 8, 'everytime', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 9, 'breathin', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 10, 'no tears left to cry', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 11, 'borderline', '00:02:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 12, 'better off', '00:02:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 13, 'goodnight n go', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 14, 'pete davidson', '00:01:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(15, 15, 'get well soon', '00:05:22', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 16 (Yeezus)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(16, 1, 'On Sight', '00:02:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 2, 'Black Skinhead', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 3, 'I Am a God', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 4, 'New Slaves', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 5, 'Hold My Liquor', '00:05:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 6, 'I’m In It', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 7, 'Blood On The Leaves', '00:06:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 8, 'Guilt Trip', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 9, 'Send It Up', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(16, 10, 'Bound 2', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 17 (Talk That Talk)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(17, 1, 'You Da One', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 2, 'Where Have You Been', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 3, 'We Found Love', '00:03:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 4, 'Talk That Talk', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 5, 'Cockiness (Love It)', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 6, 'Birthday Cake', '00:01:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 7, 'We All Want Love', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 8, 'Drunk on Love', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 9, 'Roc Me Out', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 10, 'Watch n Learn', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(17, 11, 'Farewell', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 18 (Believe)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(18, 1, 'All Around the World', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 2, 'Boyfriend', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 3, 'As Long As You Love Me', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 4, 'Catching Feelings', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 5, 'Take You', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 6, 'Right Here', '00:03:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 7, 'Fall', '00:04:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 8, 'Die in Your Arms', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 9, 'Thought of You', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 10, 'Beauty and a Beat', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 11, 'One Love', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 12, 'Be Alright', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(18, 13, 'Believe', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 19 (Recovery)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(19, 1, 'Cold Wind Blows', '00:05:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 2, 'Talkin 2 Myself', '00:05:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 3, 'On Fire', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 4, 'Wont Back Down', '00:04:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 5, 'W.T.P.', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 6, 'Going Through Changes', '00:04:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 7, 'Not Afraid', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 8, 'Seduction', '00:04:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 9, 'No Love', '00:04:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 10, 'Space Bound', '00:04:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 11, 'Cinderella Man', '00:04:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 12, '25 to Life', '00:04:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 13, 'So Bad', '00:05:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 14, 'Almost Famous', '00:04:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 15, 'Love the Way You Lie', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 16, 'You’re Never Over', '00:05:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(19, 17, 'Untitled', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 20 (Joanne)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(20, 1, 'Diamond Heart', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 2, 'A-Yo', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 3, 'Joanne', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 4, 'John Wayne', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 5, 'Dancin in Circles', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 6, 'Perfect Illusion', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 7, 'Million Reasons', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 8, 'Sinners Prayer', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 9, 'Come to Mama', '00:04:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 10, 'Hey Girl', '00:04:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(20, 11, 'Angel Down', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 21 (Starboy)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(21, 1, 'Starboy', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 2, 'Party Monster', '00:04:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 3, 'False Alarm', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 4, 'Reminder', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 5, 'Rockin', '00:03:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 6, 'Secrets', '00:04:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 7, 'True Colors', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 8, 'Stargirl Interlude', '00:01:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 9, 'Sidewalks', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 10, 'Six Feet Under', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 11, 'Love to Lay', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 12, 'A Lonely Night', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 13, 'Attention', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 14, 'Ordinary Life', '00:03:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 15, 'Nothing Without You', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 16, 'All I Know', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 17, 'Die for You', '00:04:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(21, 18, 'I Feel It Coming', '00:04:29', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 22 (In The Lonely Hour)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(22, 1, 'Money On My Mind', '00:03:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 2, 'Good Thing', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 3, 'Stay With Me', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 4, 'Leave Your Lover', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 5, 'Im Not The Only One', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 6, 'Ive Told You Now', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 7, 'Like I Can', '00:02:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 8, 'Life Support', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 9, 'Not In That Way', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(22, 10, 'Lay Me Down', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 23 (Good News)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(23, 1, 'Good News', '00:05:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 2, 'Happy Birthday', '00:05:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 3, 'Come Back to Earth', '00:02:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 4, 'Hurt Feelings', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 5, 'Whats the Use?', '00:04:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 6, 'Perfecto', '00:03:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 7, 'Self Care', '00:05:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 8, 'Wings', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 9, 'Ladders', '00:04:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 10, 'Small Worlds', '00:04:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 11, 'Conversation Pt. 1', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 12, 'Dunno', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 13, 'Jet Fuel', '00:05:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 14, '2009', '00:05:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 15, 'So It Goes', '00:04:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(23, 16, 'Ascension', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 24 (Love Is An Art)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(24, 1, 'Love Is An Art', '00:04:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 2, 'Bad Woman', '00:03:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 3, 'Delirium', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 4, 'Summer Fellas', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 5, 'Wasted On You', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 6, 'Thief', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 7, 'Prisoner', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 8, 'Just Watch Me', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 9, 'Vengeance', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 10, 'Only Love', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 11, 'Wolves', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 12, 'Save Myself', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(24, 13, 'Another Life', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 25
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(25, 1, 'Hello', '00:04:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 2, 'Send My Love (To Your New Lover)', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 3, 'I Miss You', '00:05:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 4, 'When We Were Young', '00:04:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 5, 'Remedy', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 6, 'Water Under the Bridge', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 7, 'River Lea', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 8, 'Love in the Dark', '00:04:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 9, 'Million Years Ago', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 10, 'All I Ask', '00:04:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(25, 11, 'Sweetest Devotion', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 26 (Astroworld)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(26, 1, 'STARGAZING', '00:04:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 2, 'CAROUSEL', '00:03:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 3, 'SICKO MODE', '00:05:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 4, 'R.I.P. SCREW', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 5, 'STOP TRYING TO BE GOD', '00:05:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 6, 'NO BYSTANDERS', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 7, 'SKELETONS', '00:02:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 8, 'WAKE UP', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 9, '5% TINT', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 10, 'NC-17', '00:02:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 11, 'ASTROTHUNDER', '00:02:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 12, 'YOSEMITE', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 13, 'CANT SAY', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 14, 'WHO? WHAT!', '00:02:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 16, 'STARGAZING (Extended)', '00:05:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(26, 17, 'Astrothunder (Reprise)', '00:02:08', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 27 (This Is Acting)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(27, 1, 'Bird Set Free', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 2, 'Alive', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 3, 'One Million Bullets', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 4, 'Move Your Body', '00:04:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 5, 'Unstoppable', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 6, 'Cheap Thrills', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 7, 'Reaper', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 8, 'House on Fire', '00:04:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 9, 'Footprints', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 10, 'Sweet Design', '00:02:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 11, 'Broken Glass', '00:04:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(27, 12, 'Space Between', '00:04:48', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 28 (Hollywood Bleeding)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(28, 1, 'Hollywood Bleeding', '00:02:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 2, 'Saint-Tropez', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 3, 'Enemies', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 4, 'Allergic', '00:02:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 5, 'A Thousand Bad Times', '00:03:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 6, 'Circles', '00:03:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 7, 'Die for Me', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 8, 'On the Road', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 9, 'Take What You Want', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 10, 'Im Gonna Be', '00:03:19', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 11, 'Staring at the Sun', '00:02:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 12, 'Sunflower', '00:02:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 13, 'Internet', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 14, 'Goodbyes', '00:02:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 15, 'Myself', '00:02:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 16, 'I Know', '00:02:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(28, 17, 'Wow', '00:02:29', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 29 (Future Nostalgia)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(29, 1, 'Future Nostalgia', '00:03:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 2, 'Dont Start Now', '00:03:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 3, 'Cool', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 4, 'Physical', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 5, 'Levitating', '00:03:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 6, 'Pretty Please', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 7, 'Hallucinate', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 8, 'Love Again', '00:04:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 9, 'Break My Heart', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 10, 'Good in Bed', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(29, 11, 'Boys Will Be Boys', '00:02:46', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 30 (Harry Styles)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(30, 1, 'Meet Me in the Hallway', '00:02:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 2, 'Sign of the Times', '00:05:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 3, 'Carolina', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 4, 'Two Ghosts', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 5, 'Sweet Creature', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 6, 'Only Angel', '00:04:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 7, 'Kiwi', '00:02:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 8, 'Ever Since New York', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 9, 'Woman', '00:04:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(30, 10, 'From the Dining Table', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 31 (Happier Than Ever)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(31, 1, 'Getting Older', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 2, 'I Didn’t Change My Number', '00:02:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 3, 'Billie Bossa Nova', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 4, 'my future', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 5, 'Oxytocin', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 6, 'GOLDWING', '00:02:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 7, 'Lost Cause', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 8, 'Halley’s Comet', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 9, 'Not My Responsibility', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 10, 'Overheated', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 11, 'Everybody Dies', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 12, 'Your Power', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 13, 'NDA', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 14, 'Therefore I Am', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 15, 'Happier Than Ever', '00:04:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(31, 16, 'Male Fantasy', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 32 (Fetty Wap)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(32, 1, 'Trap Queen', '00:04:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 2, 'How We Do Things', '00:04:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 3, '679', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 4, 'Jugg', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 5, 'Trap Luv', '00:04:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 6, 'I Wonder', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 7, 'Again', '00:05:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 8, 'My Way', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 9, 'Time', '00:04:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 10, 'Boomin', '00:03:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 11, 'RGF Island', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 12, 'D.A.M. (Dats All Me)', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 13, 'No Days Off', '00:03:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 14, 'Im Straight', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 15, 'Couple Bands', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 16, 'Rock My Chain', '00:04:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 17, 'Rewind', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 18, 'Let It Bang', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 19, 'For My Team', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(32, 20, 'Whateva', '00:03:04', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 33 (Up All Night)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(33, 1, 'Up All Night', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 2, 'Solo', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 3, 'Pass Out', '00:04:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 4, 'Drinking from the Bottle', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 5, 'Earthquake', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 6, 'Till Im Gone', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 7, 'Im Not the Man', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 8, 'We Bring the Stars Out', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 9, 'Written in the Stars', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 10, 'Frisky', '00:04:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 11, 'Miami 2 Ibiza', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 12, 'Obsession', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(33, 13, 'Invincible', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 34 (Manic)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(34, 1, 'Ashley', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 2, 'clementine', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 3, 'Graveyard', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 4, 'You should be sad', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 5, 'Forever... (Is a Long Time)', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 6, 'Dominic’s Interlude', '00:00:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 7, 'I HATE EVERYBODY', '00:02:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 8, '3am', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 9, 'Without Me', '00:03:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 10, 'Finally // beautiful stranger', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 11, 'Alanis’ Interlude', '00:00:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 12, 'killing boys', '00:02:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 13, 'SUGA’s Interlude', '00:02:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 14, 'More', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 15, 'Still Learning', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(34, 16, '929', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 35 (Rodeo)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(35, 1, 'Pornography', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 2, 'Oh My Dis Side', '00:05:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 3, '3500', '00:07:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 4, 'Wasted', '00:03:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 5, '90210', '00:05:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 6, 'Pray 4 Love', '00:05:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 7, 'Nightcrawler', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 8, 'Piss On Your Grave', '00:02:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 9, 'Antidote', '00:04:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 10, 'Impossible', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 11, 'Maria I’m Drunk', '00:05:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 12, 'Flying High', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 13, 'I Can Tell', '00:04:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 14, 'Apple Pie', '00:04:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 15, 'Ok Alright', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(35, 16, 'Never Catch Me', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 36 (Norman Fucking Rockwell!)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(36, 1, 'Norman Fucking Rockwell', '00:04:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 2, 'Mariners Apartment Complex', '00:04:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 3, 'Venice Bitch', '00:09:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 4, 'Fuck It I Love You', '00:05:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 5, 'Doin’ Time', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 6, 'Love Song', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 7, 'Cinnamon Girl', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 8, 'How to disappear', '00:04:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 9, 'California', '00:05:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 10, 'The Next Best American Record', '00:05:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 11, 'The Greatest', '00:05:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 12, 'Bartender', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 13, 'Happiness is a butterfly', '00:04:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(36, 14, 'hope is a dangerous thing for a woman like me to have - but i have it', '00:05:58', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 37 (Cuz I Love You)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(37, 1, 'Cuz I Love You', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 2, 'Like a Girl', '00:03:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 3, 'Juice', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 4, 'Soulmate', '00:02:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 5, 'Jerome', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 6, 'Crybaby', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 7, 'Tempo', '00:02:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 8, 'Exactly How I Feel', '00:02:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 9, 'Better in Color', '00:02:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 10, 'Heaven Help Me', '00:03:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(37, 11, 'Lingerie', '00:02:45', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 38 (Fine Line)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(38, 1, 'Golden', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 2, 'Watermelon Sugar', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 3, 'Adore You', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 4, 'Lights Up', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 5, 'Cherry', '00:04:19', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 6, 'Falling', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 7, 'To Be So Lonely', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 8, 'She', '00:06:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 9, 'Sunflower, Vol. 6', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 10, 'Canyon Moon', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 11, 'Treat People With Kindness', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(38, 12, 'Fine Line', '00:06:17', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 39 (Divinely Uninspired to a Hellish Extent)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(39, 1, 'Grace', '00:03:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 2, 'Bruises', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 3, 'Hold Me While You Wait', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 4, 'Someone You Loved', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 5, 'Maybe', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 6, 'Forever', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 7, 'One', '00:03:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 8, 'Don’t Get Me Wrong', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 9, 'Hollywood', '00:03:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 10, 'Lost On You', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 11, 'Fade', '00:03:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(39, 12, 'Before You Go', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 40 (K.T.S.E.)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(40, 1, 'No Manners', '00:02:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 2, 'Gonna Love Me', '00:02:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 3, 'Issues/Hold On', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 4, 'Hurry', '00:02:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 5, '3Way', '00:04:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 6, 'Rose In Harlem', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 7, 'Never Would Have Made It', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(40, 8, 'WTP', '00:02:57', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 41 (Unapologetically)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(41, 1, 'Glamour', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 2, 'Ring On Every Finger', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 3, 'Unapologetically', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 4, 'End Of The World', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 5, 'Winning Streak', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 6, 'Here Tonight', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 7, 'Pick Up', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 8, 'Boy', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 9, 'You Got Me', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 10, 'Hands On You', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 11, 'Arrows', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 12, 'Love In The Middle Of A Firefight', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(41, 13, 'Music', '00:03:56', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 42 (Songs About Jane)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(42, 1, 'Harder to Breathe', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 2, 'This Love', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 3, 'Shiver', '00:03:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 4, 'She Will Be Loved', '00:04:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 5, 'Tangled', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 6, 'The Sun', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 7, 'Must Get Out', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 8, 'Sunday Morning', '00:04:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 9, 'Secret', '00:04:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 10, 'Through with You', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 11, 'Not Coming Home', '00:04:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(42, 12, 'Sweetest Goodbye', '00:04:31', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 43 (The Diary of Alicia Keys)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(43, 1, 'Harlem\'s Nocturne', '00:01:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 2, 'Karma', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 3, 'Heartburn', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 4, 'If I Ain\'t Got You', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 5, 'You Don\'t Know My Name', '00:06:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 6, 'If I Was Your Woman/Walk On By', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 7, 'You Will Never Know', '00:04:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 8, 'If I Ain\'t Got You (Remix) (feat. Usher)', '00:03:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 9, 'Diary (feat. Tony! Toni! Toné!)', '00:04:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 10, 'Dragon Days', '00:04:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 11, 'Wake Up', '00:04:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 12, 'So Simple', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 13, 'When You Really Love Someone', '00:04:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 14, 'Feeling U, Feeling Me (Interlude)', '00:03:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(43, 15, 'Slow Down', '00:04:18', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 44 (Kamikaze)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(44, 1, 'The Ringer', '00:05:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 2, 'Greatest', '00:03:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 3, 'Lucky You (feat. Joyner Lucas)', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 4, 'Paul (Skit)', '00:00:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 5, 'Normal', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 6, 'Em Calls Paul (Skit)', '00:00:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 7, 'Stepping Stone', '00:05:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 8, 'Not Alike (feat. Royce da 59")', '00:04:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 9, 'Fall', '00:04:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 10, 'Kamikaze', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 11, 'Nice Guy (feat. Jessie Reyez)', '00:02:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 12, 'Good Guy (feat. Jessie Reyez)', '00:02:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(44, 13, 'Venom', '00:04:30', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 45 (Rainbow)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(45, 1, 'Introduction (Rainbow)', '00:01:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 2, 'Thunderbird', '00:04:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 3, 'Close My Eyes', '00:04:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 4, 'Jimmy Crack Corn', '00:03:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 5, 'Heartbreaker', '00:04:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 6, 'Rainbow Connection', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 7, 'The Real Slim Shady', '00:04:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 8, 'Nobody Can Drag Me Down', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 9, 'Believe', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 10, 'Fly Away', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 11, 'Hot as Ice', '00:03:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 12, 'Unbreakable', '00:03:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(45, 13, 'Rainbow', '00:04:45', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 46 (Hozier)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(46, 1, 'Take Me to Church', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 2, 'Angel of Small Death & The Codeine Scene', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 3, 'Jackie and Wilson', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 4, 'Someone New', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 5, 'To Be Alone', '00:05:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 6, 'From Eden', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 7, 'In a Week (feat. Karen Cowley)', '00:05:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 8, 'Sedated', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 9, 'Work Song', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 10, 'Like Real People Do', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 11, 'It Will Come Back', '00:04:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 12, 'Foreigners God', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(46, 13, 'Cherry Wine (Live)', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 47 (Currents)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(47, 1, 'Let It Happen', '00:07:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 2, 'Nangs', '00:01:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 3, 'The Moment', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 4, 'Yes Im Changing', '00:04:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 5, 'Eventually', '00:05:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 6, 'Gossip', '00:00:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 7, 'The Less I Know The Better', '00:03:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 8, 'Past Life', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 9, 'Disciples', '00:01:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 10, 'Cause Im A Man', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 11, 'Reality In Motion', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 12, 'Love/Paranoia', '00:03:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(47, 13, 'New Person, Same Old Mistakes', '00:06:03', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 48 (High Off Life)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(48, 1, 'Trapped in the Sun', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 2, 'High Off Life', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 3, 'Solitaires (feat. Travis Scott)', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 4, 'Jump Out The Window', '00:02:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 5, 'Posted with Demons', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 6, 'Happiness Over Everything (H.O.E.)', '00:02:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 7, 'All Bad', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 8, 'Future (feat. Drake)', '00:03:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 9, 'Harlem Shake (feat. Young Thug)', '00:02:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 10, 'Die for Me', '00:03:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 11, 'Life Is Good (feat. Drake)', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 12, 'Last Name (feat. Lil Durk)', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 13, 'Tycoon', '00:03:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 14, '100 Shooters (feat. Meek Mill & Doe Boy)', '00:03:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 15, 'Life Is Good (Remix) [feat. Drake, DaBaby & Lil Baby]', '00:04:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 16, 'Outta Time', '00:03:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 17, 'Accepting My Flaws', '00:03:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 18, 'Deep End', '00:02:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 19, 'Posted with Demons', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 20, 'Hard to Choose One', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(48, 21, 'Trillionaire (feat. YoungBoy Never Broke Again)', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 49 (folklore)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(49, 1, 'the 1', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 2, 'cardigan', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 3, 'the last great american dynasty', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 4, 'exile (feat. Bon Iver)', '00:04:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 5, 'my tears ricochet', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 6, 'mirrorball', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 7, 'seven', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 8, 'august', '00:04:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 9, 'this is me trying', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 10, 'illicit affairs', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 11, 'invisible string', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 12, 'mad woman', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 13, 'epiphany', '00:04:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 14, 'betty', '00:04:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 15, 'peace', '00:03:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(49, 16, 'hoax', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 50 (Take Care)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(50, 1, 'Over My Dead Body', '00:04:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 2, 'Shot for Me', '00:03:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 3, 'Headlines', '00:03:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 4, 'Crew Love (feat. The Weeknd)', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 5, 'Take Care (feat. Rihanna)', '00:04:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 6, 'Marvins Room / Buried Alive (Interlude)', '00:08:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 7, 'Under Ground Kings', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 8, 'Well Be Fine', '00:04:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 9, 'Make Me Proud (feat. Nicki Minaj)', '00:03:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 10, 'Lord Knows (feat. Rick Ross)', '00:05:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 11, 'Cameras / Good Ones Go (Interlude)', '00:07:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 12, 'Doing It Wrong', '00:04:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 13, 'The Real Her (feat. Lil Wayne & André 3000)', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 14, 'HYFR (Hell Ya Fucking Right)', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 15, 'Look What Youve Done', '00:05:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 16, 'Practice', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 17, 'The Ride', '00:05:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 18, 'The Motto (feat. Lil Wayne)', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(50, 19, 'Take Care (feat. Rihanna)', '00:04:37', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 51 (Golden Hour)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(51, 1, 'Slow Burn', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 2, 'Lonely Weekend', '00:03:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 3, 'Butterflies', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 4, 'Oh, What a World', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 5, 'Mother', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 6, 'Love Is a Wild Thing', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 7, 'Space Cowboy', '00:03:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 8, 'Happy & Sad', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 9, 'Velvet Elvis', '00:02:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 10, 'Wonder Woman', '00:04:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 11, 'High Horse', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 12, 'Golden Hour', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(51, 13, 'Rainbow', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 52 (Hot Pink)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(52, 1, 'Cyber Sex', '00:02:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 2, 'Wont Bite', '00:02:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 3, 'Rules', '00:02:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 4, 'Bottom Bitch', '00:02:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 5, 'Say So', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 6, 'Like That', '00:02:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 7, 'Talk Dirty', '00:02:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 8, 'Addiction', '00:02:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 9, 'Streets', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 10, 'Shine', '00:02:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 11, 'Better Than Me', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(52, 12, 'Juicy', '00:03:23', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 53 (The College Dropout)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(53, 1, 'Intro', '00:00:19', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 2, 'We Don''t Care', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 3, 'Graduation Day', '00:01:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 4, 'All Falls Down', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 5, 'I''ll Fly Away', '00:01:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 6, 'Spaceship', '00:05:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 7, 'Jesus Walks', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 8, 'Never Let Me Down', '00:05:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 9, 'Get Em High', '00:04:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 10, 'Workout Plan', '00:00:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 11, 'The New Workout Plan', '00:05:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 12, 'Slow Jamz', '00:05:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 13, 'Breathe in Breathe Out', '00:04:06', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 14, 'School Spirit', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 15, 'Two Words', '00:04:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 16, 'Through the Wire', '00:03:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 17, 'Family Business', '00:04:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(53, 18, 'Last Call', '00:12:40', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 54 (Thank U, Next)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(54, 1, 'Imagine', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 2, 'Needy', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 3, 'NASA', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 4, 'Bloodline', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 5, 'Fake Smile', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 6, 'Bad Idea', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 7, 'Make Up', '00:02:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 8, 'Ghostin', '00:02:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 9, 'In My Head', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 10, '7 Rings', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 11, 'Thank U, Next', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(54, 12, 'Break Up With Your Girlfriend, I''m Bored', '00:03:10', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 55 (Views)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(55, 1, 'Keep the Family Close', '00:05:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 2, '9', '00:04:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 3, 'U With Me?', '00:04:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 4, 'Feel No Ways', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 5, 'Hype', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 6, 'Weston Road Flows', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 7, 'Redemption', '00:05:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 8, 'With You', '00:03:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 9, 'Faithful', '00:04:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 10, 'Still Here', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 11, 'Controlla', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 12, 'One Dance', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 13, 'Grammys', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 14, 'Childs Play', '00:04:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 15, 'Pop Style', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 16, 'Too Good', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 17, 'Summers Over Interlude', '00:02:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 18, 'Fire & Desire', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 19, 'Views', '00:05:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(55, 20, 'Hotline Bling', '00:04:27', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 56 (Reputation)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(56, 1, '...Ready for It?', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 2, 'End Game', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 3, 'I Did Something Bad', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 4, 'Don''t Blame Me', '00:03:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 5, 'Delicate', '00:03:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 6, 'Look What You Made Me Do', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 7, 'So It Goes...', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 8, 'Gorgeous', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 9, 'Getaway Car', '00:03:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 10, 'King of My Heart', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 11, 'Dancing With Our Hands Tied', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 12, 'Dress', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 13, 'This Is Why We Can''t Have Nice Things', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 14, 'Call It What You Want', '00:03:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(56, 15, 'New Years Day', '00:03:55', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 57 (Good Kid, M.A.A.D City)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(57, 1, 'Sherane a.k.a Master Splinters Daughter', '00:04:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 2, 'Bitch, Dont Kill My Vibe', '00:05:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 3, 'Backseat Freestyle', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 4, 'The Art of Peer Pressure', '00:05:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 5, 'Money Trees', '00:06:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 6, 'Poetic Justice', '00:05:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 7, 'good kid', '00:03:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 8, 'm.A.A.d city', '00:05:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 9, 'Swimming Pools (Drank)', '00:05:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 10, 'Sing About Me, I’m Dying of Thirst', '00:12:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 11, 'Real', '00:07:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(57, 12, 'Compton', '00:04:08', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 58 (21)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(58, 1, 'Rolling in the Deep', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 2, 'Rumour Has It', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 3, 'Turning Tables', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 4, 'Don’t You Remember', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 5, 'Set Fire to the Rain', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 6, 'He Won’t Go', '00:04:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 7, 'Take It All', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 8, 'I’ll Be Waiting', '00:04:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 9, 'One and Only', '00:05:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 10, 'Lovesong', '00:05:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 11, 'Someone Like You', '00:04:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(58, 12, 'I Found a Boy', '00:03:37', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 59 (Invasion of Privacy)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(59, 1, 'Get Up 10', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 2, 'Drip (feat. Migos)', '00:04:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 3, 'Bickenhead', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 4, 'Bodak Yellow', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 5, 'Be Careful', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 6, 'Best Life (feat. Chance The Rapper)', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 7, 'I Like It', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 8, 'Ring (feat. Kehlani)', '00:02:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 9, 'Money Bag', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 10, 'Bartier Cardi (feat. 21 Savage)', '00:03:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 11, 'She Bad', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 12, 'Thru Your Phone', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(59, 13, 'I Do (feat. SZA)', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 60 (24k Magic)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(60, 1, '24K Magic', '00:03:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 2, 'Chunky', '00:03:07', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 3, 'Perm', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 4, 'That’s What I Like', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 5, 'Versace on the Floor', '00:04:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 6, 'Straight Up & Down', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 7, 'Calling All My Lovelies', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 8, 'Finesse (Remix) [feat. Cardi B]', '00:03:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(60, 9, 'Too Good to Say Goodbye', '00:04:41', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 61 (Ctrl)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(61, 1, 'Supermodel', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 2, 'Love', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 3, 'Loyalty (feat. Rihanna)', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 4, 'Pride', '00:04:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 5, 'Humble', '00:02:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 6, 'Lust', '00:05:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 7, 'Love Galore (feat. Travis Scott)', '00:04:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 8, 'Doves in the Wind (feat. Kendrick Lamar)', '00:04:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 9, 'The Weekend', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 10, 'Go Gina', '00:02:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 11, 'Garden (Say It Like Dat)', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 12, 'Broken Clocks', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 13, 'Anything', '00:02:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 14, 'Wavy (Interlude) [feat. James Fauntleroy]', '00:01:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(61, 15, 'Normal Girl', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 62 (Red)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(62, 1, 'State of Grace', '00:05:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 2, 'Red', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 3, 'Treacherous', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 4, 'I Knew You Were Trouble', '00:03:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 5, 'All Too Well', '00:05:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 6, '22', '00:03:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 7, 'I Almost Do', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 8, 'We Are Never Ever Getting Back Together', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 9, 'Stay Stay Stay', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 10, 'Holy Ground', '00:03:22', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 11, 'Sad Beautiful Tragic', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 12, 'The Lucky One', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 13, 'Everything Has Changed (feat. Ed Sheeran)', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 14, 'Starlight', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 15, 'Begin Again', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(62, 16, 'The Moment I Knew', '00:04:45', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 63 (The Life of Pablo)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(63, 1, 'Ultralight Beam', '00:05:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 2, 'Father Stretch My Hands Pt. 1', '00:02:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 3, 'Pt. 2', '00:02:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 4, 'Famous', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 5, 'Feedback', '00:02:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 6, 'Low Lights', '00:02:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 7, 'Highlights', '00:03:19', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 8, 'Freestyle 4', '00:02:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 9, 'I Love Kanye', '00:00:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 10, 'Waves', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 11, 'FML', '00:05:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 12, 'Real Friends', '00:04:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 13, 'Wolves', '00:05:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 14, 'Frank’s Track', '00:00:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 15, 'Siiiiiiiiilver Surffffeeeeer Intermission', '00:00:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 16, '30 Hours', '00:05:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 17, 'No More Parties In LA', '00:06:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 18, 'Facts (Charlie Heat Version)', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(63, 19, 'Fade', '00:03:13', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 64 (Unorthodox Jukebox)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(64, 1, 'Young Girls', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 2, 'Locked Out of Heaven', '00:03:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 3, 'Gorilla', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 4, 'Treasure', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 5, 'Moonshine', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 6, 'When I Was Your Man', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 7, 'Natalie', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 8, 'Show Me', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 9, 'Money Make Her Smile', '00:03:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(64, 10, 'If I Knew', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 65 (Birds in the Trap Sing McKnight)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(65, 1, 'the ends', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 2, 'way back', '00:04:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 3, 'coordinate', '00:04:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 4, 'through the late night', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 5, 'beibs in the trap', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 6, 'sdp interlude', '00:03:11', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 7, 'sweet sweet', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 8, 'outside', '00:02:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 9, 'goosebumps', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 10, 'first take', '00:05:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 11, 'pick up the phone', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 12, 'lose', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 13, 'guidance', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(65, 14, 'wonderful', '00:03:37', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 66 (Witness)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(66, 1, 'Witness', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 2, 'Hey Hey Hey', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 3, 'Roulette', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 4, 'Swish Swish', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 5, 'Déjà Vu', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 6, 'Power', '00:03:46', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 7, 'Mind Maze', '00:04:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 8, 'Miss You More', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 9, 'Chained to the Rhythm', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 10, 'Tsunami', '00:03:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 11, 'Bon Appétit', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 12, 'Bigger Than Me', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 13, 'Save As Draft', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 14, 'Pendulum', '00:04:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(66, 15, 'Into Me You See', '00:04:24', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 67 (Revival)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(67, 1, 'Walk on Water', '00:05:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 2, 'Believe', '00:05:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 3, 'Chloraseptic', '00:05:01', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 4, 'Untouchable', '00:06:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 5, 'River', '00:03:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 6, 'Remind Me', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 7, 'Like Home', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 8, 'Bad Husband', '00:04:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 9, 'Tragic Endings', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 10, 'Framed', '00:04:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 11, 'Nowhere Fast', '00:04:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 12, 'Heat', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 13, 'Offended', '00:05:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 14, 'Need Me', '00:04:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 15, 'In Your Head', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 16, 'Castle', '00:04:14', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 17, 'Arose', '00:04:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(67, 18, 'Untouchable', '00:06:10', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 68 (Honeymoon)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(68, 1, 'Honeymoon', '00:05:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 2, 'Music to Watch Boys To', '00:04:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 3, 'Terrence Loves You', '00:04:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 4, 'God Knows I Tried', '00:04:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 5, 'High by the Beach', '00:04:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 6, 'Freak', '00:04:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 7, 'Art Deco', '00:04:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 8, 'Burnt Norton (Interlude)', '00:01:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 9, 'Religion', '00:05:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 10, 'Salvatore', '00:04:41', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 11, 'The Blackest Day', '00:06:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 12, '24', '00:04:56', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 13, 'Swan Song', '00:05:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(68, 14, 'Dont Let Me Be Misunderstood', '00:03:01', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 69 (Kaleidoscope EP)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(69, 1, 'Stay', '00:03:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(69, 2, 'Handle', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(69, 3, 'Alone', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(69, 4, 'Hitchhiker', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(69, 5, 'Kaleidoscope', '00:10:34', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 70 (DS2)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(70, 1, 'Thought It Was a Drought', '00:04:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 2, 'I Serve the Base', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 3, 'Where Ya At', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 4, 'Groupies', '00:04:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 5, 'Lil One', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 6, 'Stick Talk', '00:02:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 7, 'Freak Hoe', '00:02:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 8, 'Rotation', '00:03:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 9, 'Slave Master', '00:03:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 10, 'Blow a Bag', '00:03:45', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 11, 'Colossal', '00:03:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 12, 'Rich $ex', '00:04:34', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 13, 'Blood on the Money', '00:04:44', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 14, 'Trap Niggas', '00:03:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 15, 'The Percocet & Stripper Joint', '00:04:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 16, 'Real Sisters', '00:02:55', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 17, 'Kno the Meaning', '00:05:42', ROUND(RAND() * (5000 - 1000) + 1000)),
(70, 18, 'F*ck Up Some Commas', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 71 (Sweetener)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(71, 1, 'raindrops (an angel cried)', '00:00:37', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 2, 'blazed', '00:03:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 3, 'the light is coming', '00:03:48', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 4, 'R.E.M', '00:04:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 5, 'God is a woman', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 6, 'sweetener', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 7, 'successful', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 8, 'everytime', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 9, 'breathin', '00:03:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 10, 'no tears left to cry', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 11, 'borderline', '00:02:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 12, 'better off', '00:02:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 13, 'goodnight n go', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 14, 'pete davidson', '00:01:13', ROUND(RAND() * (5000 - 1000) + 1000)),
(71, 15, 'get well soon', '00:05:22', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 72 (Yeezus)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(72, 1, 'On Sight', '00:02:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 2, 'Black Skinhead', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 3, 'I Am a God', '00:03:51', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 4, 'New Slaves', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 5, 'Hold My Liquor', '00:05:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 6, 'Im In It', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 7, 'Blood on the Leaves', '00:06:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 8, 'Guilt Trip', '00:04:04', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 9, 'Send It Up', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(72, 10, 'Bound 2', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 73 (Talk That Talk)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(73, 1, 'You Da One', '00:03:20', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 2, 'Where Have You Been', '00:04:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 3, 'We Found Love', '00:03:36', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 4, 'Talk That Talk', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 5, 'Cockiness (Love It)', '00:02:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 6, 'Birthday Cake', '00:01:18', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 7, 'We All Want Love', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 8, 'Drunk on Love', '00:03:32', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 9, 'Roc Me Out', '00:03:29', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 10, 'Watch n Learn', '00:03:31', ROUND(RAND() * (5000 - 1000) + 1000)),
(73, 11, 'Farewell', '00:04:16', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 74 (Believe)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(74, 1, 'All Around the World', '00:04:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 2, 'Boyfriend', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 3, 'As Long as You Love Me', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 4, 'Catching Feelings', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 5, 'Take You', '00:03:40', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 6, 'Right Here', '00:03:24', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 7, 'Fall', '00:04:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 8, 'Die in Your Arms', '00:03:57', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 9, 'Thought of You', '00:03:50', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 10, 'Beauty and a Beat', '00:03:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 11, 'One Love', '00:03:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 12, 'Be Alright', '00:03:09', ROUND(RAND() * (5000 - 1000) + 1000)),
(74, 13, 'Believe', '00:03:42', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 75 (Recovery)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(75, 1, 'Cold Wind Blows', '00:05:03', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 2, 'Talkin'' 2 Myself', '00:05:00', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 3, 'On Fire', '00:03:33', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 4, 'Won''t Back Down', '00:04:26', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 5, 'W.T.P.', '00:03:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 6, 'Going Through Changes', '00:04:58', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 7, 'Not Afraid', '00:04:10', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 8, 'Seduction', '00:04:35', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 9, 'No Love', '00:04:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 10, 'Space Bound', '00:04:38', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 11, 'Cinderella Man', '00:04:39', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 12, '25 to Life', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 13, 'So Bad', '00:05:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 14, 'Almost Famous', '00:04:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 15, 'Love the Way You Lie', '00:04:23', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 16, 'You''re Never Over', '00:05:05', ROUND(RAND() * (5000 - 1000) + 1000)),
(75, 17, 'Untitled', '00:03:14', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 76 (Joanne)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(76, 1, 'Diamond Heart', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 2, 'A-YO', '00:03:28', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 3, 'Joanne', '00:03:17', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 4, 'John Wayne', '00:02:54', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 5, 'Dancin'' in Circles', '00:03:27', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 6, 'Perfect Illusion', '00:03:02', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 7, 'Million Reasons', '00:03:25', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 8, 'Sinner''s Prayer', '00:03:43', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 9, 'Come to Mama', '00:04:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 10, 'Hey Girl', '00:04:15', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 11, 'Angel Down', '00:03:49', ROUND(RAND() * (5000 - 1000) + 1000)),
(76, 12, 'Grigio Girls', '00:03:00', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 77 (In The Lonely Hour)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(77, 1, 'Money On My Mind', '00:03:12', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 2, 'Good Thing', '00:03:21', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 3, 'Stay With Me', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 4, 'Leave Your Lover', '00:03:08', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 5, 'I''m Not the Only One', '00:03:59', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 6, 'I''ve Told You Now', '00:03:30', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 7, 'Like I Can', '00:02:47', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 8, 'Life Support', '00:02:53', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 9, 'Not In That Way', '00:02:52', ROUND(RAND() * (5000 - 1000) + 1000)),
(77, 10, 'Lay Me Down', '00:04:12', ROUND(RAND() * (5000 - 1000) + 1000));

-- Songs for Album 78 (Good News)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(78, 1, 'Shots Fired', '00:03:10', 3423),
(78, 2, 'Circles', '00:02:58', 2876),
(78, 3, 'Complicated', '00:03:37', 1987),
(78, 4, 'Blue World', '00:03:29', 4567),
(78, 5, 'Good News', '00:05:42', 3765),
(78, 6, 'I Can See', '00:03:35', 2345),
(78, 7, 'Everybody', '00:03:01', 1678),
(78, 8, 'Woods', '00:03:08', 2987),
(78, 9, 'Hand Me Downs', '00:04:07', 1890),
(78, 10, 'That''s On Me', '00:03:38', 3212),
(78, 11, 'Hands', '00:03:17', 2789),
(78, 12, 'Surf', '00:05:32', 2345),
(78, 13, 'Once a Day', '00:03:32', 1987),
(78, 14, 'Right', '00:03:21', 3765),
(78, 15, 'Floating', '00:03:00', 3423),
(78, 16, 'My Favorite Part', '00:03:36', 4567);

-- Songs for Album 79 (Love Is An Art)
INSERT INTO Songs (Album_Id, Track_No, Title, Duration, Times_heard) VALUES
(79, 1, 'Not Afraid', '00:03:41', 2987),
(79, 2, 'Cold', '00:03:21', 3423),
(79, 3, 'Grace', '00:04:09', 2345),
(79, 4, 'I Am', '00:03:33', 1987),
(79, 5, 'I Like the Way You Love Me', '00:03:22', 3765),
(79, 6, 'Love Me', '00:04:31', 1678),
(79, 7, 'Someone Like You', '00:04:03', 3212),
(79, 8, 'Beautiful', '00:04:17', 2789),
(79, 9, 'Faster', '00:03:22', 3423),
(79, 10, 'Let It Rain', '00:03:46', 2876),
(79, 11, 'Stop and Stare', '00:03:42', 2345),
(79, 12, 'A Song About Love', '00:04:18', 1987),
(79, 13, 'Love Is An Art', '00:04:30', 3765);

INSERT INTO Users(Username, Pass) VALUES
('Kirosamurai', 'Rhitvik1'),
('ehd', 'ihitaxyz1'); 

-- Insert data into the Frequency_heard table for user 'Kirosamurai'
INSERT INTO Frequency_heard (Username, Album_Id, Track_No, Count) VALUES
('Kirosamurai', 1, 1, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 1, 2, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 2, 1, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 3, 3, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 4, 2, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 5, 1, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 5, 3, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 6, 1, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 6, 4, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 7, 2, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 21, 7, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 22, 5, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 23, 10, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 78, 4, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 79, 8, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 46, 11, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 47, 2, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 48, 15, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 72, 3, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 73, 7, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 74, 4, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 78, 1, ROUND(RAND() * (100 - 1) + 1)),
('Kirosamurai', 79, 10, ROUND(RAND() * (100 - 1) + 1));

-- Insert data into the Frequency_heard table for user 'ehd'
INSERT INTO Frequency_heard (Username, Album_Id, Track_No, Count) VALUES
('ehd', 1, 1, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 1, 3, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 2, 2, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 3, 4, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 4, 1, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 5, 2, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 5, 3, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 6, 4, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 6, 5, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 7, 1, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 21, 8, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 22, 6, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 23, 11, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 78, 5, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 79, 9, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 46, 12, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 47, 3, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 48, 16, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 72, 4, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 73, 8, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 74, 5, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 78, 2, ROUND(RAND() * (100 - 1) + 1)),
('ehd', 79, 11, ROUND(RAND() * (100 - 1) + 1));
