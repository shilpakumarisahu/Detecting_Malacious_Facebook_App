-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema fb
--

CREATE DATABASE IF NOT EXISTS fb;
USE fb;

--
-- Definition of table `app`
--

DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `username` varchar(200) default NULL,
  `appid` varchar(200) default NULL,
  `appname` varchar(200) default NULL,
  `licenseno` varchar(200) default NULL,
  `appurl` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `appicon` varchar(200) default NULL,
  `aid` int(200) NOT NULL auto_increment,
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` (`username`,`appid`,`appname`,`licenseno`,`appurl`,`status`,`appicon`,`aid`) VALUES 
 ('akil','741852','Chess Game','ApLi1752no','https://apps.facebook.com/chesslive/?fb_source=appcenter','Licensed','chess.jpg',1),
 ('akil','741963','The Hunger Games','ApLi622no','https://apps.facebook.com/hungergamesadventure/?fb_source=appcenter&fbs=133&fb_appcenter=1','Licensed','The Hunger Games.png',3),
 ('akil','264578','Happy Village','ApLi4178no','https://apps.facebook.com/happyvillage/?fb_source=appcenter&fbs=133&fb_appcenter=1','Licensed','Happy Village.png',4),
 ('akil','852456','Galactic Heros',NULL,'www.Galacticflashgames.com','No_License','Galactic_heroes.jpg',6),
 ('sugan','454253','Knight clash of heroes','ApLi2285no','https://apps.facebook.com/knightsclash/?fb_source=appcenter&fbs=133&fb_appcenter=1','Licensed','Knights Clash of Heroes.png',7),
 ('John','256485','Criminal Case','ApLi7093no','https://apps.facebook.com/criminalcase/?fb_source=search&ref=ts&fref=ts','Licensed','CriminalCase.jpg',10),
 ('bellammy','985365','Nords: Heroes of the North',NULL,'https://apps.facebook.com/nordsheroes/?fb_source=appcenter&fbs=133&fb_appcenter=1','No_License','Nords.jpg',11);
INSERT INTO `app` (`username`,`appid`,`appname`,`licenseno`,`appurl`,`status`,`appicon`,`aid`) VALUES 
 ('akil','678904','key game',NULL,'https://apps.facebook.com/happyvillage/','No_License','keys.jpg',12);
/*!40000 ALTER TABLE `app` ENABLE KEYS */;


--
-- Definition of table `frndlist`
--

DROP TABLE IF EXISTS `frndlist`;
CREATE TABLE `frndlist` (
  `fid` int(200) NOT NULL auto_increment,
  `rfrom` varchar(200) default NULL,
  `rto` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  KEY `fid` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frndlist`
--

/*!40000 ALTER TABLE `frndlist` DISABLE KEYS */;
INSERT INTO `frndlist` (`fid`,`rfrom`,`rto`,`status`) VALUES 
 (3,'akil','sugan','Accept'),
 (4,'sugan','akil','Accept'),
 (5,'sugan','addu','Accept'),
 (6,'addu','sugan','Accept'),
 (9,'bellammy','akil','Accept'),
 (10,'akil','bellammy','Accept'),
 (11,'bellammy','John','Accept'),
 (12,'John','bellammy','Accept'),
 (13,'John','akil','Accept'),
 (14,'akil','John','Accept'),
 (15,'pavithra','ramya','Accept'),
 (16,'ramya','pavithra','Accept'),
 (17,'ravi','akil','Accept'),
 (18,'ravi','pavithra','Waiting'),
 (19,'akil','ravi','Accept'),
 (20,'kiran','akil','Accept'),
 (21,'akil','kiran','Accept');
/*!40000 ALTER TABLE `frndlist` ENABLE KEYS */;


--
-- Definition of table `malicious`
--

DROP TABLE IF EXISTS `malicious`;
CREATE TABLE `malicious` (
  `mid` int(200) NOT NULL auto_increment,
  `malicious` varchar(200) default NULL,
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `malicious`
--

/*!40000 ALTER TABLE `malicious` DISABLE KEYS */;
INSERT INTO `malicious` (`mid`,`malicious`) VALUES 
 (1,'www.Mariogamesplay.com'),
 (2,'www.Galacticflashgames.com'),
 (3,'www.Towerofdefense.com'),
 (4,'www.Anywhere-games.com'),
 (5,'www.Anywhere-games.com'),
 (6,'www.Anywhere-gamess.com'),
 (7,'www.gamesproblem');
/*!40000 ALTER TABLE `malicious` ENABLE KEYS */;


--
-- Definition of table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(200) NOT NULL auto_increment,
  `msgfrom` varchar(200) default NULL,
  `msgto` varchar(200) default NULL,
  `msg` varchar(200) default NULL,
  `file` varchar(200) default NULL,
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`mid`,`msgfrom`,`msgto`,`msg`,`file`) VALUES 
 (1,'sugan','akil','a=hi','Lighthouse.jpg'),
 (2,'akil','sugan','asdf','Koala.jpg'),
 (3,'sugan','akil','6262','35.jpg'),
 (4,'addu','sugan','cjj','mario.jpg'),
 (7,'John','bellammy','Hi Hello','2.jpg'),
 (8,'ramya','pavithra','hi how is it','san thome gascic1.jpg'),
 (9,'ramya','pavithra','hi how is ','auroville.jpg');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;


--
-- Definition of table `proapp`
--

DROP TABLE IF EXISTS `proapp`;
CREATE TABLE `proapp` (
  `aprid` int(200) NOT NULL auto_increment,
  `username` varchar(200) default NULL,
  `appid` varchar(200) default NULL,
  `appname` varchar(200) default NULL,
  `licenseno` varchar(200) default NULL,
  `appurl` varchar(200) default NULL,
  `appicon` varchar(200) default NULL,
  KEY `aprid` (`aprid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proapp`
--

/*!40000 ALTER TABLE `proapp` DISABLE KEYS */;
INSERT INTO `proapp` (`aprid`,`username`,`appid`,`appname`,`licenseno`,`appurl`,`appicon`) VALUES 
 (2,'akil','264578','Happy Village','1245','https://apps.facebook.com/happyvillage/?fb_source=appcenter&fbs=133&fb_appcenter=1','Happy Village.png'),
 (3,'sugan','264578','Happy Village','1245','https://apps.facebook.com/happyvillage/?fb_source=appcenter&fbs=133&fb_appcenter=1','Happy Village.png'),
 (6,'bellammy','741852','Chess Game','ApLi1752no','https://apps.facebook.com/chesslive/?fb_source=appcenter','chess.jpg'),
 (7,'pavithra','741963','The Hunger Games','ApLi2940no','https://apps.facebook.com/hungergamesadventure/?fb_source=appcenter&fbs=133&fb_appcenter=1','The Hunger Games.png'),
 (8,'pavithra','741852','Chess Game','ApLi1752no','https://apps.facebook.com/chesslive/?fb_source=appcenter','chess.jpg'),
 (9,'akil','741963','The Hunger Games','ApLi9121no','https://apps.facebook.com/hungergamesadventure/?fb_source=appcenter&fbs=133&fb_appcenter=1','The Hunger Games.png'),
 (10,'akil','264578','Happy Village','ApLi4178no','https://apps.facebook.com/happyvillage/?fb_source=appcenter&fbs=133&fb_appcenter=1','Happy Village.png'),
 (11,'akil','264578','Happy Village','ApLi4178no','https://apps.facebook.com/happyvillage/?fb_source=appcenter&fbs=133&fb_appcenter=1','Happy Village.png');
/*!40000 ALTER TABLE `proapp` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `uid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `phoneno` varchar(45) NOT NULL,
  `file` varchar(300) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`uid`,`username`,`password`,`email`,`gender`,`country`,`phoneno`,`file`) VALUES 
 (1,'akil','akil','akil@gmail.com','Male','india','9840989898','male1.jpg'),
 (2,'suga','suga','suga@gmail.com','Female','india','986564836','2.jpg'),
 (3,'aki','aki','akil@gmail.com','Male','india','12345345','male1.jpg'),
 (4,'John','John','john@gmail.com','Male','US','9045678945','male1.jpg'),
 (5,'pavithra','123','pavithrajpinfotech@gmail.com','Male','chennai','9056784567','primage6.jpg'),
 (6,'ramya','ramya','pavithrajpinfotech@gmail.com','Female','chennai','9056784567','primage6.jpg'),
 (7,'ravi','ravi','pavithrajpinfotech@gmail.com','Male','india','9876556210','proimage3.jpg'),
 (8,'kiran','kiran','pavithrajpinfotech@gmail.com','Female','chennai','9876743210','proimage1.jpg');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
