-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema playerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `playerdb` ;

-- -----------------------------------------------------
-- Schema playerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `playerdb` DEFAULT CHARACTER SET utf8 ;
USE `playerdb` ;

-- -----------------------------------------------------
-- Table `player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `player` ;

CREATE TABLE IF NOT EXISTS `player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `age` INT NOT NULL,
  `photo` VARCHAR(100) NULL,
  `nationality` VARCHAR(45) NULL,
  `flag` VARCHAR(100) NULL,
  `overall` INT NOT NULL,
  `club` VARCHAR(100) NULL,
  `club_logo` VARCHAR(45) NULL,
  `value` INT NOT NULL,
  `nation_wiki` VARCHAR(100) NULL,
  `club_wiki` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS playeruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'playeruser'@'localhost' IDENTIFIED BY 'playeruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'playeruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `player`
-- -----------------------------------------------------
START TRANSACTION;
USE `playerdb`;
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (1, 'Lionel', 'Messi', 31, 'https://cdn.sofifa.org/players/4/19/158023.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 94, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', 110000000, 'https://en.wikipedia.org/wiki/Argentina', 'https://en.wikipedia.org/wiki/FC_Barcelona');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (2, 'Cristiano', 'Ronaldo', 33, 'https://cdn.sofifa.org/players/4/19/20801.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 94, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', 77000000, 'https://en.wikipedia.org/wiki/Portugal', 'https://en.wikipedia.org/wiki/Juventus_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (3, 'Neymar ', 'da Silva Santos', 26, 'https://cdn.sofifa.org/players/4/19/190871.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 92, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', 118000000, 'https://en.wikipedia.org/wiki/Brazil', 'https://en.wikipedia.org/wiki/Paris_Saint-Germain_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (4, 'David', 'De Gea', 27, 'https://cdn.sofifa.org/players/4/19/193080.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 91, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', 72000000, 'https://en.wikipedia.org/wiki/Spain', 'https://en.wikipedia.org/wiki/Manchester_United_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (5, 'Kevin', 'De Bruyne', 27, 'https://cdn.sofifa.org/players/4/19/192985.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 91, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', 102000000, 'https://en.wikipedia.org/wiki/Belgium', 'https://en.wikipedia.org/wiki/Manchester_City_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (6, 'Eden', 'Hazard', 27, 'https://cdn.sofifa.org/players/4/19/183277.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 91, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', 93000000, 'https://en.wikipedia.org/wiki/Belgium', 'https://en.wikipedia.org/wiki/Chelsea_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (7, 'Lucas', 'Modric', 32, 'https://cdn.sofifa.org/players/4/19/177003.png', 'Croatia', 'https://cdn.sofifa.org/flags/10.png', 91, 'Real Madrid', 'https://cdn.sofifa.org/teams/2/light/243.png', 67000000, 'https://en.wikipedia.org/wiki/Croatia', 'https://en.wikipedia.org/wiki/Real_Madrid_CF');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (8, 'Luis', 'Suarez', 31, 'https://cdn.sofifa.org/players/4/19/176580.png', 'Uruguay', 'https://cdn.sofifa.org/flags/60.png', 91, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', 80000000, 'https://en.wikipedia.org/wiki/Uruguay', 'https://en.wikipedia.org/wiki/FC_Barcelona');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (9, 'Sergio', 'Ramos', 32, 'https://cdn.sofifa.org/players/4/19/155862.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 91, 'Real Madrid', 'https://cdn.sofifa.org/teams/2/light/243.png', 51000000, 'https://en.wikipedia.org/wiki/Spain', 'https://en.wikipedia.org/wiki/Real_Madrid_CF');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (10, 'Jhan', 'Oblak', 25, 'https://cdn.sofifa.org/players/4/19/200389.png', 'Slovenia', 'https://cdn.sofifa.org/flags/44.png', 90, 'Atlético Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', 68000000, 'https://en.wikipedia.org/wiki/Slovenia', 'https://en.wikipedia.org/wiki/Atl%C3%A9tico_Madrid');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (11, 'Thibaut ', 'Courtois', 26, 'https://cdn.sofifa.org/players/4/19/192119.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 90, 'Real Madrid', 'https://cdn.sofifa.org/teams/2/light/243.png', 62000000, 'https://en.wikipedia.org/wiki/Belgium', 'https://en.wikipedia.org/wiki/Real_Madrid_CF');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (12, 'Robert', 'Lewandowski', 29, 'https://cdn.sofifa.org/players/4/19/188545.png', 'Poland', 'https://cdn.sofifa.org/flags/37.png', 90, 'FC Bayern München', 'https://cdn.sofifa.org/teams/2/light/21.png', 77000000, 'https://en.wikipedia.org/wiki/Spain', 'https://en.wikipedia.org/wiki/FC_Bayern_Munich');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (13, 'Toni', 'Kroos', 28, 'https://cdn.sofifa.org/players/4/19/182521.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 90, 'Real Madrid', 'https://cdn.sofifa.org/teams/2/light/243.png', 76000000, 'https://en.wikipedia.org/wiki/Germany', 'https://en.wikipedia.org/wiki/Real_Madrid_CF');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (14, 'Diego', 'Godín', 32, 'https://cdn.sofifa.org/players/4/19/182493.png', 'Uruguay', 'https://cdn.sofifa.org/flags/60.png', 90, 'Atlético Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', 44000000, 'https://en.wikipedia.org/wiki/Uruguay', 'https://en.wikipedia.org/wiki/Atl%C3%A9tico_Madrid');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (15, 'Michael ', 'Neuer', 32, 'https://cdn.sofifa.org/players/4/19/167495.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 90, 'FC Bayern München', 'https://cdn.sofifa.org/teams/2/light/21.png', 44000000, 'https://en.wikipedia.org/wiki/Germany', 'https://en.wikipedia.org/wiki/FC_Bayern_Munich');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (16, 'N’golo', 'Kanté', 27, 'https://cdn.sofifa.org/players/4/19/215914.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 89, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', 63000000, 'https://en.wikipedia.org/wiki/France', 'https://en.wikipedia.org/wiki/Chelsea_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (17, 'Paulo', 'Dybala', 24, 'https://cdn.sofifa.org/players/4/19/211110.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 89, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', 89000000, 'https://en.wikipedia.org/wiki/Argentina', 'https://en.wikipedia.org/wiki/Juventus_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (18, 'Harry', 'Kane', 24, 'https://cdn.sofifa.org/players/4/19/202126.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 89, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', 86000000, 'https://en.wikipedia.org/wiki/England', 'https://en.wikipedia.org/wiki/Tottenham_Hotspur_F.C.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `age`, `photo`, `nationality`, `flag`, `overall`, `club`, `club_logo`, `value`, `nation_wiki`, `club_wiki`) VALUES (19, 'Antoinne', 'Griezmann', 27, 'https://cdn.sofifa.org/players/4/19/194765.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 89, 'Atlético Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', 78000000, 'https://en.wikipedia.org/wiki/France', 'https://en.wikipedia.org/wiki/Atl%C3%A9tico_Madrid');

COMMIT;

