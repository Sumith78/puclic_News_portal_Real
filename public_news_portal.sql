/*
MySQL Data Transfer
Source Host: localhost
Source Database:  public_news_portal
Target Host: localhost
Target Database:  public_news_portal
Date: 21-03-2023 19:29:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `iid` int(11) NOT NULL auto_increment,
  `iname` varchar(150) NOT NULL,
  `iinfo` varchar(1000) NOT NULL,
  `iview` varchar(150) NOT NULL,
  `icat` varchar(150) NOT NULL,
  `iposter` varchar(500) NOT NULL,
  `other` varchar(200) NOT NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `nm` varchar(40) NOT NULL,
  `usernm` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  `email` varchar(60) default NULL,
  `mobile` varchar(11) default NULL,
  `act` int(5) default NULL,
  PRIMARY KEY  (`nm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `image` VALUES ('1', 'aaa', 'aaa aaa aaa', 'Top View', 'Science', '1.png', '', 'SUMIT');
INSERT INTO `image` VALUES ('3', 'aaa', 'a1', 'Bottom View', 'Science', '3.png', '', 'SUMIT');
INSERT INTO `image` VALUES ('4', 'aaa', 'a2', 'Front View', 'Science', '4.png', '', 'SUMIT');
INSERT INTO `image` VALUES ('5', 'null', 'null', 'Politics', 'null', 'null', '', 'gaurav');
INSERT INTO `image` VALUES ('6', 'null', 'null', 'Politics', 'null', '6.png', '', 'gaurav');
INSERT INTO `image` VALUES ('7', 'null', 'null', 'Politics', 'null', '7.png', '', 'gaurav');
INSERT INTO `image` VALUES ('8', 'null', 'null', 'Health', 'null', 'null', '', 'gaurav');
INSERT INTO `image` VALUES ('9', 'null', 'null', 'Health', 'null', 'null', '', 'gaurav');
INSERT INTO `image` VALUES ('10', 'politics', 'null', 'Politics', 'null', '10.png', '', 'gaurav');
INSERT INTO `image` VALUES ('11', 'A1', 'null', 'Politics', 'null', 'null', '', 'gaurav');
INSERT INTO `image` VALUES ('12', 'Corona Outbreak', 'null', 'Health', 'null', 'null', '', 'gaurav');
INSERT INTO `image` VALUES ('13', 'Corona Outbreak', 'null', 'Health', 'null', '13.png', '', 'gaurav');
INSERT INTO `users` VALUES ('', '', '', '', '', '1');
INSERT INTO `users` VALUES ('gaurav', 'gaurav', '123456', 'gaurav@g.com', '9988776655', '1');
INSERT INTO `users` VALUES ('sumit', 'sumit', '123456', 'sumit@GMAIL.COM', '9886832434', '1');
