DROP DATABASE IF EXISTS kpop;

CREATE DATABASE kpop;

USE kpop;

CREATE TABLE `bands` (
    `id`                INT NOT NULL PRIMARY KEY,
    `name`              VARCHAR(50),
    `creation_year`     INT,
    `label`             VARCHAR(50),
    `logo`              VARCHAR(50)
);

CREATE TABLE `artists`(
    `id`                INT NOT NULL PRIMARY KEY,
    `name`              VARCHAR(50),
    `surname`           VARCHAR(50),
    `birthday`          DATE,
    `band_id`           INT NOT NULL,
    FOREIGN KEY (`band_id`) REFERENCES `bands`(`id`)
);

CREATE TABLE `albums`(
    `id`                INT NOT NULL PRIMARY KEY,
    `name`              VARCHAR(50),
    `sales`             INT,
    `type`              VARCHAR(50),
    `date`              DATE,
    `picture`           VARCHAR(50),
    `band_id`           INT NOT NULL,
    FOREIGN KEY (`band_id`) REFERENCES `bands`(`id`)
);

INSERT INTO `bands` (`id`, `name`, `creation_year`, `label`, `logo`) VALUES
    (1, 'BLACKPINK', 2016, 'YG Entertainment', 'blackpinklogo.jpeg'),
    (2, '(G)idle', 2018, 'Cube Entertainment', 'gidlelogo.jpeg'),
    (3, 'Red Velvet', 2014, 'SM Entertainment', 'redvelvetlogo.jpeg'),
    (4, 'TWICE', 2015, 'JYP Entertainment', 'twicelogo.jpeg'),
    (5, 'Dreamcatcher', 2017, 'Happy Face Entertainment', 'dreamcatcherlogo.jpeg'),
    (6, 'ITZY', 2019, 'JYP Entertainment', 'itzylogo.jpeg'),
    (7, 'Girls Generation', 2007, 'SM Entertainment', 'girlsgenerationlogo.jpeg'),
    (8, 'Girls Day', 2010, 'Dream tea Entertainment', 'girlsdaylogo.jpeg');

INSERT INTO `artists`(`id`, `name`, `surname`, `birthday`, `band_id`) VALUES
    (1, 'Jisoo', 'Kim', '1995-01-03', 1),
    (2, 'Jennie', 'Kim', '1996-01-16', 1),
    (3, 'Rosé (Chae-young)', 'Park', '1997-02-11', 1),
    (4, 'Lisa (Lalisa)', 'Manoban', '1997-03-27', 1),
    (5, 'Miyeon', 'Cho', '1997-01-31', 2),
    (6, 'Minnie (Nicha)', 'Yontarak', '1997-10-23', 2),
    (7, 'Soyeon', 'Jeon', '1998-07-16', 2),
    (8, 'Yuqi', 'Song', '1999-09-23', 2),
    (9, 'Shuhua', 'Ye', '2000-01-06', 2),
    (10, 'Irene (Joo-hyun)', 'Bae', '1991-03-29', 3),
    (11, 'Seulgi', 'Kang', '1994-02-10', 3),
    (12, 'Wendy (Seung-wan)', 'Son', '1994-02-21', 3),
    (13, 'Joy (Soo-young)', 'Park', '1996-09-03', 3),
    (14, 'Yeri (Yerim)', 'Kim', '1999-03-05', 3);

INSERT INTO `albums`(`id`, `name`, `sales`, `type`, `date`, `picture`, `band_id`) VALUES
    (1, 'Born Pink', NULL, 'Album studio', '2022-09-16', 'bornpink.jpeg', 1),
    (2, 'I Never Die', 754000, 'Album studio', '2022-03-14', 'ineverdie.jpeg', 2),
    (3, 'The ReVe Festival 2022 - Feel My Rhythm', NULL, 'EP', '2022-03-21','feelmyrhythm.jpeg', 3),
    (4, 'Between 1&2', NULL, 'EP', '2022-06-12', 'between1&2.jpeg', 4);
