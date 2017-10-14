-- --------------------------------------------------------
-- Host:                         mysql13.ezhostingserver.com
-- Server version:               5.6.29 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for allicense
DROP DATABASE IF EXISTS `allicense`;
CREATE DATABASE IF NOT EXISTS `allicense` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `allicense`;


-- Dumping structure for table allicense.addresses
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `line1` varchar(60) NOT NULL,
  `line2` varchar(60) DEFAULT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zipCode` varchar(10) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressID`),
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.addresses: 6 rows
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`addressID`, `customerID`, `line1`, `line2`, `city`, `state`, `zipCode`, `phone`, `disabled`) VALUES
	(1, 1, '100 East Ridgewood Ave.', '', 'Paramus', 'NJ', '07652', '201-653-4472', 0),
	(2, 1, '21 Rosewood Rd.', '', 'Woodcliff Lake', 'NJ', '07677', '201-653-4472', 0),
	(3, 2, '16285 Wendell St.', '', 'Omaha', 'NE', '68135', '402-896-2576', 0),
	(4, 2, '16285 Wendell St.', '', 'Omaha', 'NE', '68135', '402-896-2576', 0),
	(5, 3, '19270 NW Cornell Rd.', '', 'Beaverton', 'OR', '97006', '503-654-1291', 0),
	(6, 3, '19270 NW Cornell Rd.', '', 'Beaverton', 'OR', '97006', '503-654-1291', 0);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;


-- Dumping structure for table allicense.administrators
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE IF NOT EXISTS `administrators` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.administrators: 3 rows
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` (`adminID`, `emailAddress`, `password`, `firstName`, `lastName`) VALUES
	(1, 'admin@myguitarshop.com', '6a718fbd768c2378b511f8249b54897f940e9022', 'Admin', 'User'),
	(2, 'joel@murach.com', '971e95957d3b74d70d79c20c94e9cd91b85f7aae', 'Joel', 'Murach'),
	(3, 'mike@murach.com', '3f2975c819cefc686282456aeae3a137bf896ee8', 'Mike', 'Murach');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;


-- Dumping structure for table allicense.amsarticles
DROP TABLE IF EXISTS `amsarticles`;
CREATE TABLE IF NOT EXISTS `amsarticles` (
  `recid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` mediumtext NOT NULL,
  `project` varchar(50) DEFAULT NULL,
  `recStatus` int(11) DEFAULT '0',
  `recLock` int(11) DEFAULT '0',
  `viewLock` int(11) DEFAULT '0',
  PRIMARY KEY (`recid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.amsarticles: 0 rows
/*!40000 ALTER TABLE `amsarticles` DISABLE KEYS */;
/*!40000 ALTER TABLE `amsarticles` ENABLE KEYS */;


-- Dumping structure for table allicense.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.categories: 3 rows
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
	(1, 'Guitars'),
	(2, 'Basses'),
	(3, 'Drums');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_additional_htmlblob_users
DROP TABLE IF EXISTS `cms_allicense_additional_htmlblob_users`;
CREATE TABLE IF NOT EXISTS `cms_allicense_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htmlblob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_additional_htmlblob_users: 0 rows
/*!40000 ALTER TABLE `cms_allicense_additional_htmlblob_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_additional_htmlblob_users` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_additional_htmlblob_users_seq
DROP TABLE IF EXISTS `cms_allicense_additional_htmlblob_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_additional_htmlblob_users_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_additional_htmlblob_users_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_additional_htmlblob_users_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_allicense_additional_htmlblob_users_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_additional_users
DROP TABLE IF EXISTS `cms_allicense_additional_users`;
CREATE TABLE IF NOT EXISTS `cms_allicense_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_additional_users: 0 rows
/*!40000 ALTER TABLE `cms_allicense_additional_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_additional_users` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_additional_users_seq
DROP TABLE IF EXISTS `cms_allicense_additional_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_additional_users_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_additional_users_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_additional_users_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_allicense_additional_users_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_adminlog
DROP TABLE IF EXISTS `cms_allicense_adminlog`;
CREATE TABLE IF NOT EXISTS `cms_allicense_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(40) DEFAULT NULL,
  KEY `cms_allicense_index_adminlog1` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_adminlog: 4 rows
/*!40000 ALTER TABLE `cms_allicense_adminlog` DISABLE KEYS */;
INSERT INTO `cms_allicense_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
	(1455976446, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1458198761, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1456269106, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1457175082, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '');
/*!40000 ALTER TABLE `cms_allicense_adminlog` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_admin_bookmarks
DROP TABLE IF EXISTS `cms_allicense_admin_bookmarks`;
CREATE TABLE IF NOT EXISTS `cms_allicense_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `cms_allicense_index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_admin_bookmarks: 0 rows
/*!40000 ALTER TABLE `cms_allicense_admin_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_admin_bookmarks` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_admin_bookmarks_seq
DROP TABLE IF EXISTS `cms_allicense_admin_bookmarks_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_admin_bookmarks_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_admin_bookmarks_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_admin_bookmarks_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_allicense_admin_bookmarks_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_admin_recent_pages
DROP TABLE IF EXISTS `cms_allicense_admin_recent_pages`;
CREATE TABLE IF NOT EXISTS `cms_allicense_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_admin_recent_pages: 0 rows
/*!40000 ALTER TABLE `cms_allicense_admin_recent_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_admin_recent_pages` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_admin_recent_pages_seq
DROP TABLE IF EXISTS `cms_allicense_admin_recent_pages_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_admin_recent_pages_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_admin_recent_pages_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_admin_recent_pages_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_allicense_admin_recent_pages_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content
DROP TABLE IF EXISTS `cms_allicense_content`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `markup` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `cms_allicense_index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `cms_allicense_index_content_by_default_content` (`default_content`),
  KEY `cms_allicense_index_content_by_parent_id` (`parent_id`),
  KEY `cms_allicense_index_content_by_hierarchy` (`hierarchy`),
  KEY `cms_allicense_index_content_by_idhier` (`content_id`,`hierarchy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content: 7 rows
/*!40000 ALTER TABLE `cms_allicense_content` DISABLE KEYS */;
INSERT INTO `cms_allicense_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES
	(15, 'THE NEXT GENERATION OF DEALMAKING', 'content', 1, -1, 24, 1, '00001', 1, 'Home', 'home', 1, 1, 'html', 1, 1, '15', 'home', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,image1,content_en', '', 'Home Page, shortcut key=1', '', '1', 2, '2006-07-25 21:22:31', '2014-04-24 11:19:59', 0, ''),
	(61, 'Sponsors', 'content', 2, -1, 24, 7, '00007', 0, 'Sponsors', 'sponsors', 1, NULL, 'html', 1, 1, '61', 'sponsors', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2014-03-13 14:08:13', '2014-04-24 16:43:52', 0, ''),
	(57, 'Agenda', 'content', 1, -1, 24, 3, '00003', 0, 'Agenda', 'agenda', 1, NULL, 'html', 1, 1, '57', 'agenda', 'searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2014-01-09 22:32:27', '2014-04-29 23:39:12', 0, ''),
	(58, 'Speakers', 'content', 1, -1, 24, 4, '00004', 0, 'Speakers', 'speakers', 1, NULL, 'html', 1, 1, '58', 'speakers', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2014-01-09 22:38:43', '2014-03-28 11:33:34', 0, ''),
	(59, 'Deal of the Year', 'content', 1, -1, 24, 5, '00005', 0, 'Deal of the Year', 'deal-of-the-year', 1, NULL, 'html', 1, 1, '59', 'deal-of-the-year', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 2, '2014-01-09 22:41:01', '2014-05-09 12:44:08', 0, ''),
	(60, 'Hotel/Travel', 'content', 1, -1, 24, 6, '00006', 0, 'Hotel/Travel', 'hotel-travel', 1, NULL, 'html', 1, 1, '60', 'hotel-travel', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2014-01-09 22:43:36', '2014-01-09 23:06:47', 0, ''),
	(34, 'About', 'content', 1, -1, 24, 2, '00002', 0, 'About', 'about', 1, NULL, 'html', 1, 1, '34', 'about', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2014-01-09 23:06:47', 0, '');
/*!40000 ALTER TABLE `cms_allicense_content` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_accounts
DROP TABLE IF EXISTS `cms_allicense_content_accounts`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_accounts` (
  `acctid` int(11) NOT NULL AUTO_INCREMENT,
  `acctKey` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `userPass` varchar(250) NOT NULL,
  `emailAddr` varchar(150) NOT NULL,
  `acctStatus` int(11) NOT NULL DEFAULT '1',
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`acctid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_accounts: 1 rows
/*!40000 ALTER TABLE `cms_allicense_content_accounts` DISABLE KEYS */;
INSERT INTO `cms_allicense_content_accounts` (`acctid`, `acctKey`, `firstName`, `lastName`, `userName`, `userPass`, `emailAddr`, `acctStatus`, `createDate`, `updateDate`) VALUES
	(1, '1fcc87ae-0b6d-11e6-a0a2-005056a82aef', 'Super', 'Admin', 'admin', 'admin', 'aminakov@anokatech.edu', 1, '2016-04-26 00:09:59', '2016-04-27 19:40:15');
/*!40000 ALTER TABLE `cms_allicense_content_accounts` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_blocks
DROP TABLE IF EXISTS `cms_allicense_content_blocks`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_blocks` (
  `recid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` mediumtext NOT NULL,
  `project` varchar(50) DEFAULT NULL,
  `recStatus` int(11) DEFAULT '1',
  `recLock` int(11) DEFAULT '0',
  `viewLock` int(11) DEFAULT '0',
  `updatedByUser` int(11) DEFAULT '0',
  `displayDateStart` datetime DEFAULT CURRENT_TIMESTAMP,
  `displayDateEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`recid`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_blocks: 42 rows
/*!40000 ALTER TABLE `cms_allicense_content_blocks` DISABLE KEYS */;
INSERT INTO `cms_allicense_content_blocks` (`recid`, `publicationDate`, `title`, `summary`, `content`, `project`, `recStatus`, `recLock`, `viewLock`, `updatedByUser`, `displayDateStart`, `displayDateEnd`) VALUES
	(4, '2016-04-15', 'CSS3 Marquee', 'Microsoft buried a Get Windows 10 ad generator inside this month\'s Internet Explorer security patch for...', '	\r\nI was recently in your situation - I graduated with a degree in computer science, and relatively low confidence in my programming.\r\n\r\nGetting the first job is going to require good interview skills - and write a good cover letter. Also make yourself a decent portfolio and hand that in with your application.\r\n\r\nTo get confidence - build your own software, from design to creating the installer and beta testing it. Following the development cycle here will prepare you for the workplace.\r\n\r\nOnce you start working - the confidence will come in quickly enough.\r\n\r\nDon\'t worry about learning algorithms, you will learn them as you need them. You also need to consider your employer will most likely allow you to use the internet as a resource - learn from tutorials for specific problems.\r\n\r\nIf you want to increase your odds of getting a job - familiarize yourself with the .NET framework, with C# or Java. Object-oriented languages are in high demand and employers like using them because of their high productivity potential.\r\n\r\nUntil you get a job your job should be building your portfolio. Just keep adding to it, building different solutions and testing them.\r\n\r\nDon\'t worry about getting a job either - you will get one, the industry is still growing rapidly and we need all the developers we can get.', 'starTribune', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(5, '2016-04-20', 'Wizards', 'Wizards of Middle Earth', '<p>In the Undying Lands around TA 1000, Manwë became aware that the spirit of Morgoth\'s most dedicated lieutenant Sauron was rising in power again, and summoned a council of the Valar to send three messengers to Middle-earth to protect the free peoples and assure them the Valar had not forgotten them. Two Maiar came, Curumo (later known as Saruman) sent by Aulë, and Alatar (Morinehtar), sent by Oromë. Manwë asked where Olórin was, and he came, after returning from a journey. Manwë asked Olórin (later Gandalf) if he would go as the third messenger. Olórin said that he was too weak, and he was afraid of Sauron, however Manwë said that was all the more reason to go, and that he commanded Olórin to go as the third. Then Varda said "Not as the third." Yavanna begged Curumo to take Aiwendil (Radagast), and Alatar took Pallando (Rómestámo) as a friend. They were forbidden to dominate the free peoples of Middle-earth or to match Sauron\'s power with power. When Saruman, the greatest of the Wizards, disobeyed this injunction, he was cast from the order and banished from Valinor.</p>\r\n<p>The Wizards were known by various names, and were arrayed in different colours. Of those who came to Middle-earth, sent by the Valar, five are known, the Heren Istarion (Order of Wizards). After arriving in Middle-earth, the two Blue Wizards apparently went east before the War of the Ring; whether they played a part in the events of that war is currently unknown. (According to Tolkien\'s letters they may have formed cults for magic worship and practice among the Easterlings.) Radagast the Brown concerned himself mainly with plants and animals, and lived in Mirkwood for many years. Curumo (or Curunir, also known as Saruman) and Olórin spent time with the Free Peoples, the Elves, Dwarves, and Men. Curunir was wise and respected and became head of the White Council in TA 2463. However, he became prideful and jealous of the potential and purity of spirit of Gandalf, who would eventually surpass him in power. Saruman slowly came to betray the original purpose of the Wizards, and sought power for himself. During the War of the Ring he was overthrown, and he was finally killed within sight of Bag End by his tormented servant Grima Wormtongue, who slit his neck after a failed attempt to rule the Shire. Saruman\'s spirit looked to the West, but was blown away.</p>\r\n\r\n<p>At the end of the Third Age, the Wizards passed from sight, with the fall of Sauron their work was done. Gandalf passed over Sea with the Last Riding of the Keepers of the Rings. Saruman became a naked spirit, and wandered Middle-Earth forever, since he was banished from Valinor. Radagast stayed in Middle-Earth, tending to the wilderness. The fate of the Blue Wizards is unknown.</p>', 'project', 1, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(6, '2016-04-15', 'Building a Content Management System', '<p>First paragraph</p>', '<p>My article content</p>  ', 'AMSWagner', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(7, '2016-04-27', 'Test Connection - vishal', 'Test', 'Test', NULL, 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(50, '2016-04-27', 'Japan Joins Stealth Fighter Club', '<p>Japan\'s first stealth fighter jet test: \'extremely stable\'</p>', '<p>Japan joined the exclusive stealth jet club Friday with the successful test flight of its first radar-evading aircraft -- a prototype called the X-2.\r\n<br><br>\r\nThe test pilot described the flight as "extremely stable," according to manufacturer Mitsubishi Heavy Industries.\r\n<br><br>\r\nThe twin-engine jet -- painted in the national red and white colors -- took off from Japan\'s Nagoya airport and completed various test maneuvers including climbing, descent and circling.\r\n<br><br>\r\nIt then touched down at Japan Air Self-Defense Force\'s Gifu Air Base, Mitsubishi said.\r\n<br><br>\r\nThe pilot said the flight mirrored simulated training.\r\n<br><br>\r\nThe historic event is the latest example of Japan\'s assertive defense posture in the region, as China\'s military continues to flex its muscles, with a 7.6% increase in its 2016 defense budget.\r\n<br><br>\r\nBeijing\'s Shenyang FC-31 fighter jet appears to have stealth characteristics, but few engineering details are known about it.\r\n <br><br>\r\nChina\'s fifth-generation twin-engine J-20 fighter is also thought to be a stealthy design and is expected to be fully operational by 2018.\r\n<br><br>\r\nJapan\'s development of a stealth fighter jet will add another component to an already complicated security environment. World leaders are concerned about tensions on the Korean peninsula and territorial disputes in the sea lanes running south from northern Asia. With all this going on, Washington has to remain mindful that Japan hosts most of the key U.S. forward bases in the region.\r\n<br><br>\r\nThe Japanese X-2 that flew Friday "integrates an airframe, engines, and other advanced systems and equipment all adaptable to future fighters" Mitsubishi said.\r\n<br><br>\r\nThe engineering of radar-evading stealth technology remains challenging even now, decades after the United States first invented it. Specific surfaces of the planes are designed to absorb radar signals or to deflect radar signals away -- making the aircraft virtually invisible to electronics. Special coatings are applied to exterior surfaces that make the planes even less detectable by devices. The U.S. F-117 Nighthawk (no longer in service), B-2 Spirit bomber, F-22 Raptor and F-35 Lightning II fighters all have stealth designs.</p>', 'CNN', 1, 0, 0, 0, '2016-04-27 19:37:07', NULL),
	(8, '2016-04-21', ' Huawei Matebook -', 'Huawei\'s Windows 10 tablet packs a stylus with a frickin\' laser pointer built in', 'The thin, light, attractive MateBook that Huawei introduced at Mobile World Congress obviously takes a few design cues from Apple\'s iPad Pro, including a folding keyboard case and a pressure-sensitive digital pen for writing or drawing on the screen.\r\n\r\nHuawei\'s, though, comes with a bonus: a built-in laser pointer on one end that you can use to emphatically circle or underscore key points during a presentation -- or just use to drive the feline population nuts.\r\n\r\nThe rest of the package looks more than a little familiar (aka, like the iPad Pro), from the folding keyboard case to the tablet\'s sleek, aluminum body. Of course, the 12-inch MateBook (incidentally, Huawei\'s first tablet-PC hybrid) runs Windows 10 software, like Microsoft\'s own Surface 4 Pro. It automatically prompts you when you switch from tablet mode to PC mode, which shifts the display to make it more like either a handheld or laptop-like experience.\r\n\r\nThe MateBook attaches to its keyboard case by way of sturdy magnets that, as we accidentally found out, are strong enough to hold fast even when the keyboard is dangling in the air, so you shouldn\'t have to worry too much about the parts disconnecting when you\'re toting it around.', NULL, 1, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(9, '2016-05-01', 'My Test Article A', '<p>This is my summary</p>', '<p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p>', 'starTribune', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(10, '2016-04-26', 'My Test Article B', '<p>This is my summary</p>', '<p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p>', 'starTribune', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(11, '2016-05-09', 'My Test Article C', '<p>This is my summary</p>', '<p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p>', 'starTribune', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(12, '2016-04-01', 'My Test Article D', '<p>This is my summary</p>', '<p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p><p>This is my summary</p>', 'starTribune', 1, 0, 3, 0, '2016-04-26 00:36:19', NULL),
	(14, '2016-04-15', 'Secret U.S. court issues first order for phone data under new law', 'Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah...', '<p>Qui dicam tritani incorrupte cu. Solum tincidunt nec ne. An illum iudico vim. Quodsi accusamus duo ei. Habeo maluisset \r\n	expetendis ea eos, mea populo graeci gloriatur ad, duo ad nostro omnium.</p>\r\n	<p>Ius praesent electram cu, tritani aperiri ad sea. Mea ut quot lucilius adipisci, nisl purto conclusionemque vix cu, duo \r\n	graeco democritum ei. Nusquam intellegebat an duo, pro veri recteque petentium ad. Ferri graeco has at, cum fastidii \r\n	dissentiunt et. Ut his modus commune disputando, cu cum nostrud adipiscing repudiandae, usu alii inermis cu.</p>\r\n	<p>In paulo laudem verterem duo, idque laudem postulant te eos. Eu mei tantas aliquid platonem, in adhuc munere dolores vis, \r\n	dicit aperiam ponderum ut has. Quod putent nominati an nec, quodsi eripuit eos at, sonet dolorum constituam mei et. Sint \r\n	eirmod consequat est ea, ei suas graecis his, usu lucilius posidonium ad.</p>', 'cnews', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(15, '2014-04-15', 'New Article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar. Sed volutpat nulla sit amet est suscipit hendrerit. Phasellus ut nulla vel risus efficitur scelerisque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar. Sed volutpat nulla sit amet est suscipit hendrerit. Phasellus ut nulla vel risus efficitur scelerisque.', 'DerSpiegel', 0, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(62, '2016-04-30', 'Awah -', 'Atc', 'ATC', NULL, 1, 0, 0, 0, '2016-04-30 17:18:34', NULL),
	(16, '2016-04-30', 'Test 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dui ipsum, mattis convallis urna id, lacinia commodo velit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dui ipsum, mattis convallis urna id, lacinia commodo velit.', 'DerSpiegel', 1, 0, 0, 0, '2016-04-30 17:59:14', NULL),
	(63, '2016-05-25', 'fishing', ' going fishing', 'Lets go down to the river', 'AMSWagner', 1, 0, 0, 0, '2016-05-02 08:41:09', NULL),
	(32, '2016-04-27', '7', ' 77', '777', 'AMSWagner', 1, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(33, '2016-04-20', 'to the zoo', 'to see the monkeys ', 'Lets all go to the zoo', 'AMSWagner', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(34, '2016-04-15', 'Secret Ukrainian court issues first order for phone data under new law', '<p>Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', '<p>Qui dicam tritani incorrupte cu. Solum tincidunt nec ne. An illum iudico vim. Quodsi \r\n		accusamus duo ei. Habeo maluisset expetendis ea eos, mea populo graeci gloriatur ad, \r\n		duo ad nostro omnium.</p>\r\n	<p>Ius praesent electram cu, tritani aperiri ad sea. Mea ut quot lucilius adipisci, nisl purto \r\n		conclusionemque vix cu, duo graeco democritum ei. Nusquam intellegebat an duo, pro veri \r\n		recteque petentium ad. Ferri graeco has at, cum fastidii dissentiunt et. Ut his modus commune \r\n		disputando, cu cum nostrud adipiscing repudiandae, usu alii inermis cu.</p>\r\n	<p>In paulo laudem verterem duo, idque laudem postulant te eos. Eu mei tantas aliquid platonem, \r\n		in adhuc munere dolores vis, dicit aperiam ponderum ut has. Quod putent nominati an nec, quodsi \r\n		eripuit eos at, sonet dolorum constituam mei et. Sint eirmod consequat est ea, ei suas graecis \r\n		his, usu lucilius posidonium ad.</p>', 'cnews', 1, 0, 2, 0, '2016-04-26 00:36:19', NULL),
	(17, '2014-04-15', 'Shut up', 'Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', 'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.\r\n\r\nblah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', NULL, 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(18, '2014-04-15', 'Shut up', 'Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', 'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.\r\n\r\nblah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', NULL, 1, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(19, '2014-04-15', 'Shut up', 'Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', 'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.\r\n\r\nblah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', NULL, 0, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(20, '2014-04-15', 'Shut up', 'Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', 'blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.\r\n\r\nblah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', NULL, 0, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(21, '2016-05-15', 'Secret U.S. court issues first order for phone data under new law', 'Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah.', '<p>Qui dicam tritani incorrupte cu. Solum tincidunt nec ne. An illum iudico vim. Quodsi accusamus duo ei. Habeo maluisset \r\n	expetendis ea eos, mea populo graeci gloriatur ad, duo ad nostro omnium.</p>\r\n	<p>Ius praesent electram cu, tritani aperiri ad sea. Mea ut quot lucilius adipisci, nisl purto conclusionemque vix cu, duo \r\n	graeco democritum ei. Nusquam intellegebat an duo, pro veri recteque petentium ad. Ferri graeco has at, cum fastidii \r\n	dissentiunt et. Ut his modus commune disputando, cu cum nostrud adipiscing repudiandae, usu alii inermis cu.</p>\r\n	<p>In paulo laudem verterem duo, idque laudem postulant te eos. Eu mei tantas aliquid platonem, in adhuc munere dolores vis, \r\n	dicit aperiam ponderum ut has. Quod putent nominati an nec, quodsi eripuit eos at, sonet dolorum constituam mei et. Sint \r\n	eirmod consequat est ea, ei suas graecis his, usu lucilius posidonium ad.</p>', NULL, 1, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(22, '2016-04-05', 'Robert\'s Article', 'In the authentication project, you saw a login form and learned to authenticate users by comparing their login and passwords to saved credentials (e.g. records in a database). Now, we will use session variables to remember that the users are logged in as they go from page to page and we will use cookies to make it easier for users to log in on future visits.', 'In the authentication project, you saw a login form and learned to authenticate users by comparing their login and passwords to saved credentials (e.g. records in a database). Now, we will use session variables to remember that the users are logged in as they go from page to page and we will use cookies to make it easier for users to log in on future visits.\r\nIn the authentication project, you saw a login form and learned to authenticate users by comparing their login and passwords to saved credentials (e.g. records in a database). Now, we will use session variables to remember that the users are logged in as they go from page to page and we will use cookies to make it easier for users to log in on future visits.', 'WashingtonPost', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(23, '2016-05-27', 'Article 23', 'safsdf', 'safasf', 'cnews', 1, 0, 4, 0, '2016-04-26 00:36:19', NULL),
	(24, '2016-02-08', 'Unbelievable!!!', '<p><span class="marker"><em><strong>This is my test summary</strong></em></span></p>\r\n', '<p>Lorem ipsum dolor sit amet, partem doming sapientem id vim, nam conceptam scriptorem no. Cu ius definiebas contentiones, vocibus torquatos expetendis et mea. Sit no temporibus instructior, his ferri molestiae abhorreant in, pri id elit oblique periculis. Cibo democritum et ius, suas qualisque sit in, an autem summo alterum eum. Cu novum meliore platonem est, et vel omnis malorum. Ex cibo consequuntur mei, nec delectus delicata conceptam ne.</p>\r\n', 'starTribune', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(29, '2016-04-22', 'gn', 'Testing 123', 'OMG', 'Dean30', 0, 0, 1, 0, '2016-04-26 00:36:19', NULL),
	(28, '2015-11-11', 'rach', 'test', 'test 2', 'Dean30', 1, 0, NULL, 0, '2016-04-26 00:36:19', NULL),
	(30, '2016-04-12', 'sunshine', 'shinin', 'once upon a time there was a giant who roamed the land..', 'AMSWagner', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(31, '2016-04-12', 'sunshine', 'shinin', 'once upon a time there was a giant who roamed the land..', 'AMSWagner', 1, 0, 0, 0, '2016-04-26 00:36:19', NULL),
	(49, '2012-12-12', 'Frank', 'Alex is great!', 'This is a little late.\r\n', NULL, 1, 0, 1, 0, '2016-04-27 16:25:50', NULL),
	(64, '2016-05-26', 'road trip', ' california', 'to california', 'AMSWagner', 1, 0, 0, 0, '2016-05-02 08:41:52', NULL),
	(52, '2012-05-04', 'Test', 'srgjshjshjs', 'sfgjsgjghj', 'cnews', 1, 0, 0, 0, '2016-04-28 12:14:06', NULL),
	(53, '2016-05-06', 'Test 23', 'asd', 'asdasdas', 'cnews', 1, 0, 0, 0, '2016-04-28 12:26:02', NULL),
	(54, '2016-05-06', 'Test 233', 'asd', 'asdasdas', 'cnews', 1, 0, 0, 0, '2016-04-28 12:26:14', NULL),
	(55, '2016-05-16', 'Test 233', 'asd', 'asdasdas', 'cnews', 1, 0, 0, 0, '2016-04-28 12:27:34', NULL),
	(60, '2016-06-05', 'as3', 's23', 'c23', 'cnews', 1, 0, 1, 0, '2016-04-28 12:29:40', NULL),
	(65, '2016-05-28', 'trees', ' over the rainbow', 'o happy day', 'AMSWagner', 1, 0, 0, 0, '2016-05-02 08:42:55', NULL),
	(66, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', NULL, 1, 0, 0, 0, '2016-05-02 11:03:43', NULL),
	(67, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', NULL, 1, 0, 0, 0, '2016-05-02 11:07:06', NULL),
	(68, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', NULL, 1, 0, 0, 0, '2016-05-02 11:35:03', NULL),
	(69, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in odio eget augue egestas pulvinar.', NULL, 1, 0, 0, 0, '2016-05-02 11:38:31', NULL);
/*!40000 ALTER TABLE `cms_allicense_content_blocks` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_editors
DROP TABLE IF EXISTS `cms_allicense_content_editors`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_editors` (
  `recid` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NOT NULL,
  `acctid` int(11) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_editors: 0 rows
/*!40000 ALTER TABLE `cms_allicense_content_editors` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_content_editors` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_projects
DROP TABLE IF EXISTS `cms_allicense_content_projects`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_projects` (
  `projectid` int(11) NOT NULL,
  `projectKey` varchar(50) NOT NULL,
  `projectName` varchar(250) NOT NULL,
  `projectDescription` text NOT NULL,
  `projectStatus` int(11) NOT NULL DEFAULT '1',
  `ownerID` int(11) NOT NULL,
  PRIMARY KEY (`projectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_projects: 1 rows
/*!40000 ALTER TABLE `cms_allicense_content_projects` DISABLE KEYS */;
INSERT INTO `cms_allicense_content_projects` (`projectid`, `projectKey`, `projectName`, `projectDescription`, `projectStatus`, `ownerID`) VALUES
	(5, 'WIZ', 'Wizards', 'Wizards of Middle Earth', 1, 26);
/*!40000 ALTER TABLE `cms_allicense_content_projects` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_props
DROP TABLE IF EXISTS `cms_allicense_content_props`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_allicense_index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_props: 73 rows
/*!40000 ALTER TABLE `cms_allicense_content_props` DISABLE KEYS */;
INSERT INTO `cms_allicense_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
	(57, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-04-29 23:39:12'),
	(57, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-04-29 23:39:12'),
	(58, 'string', 'content_en', NULL, NULL, NULL, '<script type="text/javascript">// <![CDATA[\r\n$(function(){\r\n$("#ajaxresults-speakers").load("/next/speakers.html",  \r\n    function(response, status, xhr) {    \r\n    if (status == "error") {   \r\n        var msg = "Sorry but there was an <strong>error</strong>: ";   \r\n        $("#error").html(msg + xhr.status + " " + xhr.statusText);   \r\n    }  \r\n    $("#accordion img").each(function(index, element) {			\r\n        var $this = $(this);\r\n	var $img = \'https://www.signup4.net/Upload/THOM13A/ALLI48E/\' + $this.attr(\'src\');\r\n        $this.attr(\'src\', $img);\r\n    });\r\n		\r\n    $("#accordion h3").each(function(index, element) {\r\n        $(this).next("div").find("h2").text($(this).text());\r\n        });\r\n/* All panels are accordionized immediately after loading the content */   \r\n    $("#accordion").accordion({   \r\n        collapsible: true,  \r\n        icons: false,  \r\n        heightStyle: "content",  \r\n        active: true  \r\n     });   \r\n});\r\n});\r\n// ]]></script>\r\n<div id="ajaxresults-speakers">Loading speaker data. Please wait.</div>', NULL, '2014-03-28 11:33:34'),
	(31, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
	(32, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
	(15, 'string', 'target', '', '', '', '', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'pagedata', '', '', '', '', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'extra1', '', '', '', '', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'extra2', '', '', '', '', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'extra3', '', '', '', '', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'image', '', '', '', '-1', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'thumbnail', '', '', '', '-1', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'searchable', '', '', '', '1', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2014-04-24 11:19:59'),
	(15, 'string', 'image1', '', '', '', 'uploads/images/logo1.gif', NULL, '2009-05-13 10:12:18'),
	(34, 'string', 'content_en', '', '', '', '<p>The dealmaking landscape has shifted. Not only have we witnessed a change in its leaders, but many of them believe that medium sized biopharma companies are more active and innovative than their large pharma counterparts. Today, big pharma companies may even be seen tapping into biotech dealmaking leaders for their top posts.</p>\r\n<p>For nearly two decades, Allicense has been bringing together the key players in the Pharma, Biotech, and Financial communities to tackle today’s most relevant issues and shape the future of the industry.</p>\r\n<div>Network and engage with 200+ deal makers at the only event that focuses exclusively on key issues facing the industry.<br /><br /></div>\r\n<div><strong>Event Overview</strong></div>\r\n<ul>\r\n<li>\r\n<div>Over 40% attendees are SVP level and above </div>\r\n</li>\r\n<li>\r\n<div>200+ qualified dealmarkers</div>\r\n</li>\r\n<li>\r\n<div>Editorially driven program lead by next generation of dealmakers advisory committee</div>\r\n</li>\r\n</ul>\r\n<div><strong>Why Attend?</strong></div>\r\n<ul>\r\n<li>\r\n<div><strong>MEET</strong> the dealmakers redefining the sector</div>\r\n</li>\r\n<li>\r\n<div><strong>DISCUSS</strong> key issues that face the industry</div>\r\n</li>\r\n<li>\r\n<div><strong>LEARN</strong> about innovative deals and structure shaping the future</div>\r\n</li>\r\n</ul>\r\n<div><strong>Who will be there?</strong></div>\r\n<p>This conference will be of particular interest to you if you belong in any of the following categories:</p>\r\n<ul>\r\n<li>\r\n<div>Dealmakers</div>\r\n</li>\r\n<li>\r\n<div>CEOs</div>\r\n</li>\r\n<li>\r\n<div>CBOs</div>\r\n</li>\r\n<li>\r\n<div>VPs &amp; Directors of Business and Corporate Development</div>\r\n</li>\r\n<li>\r\n<div>General Partners from Venture Firms</div>\r\n</li>\r\n</ul>\r\n<div><strong>About Allicense</strong></div>\r\n<p>The 2014 Allicense Conference is the leading event for dealmaking, licensing and business development professionals, and is hosted by Thomson Reuters. Recap, originally founded in 1988 and the driving force of Allicense, is now part of Thomson Reuters. Integrating Recap solutions with the best-in-class coverage of industry R&amp;D intelligence in Cortellis, solidifies Thomson Reuters as the leading provider of intelligence for the life sciences Business Development and Licensing market. The integrated offering provides customers with a single source of insight allowing them to more quickly and reliably ensure that they are finding the right partnership opportunities, and that they are structuring the deal terms that maximize the value those partnerships contribute to their business.</p>\r\n<div><strong><br />Co-Hosts &amp; Advisory Commitee</strong></div>\r\n<p>We would like to thank our co-hosts:</p>\r\n<ul>\r\n<li>\r\n<div>Locust Walk Partners</div>\r\n</li>\r\n<li>\r\n<div>Business Development Professionals Biopharma</div>\r\n</li>\r\n<li>\r\n<div>Fenwick &amp; West</div>\r\n</li>\r\n<li>\r\n<div>Russel Reynolds</div>\r\n</li>\r\n<li>\r\n<div>BayBio</div>\r\n</li>\r\n<li>\r\n<div>ABD Insurance &amp; Financial Services</div>\r\n</li>\r\n</ul>', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'target', '', '', '', '', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'pagedata', '', '', '', '', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'extra1', '', '', '', '', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'extra2', '', '', '', '', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'extra3', '', '', '', '', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'image', '', '', '', '-1', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'thumbnail', '', '', '', '-1', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'searchable', '', '', '', '1', NULL, '2014-01-09 22:28:16'),
	(34, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2014-01-09 22:28:16'),
	(57, 'string', 'content_en', NULL, NULL, NULL, '<p>Celebrating its 18th year, this year\'s forum will examine many facets of the evolving relationship between biotech, big pharma, VCs, academia, and payers.</p>\r\n<h2>Event Overview</h2>\r\n<ul>\r\n<li>Over 40% attendees are SVP level and above</li>\r\n<li>200+ Qualified Deal Markers</li>\r\n<li>Editorially driven program lead by Thomson Reuters Recap Analysts</li>\r\n<li>Exclusive opportunity to sponsor event at a range of levels. For sponsorship opportunities contact Jillian Tygh at <a href="mailto:jillian.tygh@thomsonreuters.com" target="_blank">jillian.tygh@thomsonreuters.com</a>.</li>\r\n</ul>\r\n<!--\r\n<h2>Topics</h2>\r\n<ul>\r\n<li>The Impact of Healthcare Reform on the Biopharmaceutical Industry</li>\r\n<li>So I’ve been a successful Business Development Executive: What’s Next?</li>\r\n<li>“Large and In Charge vs. Small, but Mighty” – Who Makes a Better Licensing Partner: Established Global Pharmaceuticals Companies or Emerging Specialty Pharma and Biotech Players?</li>\r\n<li>Partnering Returned Assets: Understanding Strategies to Maximize Value</li>\r\n<li>Bull or Bear – what does the future hold for the next generation of dealmakers?</li>\r\n</ul>\r\n-->\r\n<h2>Tuesday April 29, 2014</h2>\r\n<table class="e-table">\r\n<tbody>\r\n<tr>\r\n<td width="25%">7.00 am</td>\r\n<td width="75%"><strong>Continental Breakfast</strong></td>\r\n</tr>\r\n<tr>\r\n<td>8.00 am</td>\r\n<td><strong>Welcome &amp; Introductions</strong><br /> <em>Eric Walczykowski, Vice President, Life Sciences, Thomson Reuters<br /></em></td>\r\n</tr>\r\n<tr>\r\n<td>8.30 am</td>\r\n<td><strong>Keynote Address:</strong> The Impact of Healthcare Reform on the Biopharmaceutical Industry<br /><strong><em>Panelists:</em></strong><br /><em>Zeke Emanuel, Joint Appointment, Wharton School &amp; School of Medicine, University of Pennsylvania</em><br /><em>Ari Fleischer, Former White House Press Secretary for U.S. President George W. Bush 2001-2003</em><br /><em>Paul Hastings, CEO, OncoMed</em><br /><strong><em>Moderator:</em></strong><br /><em>Jim Greenwood, President and CEO, Biotechnology Industry Organization</em></td>\r\n</tr>\r\n<tr>\r\n<td>9.55 am</td>\r\n<td><strong>Analyst Presentation: </strong>Looking Back: A Review of the Biopharma Deals<strong><br /> </strong><em>Laura Vitez, Principal Business Analyst, Thomson Reuters<br /> Vinay Singh, Senior Deals Analyst, Thomson Reuters</em></td>\r\n</tr>\r\n<tr>\r\n<td>10.30 am</td>\r\n<td><strong>Refreshment Break</strong></td>\r\n</tr>\r\n<tr>\r\n<td>11.00 am</td>\r\n<td><strong>Panel: </strong>“Large and In Charge vs. Small, but Mighty” – Who Makes a Better Licensing Partner: Established Global Pharmaceuticals Companies or Emerging Specialty Pharma and Biotech Players?<br /> <strong><em>Panelists:</em></strong><em> <br /> George Golumbeski,</em> <em>Sr. Vice President, BD at Celgene</em><br /> <em>Jeff Jonker, SVP, Business Development, Theravance</em><br /> <em>Gary Phillips, Managing Director, Chief Strategy Officer, Mallinckrodt Pharma</em><br /> <em>James Mackay, President and Chief Operating Officer, Ardea Biosciences and AstraZeneca Global Product VP, Lesinurad</em><br /><em>Natalie Holles, SVP, Business Development, Hyperion</em><br /><em>Graham Brazier, VP, Business Development, Bristol-Myers Squibb</em><br /> <strong><em>Moderator:</em></strong><em> <br /> Chris Ehrlich, Managing Director, Locust Walk Partners</em></td>\r\n</tr>\r\n<tr>\r\n<td>12.00 pm</td>\r\n<td><strong>Breakthrough Deal of the Year <br /> </strong><em>Nominees for the Breakthrough Awards will be provided the opportunity to present on their respective deals that have been selected for Deal of the Year.</em></td>\r\n</tr>\r\n<tr>\r\n<td>1.00 pm</td>\r\n<td><strong>Keynote Speaker and Networking Lunch:</strong> The Evolving Role of Foundations in Drug Development and Deal-making<br /> <em>Tracey Mumford, Senior Associate Director, Research Partnerships, Michael J Fox Foundation<br />Mark Gordon, Senior Director, CI and BD&amp;L, Thomson Reuters</em></td>\r\n</tr>\r\n<tr>\r\n<td>2.00 pm</td>\r\n<td><strong>Presentation: </strong>Venture Capital Trends<strong> <br /> </strong><em>Vinay Singh, Senior Deals Analyst, Thomson Reuters</em></td>\r\n</tr>\r\n<tr>\r\n<td>2.30 pm</td>\r\n<td><strong>Panel:</strong> “The Great Divide – Public vs Private Investing in Life <br /> Sciences”<br /> <strong>Panelists:</strong><br /><em>Patrick Heron, General Partner, Frazier Healthcare<br />Evan McCullough, Portfolio Manager/Analyst, Franklin Templeton</em><br /> <em>Oleg Nodelman, Managing Director, EcoR1</em><br /> <em>Srini Akkaraju, General Partner, Sofinnova<br />Doug Fisher, Partner, InterWest Partners</em><em><strong> <br /> Moderator:</strong> <br /> Chris Ehrlich, Managing Partner, Locust Walk Partners</em></td>\r\n</tr>\r\n<tr>\r\n<td>3.15 pm</td>\r\n<td><strong>Refreshment Break</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3.30 pm</td>\r\n<td><strong>Panel:</strong> “The Next Gen of biotech”: exploring partnership strategies from a private company CEO’s perspective.<br /> <strong>Panelists:</strong><em><br /> Isaac Ciechanover, CEO, Atara Bio<br /> Laxminarayan Bhat, CEO, Reviva Pharmaceuticals <br /> Sean McCarthy, CEO, CytomX Therapeutics Inc<br /> <strong>Moderator:</strong> <br /> Eric Long, Founding Principal, ABD Team</em></td>\r\n</tr>\r\n<tr>\r\n<td>4.30 pm</td>\r\n<td><strong>Closing Remarks<br /> </strong><em>Eric Walczykowski, </em><em>Vice President, Life Sciences, Thomson Reuters</em></td>\r\n</tr>\r\n<tr>\r\n<td>5.00 pm</td>\r\n<td><strong>Cocktail Reception</strong><br /> <em>Regency Foyer</em></td>\r\n</tr>\r\n<tr>\r\n<td>6.30 pm</td>\r\n<td><strong>Awards Dinner</strong><br /> <em>Regency Foyer</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Wednesday April 30, 2014</h2>\r\n<table class="e-table">\r\n<tbody>\r\n<tr>\r\n<td width="25%">7.30 am</td>\r\n<td width="75%"><strong>Continental Breakfast</strong></td>\r\n</tr>\r\n<tr>\r\n<td>8.30 am</td>\r\n<td><strong>Keynote Address:</strong> How Payers Pick Winners and Losers for their Increasingly Restrictive Formularies <br /><em>Roger Longman, CEO, RealEndPoints<br /></em></td>\r\n</tr>\r\n<tr>\r\n<td>9.10 am</td>\r\n<td><strong>Panel:</strong> Leveraging the Public Markets to Finance Development<br /><strong>Panelists:</strong><em><br />Paul Hastings, CEO, OncoMed<br />Robin Smith, CEO, NeoStem<br />Kenneth Moch, Former President and CEO, Chimerix<br /></em><strong>Moderator:</strong><em><br />Eric Walczykowski, Vice President, Life Sciences, Thomson Reuters</em></td>\r\n</tr>\r\n<tr>\r\n<td>10.40 am</td>\r\n<td><strong>Refreshment Break</strong><em><br /></em></td>\r\n</tr>\r\n<tr>\r\n<td>11.00 am</td>\r\n<td><strong>Presentation:</strong> <strong>Today\'s IPO Market - How We Got Here, and What\'s Next</strong><br /> <em>Matthew Rossiter, Partner, Fenwick &amp; West</em></td>\r\n</tr>\r\n<tr>\r\n<td>11.30 am</td>\r\n<td><strong>Panel:</strong> Today\'s IPO Market - How We Got Here, and What\'s Next<br /> <strong>Panelists:</strong><br /><em>Jeff Abbey, CEO, Argos Therapuetics<br />Robert Dickey - CFO, NeoStem<br />Kenneth Moch, Former President and CEO, Chimerix<br />George Milstein, Managing Director, <em>Cowen Group</em><br />Matthew Perry, President and Portfolio Manager, BVF Partners<br />Dave Pritchard, CEO, Kalobios<br /> <strong>Moderator:</strong> <br /> Matthew Rossiter, Partner, Fenwick &amp; West</em></td>\r\n</tr>\r\n<tr>\r\n<td>12.30 pm</td>\r\n<td><strong>Workshop and Networking Lunch:</strong> So I’ve been a successful BD Exec - What\'s Next?<br /> <strong>Panelists:</strong><br /><em>Katrine Bosley, Entrepreneur-in-Residence, The Board Institute<br />Arlene Morris, CEO, Syndax</em><br /> <em>Rod Ferguson, Co-Founder, Panorama Capital</em><br /><em>Steven James, President and CEO, Labrys Biologics <br /> Juergen Lasowski, Former Executive. Vice President Corporate Development &amp; Strategy, Onyx Pharmaceuticals</em><strong> <br /></strong><em>Clifford Stocks - Chief Executive Officer, Theraclone Sciences</em><strong><br /> Moderator: <br /> </strong><em>Kevin Kwok – Head of Talent Acquisition and Strategy, Theravance </em></td>\r\n</tr>\r\n<tr>\r\n<td>1.45 pm</td>\r\n<td><span lang="EN-US"><strong>Presentation:</strong></span>Partnering Returned Assets: Understanding Strategies to Maximize Value<br /> <em>Jay Mohr, Managing Director, Locust Walk Partners</em></td>\r\n</tr>\r\n<tr>\r\n<td>2.15 pm</td>\r\n<td><strong>Panel:</strong> Partnering Returned Assets: Understanding Strategies to Maximize Value<br /> <strong>Panelists:</strong> <br /><em>Steve James, President and CEO, Labrys Biologics</em><strong><br /> </strong><em>Tom King, President and CEO, Alexza Pharmaceuticals <br /> Mark Baker, CEO, Progenics Pharmaceuticals<br />Richard Brudnick, VP and Co-Head of Business Development, Biogen Idec<br />Natalie Holles, SVP, Business Development, Hyperion<strong> <br /> Moderator:</strong> <br /> Jay Mohr, Managing Director, Locust Walk Partners</em></td>\r\n</tr>\r\n<tr>\r\n<td>3.00 pm</td>\r\n<td><strong>Refreshment Break</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3.15 pm</td>\r\n<td><strong>Presentation:</strong> M&amp;A Transaction Data<br /><em>Jon Norris, Managing Director, SVB Capital</em></td>\r\n</tr>\r\n<tr>\r\n<td>3.30 pm</td>\r\n<td><strong>Panel:</strong> Puttin\' a Ring on it - M&amp;A Transactions <br /> <strong>Panelist:</strong> <br /><em>Jon Norris, Managing Director, SVB Capital <br />James Mackay, President and Chief Operating Officer, Ardea Biosciences and AstraZeneca Global Product VP, Lesinurad <br />Carol Gallagher, Venture Partner, Frazier Healthcare <br />Heath Lukatch, Partner, Novo Ventures </em><br /><strong>Moderators:</strong><br /><em>Effie Toshav, Partner, Fenwick &amp; West</em></td>\r\n</tr>\r\n<tr>\r\n<td>4.15 pm</td>\r\n<td><strong>Panel:</strong> Bull or Bear – what does the future hold for the next generation of dealmakers?<br /> <strong>Panelists:</strong><br /> <em>Luke Timmerman, Biotechnology Journalist <br /> Adam Feuerstein, Senior Columnist, TheStreet<br />Ron Leuty, Reporter, San Francisco Business Times <br />Peter Winter, Editor, BioWorld Insight, Thomson Reuters<br /> <strong>Moderator:</strong><br /> Eric Walczykowski, Vice President, Life Sciences, Thomson Reuters<br /></em></td>\r\n</tr>\r\n<tr>\r\n<td>5.00 pm</td>\r\n<td><strong>Cocktail Reception</strong><br /> <em>Regency Foyer</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>For a full list of confirmed speakers <a href="speakers">click here</a>. <strong>Check back regularly for more confirmed speakers.</strong></p>', NULL, '2014-04-29 23:39:12'),
	(58, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-03-28 11:33:34'),
	(58, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-03-28 11:33:34'),
	(59, 'string', 'content_en', NULL, NULL, NULL, '<h2>Allicense 2014 Breakthrough Awards</h2>\r\n<p>The Breakthrough Awards was presented at the Allicense conference on April 29th, 2014. This annual award honors the creative partnering efforts of business development licensing and M&amp;A professionals. Thomson Reuters deals analysts examined hundreds of biopharma licensing and M&amp;A deals negotiated across 2013 and use both subjective and objective criteria, to identify the top five contenders for deal of the year across categories: Licensing and M&amp;A. Congratulations to ISIS Pharmaceuticals and Biogen Idec, who won the award for Licensing Deal of the Year, and to Amplimmune and Medimmune, who won M&amp;A Deal of the Year. <a href="http://thomsonreuters.com/press-releases/052014/Thomson-Reuters-Announces-Breakthrough-Award-Winners" target="_blank">See the press release here</a>. </p>\r\nThis year’s award nominees are as follows:\r\n<h2>Licensing</h2>\r\n<p><strong>Pfizer (seller) / Lilly (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date</strong></td>\r\n<td width="80%">October 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$1,780 MillionTotal Size / $200 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Asset</strong></td>\r\n<td>tanezumb (PF-4383119), a human MAb for osteoarthritis, chronic low back pain and cancer pain. Phase III at signing. (Worldwide)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Autoimmune/Inflammatory</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>OncoMed Pharmaceuticals (seller) / Celgene (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date</strong></td>\r\n<td width="80%">December 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$3,332.2 Million Total Size / $155 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Asset</strong></td>\r\n<td>demcizumab and five biologics: an anti-DLL4/VEGF bispecific antibody and up to four other targeting CSC pathways. Phase I at signing. (Worldwide)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Cancer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Moderna Therapeutics (seller) / AstraZeneca (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date</strong></td>\r\n<td width="80%">March 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>Total Size Confidential / $240 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Asset</strong></td>\r\n<td>mRNA therapeutics for cardiometabolic, renal, and cancer targets, discovered under a 5-year collaboration. Discovery stage at signing. (Worldwide)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Diversified</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Ablynx (seller) / AbbVie (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date</strong></td>\r\n<td width="80%">September 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$840 Million Total Size / $175 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Asset</strong></td>\r\n<td>ALX-0061, anti-IL-6R inhibitor nanobody for rheumatoid arthritis and systematic lupus erythematosus. Phase II at signing.</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Autoimmune/Inflammatory<strong><br /> </strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>ISIS Pharmaceuticals (seller) / Biogen Idec (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date</strong></td>\r\n<td width="80%">September 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>Total Size Confidential / $100 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Asset</strong></td>\r\n<td>Therapies for neurological diseases using Isis’ antisense technology – Oligonucleotide Ligands and siRNAs. Discovery stage at signing.</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Neurology</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>M&amp;A</h2>\r\n<p><strong>Aragon Pharmaceuticals (seller) / Johnson &amp; Johnson (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date Closed</strong></td>\r\n<td width="80%">August 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$1,000 MillionTotal Size / $650 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Leading Products</strong></td>\r\n<td>ARN-509, ARN-810; ARN-912</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Most Advanced Product</strong></td>\r\n<td>Phase II</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Cancer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Amplimmune, Inc (seller) / Medimmune (AstraZeneca) (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date Closed</strong></td>\r\n<td width="80%">August 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$500 Million Total Size / $225 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Leading Products</strong></td>\r\n<td>AMP-224, AMP-110, AMP-514</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Most Advanced Product</strong></td>\r\n<td>Preclinical</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Cancer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Okairos AG (seller) / GlaxoSmithKline (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date Closed</strong></td>\r\n<td width="80%">November 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$420 Million Total Size / $325 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Leading Products</strong></td>\r\n<td>ProCvax, TerCvax</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Most Advanced Product</strong></td>\r\n<td>Phase II</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Infectious Disease</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Lotus Tissue Repair (seller) / Shire (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date Closed</strong></td>\r\n<td width="80%">December 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$324.3 Million Total Size / $49.3 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Leading Products</strong></td>\r\n<td>Recombinant collagen Type VII (rC7)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Most Advanced Product</strong></td>\r\n<td>Preclinical</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Dermatologic</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Trius Therapeutics (seller) / Cubist Pharmaceuticals (buyer)</strong></p>\r\n<table class="e-table" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td width="20%"><strong>Date Closed</strong></td>\r\n<td width="80%">November 2013</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Financials</strong></td>\r\n<td>$818 Million Total Size / $707 Million Upfront</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Leading Products</strong></td>\r\n<td>TR-701, GyrB/ParE</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Most Advanced Product</strong></td>\r\n<td>Phase III</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Therapeutic Area</strong></td>\r\n<td>Infectious Disease</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><a href="http://images.info.science.thomsonreuters.biz/Web/ThomsonReutersScience/%7b1cf40f9f-0e24-44c5-add4-a3a0f353d51d%7d_Allicense_2013_Deals_of_the_Year.pdf" target="_blank"><strong>Download the full nominee announcement slide deck for more details here.</strong></a></p>', NULL, '2014-05-09 12:44:08'),
	(15, 'string', 'content_en', '', '', '', '<!--\r\n<div id="note-box">\r\n<div class="note">\r\n<div id="note-0" class="note-body">\r\n<p style="color: white;"><strong>Follow us on Twitter - #Allicense2014</strong></p>\r\n<p><span class="lc"><a href="https://twitter.com/cortellis" target="_blank">@cortellis</a>,</span> <a href="https://twitter.com/theabdteam" target="_blank">@theabdteam</a>, <br /> <span class="lc"><a href="https://twitter.com/jonnysbv" target="_blank">@jonnysbv</a>,</span> <a href="https://twitter.com/RecapBioVC" target="_blank">@RecapBioVC</a>, <br /> <span class="lc"><a href="https://twitter.com/GeoffMeyerson" target="_blank">@GeoffMeyerson</a>,</span> <a href="https://twitter.com/JillianTygh" target="_blank">@JillianTygh</a>, <br /> <span class="lc"><a href="https://twitter.com/KarlaBopBop" target="_blank">@KarlaBopBop</a></span></p>\r\n</div>\r\n<div class="note-close"> </div>\r\n</div>\r\n</div>\r\n-->\r\n<p>The dealmaking landscape has shifted. Not only have we witnessed a change in its leaders, but many of them believe that medium sized biopharma companies are more active and innovative than their large pharma counterparts. Today, big pharma companies may even be seen tapping into biotech dealmaking leaders for their top posts.</p>\r\n<p><em>What has caused this transition and what can we expect in the years ahead? </em></p>\r\n<p>Do not miss out on <strong>Allicense 2014</strong> to meet these <em>new</em> players and learn about current trends across the dynamic and exciting field of biopharma dealmaking.</p>\r\n<img src="http://www.allicense.com/allicense-2014/allicense-2014/content-footer.jpg" alt="" />\r\n<h2>Partners:</h2>\r\n<div align="center">\r\n<div class="image_carousel" style="width: 660px;">\r\n<div id="foo1"><a href="http://baybio.org/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bay-bio.jpg" alt="" width="220" height="80" /></a> <a href="http://www.locustwalkpartners.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/lw.jpg" alt="" width="220" height="80" /></a> <a href="http://www.svb.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/svb.jpg" alt="" width="220" height="67" /></a> <a href="http://www.fenwick.com/pages/default.aspx" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/fenwick-west-llp.jpg" alt="" width="220" height="80" /></a> <a href="http://www.theabdteam.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/abd.jpg" alt="" width="220" height="80" /></a> <a href="http://www.russellreynolds.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/russellreynolds.jpg" alt="" width="220" height="80" /></a> <a href="http://www.are.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/alexandria.jpg" alt="" width="220" height="80" /></a> <a href="http://www.bio.org" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bio.jpg" alt="" width="220" height="80" /></a></div>\r\n<div class="clearfix"> </div>\r\n</div>\r\n</div>', NULL, '2014-04-24 11:19:59'),
	(59, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-05-09 12:44:08'),
	(59, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-05-09 12:44:08'),
	(60, 'string', 'content_en', NULL, NULL, NULL, '<h2>The Palace Hotel <img style="float: right;" src="https://www.signup4.net/Upload/THOM13A/ALLI48E/ThePalaceHotelSanFrancisco-Exterior.jpg" alt="" /></h2>\r\n<p><strong>New Montgomery Street<br />San Francisco, CA<br />Tel: 415 512 1111<br /><a href="http://www.sfpalace.com/" target="_blank">www.sfpalace.com</a></strong></p>\r\n<h2> </h2>\r\n<div> </div>\r\n<h2>Booking Accommodation</h2>\r\n<br />Thomson Reuters have secured discounted sleeping rooms for the conference. In order to make your reservations <strong>please call the Central Reservations Office at 1-888-627-7196 and identify yourselves as a registered attendee of the Thomson Reuters 2014 Allicense Conference</strong>. <br /><br />If you have any issues/concerns please contact Tracy Golding at <a href="mailto:tracy.golding@thomsonreuters.com" target="_blank">tracy.golding@thomsonreuters.com</a>.\r\n<div> </div>\r\n<h2>About</h2>\r\n<div>Welcome to the Palace Hotel, a luxury hotel in downtown San Francisco. The iconic Palace Hotel has remained the landmark hotel in San Francisco with such timeless creations as the Garden Court’s stained glass dome and the 1909 Maxfield Parish mural of the ‘Pied Piper of Hamlin’ located in the Pied Piper Bar and Grill. The Palace Hotel is a full-service destination that offers elegant guest rooms, esteemed restaurants and opulent spaces for meetings and special events. Guests will experience hospitality on a grand scale in the 553 refined guest rooms and spacious suites, each appointed with elegant furnishings and contemporary amenities.</div>\r\n<h2>The Locality</h2>\r\nLocated on New Montgomery Street in the heart of San Francisco, just blocks away from Union Square, Chinatown, the Financial District and the Moscone Convention Center, the Palace Hotel is poised for convenience for the many things to do in San Francisco. A short drive or cable car ride away are Fisherman’s Wharf, the Golden Gate Bridge, AT&amp;T Park and Golden Gate Park museums and attractions. <br />\r\n<h2>Directions</h2>\r\n<h2>From San Francisco International Airport:</h2>\r\nTake U.S. Highway 101 North to Interstate 80 toward Downtown/Bay Bridge.<br />Exit onto 4th Street (the last San Francisco Exit).<br />Turn left onto Bryant Street.<br />Turn left onto 3rd Street.<br />Turn right onto Market Street.<br />Turn right again onto New Montgomery Street - the hotel is located on the right.<br />Travel time is approximately 30 minutes.<br />\r\n<h2>From Oakland International Airport:</h2>\r\nTake Hegenberger North to U.S. Route 880 North to Interstate 80 Bay Bridge.<br />Take the first exit Fremont Street.<br />Turn left on Howard Street.<br />Turn right on 3rd Street.<br />Turn right on Market Street, then take an immediate right on New Montgomery Street.<br />The hotel is located on the right.<br />Travel time is approximately 45 minutes.<br />\r\n<h2>From East Bay Hills:</h2>\r\nTake Interstate 80 West to the Bay Bridge/Fremont Street Exit.<br />Turn left onto Mission Street.<br />Turn right onto 3rd Street.<br />Turn right onto Market Street, and then turn right onto New Montgomery Street - the hotel is<br />located on the right.<br />Travel time is approximately 40 minutes.<br />\r\n<h2>From Northern Wine Country:</h2>\r\nTake U.S. Highway 101 South over the Golden Gate Bridge and bear right onto Lombard Street.<br />Turn right onto Van Ness Avenue.<br />Turn left onto Bush Street.<br />Turn right onto Montgomery Street and cross over Market Street<br />Continue straight onto New Montgomery Street. The hotel is located on the right.<br />Travel time is approximately 60 minutes.<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-01-09 22:43:36'),
	(60, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-01-09 22:43:36'),
	(61, 'string', 'content_en', NULL, NULL, NULL, '<div id="spons"><a href="http://www.theabdteam.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/abd.jpg" alt="ABD" width="100%" border="0" /></a><a href="http://www.are.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/alexandria.jpg" alt="Alexandria" width="100%" border="0" /></a><a href="http://www.alexza.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/alexza.jpg" alt="Alexza Pharmaceuticals" width="100%" border="0" /></a> <a href="http://www.ardeabio.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/ardea.jpg" alt="Ardea Biosciences" width="100%" border="0" /></a><a href="http://www.baybio.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bay-bio.jpg" alt="BayBio" width="100%" border="0" /></a> <a href="http://www.bio.org" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bio.jpg" alt="BIO" width="100%" border="0" /></a> <a href="http://www.bioworld.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bioworld-thomson-reuters.jpg" alt="BioWorld from Thomson Reuters" width="100%" border="0" /></a> <a href="http://www.bvflp.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bvf.jpg" alt="BVF Partners L.P." width="100%" border="0" /></a> <a href="http://www.calithera.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/calithera.jpg" alt="Calithera Biosciences" width="100%" border="0" /></a><a href="http://www.chimerix.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/chimerix.jpg" alt="Chimerix, Inc" width="100%" border="0" /></a> <a href="http://www.cowen.com"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/cowen.jpg" alt="Cowen" width="100%" border="0" /></a> <a href="http://www.dnaink.com"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/dna-ink.jpg" alt="DNAink" width="100%" border="0" /></a> <a href="https://www.fenwick.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/fenwick-west-llp.jpg" alt="Fenwick &amp; West" width="100%" border="0" /></a><a href="http://www.frazierhealthcare.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/frazier-healthcare.jpg" alt="Frazier Healthcare" width="100%" border="0" /></a><a href="http://www.labrysbiologics.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/labrys-biologics.jpg" alt="Labrys Biologics" width="100%" border="0" /></a> <a href="http://www.locustwalkpartners.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/lw.jpg" alt="Locust Walk" width="100%" border="0" /></a> <a href="http://www.mallinckrodt.com/"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/mnk.jpg" alt="" width="100%" border="0" /></a> <a href="http://www.revivapharma.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/reviva.jpg" alt="Reviva Pharmaceuticals" width="100%" border="0" /></a><a href="http://www.russellreynolds.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/russellreynolds.jpg" alt="Russell Reynolds" width="100%" border="0" /></a> <a href="http://www.sofinnova.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/sv.jpg" alt="Sofinnova Ventures" width="100%" border="0" /></a> <a href="http://www.svb.com" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/svb-.jpg" alt="SVB" width="100%" border="0" /></a><a href="http://www.syndax.com/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/syndax.jpg" alt="Syndax" width="100%" border="0" /></a></div>\r\n<img src="http://www.allicense.com/allicense-2014/allicense-2014/content-footer.jpg" alt="" />\r\n<div style="margin-top: 20px;"><a href="http://convention.bio.org/" target="_blank"><img src="https://www.signup4.net/Upload/THOM13A/ALLI48E/bio-convention-h.jpg" alt="Syndax" width="100%" border="0" /></a></div>', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-04-24 16:43:52'),
	(61, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-04-24 16:43:52');
/*!40000 ALTER TABLE `cms_allicense_content_props` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_props_seq
DROP TABLE IF EXISTS `cms_allicense_content_props_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_props_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_content_props_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_content_props_seq` (`id`) VALUES
	(56);
/*!40000 ALTER TABLE `cms_allicense_content_props_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_content_seq
DROP TABLE IF EXISTS `cms_allicense_content_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_content_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_content_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_content_seq` (`id`) VALUES
	(61);
/*!40000 ALTER TABLE `cms_allicense_content_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_crossref
DROP TABLE IF EXISTS `cms_allicense_crossref`;
CREATE TABLE IF NOT EXISTS `cms_allicense_crossref` (
  `child_type` varchar(100) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_allicense_index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `cms_allicense_index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_crossref: 7 rows
/*!40000 ALTER TABLE `cms_allicense_crossref` DISABLE KEYS */;
INSERT INTO `cms_allicense_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES
	('global_content', 1, 'template', 15, '2009-05-10 16:57:24', '2009-05-10 16:57:24'),
	('global_content', 1, 'template', 16, '2009-05-09 17:04:30', '2009-05-09 17:04:30'),
	('global_content', 1, 'template', 20, '2009-05-09 23:57:31', '2009-05-09 23:57:31'),
	('global_content', 1, 'template', 18, '2009-05-09 17:19:20', '2009-05-09 17:19:20'),
	('global_content', 1, 'template', 17, '2009-05-09 21:20:18', '2009-05-09 21:20:18'),
	('global_content', 1, 'template', 21, '2009-05-10 16:59:13', '2009-05-10 16:59:13'),
	('global_content', 1, 'template', 22, '2009-05-11 02:01:23', '2009-05-11 02:01:23');
/*!40000 ALTER TABLE `cms_allicense_crossref` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_css
DROP TABLE IF EXISTS `cms_allicense_css`;
CREATE TABLE IF NOT EXISTS `cms_allicense_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) DEFAULT NULL,
  `css_text` text,
  `media_type` varchar(255) DEFAULT NULL,
  `media_query` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`css_id`),
  KEY `cms_allicense_index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_css: 20 rows
/*!40000 ALTER TABLE `cms_allicense_css` DISABLE KEYS */;
INSERT INTO `cms_allicense_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
	(41, 'Handheld', '/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}', 'handheld', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(30, 'Print', '/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class="noprint"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}', 'print', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(31, 'Accessibility and cross-browser tools', '/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n	text-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n	position: absolute;\r\n/* takes it out top side */\r\n	top: -999em;\r\n/* takes it out left side */\r\n	left: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n	position: absolute;\r\n	left: -1000px;\r\n	top: -1000px;\r\n	width: 0;\r\n	height: 0;\r\n	overflow: hidden;\r\n	display: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n	content: ".";\r\n	display: block;\r\n	height: 0;\r\n	clear: both;\r\n	visibility: hidden;\r\n}\r\n.clear {\r\n	height: 0;\r\n	clear: both;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n#main .clear {\r\n	height: 0;\r\n	clear: right;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n	display: inline-block;\r\n	width: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n	height: 1%;\r\n	clear: right;\r\n	width: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */', 'screen', '', '2006-07-25 21:22:32', '2009-05-13 10:42:54'),
	(32, 'Layout: Left sidebar + 1 column', '/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don\'t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n	color: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n/* a different color is used for visited links */\r\n	color: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n	padding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 14:06:00'),
	(33, 'Navigation: CSSMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\'s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\'s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level "a" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level "a" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092;\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 20:20:30'),
	(34, 'Navigation: CSSMenu - Horizontal', '/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the "a" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the "a" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or \'right\' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or \'right\' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it\'s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 16:52:41'),
	(35, 'Module: News', 'div#news {\r\n/* margin for the entire div surrounding the news items */\r\n	margin: 2em 0 1em 1em;\r\n/* border set here */\r\n	border: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n	background: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n	line-height: 2em;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #f5f5f5;\r\n	border: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n	padding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n	margin: 0 0.5em 1em 0.5em;\r\n	border-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n	font-size: 90%;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n/* little more room at top */\r\n	padding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	margin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	padding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n	line-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n	padding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n	font-size: 90%;\r\n	margin-bottom: 5px;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	border-top: 1px solid #ccc;\r\n	margin-top: 0.5em;\r\n	padding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n	margin-bottom: 15px;\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n	padding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\ndiv#news ul li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-09 23:29:39'),
	(38, 'Navigation: Simple - Horizontal', '/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n	height: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n	background-color: #243135;\r\n/* insure full width */\r\n	width: 100%;\r\n/* set height */\r\n	height: 49px;\r\n	margin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n	float: left;\r\n/* remove any default bullets */\r\n	list-style: none;\r\n/* still no margin */\r\n	margin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n	margin: 0;\r\n/* removes default underline */\r\n	text-decoration: none;\r\n/* default link color */\r\n	color: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n	display: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the "a" */\r\n	padding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the "a" we can set it here, it lets us use the span for an image */\r\n	padding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n	padding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n	padding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n	padding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the "sectionheader" */\r\n	padding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2010-05-29 13:06:18'),
	(39, 'Layout: Top menu + 2 columns', '/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don\'t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 15px 10px 20px;\r\n/* this one is for sidebar with content and no menu */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 2em 0 1em 0em;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 00:13:04'),
	(42, 'Navigation: Simple - Vertical', '/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of "a.parent" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn\'t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}', 'screen', '', '2009-04-30 01:09:15', '2009-07-23 00:17:42'),
	(43, 'Navigation: ShadowMenu - Horizontal', '/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n	list-style-type: none;\r\n	margin: 0px;\r\n	padding-top: 10px;\r\n	padding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 210px;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* room at top for li so image top shows correct */\r\n	padding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n	padding-top: 13px;\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n	margin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n	top: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n	margin-top: 0px;\r\n	padding-left: 5px;\r\n	left: 100%;\r\n	top: -7px;\r\n/* IE6 gets gif as it can\'t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n	margin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n	margin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n	margin-left: 6px;\r\n/* helps hold it inside the ul */\r\n	width: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n	padding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* remove default "a" underline */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal "a" padding minus some for right image */\r\n	padding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n	background:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n	background:  none;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an "h" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n	background:  none;\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n	padding: 5px 10px;\r\n/* to keep it within li */\r\n	width: 165px;\r\n/* space between them */\r\n	margin: 5px;\r\n	background: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n	padding: 5px 10px;\r\n	width: 165px;\r\n	margin: 0px;\r\n	color: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n	background: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n	color: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* just to insure normal */\r\n	font-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n	color: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n	color: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n	color: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n	color: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n	color: #0587A9;\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n	padding: 0px;\r\n	background:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 210px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -8px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n	height: 9px;\r\n	margin: 0px 0px -8px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n	margin: 0px 0px -8px;\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2009-05-01 04:32:33', '2009-07-20 18:18:21'),
	(45, 'Navigation: ShadowMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\'s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 190px;\r\n/* changes padding inherited from first level */\r\n	padding: 0px 10px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic appearance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\'s container */\r\n	position: relative;\r\n/* even padding all 4 sides */\r\n	padding: 6px;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors from here on */\r\n	color: #000;\r\n/* remove any background that may have been set in level above */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 209px;\r\n	height: auto;\r\n/* negative margin pulls it over the parent ul */\r\n	margin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n	padding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n	top: -2px;\r\n	display: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n	list-style-type: none;\r\n/* bit more negative left margin */\r\n	margin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:\'value\', this flat lines it */\r\n	padding: 0px;\r\n/* now we just change one with \'property\'-top:value */\r\n	padding-top: 10px;\r\n	position: absolute;\r\n	width: 209px;\r\n	height: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n	top: -5px;\r\n	left: 100%;\r\n	display: none;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 209px;\r\n	padding: 0px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -9px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 \'star html\' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n	height: 2px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	padding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2009-05-02 00:20:03', '2009-05-11 00:43:17'),
	(46, 'Navigation: FatFootMenu', '#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the "a" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}', 'screen', '', '2009-05-02 15:05:04', '2009-05-09 23:47:45'),
	(47, 'ncleanbluecore', '/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n	width: 100%;\r\n}\r\n.core-wrap-960 {\r\n	width: 960px;\r\n}\r\n.core-wrap-780 {\r\n	width: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n	float: left;\r\n	display: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n	float: right;\r\n	display: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}', 'screen', '', '2009-05-06 14:28:28', '2009-05-11 02:35:43'),
	(48, 'ncleanblueutils', '/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	outline: 0;\r\n	font-size: 100%;\r\n	vertical-align: baseline;\r\n	background: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n	line-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n	list-style: none;\r\n}\r\nblockquote, q {\r\n	quotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n	content: \'\';\r\n	content: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n	outline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n	text-decoration: none;\r\n}\r\ndel {\r\n	text-decoration: line-through;\r\n}\r\n/* tables still need \'cellspacing="0"\' in the markup */\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-family: inherit;\r\n}\r\ndfn {\r\n	display: none;\r\n	overflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	position: static;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n	clear: both;\r\n	content: \'.\';\r\n	display: block;\r\n	visibility: hidden;\r\n	height: 0;\r\n}\r\n.util-clearfix {\r\n	display: inline-block;\r\n}\r\n* html .util-clearfix {\r\n	height: 1%;\r\n}\r\n.util-clearfix {\r\n	display: block;\r\n}', 'screen', '', '2009-05-06 14:29:17', '2009-05-11 02:38:10'),
	(49, 'Layout: NCleanBlue', '/*  \n@Nuno Costa [criacaoweb.net]\n@Since [cmsms 1.6]\n@Contributors: Mark and Dev-Team\n*/\nbody {\n/* default text for entire site */\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\n/* default text color for entire site */\n	color: #3A3A36;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\n#ncleanblue {\n/* set to width of viewport */\n	width: auto;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* wiki style external links */\n/* external links will have "(external link)" text added, lets hide it */\na.external span {\n	position: absolute;\n	left: -5000px;\n	width: 4000px;\n}\na.external {\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\n	padding: 0 12px 0 0;\n}\n/* colors for external links */\na.external:link {\n	color: #679EBC;\n/* background image for the link to show wiki style arrow */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:visited {\n	color: #18507C;\n/* a different color can be used for visited external links */\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:hover {\n	color: #18507C;\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\n	background-color: inherit;\n}\n/* end wiki style external links */\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\n.accessibility, hr {\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\n	position: absolute;\n	top: -9999em;\n	left: -9999em;\n	background: none;\n	border: 0;\n	clear: both;\n	display: block;\n	float: none;\n	font-size: 0;\n	margin: 0;\n	padding: 0;\n	overflow: hidden;\n	visibility: hidden;\n	width: 0;\n	height: 0;\n	border: none;\n}\n/* ------------ Standard  HTML elements and their default settings ------------ */\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\np {\n	padding: 0;\n	margin-top: 0.5em;\n    margin-bottom: 1em;\n   text-align:left;\n}\nh1, h2, h3, h4, h5 {\n	line-height: 1.6em;\n	font-weight: normal;\n	width: auto;\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n}\n/*default link styles*/\na {\n	color: #679EBC;\n	text-decoration: none;\n	text-align: left;\n}\na:hover {\n	color: #3A6B85;\n}\na:active {\n	color: #3A6B85;\n}\na:visited {\n	color: #679EBC;\n}\ninput, textarea, select {\n	font-size: 0.95em;\n}\n/* ------------ Wrapper ------------ */\ndiv#pagewrapper {\n	font-size: 95%;\n	position: relative;\n	z-index: 1;\n}\n/* ------------ Header ------------ */\n#header {\n	height: 111px;\n	width: 960px;\n}\n#logo a {\n/* adjust according your image size */\n	height: 75px;\n	width: 215px;\n/* forces full link size */\n	display: block;\n/* this hides the text */\n	text-indent: -9999em;\n	margin-top: 0;\n	margin-left: 0;\n/* you can set your own image here, note size adjustments */\n	background: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\n}\n/* ------------ Header - Search ------------ */\ndiv#search {\n	width: 190px;\n	height: 28px;\n	margin-top: 31px;\n	margin-right: 20px;\n}\ndiv#search label {\n	text-indent: -9999em;\n	height: 0pt;\n	width: 0pt;\n	display: none;\n}\ndiv#search input.search-input {\n/* specific size for image, your image may need these adjusted */\n	width: 143px;\n	height: 17px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* text color */\n	color: #999;\n/* padding of text */\n	padding: 7px 0px 4px 10px;\n	float: left;\n/* set all font properties at once, weight, size, family */\n	font: bold 0.9em Arial, Helvetica, sans-serif;\n/* left input image, set your own here */\n	background: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\n}\ndiv#search input.search-button {\n/* specific size for image, your image may need these adjusted */\n	width: 37px;\n	height: 28px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* hides text, image has text */\n	text-indent: -9999em;\n	float: left;\n	margin: 0;\n/* provides positive hover effect */\n	cursor: pointer;\n/* removes default size/height */\n	font-size: 0px;\n	line-height: 0px;\n/* submit button image, set your own here */\n	background: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\n}\n/* ------------ Content ------------ */\n#content {\n	width: auto;\n/* all text in #content will default align left, changed in other calls */\n	text-align: left;\n}\n#bar {\n	width: auto;\n	height: 40px;\n	padding-right: 1em;\n	padding-left: 1em;\n}\n.print {\n	margin-right: 75px;\n	margin-top: 10px;\n}\n#version {\n	width: 50px;\n	height: 31px;\n	position: absolute;\n	z-index: 5;\n	top: 130px;\n	right: -16px;\n	font-size: 1.6em;\n	font-weight: bold;\n	padding: 28px 15px;\n	color: #FFF;\n	text-align: center;\n	vertical-align: middle;\n	background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\n}\n/* IE6 fixes */\n* html div#version {\n	top: 150px;\n}\n/* End IE6 fixes */\n/* Site Title */\nh1.title {\n	font-size: 1.8em;\n	color: #666666;\n	margin-bottom: 0.5em;\n}\n/* Breadcrumbs */\ndiv.breadcrumbs {\n	padding: 0.5em 0;\n	font-size: 80%;\n	margin: 0 1em;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\n/* ------------ Side Bar (Left) ------------ */\n#left {\n	width: 250px;\n}\n/* Image that Represents the new CMS design */\n#left .screen {\n	margin: 10px 50px;\n}\n/* End  */\n.sbar-title {\n	font: bold 1.2em Arial, Helvetica, sans-serif;\n	color: #252523;\n}\n.sbar-top {\n	height: 20px;\n	width: auto;\n	padding: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\n}\n.sbar-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n}\nspan.sbar-bottom {\n	width: auto;\n	display: block;\n	height: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\n}\n/* ------------ Main (Right) ------------ */\n#main {\n	width: 690px;\n}\n.main-top {\n	height: 15px;\n	width: auto;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\n}\n.main-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n	padding: 20px;\n	padding-top: 0px;\n}\n.main-bottom {\n	width: auto;\n	height: 41px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\n}\n.right49, .left49 {\n	font-size: 0.85em;\n	margin: 7px 5px 5px 10px;\n	font-weight: bold;\n}\n.left49 span {\n	display: block;\n	padding-top: 1px;\n}\n.left49 a {\n	font-weight: normal;\n}\n.right49 {\n	height: 28px;\n	width: 50px;\n	padding-right: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\n}\n.right49 a, .right49 a:visited {\n	padding: 7px 4px;\n	display: block;\n	color: #000;\n	height: 15px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\n}\n#main h2,\n#main h3,\n#main h4,\n#main h5,\n#main h6 {\n	font-size: 1.4em;\n	color: #301E12;\n}\ndiv#main ul,\ndiv#main ol,\ndiv#main dl,\n#footer ul,\n#footer ol {\n	line-height: 1em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul,\n#footer ul {\n	list-style: circle;\n}\ndiv#main ul li,\ndiv#main ol li,\n#footer ul li,\n#footer ol li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}\n/* definition lists topics on bold */\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\n/* ------------ Footer ------------ */\n#footer-wrapper {\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	width: auto;\n	margin-top: 5px;\n	text-align: center;\n	margin-right: 00px;\n	margin-left: 0px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer {\n	color: #FFF;\n	font-size: 0.8em;\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer .block {\n	width: 300px;\n	margin: 20px 10px 10px;\n}\n#footer .cms {\n	text-align: right;\n}\n/* ------------ Footer Links ------------ */\n#footer ul {\n	width: auto;\n	text-align: left;\n	margin-left: 50px;\n}\n#footer ul ul {\n	margin-left: 0px;\n}\n#footer ul li a {\n	color: #FFF;\n	display: block;\n	font-weight: normal;\n	margin-bottom: 0.5em;\n	text-decoration: none;\n}\n#footer a {\n	color: #DCEDF1;\n	text-decoration: underline;\n	font-weight: bold;\n}\n/* ------------ END LAYOUT ---------------*/\n/* ------------  Menu  ROOT  ------------ */\n.page-menu {\n	width: auto;\n	height: 35px;\n	margin: 3px 0 0 20px;\n}\n.menuwrapper {}\n\nul#primary-nav li hr.menu_separator{\n        position: relative;\n        visibility: hidden;\n        display:block;\n        width:5px;\n       	height: 32px;\n       	margin: 0px 5px 0px;\n}\n.page-menu ul#primary-nav {\n	height: 1%;\n	float: left;\n	list-style: none;\n	padding: 0;\n	margin: 0;\n}\n.page-menu ul#primary-nav li {\n	float: left;\n}\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a span {\n	display: block;\n	padding: 0 10px;\n	background-repeat: no-repeat;\n	background-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\n}\n.page-menu ul#primary-nav li a {\n	padding-left: 0;\n	color: #000;\n	font-weight: bold;\n	line-height: 2.15em;\n	text-decoration: none;\n	margin-left: 1px;\n	font-size: 0.85em;\n}\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:active {\n	color: #000;\n}\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover span {\n	color: #000;\n}\n.page-menu ul#primary-nav li a span {\n	padding-top: 6px;\n	padding-right: 0;\n	padding-bottom: 5px;\n}\n.page-menu ul#primary-nav li a.menuparenth,\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n	background-position: 100% -120px;\n}\n.page-menu ul#primary-nav li a {\n	background-position: 100% -80px;\n}\n.page-menu ul#primary-nav li a.menuactive span,\n.page-menu ul#primary-nav li a:hover span,\n.page-menu ul#primary-nav li a:focus span,\n.page-menu ul#primary-nav li a:active span {\n	background-position: 0 -40px;\n}\n.page-menu ul#primary-nav li a span {\n	background-position: 0 0;\n}\n.page-menu ul#primary-nav .sectionheader,\n.page-menu ul#primary-nav li a:link.menuactive,\n.page-menu ul#primary-nav li a:visited.menuactive {\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\n	cursor: text;\n}\n.page-menu ul#primary-nav li span,\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n/* @ Opera, we need to be explicit again here now... */\n	cursor: pointer;\n}\n/* Additional IE specific bug fixes... */\n* html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n*:first-child+html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n/* --------------------  menu dropdow  -------------------------\n/* Unless you know what you do, do not touch this */\n/* Reset all ROOT menu styles. */\nul#primary-nav ul.unli li li a span,\nul#primary-nav ul.unli li a span,\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\n	font-weight: normal;\n	background-image: none;\n	display: block;\n	padding-top: 0px;\n	padding-left: 0px;\n	padding-right: 0px;\n	padding-bottom: 0px;\n}\n#primary-nav {\n	margin: 0px;\n	padding: 0px;\n}\n#primary-nav ul {\n	list-style: none;\n	margin: -6px 0px 0px;\n	padding: 0px;\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\n	width: 209px;\n}\n#primary-nav ul {\n	position: absolute;\n	z-index: 1001;\n	top: auto;\n	display: none;\n	padding-top: 9px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\n}\n* html #primary-nav ul.unli {\n	padding-top: 12px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\n}\n#primary-nav ul.unli ul {\n	margin-left: -7px;\n	left: 100%;\n	top: 3px;\n}\n* html #primary-nav ul.unli ul {\n	margin-left: -0px;\n}\n#primary-nav li {\n	margin: 0px;\n	float: left;\n}\n#primary-nav li li {\n	margin-left: 7px;\n	margin-top: -1px;\n	float: none;\n	position: relative;\n}\n/* Styling the basic appearance of the menu elements */\nul#primary-nav ul hr.menu_separator{\n        position: relative;\n        visibility: visible;\n        display:block;\n        width:130px;\n       	height: 1px;\n       	margin: 2px 30px 2px;\n	padding: 0em;\n	border-bottom: 1px solid #ccc;\n	border-top-width: 0px;\n	border-right-width: 0px;\n	border-left-width: 0px;\n	border-top-style: none;\n	border-right-style: none;\n	border-left-style: none;\n}\n#primary-nav .separator,\n#primary-nav .separatorh {\n	height: 9px;\n	width: 209px;\n	margin: 0px 0px -8px;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\n}\n* html #primary-nav .separator {\n       z-index:-1;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\n}\n*:first-child+html #primary-nav .separator {\n       z-index:-1;\n}\n#primary-nav ul.unli li a {\n	padding: 0px 10px;\n	width: 165px;\n	margin: 5px;\n	background-image: none;\n}\n* html #primary-nav ul.unli li a {\n	padding: 0px 10px 0px 5px;\n	width: 165px;\n	margin: 5px 0px;\n}\n#primary-nav li li a:hover {\n	background-color: #DBE7F2;\n}\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\n#primary-nav li.menuactive li a {\n	text-decoration: none;\n	background: none;\n}\n#primary-nav ul.unli li.menuparenth,\n#primary-nav ul.unli a:hover,\n#primary-nav ul.unli a.menuactive {\n	background-color: #DBE7F2;\n}\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\n#primary-nav ul.unli li .menuparent,\n#primary-nav ul.unli li .menuparent:hover,\n#primary-nav ul.unli li .menuparent,\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\n	background-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\n	background-position: center right;\n	background-repeat: no-repeat;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul,\n#primary-nav li.menuparenth ul ul ul {\n	display: none;\n}\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav ul ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul,\n#primary-nav ul ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hacks */\n#primary-nav li li {\n	float: left;\n	clear: both;\n}\n#primary-nav li li a {\n	height: 1%;\n}\n/*************** End Menu *****************/\n/* ------------ News Module ------------ */\n#news {\n	padding: 10px;\n}\n.NewsSummary {\n}\n.NewsSummaryPostdate,\n.NewsSummaryCategory,\n.NewsSummaryAuthor {\n	font-style: italic;\n	font-size: 0.8em;\n}\n.NewsSummaryLink {\n	margin: 2px 0;\n}\n.NewsSummaryContent {\n	margin: 10px 0;\n}\n.NewsSummaryMorelink {\n	margin: 5px 0 15px;\n}\n/* ------------ End News Module ------------ */', 'screen', '', '2009-05-06 14:30:25', '2009-07-22 17:39:51'),
	(50, 'Simplex: Core', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n/* =====================================\r\nBASE STYLES\r\n===================================== */\r\narticle, aside, details, figcaption, figure, footer, header, hgroup, nav, section { \r\n    display: block\r\n}\r\n/* taken from HTML5 Boilerplate http://h5bp.com */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100%\r\n}\r\naudio, canvas, video { \r\n    display: inline-block; \r\n    *display: inline; \r\n    *zoom: 1\r\n}\r\naudio:not([controls]) { \r\n    display: none\r\n}\r\n[hidden] { \r\n    display: none\r\n}\r\n/* text selection */\r\n.content-wrapper ::-moz-selection { \r\n    background: #f39c2c;\r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none\r\n}\r\n.content-wrapper ::selection { \r\n    background: #f39c2c; \r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none \r\n}\r\n/* Consistent box sizing and appearance */\r\ninput[type="checkbox"], input[type="radio"] { \r\n    box-sizing: border-box; \r\n    padding: 0; \r\n    *width: 13px; \r\n    *height: 13px\r\n}\r\ninput[type="search"] { \r\n    -webkit-appearance: textfield; \r\n    -moz-box-sizing: content-box; \r\n    -webkit-box-sizing: content-box; \r\n    box-sizing: content-box\r\n}\r\ninput[type="search"]::-webkit-search-decoration, input[type="search"]::-webkit-search-cancel-button { \r\n    -webkit-appearance: none\r\n}\r\n/* Remove inner padding and border in FF3/4 */\r\nbutton::-moz-focus-inner, input::-moz-focus-inner { \r\n    border: 0; \r\n    padding: 0\r\n}\r\n/*\r\n * 1. Remove default vertical scrollbar in IE6/7/8/9\r\n * 2. Allow only vertical resizing\r\n */\r\ntextarea { \r\n    overflow: auto; \r\n    vertical-align: top; \r\n    resize: vertical\r\n}\r\nul, ol { \r\n    margin: 1em 0; \r\n    padding: 0 0 0 40px\r\n}\r\ndd { \r\n    margin: 0 0 0 40px\r\n}\r\nnav ul, nav ol { \r\n    list-style: none; \r\n    list-style-image: none; \r\n    margin: 0; \r\n    padding: 0\r\n}\r\n/* Redeclare monospace font family */\r\npre, code, kbd, samp { \r\n    font-family: monospace, serif; _font-family: \'courier new\', monospace; \r\n    font-size: 1em }\r\n/* Improve readability of pre-formatted text in all browsers */\r\npre { \r\n    white-space: pre;\r\n    white-space: pre-wrap; \r\n    word-wrap: break-word\r\n}\r\nq { \r\n    quotes: none\r\n}\r\nq:before, q:after { \r\n    content: ""; \r\n    content: none\r\n}\r\nsmall { \r\n    font-size: 85%\r\n}\r\n/* Hide from both screenreaders and browsers */\r\n.hidden { \r\n    display: none !important; \r\n    visibility: hidden\r\n}\r\n/* Hide only visually, but have it available for screenreaders */\r\n.visuallyhidden { \r\n    border: 0; \r\n    clip: rect(0,0,0,0); \r\n    height: 1px; \r\n    margin: -1px; \r\n    overflow: hidden; \r\n    padding: 0; \r\n    position: absolute; \r\n    width: 1px\r\n}\r\n/* Extends the .visuallyhidden class to allow the element to be focusable when navigated to via the keyboard */\r\n.visuallyhidden.focusable:active, \r\n.visuallyhidden.focusable:focus { \r\n    clip: auto; \r\n    height: auto; \r\n    margin: 0; \r\n    overflow: visible; \r\n    position: static; \r\n    width: auto\r\n}\r\n/* Hide visually and from screenreaders, but maintain layout */\r\n.invisible { \r\n    visibility: hidden\r\n}\r\n/* correct text resizing */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100% \r\n}\r\nbody { \r\n    margin: 0; \r\n    font-size: 1em;\r\n   /* -webkit-font-smoothing: antialiased */\r\n}\r\n/* =====================================\r\n12 COLUMN GRID\r\n===================================== */\r\n\r\n/* ================================\r\nDesktop\r\n================================ */\r\n\r\n/* the wraping container */\r\n.container {\r\n    width: 92%;\r\n    min-width: 980px;\r\n    max-width: 1260px\r\n}\r\n/* align the site */\r\n.leftaligned {\r\n    margin: 0 auto 0  0\r\n}\r\n.rightaligned {\r\n    margin: 0 0 0 auto\r\n}\r\n.centered {\r\n    margin: 0 auto\r\n}\r\n/* Global Grid layout */\r\n.grid_1,\r\n.grid_2,\r\n.grid_3,\r\n.grid_4,\r\n.grid_5,\r\n.grid_6,\r\n.grid_7,\r\n.grid_8,\r\n.grid_9,\r\n.grid_10,\r\n.grid_11,\r\n.grid_12 {\r\n	display:inline;\r\n	float: left;\r\n	position: relative;\r\n	margin-left: .96%;\r\n	margin-right: .96%   \r\n}\r\n\r\n/* alpha and omega classes remove margins, aplha = no margin left, omega = no margin right */\r\n.alpha { margin-left: 0 }\r\n.omega { margin-right: 0 }\r\n\r\n/* Grid sizes up to 12 columns */\r\n.container .grid_1 { width:6.333% }\r\n.container .grid_2 { width:14.667% }\r\n.container .grid_3 { width:23.0% }\r\n.container .grid_4 { width:31.333% }\r\n.container .grid_5 { width:39.667% }\r\n.container .grid_6 { width:48.0% }\r\n.container .grid_7 { width:56.333% }\r\n.container .grid_8 { width:64.667% }\r\n.container .grid_9 { width:73.0% }\r\n.container .grid_10 { width:81.333% }\r\n.container .grid_11 { width:89.667% }\r\n.container .grid_12 { width:98.0% }\r\n\r\n/* Prefix to add extra space left */\r\n.container .prefix_1 { padding-left:8.333% }\r\n.container .prefix_2 { padding-left:16.667% }\r\n.container .prefix_3 { padding-left:25.0% }\r\n.container .prefix_4 { padding-left:33.333% }\r\n.container .prefix_5 { padding-left:41.667% }\r\n.container .prefix_6 { padding-left:50.0% }\r\n.container .prefix_7 { padding-left:58.333% }\r\n.container .prefix_8 { padding-left:66.667% }\r\n.container .prefix_9 { padding-left:75.0% }\r\n.container .prefix_10 { padding-left:83.333% }\r\n.container .prefix_11 { padding-left:91.667% }\r\n\r\n/* Suffix to add extra space right */\r\n.container .suffix_1 { padding-right:8.333% }\r\n.container .suffix_2 { padding-right:16.667% }\r\n.container .suffix_3 { padding-right:25.0% }\r\n.container .suffix_4 { padding-right:33.333% }\r\n.container .suffix_5 { padding-right:41.667% }\r\n.container .suffix_6 { padding-right:50.0% }\r\n.container .suffix_7 { padding-right:58.333% }\r\n.container .suffix_8 { padding-right:66.667% }\r\n.container .suffix_9 { padding-right:75.0% }\r\n.container .suffix_10 { padding-right:83.333% }\r\n.container .suffix_11 { padding-right:91.667% }\r\n\r\n/* Push columns to right */\r\n.container .push_1 { left:8.333% }\r\n.container .push_2 { left:16.667% }\r\n.container .push_3 { left:25.0% }\r\n.container .push_4 { left:33.333% }\r\n.container .push_5 { left:41.667% }\r\n.container .push_6 { left:50.0% }\r\n.container .push_7 { left:58.333% }\r\n.container .push_8 { left:66.667% }\r\n.container .push_9 { left:75.0% }\r\n.container .push_10 { left:83.333% }\r\n.container .push_11 { left:91.667% }\r\n\r\n/* Pull columns to left */\r\n.container .pull_1 { left:-8.333% }\r\n.container .pull_2 { left:-16.667% }\r\n.container .pull_3 { left:-25.0% }\r\n.container .pull_4 { left:-33.333% }\r\n.container .pull_5 { left:-41.667% }\r\n.container .pull_6 { left:-50.0% }\r\n.container .pull_7 { left:-58.333% }\r\n.container .pull_8 { left:-66.667% }\r\n.container .pull_9 { left:-75.0% }\r\n.container .pull_10 { left:-83.333% }\r\n.container .pull_11 { left:-91.667% }\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 768px;\r\n        max-width: 1024px\r\n    } \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 320px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 300px;\r\n        max-width: 320px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;  \r\n        margin: 0 1%;\r\n        float: none\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 321px;\r\n        max-width: 767px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;\r\n        margin: 0 1%;\r\n        display: block;\r\n        float: none\r\n    }    \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portrait & Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 300px) and (max-width: 767px) {\r\n    .container .prefix_1,\r\n    .container .prefix_2,\r\n    .container .prefix_3,\r\n    .container .prefix_4,\r\n    .container .prefix_5,\r\n    .container .prefix_6,\r\n    .container .prefix_7,\r\n    .container .prefix_8,\r\n    .container .prefix_9,\r\n    .container .prefix_10,\r\n    .container .prefix_11,\r\n    .container .suffix_1,\r\n    .container .suffix_2,\r\n    .container .suffix_3,\r\n    .container .suffix_4,\r\n    .container .suffix_5,\r\n    .container .suffix_6,\r\n    .container .suffix_7,\r\n    .container .suffix_8,\r\n    .container .suffix_9,\r\n    .container .suffix_10,\r\n    .container .suffix_11 { \r\n        padding-right: 0;\r\n        padding-left: 0\r\n    } \r\n    .container .push_1,\r\n    .container .push_2,\r\n    .container .push_3,\r\n    .container .push_4,\r\n    .container .push_5,\r\n    .container .push_6,\r\n    .container .push_7,\r\n    .container .push_8,\r\n    .container .push_9,\r\n    .container .push_10,\r\n    .container .push_11,\r\n    .container .pull_1,\r\n    .container .pull_2,\r\n    .container .pull_3,\r\n    .container .pull_4,\r\n    .container .pull_5,\r\n    .container .pull_6,\r\n    .container .pull_7,\r\n    .container .pull_8,\r\n    .container .pull_9,\r\n    .container .pull_10,\r\n    .container .pull_11 {\r\n        left: auto;\r\n        right: auto\r\n    }\r\n}\r\n\r\n/* =====================================\r\niPhone 4, iPad2, Retina stuff ?\r\n===================================== */\r\n@media only screen and (-webkit-min-device-pixel-ratio : 1.5), only screen and (min-device-pixel-ratio : 1.5) {\r\n\r\n/* if you buy me one i might test and add something here */\r\n\r\n}\r\n\r\n/* =====================================\r\nCLEARING FLOATS\r\n===================================== */\r\n.clear {\r\n	clear: both;\r\n	display: block;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0\r\n}\r\n\r\n.cf:before, \r\n.cf:after,\r\n.row:before,\r\n.row:after{ \r\n    content: ""; \r\n    display: table\r\n}\r\n.cf:after,\r\n.row:after{ \r\n    clear: both\r\n}\r\n.cf,\r\n.row { \r\n    *zoom: 1\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:15:51', '2012-05-06 18:49:29'),
	(51, 'Simplex: Layout', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n[[* APPEARANCE *]]\r\n[[* \r\nBy adding #boxed id to body tag you can easily change appearance of the site.\r\nThis would add a background image to body and content would be wrapped in a box.\r\nBy removing that id the background is removed and site is presented in white.\r\n\r\nHow: Go to Template -> Simplex and find <body>\r\nNow simply edit as following <body id=\'boxed\'>\r\n\r\nYou can as well reposition your site by changing class on wrapping div.\r\nFind in Simplex Template following: \r\n\r\n<div class=\'container centered\' id=\'wrapper\'>\r\n\r\nNow change "centered" to "left" or "right" and page will be left or right aligned.\r\n*]]\r\n\r\n[[* assign the images path to a variable *]]\r\n[[capture assign=\'path\']][[uploads_url]]/simplex/images[[/capture]]\r\n\r\n[[* COLORS *]]\r\n\r\n[[assign var=\'boxed_bg\' value="#d1d1d1 url(`$path`/boxed-bg.gif)"]]\r\n\r\n[[assign var=\'light_grey\' value=\'#f1f1f1\']]\r\n[[assign var=\'grey\' value=\'#e9e9e9\']]\r\n[[assign var=\'dark_grey\' value=\'#555\']]\r\n[[assign var=\'white\' value=\'#fff\']]\r\n[[assign var=\'orange\' value=\'#f39c2c\']]\r\n[[assign var=\'dark_orange\' value=\'#e6870e\']]\r\n[[assign var=\'yellow\' value=\'#fdbd34\']]\r\n\r\n\r\n/* =====================================\r\nBASIC STYLES\r\n===================================== */\r\nbody {\r\n    background: [[$white]];\r\n    font-family: sans-serif; /* sans-serif falls back to default OS and Browser font, usually Arial or Helvetica and so on */\r\n    font-size: 12px;\r\n    color: [[$dark_grey]];\r\n    line-height: 1.3\r\n}\r\n/* you can change appearance of the page by adding or removing #boxed id to body tag. */\r\nbody#boxed {\r\n    background: [[$boxed_bg]] repeat\r\n}\r\n/* add some space inside the boxed container */\r\n#boxed .container {\r\n    padding: 0 1%\r\n}\r\na img {\r\n    border: none\r\n}\r\n/* you can use these classes to align images to left or right */\r\n.right {\r\n    float: right\r\n}\r\n.left {\r\n    float:left\r\n}\r\n/* if image needs some space add this class to img tag\r\n * so at the end a left floating image would be <img src=\'some.jpg\' class=\'left spacing\' alt=\'foo\' />\r\n */\r\n.spacing {\r\n    margin: 10px\r\n}\r\n.spacing.left {\r\n    margin: 10px 10px 10px 0\r\n}\r\n.spacing.right {\r\n    margin: 10px 0 10px 10px\r\n}\r\n/* or add a 2 px border to image or something, change as you need it */\r\n.border {\r\n    border: 2px solid [[$grey]]\r\n}\r\n/* some styling for code chunks */\r\ncode, samp, kbd {\r\n    font-family: Consolas, \'Andale Mono WT\', \'Andale Mono\', \'Lucida Console\', \'Lucida Sans Typewriter\', monospace;\r\n    color: [[$dark_grey]]\r\n}\r\npre code {\r\n    line-height: 1.4;\r\n    font-size: 11px\r\n}\r\npre {\r\n    padding: 10px;\r\n    margin: 10px 0;\r\n    overflow: auto;\r\n    width: 93%;\r\n    background: [[$light_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px\r\n}\r\n/* target IE7 and IE6 */\r\n*:first-child+html pre {\r\n    padding-bottom: 20px;\r\n    overflow-y: hidden;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n* html pre {\r\n    padding-bottom: 20px;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n/* horizontal ruler */\r\nhr { \r\n    border: solid [[$grey]]; \r\n    border-width: 1px 0 0 0; \r\n    clear: both; \r\n    margin: 10px 0 30px 0; \r\n    height: 0\r\n}\r\n/* =====================================\r\nCOMMON TYPOGRAPHY\r\n===================================== */\r\n\r\n/* link default styles */\r\na { \r\n    color: [[$orange]];\r\n}\r\na:visited {  \r\n    color: [[$dark_orange]] \r\n}\r\na:hover { \r\n    color: [[$dark_grey]];\r\n    transition: transform 0.6s ease-out;\r\n    -webkit-transition: color 0.6s ease-out;\r\n    -moz-transition: color 0.6s ease-out;\r\n    -o-transition: color 0.6s ease-out;     \r\n    text-decoration: underline\r\n}\r\na:focus { \r\n    outline: thin dotted\r\n}\r\na:hover, a:active { \r\n    outline: 0\r\n}\r\n/* add icon to links with class external */\r\na.external span {\r\n    display: inline-block;\r\n    width: 9px;\r\n    height: 9px;\r\n    text-indent: -999em;\r\n    margin: 0 3px;\r\n    /* using sprite image, but left as reference to single image \r\n    background: transparent url([[$path]]/external-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -130px;\r\n}\r\na.external:hover span {\r\n    background-position: -10px -139px\r\n}\r\n/* default heading styles */\r\nh1,\r\nh2,\r\nh3 {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n}\r\nh1 {\r\n    color: [[$orange]];\r\n    margin: 10px 0;\r\n    font-size: 28px;\r\n    text-transform: uppercase;\r\n}\r\nh2 {\r\n    color: [[$dark_grey]];\r\n    font-size: 22px\r\n}\r\nh3 {\r\n    color: [[$dark_grey]];\r\n    font-weight: 300;\r\n    font-size: 18px\r\n}\r\n/* blockquotes and cites */\r\nblockquote, \r\nblockquote p { \r\n    font-size: 14px; \r\n    line-height: 1.5; \r\n    color: [[$dark_grey]]; \r\n    font-style: italic;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\nblockquote { \r\n    margin: 0 0 20px 0; \r\n    padding: 9px 10px 10px 19px; \r\n    border-left: 5px solid [[$light_grey]]\r\n}\r\nblockquote cite { \r\n    display: block; \r\n    font-size: 12px; \r\n    color: [[$dark_grey]] \r\n}\r\nblockquote cite:before { \r\n    content: "\\2014 \\0020"; \r\n}\r\nblockquote cite a, \r\nblockquote cite a:visited, \r\nblockquote cite a:visited {\r\n    font-family: Georgia, Times New Roman, serif;    \r\n}\r\n\r\n/* =====================================\r\nLAYOUT\r\n===================================== */\r\n/* wrapping the page in a box */\r\n#wrapper {\r\n    margin-top: 10px;\r\n    border-top: 5px solid [[$orange]]\r\n}\r\n/* you can switch appearance of the page by adding or removing id #boxed to body tag */\r\n#boxed #wrapper {\r\n    background: [[$white]];\r\n    box-shadow: 2px 2px 8px [[$dark_grey]]\r\n}\r\n   \r\n/* ------ HEADER SECTION ------ */\r\n/* if you need height or something for header part add style here */\r\n.header {\r\n \r\n}\r\n/* the logo */\r\n.logo {\r\n    margin-top: 12px;\r\n    position: relative\r\n}\r\n/* having some fun with palm, rotating with css3, will not work in IE */\r\n.logo .palm {\r\n    position: absolute;\r\n    top: 5px;\r\n    left: 45px;\r\n    /* using sprite image as background, left as reference to single image \r\n    background: url([[$path]]/palm-circle.png) no-repeat;\r\n    */\r\n    background: url([[$path]]/simplex-sprite.png) no-repeat -10px -10px;\r\n    display: block;\r\n    width: 48px;\r\n    height: 48px;\r\n    transition: transform 0.6s ease-out;    \r\n    -webkit-transition: -webkit-transform 0.6s ease-out;\r\n    -moz-transition: -moz-transform 0.6s ease-out;\r\n    -o-transition: -o-transform 0.6s ease-out;\r\n    -webkit-perspective: 1000;\r\n    -webkit-backface-visibility: hidden;     \r\n}\r\n/* css3 transform rotating palm on hover */\r\n.logo a:hover .palm {\r\n    transform: rotate(360deg);    \r\n    -webkit-transform: rotate(360deg);\r\n    -moz-transform: rotate(360deg);\r\n    -o-transform: rotate(360deg)   \r\n}\r\n.top .header {\r\n    border-bottom: 1px solid [[$light_grey]]\r\n}\r\n\r\n/* ------ NAVIGATION ------ */\r\n\r\n/* first level */\r\nnav.main-navigation {\r\n    z-index: 990;\r\n    height: 55px;\r\n    line-height: 37px;\r\n    margin-top: 20px;\r\n}\r\nnav.main-navigation > ul {\r\n    float:right;\r\n    padding: 0\r\n}\r\nnav.main-navigation > ul > li {\r\n    float: left;\r\n    padding: 0;\r\n    margin:0 12px;\r\n    position: relative\r\n}\r\nnav.main-navigation > ul > li:first-child,\r\nnav.main-navigation > ul > li.first {\r\n    margin-left: 0\r\n}\r\nnav.main-navigation > ul > li:last-child,\r\nnav.main-navigation > ul > li.last {\r\n    margin-right: 0\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader span {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    cursor: pointer;\r\n    text-transform: uppercase\r\n}\r\n/* Second Level */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    position: absolute;\r\n    display: block;\r\n    height: 0px;\r\n    width: 200px;  \r\n    padding: 10px;\r\n    background: [[$white]];\r\n    background: rgba(255,255,255,.95);    \r\n    box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -webkit-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -moz-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -o-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px;\r\n    border: 1px solid [[$grey]] \r\n}\r\nnav.main-navigation > ul > li:hover > ul {    \r\n    height: auto;\r\n    z-index: 9999;\r\n    top: 37px;\r\n    right: 0;\r\n    left: auto;\r\n    display: block\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    line-height: 1;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul { \r\n    height: auto;\r\n    top: 0;\r\n    right: auto;\r\n    left: -210px;\r\n    z-index: 999;    \r\n    display: block\r\n}\r\n/* navigation text color */\r\nnav.main-navigation ul li li a,\r\nnav.main-navigation ul li li.sectionheader span {\r\n    padding: 6px 12px;\r\n    font-family: sans-serif;\r\n    text-transform: none;\r\n    font-weight: normal;\r\n    font-size: 12px;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    display: block\r\n}\r\nnav.main-navigation a:hover,\r\nnav.main-navigation a.current,\r\nnav.main-navigation li.sectionheader span:hover,\r\nnav.main-navigation li.sectionheader span.current,\r\nnav.main-navigation li.sectionheader span.parent,\r\nnav.main-navigation ul ul li a:hover,\r\nnav.main-navigation ul ul li a.current {\r\n    color: [[$orange]]\r\n}\r\n/* bottom part of header*/\r\n.header-bottom {\r\n    height: 55px;\r\n    line-height: 55px\r\n}\r\n/* catchphrase */\r\n.phrase span {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    text-transform: uppercase;\r\n    color: #ddd;\r\n    font-size: 16px;\r\n    font-weight: 700\r\n}\r\n/* search */\r\n.search {\r\n    text-align: right;\r\n}\r\n/* webkit browser add icons to input of type search, we dont want it here now */\r\ninput.search-input::-webkit-search-decoration,\r\ninput.search-input::-webkit-search-results-button,\r\ninput.search-input::-webkit-search-results-decoration {\r\n    -webkit-appearance:none\r\n}\r\n/* styling the search input field */\r\ninput.search-input {\r\n    border: 1px solid [[$light_grey]];  \r\n    height: 17px;\r\n    line-height: 17px;\r\n    outline: 0;\r\n    margin: 13px 0 0 0;\r\n    width: 165px;\r\n    padding: 5px 0 3px 35px;\r\n    font-size: 11px;\r\n    color: [[$dark_grey]];\r\n    transition: all .35s ease-in-out;\r\n    -webkit-transition: all .35s ease-in-out;\r\n    -moz-transition: all .35s ease-in-out;\r\n    -o-transition: all .35s ease-in-out; \r\n    /* using sprite image, left as reference to single image \r\n    background: [[$white]] url([[$path]]/search-icon.png) 10px 50% no-repeat\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) 0px -434px no-repeat\r\n}\r\ninput.search-input:focus {\r\n    border: 1px solid [[$orange]];\r\n    width: 240px;      \r\n    box-shadow: 0 0 3px [[$orange]];    \r\n    -webkit-box-shadow: 0 0 3px [[$orange]];\r\n    -moz-box-shadow: 0 0 3px [[$orange]];\r\n    -o-box-shadow: 0 0 3px [[$orange]];\r\n}\r\n   \r\n/* ------ BANNER AREA ------ */\r\n.banner {\r\n    overflow: hidden;\r\n    background: [[$orange]]\r\n}\r\n/* left text in orange box */\r\n.banner-text {\r\n    padding:0 0 0 1%;\r\n    position: relative;\r\n    float: left;\r\n    max-height: 275px;\r\n    width: 30.333%\r\n}\r\n.banner-text ul {\r\n    padding: 32px 0;\r\n}\r\n.banner-text li {\r\n    list-style: none;\r\n    display: block;\r\n    color: [[$dark_orange]];\r\n    text-shadow: 0px 1px 0 [[$yellow]], 0 -1px 0 rgba(0,0,0,0.3);\r\n    font-size: 36px;\r\n    font-weight: 700;\r\n    transition: all 2s linear;\r\n    -webkit-transition: all 1.5s linear;\r\n    -moz-transition: all 1.5s linear;\r\n    -o-transition: all 1.5s linear;\r\n    display: block\r\n}\r\n/* animating unordered list text in banner */\r\n.banner-text li:hover {\r\n    text-indent: 120px;\r\n    opacity: 0;\r\n    transform: scale(2) rotate(35deg);\r\n    -webkit-transform: scale(2) rotate(35deg);\r\n    -moz-transform: scale(2) rotate(35deg);\r\n    -o-transform: scale(2) rotate(35deg)\r\n}\r\n/* images on the right */\r\n.banner-image {\r\n    float:right;\r\n    display: block;\r\n    position: relative;\r\n    width: 67.667%;\r\n    overflow: hidden;\r\n    background: [[$grey]]\r\n}\r\n.banner-image div {\r\n    position: absolute;\r\n    z-index: 0;\r\n    width: 100%;\r\n    min-height: 100px;\r\n    overflow: hidden;\r\n    display: block;\r\n    top: 0;\r\n    left: 0\r\n}\r\n.banner-image img {\r\n    display: block;\r\n	height: auto;\r\n    width: 100%;\r\n    bottom: 0;\r\n    max-width: 100%;\r\n}\r\n/* ------ CONTENT AREA ------ */\r\n.content-wrapper {\r\n    padding-top: 20px\r\n}\r\n.content-top {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    font-style: italic;\r\n    line-height: 20px\r\n}\r\n\r\n/* breadcrumbs */\r\n.breadcrumb {\r\n    display: inline-block;\r\n    background: [[$white]];\r\n    width: auto;\r\n    padding-right: 6px\r\n}\r\n.breadcrumb a {\r\n    color: [[$dark_grey]];\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]]\r\n}\r\n\r\n/* print button */\r\na.printbutton {\r\n    display: block;\r\n    padding-left: 6px;\r\n    width: 16px;\r\n    height: 16px;\r\n    float:right;\r\n    text-indent: -999em;\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px -16px;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -94px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out     \r\n}\r\na.printbutton:hover {\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px 0;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -78px;\r\n}\r\n\r\n/* news module summary -> content */\r\n.content .news-summary  span.heading {\r\n    display: none\r\n}\r\n.content .news-article {\r\n    margin-bottom: 15px;\r\n    padding-bottom: 15px;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n.content .news-summary ul.category-list {\r\n    margin: 15px 0\r\n}\r\n.content .news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    border-radius: 4px\r\n}\r\n.news-summary ul.category-list li span {\r\n    opacity: .4\r\n}\r\n/* news module summary -> sitewide (content + sidebar) */\r\n/* article heading */\r\n.news-article h2 {\r\n    margin: 0 0 15px 0\r\n}\r\n.news-article h2 a {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    font-size: 16px;\r\n    text-decoration: none;\r\n    font-weight: 700\r\n}\r\n/* date circle, well square for IE  */\r\n.news-article .date {\r\n    background: [[$orange]];\r\n    color: [[$white]];\r\n    display: block;\r\n    float:left;\r\n    width: 40px;\r\n    padding: 6px;\r\n    height: 40px;\r\n    border-radius: 26px;\r\n    text-align: center;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\n.news-article .day {\r\n    font-size: 20px;\r\n    line-height: 1;\r\n    padding-bottom: 2px;\r\n    font-style: italic;\r\n    display: block\r\n}\r\n.news-article.month {\r\n    font-size: 11px;\r\n    display: block\r\n}\r\n/* author and category */\r\n.news-article .author,\r\n.news-article .category {\r\n    font-family: Georgia, Times New Roman, serif;\r\n    display: block;\r\n    padding-left: 60px;\r\n    font-size: 11px;\r\n    font-style: italic\r\n}\r\n/* category list on top of summary */\r\n.news-summary ul.category-list {\r\n    margin:15px 0 0 0;\r\n    padding:0;\r\n    list-style: none\r\n}\r\n.news-summary ul.category-list li {\r\n    float:left;\r\n    display: block;\r\n    width: auto;\r\n    margin-right: 5px\r\n}\r\n.news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    display: block;\r\n    color: [[$dark_grey]];\r\n    padding: 4px 8px;\r\n    background: [[$light_grey]];\r\n    border-radius: 4px 4px 0 0;\r\n    text-decoration: none;\r\n    font-size: 11px;\r\n    text-transform: uppercase\r\n}\r\n.news-summary ul.category-list li a:hover {\r\n    color: [[$orange]]\r\n}\r\n.news-summary .paginate {\r\n    font: italic 11px/1.2 Georgia, Times New Roman, serif;\r\n    \r\n}\r\n.news-summary .paginate a {\r\n    padding: 0 3px;\r\n}\r\n.news-meta {\r\n    background: [[$light_grey]];\r\n    padding: 10px;\r\n    margin: 10px 0\r\n}\r\n/* more link */\r\n.more,\r\n.more a,\r\n/* back link */\r\n.back,\r\n.back a,\r\n/* previous, next links */\r\n.previous a,\r\n.next a,\r\n.previous,\r\n.next {\r\n    font:  italic 12px/1.3 Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none\r\n} \r\n/* hover behavior of more, next, previous links */\r\n.more a:hover,\r\n.back a:hover,\r\n.previous a:hover,\r\n.next a:hover {\r\n    text-decoration: underline\r\n}\r\n.previous,\r\n.next {\r\n    padding: 6px 0;\r\n}\r\n/* align next link to right */\r\n.previous {\r\n    float:left;\r\n}\r\n.next {\r\n    float: right\r\n}\r\n\r\n/* ------ SIDEBAR AREA ------ */\r\n\r\n/* news module summary -> sidebar */\r\n.sidebar .news-summary  span.heading {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    color: [[$dark_grey]];\r\n    font:  normal 16px/20px Georgia, Times New Roman, serif;\r\n    margin: 0 0 15px 0;\r\n    display: block\r\n}\r\n.sidebar .news-summary .heading span {\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]];\r\n    padding-right: 6px\r\n}\r\n.sidebar .news-article {\r\n    padding: 15px;\r\n    position: relative;\r\n    background: [[$light_grey]];\r\n    margin-bottom: 20px;\r\n    border-radius: 0 0 6px 0\r\n}\r\n/* creating a bubble box with css3 */\r\n.sidebar .news-article:before {\r\n    content:\'\';\r\n    position: absolute;\r\n    bottom: -15px;\r\n    right: 25px;\r\n    width: 10px;\r\n    height: 35px;\r\n    -webkit-transform: rotate(55deg) skewY(55deg);\r\n    -moz-transform: rotate(55deg) skewY(55deg);\r\n    -o-transform: rotate(55deg) skewY(55deg);\r\n    -ms-transform: rotate(55deg) skewY(55deg);\r\n    transform: rotate(55deg) skewY(55deg);\r\n    background: [[$light_grey]]\r\n}\r\n\r\n/* ------ FOOTER AREA ------ */\r\n/* footer wrapper */\r\n.footer {\r\n    position: relative;\r\n    background: transparent url([[$path]]/footer-background.png) repeat-x top;\r\n    border-bottom: 1px dotted [[$grey]];\r\n    margin: 25px 0 10px 0;\r\n    padding: 20px 0\r\n}\r\n/* copyright text */\r\n.copyright {\r\n    padding-top: 15px\r\n}\r\n.copyright p,\r\n.copyright a {\r\n    color: [[$dark_grey]];\r\n    font-size: 11px\r\n}\r\n/* social icons */\r\n.footer ul.social {\r\n    padding: 0;\r\n    margin: 0\r\n}\r\n.footer .social li {\r\n    float:left;\r\n    margin: 0;\r\n    padding: 0;\r\n    list-style: none;\r\n    margin-right: 6px\r\n}\r\n.footer .social li a {\r\n    display: block;\r\n    width: 24px;\r\n    height: 24px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out;     \r\n    text-indent: -999em\r\n}\r\n.footer .social li.facebook a { \r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 -24px\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -260px\r\n}\r\n.footer .social li.facebook a:hover {\r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -236px\r\n}\r\n.footer .social li.twitter a { \r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -192px\r\n}\r\n.footer .social li.twitter a:hover {\r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -168px\r\n}\r\n.footer .social li.linkedin a { \r\n    /* background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -328px\r\n}\r\n.footer .social li.linkedin a:hover {\r\n   /*  background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 0 */\r\n   background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -304px\r\n}\r\n.footer .social li.youtube a { \r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -396px\r\n}\r\n.footer .social li.youtube a:hover {\r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -372px\r\n}\r\n/* back to top anchor */\r\n.back-top a {\r\n    display: inline-block;\r\n    width: auto;\r\n    padding: 8px;\r\n    border-left: 5px solid [[$white]];\r\n    border-right: 5px solid [[$white]];\r\n    font:  normal italic 11px/20px Georgia, Times New Roman, serif;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    background: [[$light_grey]];\r\n    color: [[$dark_grey]];\r\n    border-radius: 10px 0 10px 0;\r\n    -webkit-border-radius: 10px 0 10px 0;\r\n    -moz-border-radius: 10px 0 10px 0;\r\n    -o-border-radius: 10px 0 10px 0;\r\n    position: absolute;\r\n    top: -14px;\r\n    left: 48%\r\n}\r\n/* Footer navigation */\r\n.footer-navigation {\r\n    padding-top: 15px\r\n}\r\n.footer-navigation > ul > li {\r\n    float:left;\r\n    width: 32.333%\r\n}\r\n.footer-navigation > ul > li > a,\r\n.footer-navigation > ul > li span.sectionheader {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    display: block\r\n}\r\n/* second level */\r\n.footer-navigation > ul ul {\r\n    margin-top: 10px\r\n}\r\n.footer-navigation > ul > li li {\r\n    float: none;\r\n    width: 100%;\r\n    display: block\r\n}\r\n.footer-navigation > ul > li li a,\r\n.footer-navigation > ul > li.sectionheader li a,\r\n.footer-navigation > ul > li li span.sectionheader  {\r\n    text-decoration: none;\r\n    font-family: sans-serif;\r\n    font-weight: normal;\r\n    text-transform: none; \r\n    display: block;\r\n    padding: 2px 0;\r\n    color: [[$dark_grey]]\r\n}\r\n.footer-navigation > ul > li li a:hover {\r\n    color: [[$orange]]\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:16:21', '2013-04-17 14:33:49'),
	(52, 'Simplex: Print', '/* reset body background and color, just in case */\r\nbody {\r\n    background: #fff;\r\n    color: #000;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    font-size: 12pt\r\n}\r\n/* any element with class noprint or listed below should not be printed */\r\n.noprint,\r\n.visuallyhidden {\r\n    display: none\r\n}\r\n/* display image as block */\r\nimg {\r\n    display: block;\r\n    float: none\r\n}\r\n/* remove width and floats from elements */\r\n#wrapper,\r\n.container,\r\n.container .grid_1, \r\n.container .grid_2,\r\n.container .grid_3,\r\n.container .grid_4,\r\n.container .grid_5,\r\n.container .grid_6,\r\n.container .grid_7,\r\n.container .grid_8,\r\n.container .grid_9,\r\n.container .grid_10,\r\n.container .grid_11,\r\n.container .grid_12 {\r\n    width: 100%;\r\n    margin: 0;\r\n    float: none    \r\n}\r\n/* links arent clickable on paper, lets display url */\r\na:link:after {\r\n    content: " (" attr(href) ") ";\r\n}\r\na {\r\n    text-decoration: underline\r\n}\r\n', 'print', '', '2012-04-26 07:47:10', '2012-05-06 17:10:32'),
	(53, 'Simplex: Mobile', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n/* Default styles for screens up to 1024px width */\r\n/* realign logo for mobile devices */\r\n.logo.grid_4 {\r\n    float: none;\r\n    display: block;\r\n    text-align: center;\r\n    margin:10px 0;\r\n    padding:0;\r\n    width: 100%\r\n}\r\n/* hide rotating palm */\r\n.logo .palm {\r\n    display: none\r\n}\r\n/* realign navigation for mobile devices */\r\nnav.main-navigation {\r\n    float: none;\r\n    margin: 0;\r\n    height: auto;\r\n    line-height: 1\r\n}\r\nnav.main-navigation > ul {\r\n    float:none;\r\n    position: relative;\r\n    padding: 0\r\n}\r\nnav.main-navigation ul li {\r\n    background: #f1f1f1;\r\n    display: block;\r\n    position: relative;\r\n    border-radius: 4px 4px 0 0;\r\n    padding: 0 10px;\r\n    margin: 0 1px\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader > span {\r\n    font-size: 12px;\r\n    line-height: 28px;\r\n}\r\n/* second level navigation */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    width: 200px;\r\n    height: auto;\r\n    display: block;\r\n    position: absolute;\r\n}\r\nnav.main-navigation > ul > li:hover > ul,\r\nnav.main-navigation > ul > li.active > ul {\r\n    top: 28px;\r\n    left: 0;\r\n    z-index: 999;\r\n    right: auto\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    background: #fff;\r\n    line-height: 1;\r\n    height: auto;\r\n    margin: 0;\r\n    padding: 0\r\n} \r\nnav.main-navigation > ul > li li a {\r\n    line-height: 1\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul {\r\n    left: 0;\r\n    top: 28px\r\n}\r\n/* close button (appended to dropdown with jquery) */\r\n.close-button {\r\n    display: block;\r\n    background: url([[uploads_url]]/simplex/images/close_button.png) no-repeat;\r\n    text-indent: -999em;\r\n    position: absolute;\r\n    bottom: -5px;\r\n    right: -5px;\r\n    width: 24px;\r\n    height: 24px\r\n}\r\n/* display phrase text and search box in full width */\r\n.header-bottom {\r\n    height: auto;\r\n    line-height: 1.2;\r\n    padding: 10px 0\r\n}\r\n.search input {\r\n    text-align: center;\r\n    padding: 5px 0 3px 0;\r\n    display: block\r\n}\r\n/* phrase */\r\n.phrase .grid_7 {\r\n    margin: 0;\r\n    width: 100%;\r\n    float: none;\r\n    display: block\r\n}\r\n/* hide banner text and size image area */\r\n.banner-text {\r\n    display: none;\r\n    width: 0\r\n}\r\n.banner-image {\r\n    display: block;\r\n    width: 100%;\r\n    float:none;\r\n    margin: 0;\r\n    padding: 0\r\n}\r\n/* hide print button */\r\na.printbutton {\r\n    display: none\r\n}\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    /* realign navigation for mobile devices */\r\n    nav.main-navigation {\r\n        float: none;\r\n        margin: 0;\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 14px\r\n    } \r\n    .header-bottom {\r\n        height: auto;\r\n        line-height: 1.2;\r\n        padding: 10px 0\r\n    }\r\n    .search input {\r\n        width: 60%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) { \r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }    \r\n    nav.main-navigation > ul > li > a.\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 10px\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 480px) {\r\n    .logo img {\r\n        margin: 20px auto\r\n    }\r\n    /* realing navigation */\r\n    nav.main-navigation {\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation > ul > li:hover > ul,\r\n    nav.main-navigation > ul > li.active > ul {\r\n        top: 58px;\r\n        left: 2%;\r\n        right: auto\r\n    }    \r\n    nav.main-navigation ul li {\r\n        float: none;\r\n        position: relative;\r\n        background: none;\r\n        border-bottom: 1px dotted #f1f1f1;\r\n        border-radius: 0;\r\n        padding: 8px 0;\r\n        margin: 0\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader span {\r\n        font-size: 20px\r\n    }\r\n    /* search box */\r\n    .grid_5.search {\r\n        float:none;\r\n        margin: 0 auto;\r\n        width: 100%;\r\n    }    \r\n    .search input {\r\n        width: 80%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }     \r\n    /* hiding footer navigation or it is squeezed to much */\r\n    .footer-navigation {\r\n        display: none\r\n    }\r\n    .footer .copyright {\r\n        text-align: center\r\n    }\r\n}\r\n\r\n[[/strip]]', '', 'screen and (min-width: 300px) and (max-width: 1024px)', '2012-04-30 12:27:44', '2013-04-17 14:36:32');
/*!40000 ALTER TABLE `cms_allicense_css` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_css_assoc
DROP TABLE IF EXISTS `cms_allicense_css_assoc`;
CREATE TABLE IF NOT EXISTS `cms_allicense_css_assoc` (
  `assoc_to_id` int(11) DEFAULT NULL,
  `assoc_css_id` int(11) DEFAULT NULL,
  `assoc_type` varchar(80) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `assoc_order` int(11) DEFAULT NULL,
  KEY `cms_allicense_index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `cms_allicense_index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_css_assoc: 45 rows
/*!40000 ALTER TABLE `cms_allicense_css_assoc` DISABLE KEYS */;
INSERT INTO `cms_allicense_css_assoc` (`assoc_to_id`, `assoc_css_id`, `assoc_type`, `create_date`, `modified_date`, `assoc_order`) VALUES
	(17, 41, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(16, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(18, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(18, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(18, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
	(18, 38, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
	(18, 42, 'template', '2009-04-30 17:44:09', '2009-04-30 17:44:09', 3),
	(18, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(16, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(16, 34, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
	(16, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
	(16, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(15, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
	(15, 33, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
	(15, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(15, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(15, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(17, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(17, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
	(17, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(17, 42, 'template', '2009-04-30 01:10:05', '2009-04-30 01:10:05', 2),
	(17, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
	(20, 39, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 1),
	(20, 31, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 4),
	(20, 43, 'template', '2009-05-01 04:33:01', '2009-05-01 04:33:01', 2),
	(20, 35, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 3),
	(20, 30, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 5),
	(21, 31, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 3),
	(21, 45, 'template', '2009-05-02 00:20:26', '2009-05-02 00:20:26', 2),
	(21, 32, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 1),
	(21, 30, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 4),
	(21, 35, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 5),
	(15, 46, 'template', '2009-05-02 15:05:19', '2009-05-02 15:05:19', 6),
	(21, 46, 'template', '2009-05-02 15:05:22', '2009-05-02 15:05:22', 6),
	(16, 46, 'template', '2009-05-02 15:05:24', '2009-05-02 15:05:24', 6),
	(20, 46, 'template', '2009-05-02 15:05:27', '2009-05-02 15:05:27', 6),
	(17, 46, 'template', '2009-05-02 15:05:29', '2009-05-02 15:05:29', 7),
	(22, 48, 'template', '2009-05-06 14:31:08', '2009-05-06 14:31:08', 1),
	(18, 46, 'template', '2009-05-02 15:05:34', '2009-05-02 15:05:34', 7),
	(22, 47, 'template', '2009-05-06 14:31:14', '2009-05-06 14:31:14', 2),
	(22, 49, 'template', '2009-05-06 14:31:20', '2009-05-06 14:31:20', 3),
	(23, 50, 'template', '2012-04-24 13:16:37', '2012-04-24 13:16:37', 2),
	(23, 51, 'template', '2012-04-24 13:16:44', '2012-04-24 13:16:44', 3),
	(23, 52, 'template', '2012-04-26 07:47:34', '2012-04-26 07:47:34', 1),
	(23, 53, 'template', '2012-04-30 12:28:14', '2012-04-30 12:28:14', 4);
/*!40000 ALTER TABLE `cms_allicense_css_assoc` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_css_seq
DROP TABLE IF EXISTS `cms_allicense_css_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_css_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_css_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_css_seq` (`id`) VALUES
	(53);
/*!40000 ALTER TABLE `cms_allicense_css_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_events
DROP TABLE IF EXISTS `cms_allicense_events`;
CREATE TABLE IF NOT EXISTS `cms_allicense_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `cms_allicense_originator` (`originator`),
  KEY `cms_allicense_event_name` (`event_name`),
  KEY `cms_allicense_event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_events: 73 rows
/*!40000 ALTER TABLE `cms_allicense_events` DISABLE KEYS */;
INSERT INTO `cms_allicense_events` (`originator`, `event_name`, `event_id`) VALUES
	('Core', 'LoginPost', 1),
	('Core', 'LogoutPost', 2),
	('Core', 'AddUserPre', 3),
	('Core', 'AddUserPost', 4),
	('Core', 'EditUserPre', 5),
	('Core', 'EditUserPost', 6),
	('Core', 'DeleteUserPre', 7),
	('Core', 'DeleteUserPost', 8),
	('Core', 'AddGroupPre', 9),
	('Core', 'AddGroupPost', 10),
	('Core', 'EditGroupPre', 11),
	('Core', 'EditGroupPost', 12),
	('Core', 'DeleteGroupPre', 13),
	('Core', 'DeleteGroupPost', 14),
	('Core', 'AddStylesheetPre', 15),
	('Core', 'AddStylesheetPost', 16),
	('Core', 'EditStylesheetPre', 17),
	('Core', 'EditStylesheetPost', 18),
	('Core', 'DeleteStylesheetPre', 19),
	('Core', 'DeleteStylesheetPost', 20),
	('Core', 'AddTemplatePre', 21),
	('Core', 'AddTemplatePost', 22),
	('Core', 'EditTemplatePre', 23),
	('Core', 'EditTemplatePost', 24),
	('Core', 'DeleteTemplatePre', 25),
	('Core', 'DeleteTemplatePost', 26),
	('Core', 'TemplatePreCompile', 27),
	('Core', 'TemplatePostCompile', 28),
	('Core', 'AddGlobalContentPre', 29),
	('Core', 'AddGlobalContentPost', 30),
	('Core', 'EditGlobalContentPre', 31),
	('Core', 'EditGlobalContentPost', 32),
	('Core', 'DeleteGlobalContentPre', 33),
	('Core', 'DeleteGlobalContentPost', 34),
	('Core', 'GlobalContentPreCompile', 35),
	('Core', 'GlobalContentPostCompile', 36),
	('Core', 'ContentEditPre', 37),
	('Core', 'ContentEditPost', 38),
	('Core', 'ContentDeletePre', 39),
	('Core', 'ContentDeletePost', 40),
	('Core', 'AddUserDefinedTagPre', 41),
	('Core', 'AddUserDefinedTagPost', 42),
	('Core', 'EditUserDefinedTagPre', 43),
	('Core', 'EditUserDefinedTagPost', 44),
	('Core', 'DeleteUserDefinedTagPre', 45),
	('Core', 'DeleteUserDefinedTagPost', 46),
	('Core', 'ModuleInstalled', 47),
	('Core', 'ModuleUninstalled', 48),
	('Core', 'ModuleUpgraded', 49),
	('Core', 'ContentStylesheet', 50),
	('Core', 'ContentPreCompile', 51),
	('Core', 'ContentPostCompile', 52),
	('Core', 'ContentPostRender', 53),
	('Core', 'SmartyPreCompile', 54),
	('Core', 'SmartyPostCompile', 55),
	('Core', 'ChangeGroupAssignPre', 56),
	('Core', 'ChangeGroupAssignPost', 57),
	('Core', 'StylesheetPreCompile', 58),
	('Core', 'StylesheetPostCompile', 59),
	('Core', 'LoginFailed', 60),
	('Core', 'TemplatePreFetch', 61),
	('FileManager', 'OnFileUploaded', 62),
	('News', 'NewsArticleAdded', 63),
	('News', 'NewsArticleEdited', 64),
	('News', 'NewsArticleDeleted', 65),
	('News', 'NewsCategoryAdded', 66),
	('News', 'NewsCategoryEdited', 67),
	('News', 'NewsCategoryDeleted', 68),
	('Search', 'SearchInitiated', 69),
	('Search', 'SearchCompleted', 70),
	('Search', 'SearchItemAdded', 71),
	('Search', 'SearchItemDeleted', 72),
	('Search', 'SearchAllItemsDeleted', 73);
/*!40000 ALTER TABLE `cms_allicense_events` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_events_seq
DROP TABLE IF EXISTS `cms_allicense_events_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_events_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_events_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_events_seq` (`id`) VALUES
	(73);
/*!40000 ALTER TABLE `cms_allicense_events_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_event_handlers
DROP TABLE IF EXISTS `cms_allicense_event_handlers`;
CREATE TABLE IF NOT EXISTS `cms_allicense_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_event_handlers: 6 rows
/*!40000 ALTER TABLE `cms_allicense_event_handlers` DISABLE KEYS */;
INSERT INTO `cms_allicense_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES
	(38, NULL, 'MenuManager', 0, 1, 1),
	(40, NULL, 'MenuManager', 0, 1, 2),
	(38, NULL, 'Search', 0, 2, 3),
	(40, NULL, 'Search', 0, 2, 4),
	(48, NULL, 'Search', 0, 1, 5),
	(53, NULL, 'TinyMCE', 0, 1, 7);
/*!40000 ALTER TABLE `cms_allicense_event_handlers` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_event_handler_seq
DROP TABLE IF EXISTS `cms_allicense_event_handler_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_event_handler_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_event_handler_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_event_handler_seq` (`id`) VALUES
	(7);
/*!40000 ALTER TABLE `cms_allicense_event_handler_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_groups
DROP TABLE IF EXISTS `cms_allicense_groups`;
CREATE TABLE IF NOT EXISTS `cms_allicense_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_groups: 3 rows
/*!40000 ALTER TABLE `cms_allicense_groups` DISABLE KEYS */;
INSERT INTO `cms_allicense_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES
	(1, 'Admin', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(2, 'Editor', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(3, 'Designer', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32');
/*!40000 ALTER TABLE `cms_allicense_groups` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_groups_seq
DROP TABLE IF EXISTS `cms_allicense_groups_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_groups_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_groups_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_groups_seq` (`id`) VALUES
	(3);
/*!40000 ALTER TABLE `cms_allicense_groups_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_group_perms
DROP TABLE IF EXISTS `cms_allicense_group_perms`;
CREATE TABLE IF NOT EXISTS `cms_allicense_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_perm_id`),
  KEY `cms_allicense_index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_group_perms: 14 rows
/*!40000 ALTER TABLE `cms_allicense_group_perms` DISABLE KEYS */;
INSERT INTO `cms_allicense_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES
	(176, 3, 30, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(177, 3, 25, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(178, 3, 4, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(179, 3, 31, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(180, 3, 26, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(181, 3, 22, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(182, 3, 11, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(183, 3, 32, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(184, 3, 27, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(185, 3, 24, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(186, 3, 16, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(187, 2, 44, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
	(188, 1, 50, '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	(189, 2, 50, '2014-01-07 20:27:17', '2014-01-07 20:27:17');
/*!40000 ALTER TABLE `cms_allicense_group_perms` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_group_perms_seq
DROP TABLE IF EXISTS `cms_allicense_group_perms_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_group_perms_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_group_perms_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_group_perms_seq` (`id`) VALUES
	(189);
/*!40000 ALTER TABLE `cms_allicense_group_perms_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_htmlblobs
DROP TABLE IF EXISTS `cms_allicense_htmlblobs`;
CREATE TABLE IF NOT EXISTS `cms_allicense_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) DEFAULT NULL,
  `html` text,
  `description` text,
  `use_wysiwyg` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`htmlblob_id`),
  KEY `cms_allicense_index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_htmlblobs: 1 rows
/*!40000 ALTER TABLE `cms_allicense_htmlblobs` DISABLE KEYS */;
INSERT INTO `cms_allicense_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `description`, `use_wysiwyg`, `owner`, `create_date`, `modified_date`) VALUES
	(1, 'footer', '<p>&copy; Copyright {custom_copyright} - CMS Made Simple<br />\r\nThis site is powered by <a href="http://www.cmsmadesimple.org">CMS Made Simple</a> version {cms_version}</p>', '', 1, 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32');
/*!40000 ALTER TABLE `cms_allicense_htmlblobs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_htmlblobs_seq
DROP TABLE IF EXISTS `cms_allicense_htmlblobs_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_htmlblobs_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_htmlblobs_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_htmlblobs_seq` (`id`) VALUES
	(1);
/*!40000 ALTER TABLE `cms_allicense_htmlblobs_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_modules
DROP TABLE IF EXISTS `cms_allicense_modules`;
CREATE TABLE IF NOT EXISTS `cms_allicense_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`module_name`),
  KEY `cms_allicense_index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_modules: 10 rows
/*!40000 ALTER TABLE `cms_allicense_modules` DISABLE KEYS */;
INSERT INTO `cms_allicense_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES
	('CMSMailer', 'installed', '5.2.2', 0, 1, 1, 0),
	('CMSPrinting', 'installed', '1.0.5', 0, 1, 0, 1),
	('FileManager', 'installed', '1.4.3', 0, 1, 1, 0),
	('MenuManager', 'installed', '1.8.6', 0, 1, 0, 0),
	('MicroTiny', 'installed', '1.2.5', 0, 1, 1, 1),
	('ModuleManager', 'installed', '1.5.5', 1, 1, 0, 1),
	('News', 'installed', '2.13', 0, 1, 1, 1),
	('Search', 'installed', '1.7.11', 0, 1, 1, 1),
	('ThemeManager', 'installed', '1.1.8', 1, 1, 0, 1),
	('TinyMCE', 'installed', '2.9.12', 0, 1, 0, 0);
/*!40000 ALTER TABLE `cms_allicense_modules` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_deps
DROP TABLE IF EXISTS `cms_allicense_module_deps`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_deps: 1 rows
/*!40000 ALTER TABLE `cms_allicense_module_deps` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES
	('FileManager', 'MicroTiny', '1.4.2', '2014-01-07 20:27:12', '2014-01-07 20:27:12');
/*!40000 ALTER TABLE `cms_allicense_module_deps` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_news
DROP TABLE IF EXISTS `cms_allicense_module_news`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `cms_allicense_news_postdate` (`news_date`),
  KEY `cms_allicense_news_daterange` (`start_time`,`end_time`),
  KEY `cms_allicense_news_author` (`author_id`),
  KEY `cms_allicense_news_hier` (`news_category_id`),
  KEY `cms_allicense_news_url` (`news_url`),
  KEY `cms_allicense_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_news: 1 rows
/*!40000 ALTER TABLE `cms_allicense_module_news` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`) VALUES
	(1, 1, 'News Module Installed', 'The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.', '2014-01-07 20:27:17', NULL, NULL, NULL, 'published', NULL, '2014-01-07 20:27:17', '2014-01-07 20:27:17', 1, NULL, NULL);
/*!40000 ALTER TABLE `cms_allicense_module_news` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_news_categories
DROP TABLE IF EXISTS `cms_allicense_module_news_categories`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `long_name` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_news_categories: 1 rows
/*!40000 ALTER TABLE `cms_allicense_module_news_categories` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES
	(1, 'General', -1, '00001', 'General', '2014-01-07 20:27:17', '2014-01-07 20:27:17');
/*!40000 ALTER TABLE `cms_allicense_module_news_categories` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_news_categories_seq
DROP TABLE IF EXISTS `cms_allicense_module_news_categories_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_news_categories_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_module_news_categories_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_news_categories_seq` (`id`) VALUES
	(1);
/*!40000 ALTER TABLE `cms_allicense_module_news_categories_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_news_fielddefs
DROP TABLE IF EXISTS `cms_allicense_module_news_fielddefs`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  `extra` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_news_fielddefs: 0 rows
/*!40000 ALTER TABLE `cms_allicense_module_news_fielddefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_module_news_fielddefs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_news_fieldvals
DROP TABLE IF EXISTS `cms_allicense_module_news_fieldvals`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_news_fieldvals: 0 rows
/*!40000 ALTER TABLE `cms_allicense_module_news_fieldvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_module_news_fieldvals` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_news_seq
DROP TABLE IF EXISTS `cms_allicense_module_news_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_news_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_module_news_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_news_seq` (`id`) VALUES
	(1);
/*!40000 ALTER TABLE `cms_allicense_module_news_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_search_index
DROP TABLE IF EXISTS `cms_allicense_module_search_index`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `cms_allicense_index_search_count` (`count`),
  KEY `cms_allicense_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_search_index: 1,008 rows
/*!40000 ALTER TABLE `cms_allicense_module_search_index` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_search_index` (`item_id`, `word`, `count`) VALUES
	(35, 'makers', 1),
	(35, 'deal', 2),
	(35, '200', 2),
	(35, 'engage', 1),
	(35, 'network', 1),
	(35, 'industry', 4),
	(35, 'the', 1),
	(35, 'future', 2),
	(35, 'shape', 1),
	(35, 'issues', 3),
	(35, 'relevant', 1),
	(35, 'today’s', 1),
	(35, 'tackle', 1),
	(35, 'communities', 1),
	(35, 'financial', 2),
	(35, 'players', 1),
	(35, 'key', 3),
	(35, 'together', 1),
	(35, 'bringing', 1),
	(35, 'allicense', 4),
	(35, 'decades', 1),
	(35, 'two', 1),
	(35, 'nearly', 1),
	(35, 'posts', 1),
	(35, 'top', 1),
	(35, 'biotech', 2),
	(35, 'tapping', 1),
	(35, 'seen', 1),
	(35, 'even', 1),
	(35, 'may', 1),
	(35, 'big', 1),
	(35, 'today', 1),
	(35, 'counterparts', 1),
	(35, 'pharma', 3),
	(35, 'large', 1),
	(35, 'innovative', 2),
	(35, 'active', 1),
	(35, 'companies', 2),
	(35, 'biopharma', 2),
	(35, 'sized', 1),
	(35, 'medium', 1),
	(35, 'believe', 1),
	(35, 'many', 1),
	(35, 'leaders', 2),
	(35, 'change', 1),
	(35, 'witnessed', 1),
	(35, 'shifted', 1),
	(35, 'landscape', 1),
	(35, 'dealmaking', 3),
	(35, 'venture', 1),
	(35, 'from', 1),
	(35, 'partners', 2),
	(35, 'general', 1),
	(35, 'development', 4),
	(35, 'corporate', 1),
	(35, 'business', 5),
	(35, 'directors', 1),
	(35, '&amp', 4),
	(35, 'vps', 1),
	(35, 'cbos', 1),
	(35, 'ceos', 1),
	(35, 'categories', 1),
	(35, 'following', 1),
	(35, 'belong', 1),
	(35, 'interest', 1),
	(35, 'particular', 1),
	(35, 'conference', 2),
	(35, 'will', 2),
	(35, 'shaping', 1),
	(35, 'structure', 1),
	(35, 'deals', 1),
	(35, 'learn', 1),
	(35, 'face', 1),
	(35, 'discuss', 1),
	(35, 'sector', 1),
	(35, 'redefining', 1),
	(35, 'meet', 1),
	(35, 'attend', 1),
	(35, 'committee', 1),
	(35, 'advisory', 2),
	(35, 'dealmakers', 3),
	(35, 'generation', 1),
	(35, 'next', 1),
	(35, 'lead', 1),
	(35, 'program', 1),
	(35, 'driven', 1),
	(35, 'editorially', 1),
	(35, 'dealmarkers', 1),
	(35, 'qualified', 1),
	(35, 'above', 1),
	(35, 'level', 1),
	(35, 'svp', 1),
	(35, 'attendees', 1),
	(35, '40%', 1),
	(35, 'overview', 1),
	(35, 'facing', 1),
	(35, 'exclusively', 1),
	(35, 'focuses', 1),
	(35, 'event', 3),
	(35, 'would', 1),
	(35, 'commitee', 1),
	(35, 'hosts', 2),
	(35, 'contribute', 1),
	(35, 'partnerships', 1),
	(35, 'value', 1),
	(35, 'maximize', 1),
	(35, 'terms', 1),
	(35, 'structuring', 1),
	(35, 'opportunities', 1),
	(35, 'partnership', 1),
	(35, 'right', 1),
	(35, 'finding', 1),
	(35, 'ensure', 1),
	(35, 'reliably', 1),
	(35, 'quickly', 1),
	(35, 'allowing', 1),
	(35, 'insight', 1),
	(35, 'source', 1),
	(35, 'single', 1),
	(35, 'customers', 1),
	(35, 'provides', 1),
	(35, 'offering', 1),
	(35, 'integrated', 1),
	(35, 'market', 1),
	(35, 'sciences', 1),
	(35, 'life', 1),
	(35, 'provider', 1),
	(35, 'solidifies', 1),
	(35, 'cortellis', 1),
	(35, 'intelligence', 2),
	(35, 'r&amp', 1),
	(35, 'coverage', 1),
	(35, 'class', 1),
	(35, 'best', 1),
	(35, 'solutions', 1),
	(35, 'integrating', 1),
	(35, 'part', 1),
	(35, 'now', 1),
	(35, 'force', 1),
	(35, 'driving', 1),
	(35, '1988', 1),
	(35, 'founded', 1),
	(35, 'originally', 1),
	(35, 'recap', 2),
	(35, 'reuters', 3),
	(35, 'thomson', 3),
	(35, 'hosted', 1),
	(35, 'professionals', 2),
	(35, 'licensing', 2),
	(35, 'leading', 2),
	(35, '2014', 1),
	(35, 'firms', 1),
	(35, 'services', 1),
	(35, 'insurance', 1),
	(35, 'abd', 1),
	(35, 'baybio', 1),
	(35, 'reynolds', 1),
	(35, 'russel', 1),
	(35, 'west', 1),
	(35, 'fenwick', 1),
	(35, 'walk', 1),
	(35, 'locust', 1),
	(35, 'thank', 1),
	(35, 'like', 1),
	(34, 'news', 5),
	(34, 'module', 3),
	(34, 'installed', 3),
	(34, 'exciting', 1),
	(34, 'article', 2),
	(34, 'using', 1),
	(34, 'summary', 1),
	(34, 'field', 1),
	(34, 'therefore', 1),
	(34, 'link', 1),
	(34, 'read', 2),
	(34, 'can', 1),
	(34, 'click', 1),
	(34, 'heading', 1),
	(39, 'hotel', 14),
	(39, 'travel', 8),
	(39, 'palace', 5),
	(39, 'hotel', 1),
	(39, 'new', 6),
	(39, 'montgomery', 7),
	(39, 'streetsan', 1),
	(39, 'francisco', 7),
	(39, 'catel', 1),
	(39, '415', 1),
	(39, '512', 1),
	(39, '1111www', 1),
	(39, 'sfpalace', 1),
	(39, 'com', 2),
	(39, 'booking', 1),
	(39, 'accommodation', 1),
	(39, 'thomson', 2),
	(39, 'reuters', 2),
	(39, 'secured', 1),
	(39, 'discounted', 1),
	(39, 'sleeping', 1),
	(39, 'rooms', 3),
	(39, 'conference', 2),
	(39, 'order', 1),
	(39, 'make', 1),
	(39, 'reservations', 1),
	(39, 'please', 2),
	(39, 'call', 1),
	(39, 'central', 1),
	(39, 'reservations', 1),
	(39, 'office', 1),
	(39, '888', 1),
	(39, '627', 1),
	(39, '7196', 1),
	(39, 'identify', 1),
	(39, 'registered', 1),
	(39, 'attendee', 1),
	(39, '2014', 1),
	(39, 'allicense', 1),
	(39, 'issues', 1),
	(39, 'concerns', 1),
	(39, 'contact', 1),
	(39, 'tracy', 2),
	(39, 'golding', 1),
	(39, 'at', 1),
	(39, 'golding@thomsonreuters', 1),
	(39, 'welcome', 1),
	(39, 'luxury', 1),
	(39, 'downtown', 2),
	(39, 'san', 6),
	(39, 'iconic', 1),
	(39, 'remained', 1),
	(39, 'landmark', 1),
	(39, 'timeless', 1),
	(39, 'creations', 1),
	(39, 'garden', 1),
	(39, 'court’s', 1),
	(39, 'stained', 1),
	(39, 'glass', 1),
	(39, 'dome', 1),
	(39, '1909', 1),
	(39, 'maxfield', 1),
	(39, 'parish', 1),
	(39, 'mural', 1),
	(39, '‘pied', 1),
	(39, 'piper', 2),
	(39, 'hamlin’', 1),
	(39, 'located', 5),
	(39, 'pied', 1),
	(39, 'bar', 1),
	(39, 'grill', 1),
	(39, 'full', 1),
	(39, 'service', 1),
	(39, 'destination', 1),
	(39, 'offers', 1),
	(39, 'elegant', 2),
	(39, 'guest', 2),
	(39, 'esteemed', 1),
	(39, 'restaurants', 1),
	(39, 'opulent', 1),
	(39, 'spaces', 1),
	(39, 'meetings', 1),
	(39, 'special', 1),
	(39, 'events', 1),
	(39, 'guests', 1),
	(39, 'will', 1),
	(39, 'experience', 1),
	(39, 'hospitality', 1),
	(39, 'grand', 1),
	(39, 'scale', 1),
	(39, '553', 1),
	(39, 'refined', 1),
	(39, 'spacious', 1),
	(39, 'suites', 1),
	(39, 'appointed', 1),
	(39, 'furnishings', 1),
	(39, 'contemporary', 1),
	(39, 'amenities', 1),
	(39, 'locality', 1),
	(39, 'street', 20),
	(39, 'heart', 1),
	(39, 'just', 1),
	(39, 'blocks', 1),
	(39, 'away', 2),
	(39, 'union', 1),
	(39, 'square', 1),
	(39, 'chinatown', 1),
	(39, 'financial', 1),
	(39, 'district', 1),
	(39, 'moscone', 1),
	(39, 'convention', 1),
	(39, 'center', 1),
	(39, 'poised', 1),
	(39, 'convenience', 1),
	(39, 'many', 1),
	(39, 'things', 1),
	(39, 'short', 1),
	(39, 'drive', 1),
	(39, 'cable', 1),
	(39, 'car', 1),
	(39, 'ride', 1),
	(39, 'fisherman’s', 1),
	(39, 'wharf', 1),
	(39, 'golden', 3),
	(39, 'gate', 3),
	(39, 'bridge', 5),
	(39, 'at&amp', 1),
	(39, 'park', 2),
	(39, 'museums', 1),
	(39, 'attractions', 1),
	(39, 'directions', 1),
	(39, 'international', 2),
	(39, 'airport', 2),
	(39, 'take', 6),
	(39, 'highway', 2),
	(39, '101', 2),
	(39, 'north', 3),
	(39, 'interstate', 3),
	(39, 'toward', 1),
	(39, 'bay', 4),
	(39, 'exit', 4),
	(39, 'onto', 14),
	(39, '4th', 1),
	(39, 'last', 1),
	(39, 'turn', 14),
	(39, 'left', 5),
	(39, 'bryant', 1),
	(39, '3rd', 3),
	(39, 'right', 15),
	(39, 'market', 4),
	(39, 'time', 4),
	(39, 'approximately', 4),
	(39, 'minutes', 4),
	(39, 'oakland', 1),
	(39, 'hegenberger', 1),
	(39, 'route', 1),
	(39, '880', 1),
	(39, 'first', 1),
	(39, 'fremont', 2),
	(39, 'howard', 1),
	(39, 'immediate', 1),
	(39, 'east', 1),
	(39, 'hills', 1),
	(39, 'west', 1),
	(39, 'mission', 1),
	(39, 'islocated', 1),
	(39, 'northern', 1),
	(39, 'wine', 1),
	(39, 'country', 1),
	(39, 'south', 1),
	(39, 'bear', 1),
	(39, 'lombard', 1),
	(39, 'van', 1),
	(39, 'ness', 1),
	(39, 'avenue', 1),
	(39, 'bush', 1),
	(39, 'cross', 1),
	(39, 'streetcontinue', 1),
	(39, 'straight', 1),
	(227, 'companies', 2),
	(227, 'active', 1),
	(227, 'innovative', 1),
	(227, 'large', 1),
	(227, 'pharma', 2),
	(227, 'counterparts', 1),
	(227, 'today', 1),
	(227, 'big', 1),
	(227, 'may', 1),
	(227, 'even', 1),
	(227, 'seen', 1),
	(227, 'tapping', 1),
	(227, 'biotech', 1),
	(227, 'top', 1),
	(227, 'posts', 1),
	(227, 'caused', 1),
	(227, 'transition', 1),
	(227, 'can', 1),
	(227, 'expect', 1),
	(227, 'years', 1),
	(227, 'ahead', 1),
	(227, 'miss', 1),
	(227, 'allicense', 1),
	(227, '2014', 1),
	(227, 'meet', 1),
	(227, 'new', 1),
	(227, 'players', 1),
	(227, 'learn', 1),
	(227, 'current', 1),
	(227, 'trends', 1),
	(227, 'across', 1),
	(227, 'dynamic', 1),
	(227, 'exciting', 1),
	(227, 'field', 1),
	(227, 'partners', 1),
	(227, 'next', 2),
	(227, 'generation', 2),
	(227, 'dealmaking', 5),
	(227, 'home', 2),
	(227, 'landscape', 1),
	(227, 'shifted', 1),
	(227, 'witnessed', 1),
	(227, 'change', 1),
	(227, 'leaders', 2),
	(227, 'many', 1),
	(227, 'believe', 1),
	(227, 'medium', 1),
	(227, 'sized', 1),
	(227, 'biopharma', 2),
	(256, 'details', 1),
	(256, 'deck', 1),
	(256, 'slide', 1),
	(256, 'announcement', 1),
	(256, 'nominee', 1),
	(256, 'full', 1),
	(256, 'download', 1),
	(256, 'pare', 1),
	(256, 'gyrb', 1),
	(256, '701', 1),
	(256, '$707', 1),
	(256, '$818', 1),
	(256, 'cubist', 1),
	(256, 'trius', 1),
	(256, 'dermatologic', 1),
	(256, 'rc7', 1),
	(256, 'vii', 1),
	(256, 'type', 1),
	(256, 'collagen', 1),
	(256, 'recombinant', 1),
	(256, '$49', 1),
	(256, '$324', 1),
	(256, 'shire', 1),
	(256, 'repair', 1),
	(256, 'tissue', 1),
	(256, 'lotus', 1),
	(256, 'disease', 2),
	(256, 'infectious', 2),
	(256, 'tercvax', 1),
	(256, 'procvax', 1),
	(256, '$325', 1),
	(256, '$420', 1),
	(256, 'november', 2),
	(256, 'glaxosmithkline', 1),
	(256, 'okairos', 1),
	(256, 'preclinical', 2),
	(256, '514', 1),
	(256, '110', 1),
	(256, '224', 1),
	(256, 'amp', 3),
	(256, '$225', 1),
	(256, '$500', 1),
	(256, 'inc', 1),
	(256, 'product', 5),
	(256, 'advanced', 5),
	(256, '912', 1),
	(256, '810', 1),
	(256, '509', 1),
	(256, 'arn', 3),
	(256, 'products', 5),
	(256, 'leading', 5),
	(256, '$650', 1),
	(256, '000', 1),
	(256, 'august', 2),
	(256, 'closed', 5),
	(256, '&amp', 1),
	(256, 'johnson', 2),
	(256, 'aragon', 1),
	(256, 'neurology', 1),
	(256, 'sirnas', 1),
	(256, 'ligands', 1),
	(256, 'oligonucleotide', 1),
	(256, '–', 1),
	(256, 'technology', 1),
	(256, 'antisense', 1),
	(256, 'isis’', 1),
	(256, 'using', 1),
	(256, 'diseases', 1),
	(256, 'neurological', 1),
	(256, 'therapies', 1),
	(256, '$100', 1),
	(256, 'erythematosus', 1),
	(256, 'lupus', 1),
	(256, 'systematic', 1),
	(256, 'arthritis', 1),
	(256, 'rheumatoid', 1),
	(256, 'nanobody', 1),
	(256, 'inhibitor', 1),
	(256, '0061', 1),
	(256, 'alx', 1),
	(256, '$175', 1),
	(256, '$840', 1),
	(256, 'september', 2),
	(256, 'abbvie', 1),
	(256, 'ablynx', 1),
	(256, 'diversified', 1),
	(256, 'stage', 2),
	(256, 'discovery', 2),
	(256, 'collaboration', 1),
	(256, 'discovered', 1),
	(256, 'targets', 1),
	(256, 'renal', 1),
	(256, 'cardiometabolic', 1),
	(256, 'mrna', 1),
	(256, '$240', 1),
	(256, 'confidential', 2),
	(256, 'march', 1),
	(256, 'astrazeneca', 2),
	(256, 'therapeutics', 3),
	(256, 'moderna', 1),
	(256, 'pathways', 1),
	(256, 'csc', 1),
	(256, 'targeting', 1),
	(256, 'four', 1),
	(256, 'antibody', 1),
	(256, 'bispecific', 1),
	(256, 'vegf', 1),
	(256, 'dll4', 1),
	(256, 'anti', 2),
	(256, 'biologics', 1),
	(256, 'demcizumab', 1),
	(256, '$155', 1),
	(256, 'total', 8),
	(256, '332', 1),
	(256, 'december', 2),
	(256, 'celgene', 1),
	(256, 'oncomed', 1),
	(256, 'inflammatory', 2),
	(256, 'autoimmune', 2),
	(256, 'area', 10),
	(256, 'therapeutic', 10),
	(256, 'worldwide', 3),
	(256, 'signing', 5),
	(256, 'iii', 2),
	(256, 'phase', 6),
	(256, 'cancer', 5),
	(256, 'pain', 2),
	(256, 'back', 1),
	(256, 'low', 1),
	(256, 'chronic', 1),
	(256, 'osteoarthritis', 1),
	(256, 'mab', 1),
	(256, 'human', 1),
	(256, '4383119', 1),
	(256, 'tanezumb', 1),
	(256, 'asset', 5),
	(256, 'upfront', 10),
	(256, 'million', 16),
	(256, '$200', 1),
	(256, 'size', 10),
	(256, 'milliontotal', 2),
	(256, '780', 1),
	(256, 'financials', 10),
	(256, 'october', 1),
	(256, 'date', 10),
	(256, 'buyer', 10),
	(256, 'lilly', 1),
	(256, 'seller', 10),
	(256, 'pfizer', 1),
	(256, 'follows', 1),
	(256, 'nominees', 1),
	(256, 'year’s', 1),
	(256, 'release', 1),
	(256, 'press', 1),
	(256, 'see', 1),
	(256, 'medimmune', 2),
	(256, 'amplimmune', 2),
	(256, 'won', 2),
	(256, 'idec', 2),
	(256, 'biogen', 2),
	(256, 'pharmaceuticals', 5),
	(256, 'isis', 2),
	(256, 'congratulations', 1),
	(256, 'categories', 1),
	(256, 'contenders', 1),
	(256, 'five', 2),
	(256, 'top', 1),
	(256, 'identify', 1),
	(256, 'criteria', 1),
	(256, 'objective', 1),
	(256, 'subjective', 1),
	(256, 'use', 1),
	(256, '2013', 11),
	(256, 'across', 2),
	(256, 'negotiated', 1),
	(256, 'biopharma', 1),
	(256, 'hundreds', 1),
	(256, 'examined', 1),
	(256, 'analysts', 1),
	(256, 'deals', 2),
	(256, 'reuters', 1),
	(256, 'thomson', 1),
	(256, 'professionals', 1),
	(256, 'm&amp', 5),
	(256, 'licensing', 5),
	(256, 'development', 1),
	(256, 'business', 1),
	(256, 'efforts', 1),
	(256, 'partnering', 1),
	(256, 'creative', 1),
	(256, 'honors', 1),
	(256, 'award', 3),
	(256, 'annual', 1),
	(256, '29th', 1),
	(256, 'april', 1),
	(256, 'conference', 1),
	(256, 'presented', 1),
	(256, 'awards', 2),
	(256, 'breakthrough', 2),
	(256, '2014', 2),
	(256, 'allicense', 2),
	(256, 'year', 8),
	(256, 'deal', 7),
	(239, 'regularly', 1),
	(239, 'check', 1),
	(239, 'click', 1),
	(239, 'speakers', 2),
	(239, 'confirmed', 2),
	(239, 'list', 1),
	(239, 'full', 1),
	(239, 'insight', 1),
	(239, 'bioworld', 1),
	(239, 'editor', 1),
	(239, 'winter', 1),
	(239, 'peter', 1),
	(239, 'times', 1),
	(239, 'francisco', 1),
	(239, 'san', 1),
	(239, 'reporter', 1),
	(239, 'leuty', 1),
	(239, 'thestreetron', 1),
	(239, 'columnist', 1),
	(239, 'feuerstein', 1),
	(239, 'adam', 1),
	(239, 'timmerman', 1),
	(239, 'luke', 1),
	(239, 'dealmakers', 1),
	(239, 'generation', 1),
	(239, 'hold', 1),
	(239, 'future', 1),
	(239, 'bear', 1),
	(239, 'bull', 1),
	(239, 'toshav', 1),
	(239, 'effie', 1),
	(239, 'moderators', 1),
	(239, 'ventures', 1),
	(239, 'novo', 1),
	(239, 'lukatch', 1),
	(239, 'heath', 1),
	(239, 'gallagher', 1),
	(239, 'carol', 1),
	(239, 'lesinurad', 1),
	(239, 'jon', 1),
	(239, 'panelist', 1),
	(239, 'transactions', 1),
	(239, 'ring', 1),
	(239, 'puttin', 1),
	(239, 'svb', 2),
	(239, 'norris', 2),
	(239, 'datajon', 1),
	(239, 'transaction', 1),
	(239, 'm&amp', 2),
	(239, 'hyperion', 1),
	(239, 'idecnatalie', 1),
	(239, 'biogen', 1),
	(239, 'brudnick', 1),
	(239, 'pharmaceuticalsrichard', 1),
	(239, 'progenics', 1),
	(239, 'baker', 1),
	(239, 'mark', 1),
	(239, 'alexza', 1),
	(239, 'king', 1),
	(239, 'tom', 1),
	(239, 'steve', 1),
	(239, 'mohr', 2),
	(239, 'jay', 2),
	(239, 'value', 2),
	(239, 'maximize', 2),
	(239, 'understanding', 2),
	(239, 'assets', 2),
	(239, 'returned', 2),
	(239, 'partnering', 2),
	(239, 'acquisition', 1),
	(239, 'talent', 1),
	(239, 'head', 2),
	(239, 'kwok', 1),
	(239, 'kevin', 1),
	(239, 'theraclone', 1),
	(239, 'stocks', 1),
	(239, 'clifford', 1),
	(239, 'onyx', 1),
	(239, 'corporate', 1),
	(239, 'executive', 2),
	(239, 'lasowski', 1),
	(239, 'juergen', 1),
	(239, 'biologics', 2),
	(239, 'labrys', 2),
	(239, 'capitalsteven', 1),
	(239, 'panorama', 1),
	(239, 'founder', 1),
	(239, 'ferguson', 1),
	(239, 'rod', 1),
	(239, 'syndax', 1),
	(239, 'morris', 1),
	(239, 'institutearlene', 1),
	(239, 'board', 1),
	(239, 'residence', 1),
	(239, 'entrepreneur', 1),
	(239, 'bosley', 1),
	(239, 'katrine', 1),
	(239, 'exec', 1),
	(239, 'successful', 1),
	(239, 'i’ve', 1),
	(239, 'workshop', 1),
	(239, 'kalobios', 1),
	(239, 'pritchard', 1),
	(239, 'partnersdave', 1),
	(239, 'bvf', 1),
	(239, 'perry', 1),
	(239, 'groupmatthew', 1),
	(239, 'cowen', 1),
	(239, 'milstein', 1),
	(239, 'chimerixgeorge', 1),
	(239, 'cfo', 1),
	(239, 'dickey', 1),
	(239, 'therapueticsrobert', 1),
	(239, 'argos', 1),
	(239, 'abbey', 1),
	(239, 'west', 3),
	(239, 'fenwick', 3),
	(239, 'rossiter', 2),
	(239, 'matthew', 2),
	(239, 'what\'s', 3),
	(239, 'got', 2),
	(239, 'market', 2),
	(239, 'ipo', 2),
	(239, 'today\'s', 2),
	(239, 'chimerixmoderator', 1),
	(239, 'moch', 2),
	(239, 'neostemkenneth', 2),
	(239, 'smith', 1),
	(239, 'oncomedrobin', 1),
	(239, 'paul', 1),
	(239, 'developmentpanelists', 1),
	(239, 'finance', 1),
	(239, 'markets', 1),
	(239, 'leveraging', 1),
	(239, 'realendpoints', 1),
	(239, 'longman', 1),
	(239, 'roger', 1),
	(239, 'formularies', 1),
	(239, 'restrictive', 1),
	(239, 'increasingly', 1),
	(239, 'losers', 1),
	(239, 'winners', 1),
	(239, 'pick', 1),
	(239, 'wednesday', 1),
	(239, 'dinner', 1),
	(239, 'foyer', 3),
	(239, 'regency', 3),
	(239, 'reception', 2),
	(239, 'cocktail', 2),
	(239, 'remarks', 1),
	(239, 'closing', 1),
	(239, 'team', 1),
	(239, 'abd', 1),
	(239, 'founding', 1),
	(239, 'long', 1),
	(239, 'inc', 1),
	(239, 'therapeutics', 1),
	(239, 'cytomx', 1),
	(239, 'mccarthy', 1),
	(239, 'sean', 1),
	(239, 'reviva', 1),
	(239, 'bhat', 1),
	(239, 'laxminarayan', 1),
	(239, 'bio', 1),
	(239, 'atara', 1),
	(239, 'ciechanover', 1),
	(239, 'isaac', 1),
	(239, 'perspective', 1),
	(239, 'ceo’s', 1),
	(239, 'company', 1),
	(239, 'strategies', 3),
	(239, 'partnership', 1),
	(239, 'exploring', 1),
	(239, 'biotech”', 1),
	(239, 'gen', 1),
	(239, 'next', 5),
	(239, 'interwest', 1),
	(239, 'fisher', 1),
	(239, 'sofinnovadoug', 1),
	(239, 'akkaraju', 1),
	(239, 'srini', 1),
	(239, 'ecor1', 1),
	(239, 'nodelman', 1),
	(239, 'oleg', 1),
	(239, 'templeton', 1),
	(239, 'franklin', 1),
	(239, 'manager', 2),
	(239, 'portfolio', 2),
	(239, 'mccullough', 1),
	(239, 'healthcareevan', 1),
	(239, 'frazier', 2),
	(239, 'general', 2),
	(239, 'heron', 1),
	(239, 'patrick', 1),
	(239, 'sciences”', 1),
	(239, 'investing', 1),
	(239, 'private', 2),
	(239, 'public', 2),
	(239, 'divide', 1),
	(239, 'great', 1),
	(239, '“the', 2),
	(239, 'trends', 1),
	(239, 'capital', 3),
	(239, 'venture', 2),
	(239, 'bd&amp', 1),
	(239, 'gordon', 1),
	(239, 'foundationmark', 1),
	(239, 'fox', 1),
	(239, 'michael', 1),
	(239, 'partnerships', 1),
	(239, 'research', 1),
	(239, 'associate', 1),
	(239, 'mumford', 1),
	(239, 'tracey', 1),
	(239, 'making', 1),
	(239, 'drug', 1),
	(239, 'foundations', 1),
	(239, 'role', 1),
	(239, 'lunch', 2),
	(239, 'networking', 2),
	(239, 'speaker', 1),
	(239, 'selected', 1),
	(239, 'respective', 1),
	(239, 'present', 1),
	(239, 'provided', 1),
	(239, 'awards', 2),
	(239, 'nominees', 1),
	(239, 'breakthrough', 2),
	(239, 'partners', 4),
	(239, 'walk', 4),
	(239, 'locust', 4),
	(239, 'ehrlich', 2),
	(239, 'chris', 2),
	(239, 'moderator', 7),
	(239, 'squibb', 1),
	(239, 'myers', 1),
	(239, 'bristol', 1),
	(239, 'brazier', 1),
	(239, 'hyperiongraham', 1),
	(239, 'holles', 2),
	(239, 'lesinuradnatalie', 1),
	(239, 'product', 2),
	(239, 'astrazeneca', 2),
	(239, 'biosciences', 2),
	(239, 'ardea', 2),
	(239, 'operating', 2),
	(239, 'mackay', 2),
	(239, 'james', 4),
	(239, 'mallinckrodt', 1),
	(239, 'officer', 4),
	(239, 'strategy', 3),
	(239, 'chief', 4),
	(239, 'director', 10),
	(239, 'managing', 9),
	(239, 'phillips', 1),
	(231, 'sponsors', 4),
	(239, 'gary', 1),
	(239, 'theravance', 2),
	(239, 'development', 7),
	(239, 'jonker', 1),
	(239, 'jeff', 2),
	(239, 'celgene', 1),
	(239, 'golumbeski', 1),
	(239, 'panelists', 7),
	(239, 'players', 1),
	(239, 'specialty', 1),
	(239, 'emerging', 1),
	(239, 'companies', 1),
	(239, 'pharmaceuticals', 4),
	(239, 'global', 3),
	(239, 'established', 1),
	(239, 'partner', 10),
	(239, 'licensing', 1),
	(239, 'better', 1),
	(239, 'makes', 1),
	(239, '–', 4),
	(239, 'mighty”', 1),
	(239, 'small', 1),
	(239, 'charge', 1),
	(239, '“large', 1),
	(239, 'panel', 8),
	(239, 'break', 4),
	(239, 'refreshment', 4),
	(239, 'senior', 5),
	(239, 'singh', 2),
	(239, 'vinay', 2),
	(239, 'business', 7),
	(239, 'principal', 2),
	(239, 'vitez', 1),
	(239, 'laura', 1),
	(239, 'deals', 4),
	(239, 'biopharma', 1),
	(239, 'review', 1),
	(239, 'back', 2),
	(239, 'looking', 1),
	(239, 'presentation', 5),
	(239, 'analyst', 5),
	(239, 'organization', 1),
	(239, 'industry', 1),
	(239, 'biotechnology', 2),
	(239, 'greenwood', 1),
	(239, 'jim', 1),
	(239, 'oncomedmoderator', 1),
	(239, 'ceo', 17),
	(239, 'hastings', 2),
	(239, '2003paul', 1),
	(239, '2001', 1),
	(239, 'bush', 1),
	(239, 'george', 2),
	(239, 'secretary', 1),
	(239, 'press', 1),
	(239, 'house', 1),
	(239, 'white', 1),
	(239, 'former', 4),
	(239, 'fleischer', 1),
	(239, 'pennsylvaniaari', 1),
	(239, 'university', 1),
	(239, 'medicine', 1),
	(239, 'school', 2),
	(239, 'wharton', 1),
	(239, 'appointment', 1),
	(239, 'joint', 1),
	(239, 'emanuel', 1),
	(239, 'zeke', 1),
	(239, 'industrypanelists', 1),
	(239, 'biopharmaceutical', 1),
	(239, 'reform', 1),
	(239, 'healthcare', 2),
	(239, 'impact', 1),
	(239, 'address', 2),
	(239, 'keynote', 3),
	(239, 'sciences', 5),
	(239, 'life', 5),
	(239, 'president', 16),
	(239, 'vice', 6),
	(239, 'walczykowski', 4),
	(239, 'eric', 5),
	(239, 'introductions', 1),
	(239, '&amp', 6),
	(239, 'welcome', 1),
	(239, 'breakfast', 2),
	(239, 'continental', 2),
	(239, '2014', 2),
	(239, 'april', 2),
	(239, 'tuesday', 1),
	(239, 'com', 1),
	(239, 'tygh@thomsonreuters', 1),
	(239, 'tygh', 1),
	(239, 'jillian', 2),
	(239, 'contact', 1),
	(239, 'opportunities', 1),
	(239, 'sponsorship', 1),
	(239, 'levels', 1),
	(239, 'range', 1),
	(239, 'sponsor', 1),
	(239, 'opportunity', 2),
	(239, 'exclusive', 1),
	(239, 'analysts', 1),
	(239, 'recap', 1),
	(239, 'reuters', 10),
	(239, 'thomson', 10),
	(239, 'lead', 1),
	(239, 'program', 1),
	(239, 'driven', 1),
	(239, 'editorially', 1),
	(239, 'markers', 1),
	(239, 'deal', 4),
	(239, 'qualified', 1),
	(239, '200', 1),
	(239, 'level', 1),
	(239, 'svp', 4),
	(239, 'attendees', 1),
	(239, '40%', 1),
	(239, 'overview', 1),
	(239, 'event', 2),
	(239, 'payers', 2),
	(239, 'academia', 1),
	(239, 'vcs', 1),
	(239, 'pharma', 3),
	(239, 'big', 1),
	(239, 'biotech', 2),
	(239, 'relationship', 1),
	(239, 'evolving', 2),
	(239, 'facets', 1),
	(239, 'many', 1),
	(239, 'examine', 1),
	(239, 'will', 2),
	(239, 'forum', 1),
	(239, 'year\'s', 1),
	(239, 'year', 3),
	(239, '18th', 1),
	(239, 'celebrating', 1),
	(239, 'agenda', 4),
	(173, 'wait', 1),
	(173, 'please', 1),
	(173, 'data', 1),
	(173, 'speaker', 1),
	(173, 'loading', 1),
	(173, 'speakers', 4);
/*!40000 ALTER TABLE `cms_allicense_module_search_index` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_search_items
DROP TABLE IF EXISTS `cms_allicense_module_search_items`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_allicense_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_search_items: 8 rows
/*!40000 ALTER TABLE `cms_allicense_module_search_items` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES
	(227, 'Search', 15, 'content', NULL),
	(35, 'Search', 34, 'content', NULL),
	(239, 'Search', 57, 'content', NULL),
	(173, 'Search', 58, 'content', NULL),
	(256, 'Search', 59, 'content', NULL),
	(39, 'Search', 60, 'content', NULL),
	(231, 'Search', 61, 'content', NULL),
	(34, 'News', 1, 'article', NULL);
/*!40000 ALTER TABLE `cms_allicense_module_search_items` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_search_items_seq
DROP TABLE IF EXISTS `cms_allicense_module_search_items_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_search_items_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_module_search_items_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_search_items_seq` (`id`) VALUES
	(256);
/*!40000 ALTER TABLE `cms_allicense_module_search_items_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_search_words
DROP TABLE IF EXISTS `cms_allicense_module_search_words`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_search_words: 0 rows
/*!40000 ALTER TABLE `cms_allicense_module_search_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_allicense_module_search_words` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_smarty_plugins
DROP TABLE IF EXISTS `cms_allicense_module_smarty_plugins`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_smarty_plugins` (
  `sig` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `module` varchar(160) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sig`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_smarty_plugins: 8 rows
/*!40000 ALTER TABLE `cms_allicense_module_smarty_plugins` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_smarty_plugins` (`sig`, `name`, `module`, `type`, `callback`, `available`, `cachable`) VALUES
	('a13f88201fd98d2fbb219f4bb4d4d75e', 'FileManager', 'FileManager', 'function', 's:15:"function_plugin";', 1, 0),
	('d077ec0a46ac7ac76f7ebb22bf223dd5', 'MenuManager', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 0),
	('0d66b5f48afdb3ab28b1b00f23e3251f', 'menu', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 1),
	('042ecc80bd5585fce43393f9d3f434b6', 'cms_breadcrumbs', 'MenuManager', 'function', 's:22:"smarty_cms_breadcrumbs";', 1, 1),
	('6db731a58353c03d0b79fe4e4adacdbd', 'News', 'News', 'function', 's:15:"function_plugin";', 1, 0),
	('1ec62e1e885cc0fd80237da2d5ea8778', 'news', 'News', 'function', 's:15:"function_plugin";', 1, 1),
	('bb0d76390dd2c0ab4e365e2e49d534b0', 'Search', 'Search', 'function', 's:15:"function_plugin";', 1, 0),
	('f3114372c8995dd5974b0306430a3ce3', 'search', 'Search', 'function', 's:15:"function_plugin";', 1, 1);
/*!40000 ALTER TABLE `cms_allicense_module_smarty_plugins` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_module_templates
DROP TABLE IF EXISTS `cms_allicense_module_templates`;
CREATE TABLE IF NOT EXISTS `cms_allicense_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_module_templates: 11 rows
/*!40000 ALTER TABLE `cms_allicense_module_templates` DISABLE KEYS */;
INSERT INTO `cms_allicense_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
	('CMSPrinting', 'linktemplate', '{if isset($imgsrc)}\n{capture assign=\'image\'}\n  <img src="{$imgsrc}" title="{$linktext}" alt="{$linktext}" {if isset($imgclass) && $imgclass!=\'\'}class="{$imgclass}"{/if} />\n{/capture}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$image}</a>\n{else}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$linktext}</a>\n{/if}\n', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	('CMSPrinting', 'printtemplate', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n  <head>\n    <title>Printing {title}</title>\n    <meta name="robots" content="noindex" />\n    <base href="{$rooturl}" />\n    <meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\n    <meta http-equiv="Content-Type" content="text/html; charset={$encoding}" />\n\n    {cms_stylesheet media=\'print\' templateid=$templateid}\n\n    {if $overridestylesheet!=\'\'}\n    <style type="text/css">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style="background-color: white; color: black; background-image: none; text-align: left;">	\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	('News', 'summarySample', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsSummaryField">\n        {if $field->type == \'file\'}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	('News', 'summarySummary_Simplex', '{strip}\r\n\r\n<!-- .news-summary wrapper -->\r\n<article class=\'news-summary\'>\r\n<span class=\'heading\'><span>News</span></span>\r\n        <ul class=\'category-list cf\'>\r\n        {foreach from=$cats item=\'node\'}\r\n        {if $node.depth > $node.prevdepth}\r\n            {repeat string=\'<ul>\' times=$node.depth-$node.prevdepth}\r\n        {elseif $node.depth < $node.prevdepth}\r\n            {repeat string=\'</li></ul>\' times=$node.prevdepth-$node.depth}\r\n            </li>\r\n            {elseif $node.index > 0}</li>\r\n            {/if}\r\n            <li{if $node.index == 0} class=\'first\'{/if}>\r\n        {if $node.count > 0}\r\n                <a href=\'{$node.url}\'>{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\r\n        {/foreach}\r\n        {repeat string=\'</li></ul>\' times=$node.depth-1}</li>\r\n        </ul>\r\n    {foreach from=$items item=\'entry\'}\r\n    <!-- .news-article (wrapping each article) -->\r\n    <section class=\'news-article\'>\r\n        <header>\r\n            <h2><a href=\'{$entry->moreurl}\' title=\'{$entry->title|cms_escape:htmlall}\'>{$entry->title|cms_escape}</a></h2>\r\n            <div class=\'meta cf\'>\r\n                <time class=\'date\' datetime=\'{$entry->postdate|date_format:\'%Y-%m-%d\'}\'>\r\n                    <span class=\'day\'> {$entry->postdate|date_format:\'%d\'} </span>\r\n                    <span class=\'month\'> {$entry->postdate|date_format:\'%b\'} </span>\r\n                </time>\r\n                <span class=\'author\'> {$author_label} {$entry->author} </span>\r\n                <span class=\'category\'> {$category_label} {$entry->category}</span>\r\n            </div>\r\n        </header>\r\n        {if $entry->summary}\r\n            <p>{eval var=$entry->summary|strip_tags}</p>\r\n            <span class=\'more\'>{$entry->morelink} →</span>\r\n        {else if $entry->content}\r\n            <p>{eval var=$entry->content|strip_tags}</p>\r\n        {/if}\r\n    </section>\r\n    <!-- .news-article //-->\r\n    {/foreach}\r\n        <!-- news pagination -->\r\n        {if $pagecount > 1}\r\n        <span class=\'paginate\'>\r\n            {if $pagenumber > 1}\r\n                {$firstpage} {$prevpage}\r\n            {/if}\r\n                {$pagetext} {$pagenumber} {$oftext} {$pagecount}\r\n            {if $pagenumber < $pagecount}\r\n                {$nextpage} {$lastpage}\r\n            {/if}\r\n        </span>\r\n        {/if}\r\n</article>\r\n<!-- .news-summary //-->\r\n\r\n{/strip}', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	('News', 'detailSample', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the \'object\' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as \'simple\' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=\'foo\' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either \'draft\' or \'published\' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the \'fields\' member\n     fieldsbyname           = (deprecated) - A synonym for the \'fields\' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n     displayvalue (mixed) = A displayable value for the field.  This is particularly useful in the case of dropdown fields.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=\'canonical\' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsDetailField">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	('News', 'detailSimplex_Detail', '{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=\'canonical\' value=$entry->canonical}\r\n{/if}\r\n\r\n<h2>{$entry->title|cms_escape:htmlall}</h2>\r\n{if $entry->summary}\r\n    {eval var=$entry->summary}\r\n{/if}\r\n    {eval var=$entry->content}\r\n{if $entry->extra}\r\n		{$extra_label} {$entry->extra}\r\n{/if}\r\n{if $return_url != ""}\r\n    <br />\r\n        <span class=\'back\'>← {$return_url}{if $category_name != \'\'} - {$category_link}{/if}</span>\r\n{/if}\r\n\r\n{if isset($entry->fields)}\r\n  {foreach from=$entry->fields item=\'field\'}\r\n     <div>\r\n        {if $field->type == \'file\'}\r\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\r\n          <img src=\'{$entry->file_location}/{$field->value}\' alt=\'\' />\r\n        {else}\r\n          {$field->name}: {eval var=$field->value}\r\n        {/if}\r\n     </div>\r\n  {/foreach}\r\n{/if}\r\n    <footer class=\'news-meta\'>\r\n    {if $entry->postdate}\r\n        {$entry->postdate|cms_date_format}\r\n    {/if}\r\n    {if $entry->category}\r\n        <strong>{$category_label}</strong> {$entry->category}\r\n    {/if}\r\n    {if $entry->author}\r\n        <strong>{$author_label}</strong> {$entry->author}\r\n    {/if}\r\n    </footer>', '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	('News', 'formSample', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'onefield\'}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	('News', 'browsecatSample', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	('News', 'email_template', 'A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nPost Date:  {$postdate|date_format}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n', '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	('Search', 'displaysearch', '\n{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" value="{$searchtext}" {$hogan}/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', '2014-01-07 20:27:17', '2014-01-07 20:27:17'),
	('Search', 'displayresult', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', '2014-01-07 20:27:17', '2014-01-07 20:27:17');
/*!40000 ALTER TABLE `cms_allicense_module_templates` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_permissions
DROP TABLE IF EXISTS `cms_allicense_permissions`;
CREATE TABLE IF NOT EXISTS `cms_allicense_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_permissions: 40 rows
/*!40000 ALTER TABLE `cms_allicense_permissions` DISABLE KEYS */;
INSERT INTO `cms_allicense_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES
	(1, 'Add Pages', 'Add Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(2, 'Add Groups', 'Add Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(4, 'Add Templates', 'Add Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(5, 'Add Users', 'Add Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(6, 'Modify Any Page', 'Modify Any Page', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(7, 'Modify Groups', 'Modify Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(8, 'Modify Group Assignments', 'Modify Group Assignments', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(9, 'Modify Permissions', 'Modify Permissions for Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(11, 'Modify Templates', 'Modify Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(12, 'Modify Users', 'Modify Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(13, 'Remove Pages', 'Remove Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(14, 'Remove Groups', 'Remove Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(16, 'Remove Templates', 'Remove Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(17, 'Remove Users', 'Remove Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(18, 'Modify Modules', 'Modify Modules', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(20, 'Modify Files', 'Modify Files', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(21, 'Modify Site Preferences', 'Modify Site Preferences', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(22, 'Modify Stylesheets', 'Modify Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(23, 'Add Stylesheets', 'Add Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(24, 'Remove Stylesheets', 'Remove Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(25, 'Add Stylesheet Assoc', 'Add Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(26, 'Modify Stylesheet Assoc', 'Modify Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(27, 'Remove Stylesheet Assoc', 'Remove Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(28, 'Modify User-defined Tags', 'Modify User defined Tags', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(29, 'Clear Admin Log', 'Clear Admin Log', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(30, 'Add Global Content Blocks', 'Add Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(31, 'Modify Global Content Blocks', 'Modify Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(32, 'Remove Global Content Blocks', 'Remove Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(35, 'Modify Events', 'Modify Events', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
	(36, 'View Tag Help', 'View Tag Help', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
	(44, 'Manage All Content', 'Manage All Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
	(46, 'Reorder Content', 'Reorder Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
	(47, 'Use FileManager Advanced', 'Advanced usage of the File Manager module', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	(48, 'Manage Menu', 'Manage Menu', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	(49, 'MicroTiny View HTML Source', 'MicroTiny View HTML Source', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	(50, 'Modify News', 'Modify News', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	(51, 'Approve News', 'Approve News For Frontend Display', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	(52, 'Delete News', 'Delete News Articles', '2014-01-07 20:27:16', '2014-01-07 20:27:16'),
	(53, 'Manage Themes', 'Manage Themes', '2014-01-07 20:27:22', '2014-01-07 20:27:22'),
	(54, 'allowadvancedprofile', 'Allow usage of advanced profile in TinyMCE', '2014-01-09 19:56:20', '2014-01-09 19:56:20');
/*!40000 ALTER TABLE `cms_allicense_permissions` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_permissions_seq
DROP TABLE IF EXISTS `cms_allicense_permissions_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_permissions_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_permissions_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_permissions_seq` (`id`) VALUES
	(54);
/*!40000 ALTER TABLE `cms_allicense_permissions_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_routes
DROP TABLE IF EXISTS `cms_allicense_routes`;
CREATE TABLE IF NOT EXISTS `cms_allicense_routes` (
  `term` varchar(255) NOT NULL,
  `key1` varchar(50) NOT NULL,
  `key2` varchar(50) DEFAULT NULL,
  `key3` varchar(50) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`term`,`key1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_routes: 4 rows
/*!40000 ALTER TABLE `cms_allicense_routes` DISABLE KEYS */;
INSERT INTO `cms_allicense_routes` (`term`, `key1`, `key2`, `key3`, `data`, `created`) VALUES
	('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:97:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2014-01-07 20:27:12'),
	('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:70:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2014-01-07 20:27:12'),
	('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:55:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2014-01-07 20:27:12'),
	('/[nN]ews\\/(?P<articleid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:5:{s:4:"term";s:33:"/[nN]ews\\/(?P<articleid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;s:8:"defaults";a:1:{s:8:"returnid";i:-1;}}s:18:"\0CmsRoute\0_results";N;}', '2014-01-07 20:27:12');
/*!40000 ALTER TABLE `cms_allicense_routes` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_siteprefs
DROP TABLE IF EXISTS `cms_allicense_siteprefs`;
CREATE TABLE IF NOT EXISTS `cms_allicense_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_siteprefs: 125 rows
/*!40000 ALTER TABLE `cms_allicense_siteprefs` DISABLE KEYS */;
INSERT INTO `cms_allicense_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
	('enablesitedownmessage', '0', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('sitedownmessage', '<p>Site is currently down for maintenance.</p>', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('sitedownmessagetemplate', '-1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('useadvancedcss', '1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('metadata', '<meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n ', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('xmlmodulerepository', '', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('logintheme', 'OneEleven', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('global_umask', '022', NULL, NULL),
	('frontendlang', 'en_US', NULL, NULL),
	('frontendwysiwyg', '', NULL, NULL),
	('nogcbwysiwyg', '0', NULL, NULL),
	('urlcheckversion', '', NULL, NULL),
	('defaultdateformat', '', NULL, NULL),
	('css_max_age', '0', NULL, NULL),
	('backendwysiwyg', 'MicroTiny', NULL, NULL),
	('disablesafemodewarning', '0', NULL, NULL),
	('allowparamcheckwarnings', '0', NULL, NULL),
	('enablenotifications', '1', NULL, NULL),
	('page_active', '1', NULL, NULL),
	('page_showinmenu', '1', NULL, NULL),
	('page_cachable', '1', NULL, NULL),
	('page_metadata', '{* Add code here that should appear in the metadata section of all new pages *}', NULL, NULL),
	('defaultpagecontent', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, NULL),
	('default_parent_page', '-1', NULL, NULL),
	('additional_editors', '', NULL, NULL),
	('page_searchable', '1', NULL, NULL),
	('page_extra1', '', NULL, NULL),
	('page_extra2', '', NULL, NULL),
	('page_extra3', '', NULL, NULL),
	('sitedownexcludes', '', NULL, NULL),
	('clear_vc_cache', '0', NULL, NULL),
	('sitename', 'ALLICENSE', NULL, NULL),
	('sitemask', '$2^HBA#@nhiC4EG8', NULL, NULL),
	('CMSMailer_mapi_pref_mailer', 'smtp', NULL, NULL),
	('CMSMailer_mapi_pref_host', 'localhost', NULL, NULL),
	('CMSMailer_mapi_pref_port', '25', NULL, NULL),
	('CMSMailer_mapi_pref_from', 'root@localhost', NULL, NULL),
	('CMSMailer_mapi_pref_fromuser', 'CMS Administrator', NULL, NULL),
	('CMSMailer_mapi_pref_sendmail', '/usr/sbin/sendmail', NULL, NULL),
	('CMSMailer_mapi_pref_timeout', '1000', NULL, NULL),
	('CMSMailer_mapi_pref_smtpauth', '0', NULL, NULL),
	('CMSMailer_mapi_pref_username', '', NULL, NULL),
	('CMSMailer_mapi_pref_password', '', NULL, NULL),
	('CMSMailer_mapi_pref_secure', '', NULL, NULL),
	('CMSPrinting_mapi_pref_overridestyle', '/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don\'t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/', NULL, NULL),
	('FileManager_mapi_pref_iconsize', '32px', NULL, NULL),
	('FileManager_mapi_pref_uploadboxes', '5', NULL, NULL),
	('FileManager_mapi_pref_showhiddenfiles', '0', NULL, NULL),
	('ModuleManager_mapi_pref_module_repository', 'http://www.cmsmadesimple.org/ModuleRepository/request/v2/', NULL, NULL),
	('News_mapi_pref_default_summary_template_contents', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsSummaryField">\n        {if $field->type == \'file\'}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, NULL),
	('News_mapi_pref_current_summary_template', 'Sample', NULL, NULL),
	('News_mapi_pref_default_detail_template_contents', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the \'object\' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as \'simple\' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=\'foo\' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either \'draft\' or \'published\' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the \'fields\' member\n     fieldsbyname           = (deprecated) - A synonym for the \'fields\' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n     displayvalue (mixed) = A displayable value for the field.  This is particularly useful in the case of dropdown fields.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=\'canonical\' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsDetailField">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, NULL),
	('News_mapi_pref_current_detail_template', 'Sample', NULL, NULL),
	('News_mapi_pref_default_form_template_contents', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'onefield\'}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', NULL, NULL),
	('News_mapi_pref_current_form_template', 'Sample', NULL, NULL),
	('News_mapi_pref_default_browsecat_template_contents', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, NULL),
	('News_mapi_pref_current_browsecat_template', 'Sample', NULL, NULL),
	('News_mapi_pref_email_subject', 'A new News article has been posted', NULL, NULL),
	('News_mapi_pref_allowed_upload_types', 'gif,png,jpeg,jpg', NULL, NULL),
	('News_mapi_pref_auto_create_thumbnails', 'gif,png,jpeg,jpg', NULL, NULL),
	('Search_mapi_pref_stopwords', 'i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very', NULL, NULL),
	('Search_mapi_pref_usestemming', 'false', NULL, NULL),
	('Search_mapi_pref_searchtext', 'Enter Search...', NULL, NULL),
	('__NOTIFICATIONS__', 'a:1:{i:0;O:8:"stdClass":5:{s:8:"priority";i:1;s:4:"link";s:101:"http://www.s25.org/next/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=146a910e";s:4:"html";s:450:"Your mail settings have not been configured.  This could interfere with the ability of your website to send email messages.  You should go to <a href="http://www.s25.org/next/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=146a910e">Extensions >> CMSMailer</a> and configure the mail settings with the information provided by your host.&nbsp;This test is generated on an infrequent basis.  It may take some time for it to go away";s:4:"name";s:9:"CMSMailer";s:12:"friendlyname";s:9:"CMSMailer";}}', NULL, NULL),
	('PruneAdminlog_lastexecute', '1458198760', NULL, NULL),
	('pseudocron_lastrun', '1458198761', NULL, NULL),
	('cms_is_uptodate', '0', NULL, NULL),
	('lastcmsversioncheck', '1399697995', NULL, NULL),
	('MicroTiny_mapi_pref_show_statusbar', '0', NULL, NULL),
	('MicroTiny_mapi_pref_allow_resize', '0', NULL, NULL),
	('MicroTiny_mapi_pref_strip_background', '1', NULL, NULL),
	('MicroTiny_mapi_pref_force_blackonwhite', '1', NULL, NULL),
	('MicroTiny_mapi_pref_allowimages', '1', NULL, NULL),
	('MicroTiny_mapi_pref_css_styles', '', NULL, NULL),
	('TinyMCE_mapi_pref_usecompression', '0', NULL, NULL),
	('TinyMCE_mapi_pref_usehtml5scheme', '0', NULL, NULL),
	('TinyMCE_mapi_pref_newlinestyle', 'p', NULL, NULL),
	('TinyMCE_mapi_pref_plugins', 'paste,advimage,advlink,contextmenu,inlinepopups,spellchecker', NULL, NULL),
	('TinyMCE_mapi_pref_front_showtogglebutton', '1', NULL, NULL),
	('TinyMCE_mapi_pref_front_allow_tables', '0', NULL, NULL),
	('TinyMCE_mapi_pref_front_toolbar3', '', NULL, NULL),
	('TinyMCE_mapi_pref_front_toolbar2', 'bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help', NULL, NULL),
	('TinyMCE_mapi_pref_advanced_allowupload', '0', NULL, NULL),
	('TinyMCE_mapi_pref_advanced_showtogglebutton', '1', NULL, NULL),
	('TinyMCE_mapi_pref_front_toolbar1', 'cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect', NULL, NULL),
	('TinyMCE_mapi_pref_advanced_allow_tables', '0', NULL, NULL),
	('TinyMCE_mapi_pref_advanced_toolbar3', '', NULL, NULL),
	('TinyMCE_mapi_pref_advanced_toolbar1', 'cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect', NULL, NULL),
	('TinyMCE_mapi_pref_advanced_toolbar2', 'bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,customdropdown,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help', NULL, NULL),
	('TinyMCE_mapi_pref_showtogglebutton', '1', NULL, NULL),
	('TinyMCE_mapi_pref_allowupload', '0', NULL, NULL),
	('TinyMCE_mapi_pref_allow_tables', '0', NULL, NULL),
	('TinyMCE_mapi_pref_toolbar3', '', NULL, NULL),
	('TinyMCE_mapi_pref_toolbar2', 'bold,italic,underline,strikethrough,advhr,separator,bullist,numlist,separator,outdent,indent,separator,undo,redo,separator,customdropdown,cmslinker,link,unlink,anchor,image,charmap,cleanup,separator,forecolor,backcolor,separator,code,spellchecker,fullscreen,help', NULL, NULL),
	('TinyMCE_mapi_pref_toolbar1', 'cut,paste,pastetext,pasteword,copy,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,fontselect,fontsizeselect', NULL, NULL),
	('TinyMCE_mapi_pref_fpheight', '500', NULL, NULL),
	('TinyMCE_mapi_pref_filepickerstyle', 'both', NULL, NULL),
	('TinyMCE_mapi_pref_fpwidth', '700', NULL, NULL),
	('TinyMCE_mapi_pref_scalingheight', '600', NULL, NULL),
	('TinyMCE_mapi_pref_scalingwidth', '800', NULL, NULL),
	('TinyMCE_mapi_pref_allowscaling', '0', NULL, NULL),
	('TinyMCE_mapi_pref_imagebrowserstyle', 'both', NULL, NULL),
	('TinyMCE_mapi_pref_striptags', 'true', NULL, NULL),
	('TinyMCE_mapi_pref_editor_height_unit', 'px', NULL, NULL),
	('TinyMCE_mapi_pref_show_path', '1', NULL, NULL),
	('TinyMCE_mapi_pref_editor_height_auto', '1', NULL, NULL),
	('TinyMCE_mapi_pref_editor_height', '400', NULL, NULL),
	('TinyMCE_mapi_pref_editor_width_unit', 'px', NULL, NULL),
	('TinyMCE_mapi_pref_editor_width_auto', '1', NULL, NULL),
	('TinyMCE_mapi_pref_editor_width', '800', NULL, NULL),
	('TinyMCE_mapi_pref_skin', 'default', NULL, NULL),
	('TinyMCE_mapi_pref_source_formatting', '1', NULL, NULL),
	('TinyMCE_mapi_pref_entityencoding', 'raw', NULL, NULL),
	('TinyMCE_mapi_pref_bodycss', '', NULL, NULL),
	('TinyMCE_mapi_pref_forcedrootblock', 'false', NULL, NULL),
	('TinyMCE_mapi_pref_customdropdown', 'Insert CMS version info|{cms_version} {cms_versionname}\n---|---\nInsert Smarty {literal} around selection|{literal}|{/literal}', NULL, NULL),
	('TinyMCE_mapi_pref_extraconfig', '', NULL, NULL),
	('TinyMCE_mapi_pref_forcecleanpaste', '1', NULL, NULL),
	('TinyMCE_mapi_pref_startenabled', '1', NULL, NULL),
	('TinyMCE_mapi_pref_loadcmslinker', '1', NULL, NULL),
	('TinyMCE_mapi_pref_cmslinkerstyle', 'selflink', NULL, NULL),
	('TinyMCE_mapi_pref_cmslinkeradds', '', NULL, NULL),
	('TinyMCE_mapi_pref_usestaticconfig', '0', NULL, NULL),
	('TinyMCE_mapi_pref_ignoremodifyfiles', '0', NULL, NULL),
	('TinyMCE_mapi_pref_dropdownblockformats', 'h1,h2,h3,h4,h5,h6,blockquote,dt,dd,code,samp', NULL, NULL);
/*!40000 ALTER TABLE `cms_allicense_siteprefs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_templates
DROP TABLE IF EXISTS `cms_allicense_templates`;
CREATE TABLE IF NOT EXISTS `cms_allicense_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `default_template` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `cms_allicense_index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_templates: 10 rows
/*!40000 ALTER TABLE `cms_allicense_templates` DISABLE KEYS */;
INSERT INTO `cms_allicense_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
	(19, 'Minimal template', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style="float: left; width: 25%;">\r\n         {menu loadprops=0 template=\'minimal_menu.tpl\'}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>', NULL, NULL, 1, 0, '2006-07-25 21:22:33', '2014-01-09 23:06:41'),
	(15, 'CSSMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: CSSMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=\'cssmenu.tpl\'}\n            <hr class="accessibility" />\n{* End Navigation *}\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2014-01-09 23:06:41'),
	(16, 'CSSMenu top + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation *}\r\n      <div id="menu_vert">\r\n{* stylesheet  "Navigation: CSSMenu - Horizontal" *}\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=\'cssmenu.tpl\'}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {cms_breadcrumbs root=\'Home\'}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=\'Sidebar\'}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=\'3\' detailpage=\'news\'}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=\'footer\'}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2014-01-09 23:06:41'),
	(17, 'Left simple navigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Left sidebar + 1 column" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything with class="accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1> \n       \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Navigation</h2>\n              {menu loadprops=0 template=\'simple_navigation.tpl\' collapse=\'1\'}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class="back">        \n          <div id="main">\n            <div style="float: right;">{print showbutton=true script=true}</div>\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class="accessibility" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class="clear"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2014-01-09 23:06:41'),
	(18, 'Top simple navigation + left subnavigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>\n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id="menu_horiz">\n{* stylesheet  "Navigation: Simple - Horizontal" *}\n        <h2 class="accessibility">Navigation</h2>\n        {menu loadprops=0 template=\'simple_navigation.tpl\' number_of_levels=\'1\'}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Sub Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Sub Navigation</h2>\n              {menu loadprops=0 template=\'simple_navigation.tpl\' start_level=\'2\' collapse=\'1\'}\n                <hr class="accessibility" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2014-01-09 23:06:41'),
	(20, 'ShadowMenu Tab + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation, stylesheet "Navigation: ShadowMenu - Horizontal" *}\r\n      <div id="menu_vert">\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=\'cssmenu_ulshadow.tpl\'}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {cms_breadcrumbs root=\'Home\'}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=\'Sidebar\'}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=\'3\' detailpage=\'news\'}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=\'footer\'}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-01 04:30:42', '2014-01-09 23:06:41'),
	(21, 'ShadowMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: ShadowMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=\'cssmenu_ulshadow.tpl\'}\n            <hr class="accessibility" />\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2009-05-01 23:17:51', '2014-01-09 23:06:41'),
	(22, 'NCleanBlue', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel="canonical" href="{$canonical}" />{elseif isset($content_obj)}<link rel="canonical" href="{$content_obj->GetURL()}" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir="start" rellink=1}\r\n{cms_selflink dir="prev" rellink=1}\r\n{cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type="text/javascript"  src="uploads/NCleanBlue/js/ie6fix.js"></script>\r\n<script type="text/javascript">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(\'.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version\');\r\n</script>\r\n<style type="text/css">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand("BackgroundImageCache", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="ncleanblue">\r\n      <div id="pagewrapper" class="core-wrap-960 core-center">\r\n{* start accessibility skip links *}\r\n        <ul class="accessibility">\r\n          <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n          <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id="header" class="util-clearfix">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  "Layout: NCleanBlue" *}\r\n          <div id="logo" class="core-float-left">\r\n            {cms_selflink dir="start" text="$sitename"}\r\n          </div>\r\n          \r\n{* Start Search, the input "Submit" is using an image, CSS: div#search input.search-button *}\r\n          <div id="search" class="core-float-right">\r\n            {search search_method="post"}\r\n          </div>\r\n{* End Search *}\r\n          <span class="util-clearb">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  "Layout: NCleanBlue", starting at Menu  ROOT *}\r\n          <h2 class="accessibility util-clearb">Navigation</h2>\r\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\r\n          <div class="page-menu util-clearfix">\r\n          {menu loadprops=0 template=\'cssmenu_ulshadow.tpl\'}\r\n          </div>\r\n          <hr class="accessibility util-clearb" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id="content" class="util-clearfix"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          <div title="CMS - {cms_version} - {cms_versionname}" id="version">\r\n          {capture assign=\'cms_version\'}{cms_version|lower}{/capture}{"/-([a-z]).*/"|preg_replace:"":$cms_version}\r\n          </div>\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id="bar" class="util-clearfix">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class="breadcrumbs core-float-right">\r\n              {cms_breadcrumbs root=\'Home\'}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class="accessibility util-clearb" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id="left" class="core-float-left">\r\n            <div class="sbar-top">\r\n              <h2 class="sbar-title">News</h2>\r\n            </div>\r\n            <div class="sbar-main">\r\n{* Start News *}\r\n              <div id="news">\r\n              {news number=\'3\' detailpage=\'news\'}\r\n              </div>\r\n              <img class="screen" src="uploads/NCleanBlue/screen-1.6.jpg" width="139" height="142" title="CMS - {cms_version} - {cms_versionname}" alt="CMS - {cms_version} - {cms_versionname}" />\r\n{* End News *} \r\n            </div>\r\n            <span class="sbar-bottom">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id="main"  class="core-float-right">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class="main-top">\r\n              <div class="print core-float-right">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class="main-main util-clearfix">\r\n              <h1 class="title">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class="main-bottom">\r\n              <div class="right49 core-float-right">\r\n              {anchor anchor=\'main\' text=\'^&nbsp;&nbsp;Top\'}\r\n              </div>\r\n              <div class="left49 core-float-left">\r\n                <span>\r\n                  {cms_selflink dir="previous" label="Previous page: "}&nbsp;\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir="next"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class="accessibility" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class="util-clearb">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id="footer-wrapper">\r\n        <div id="footer" class="core-wrap-960">\r\n{* first foot menu *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=\'minimal_menu.tpl\'  number_of_levels=\'1\'}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=\'minimal_menu.tpl\'  start_level="2"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called "footer" *}\r\n          <div class="block cms core-float-left">\r\n            {global_content name=\'footer\'}\r\n          </div>\r\n          \r\n          <span class="util-clearb">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-06 14:20:10', '2014-01-09 23:06:41'),
	(23, 'Simplex', '{strip}\r\n{process_pagedata}\r\n\r\n{* With cms_lang_info we retrieve current language information, assign gives us $nls variable we can work with *}\r\n{cms_lang_info assign=\'nls\'}\r\n\r\n{* using strip as we don\'t want useless whitespace, especially not before doctype *}\r\n{/strip}<!doctype html>\r\n<html lang=\'{if isset($nls)}{$nls->htmlarea()}{/if}\' dir=\'{if isset($nls)}{$nls->direction()}{/if}\'>\r\n<head>\r\n<meta charset=\'{if isset($nls)}{$nls->encoding()}{/if}\'>\r\n<title>{title} - {sitename}</title>\r\n<meta name=\'viewport\' content=\'initial-scale=1.0 maximum-scale=1.0 user-scalable=no\' />\r\n<meta name=\'HandheldFriendly\' content=\'true\' />\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n{metadata}\r\n{* See in news detail template how cannonical url can be assigned from module *}\r\n{if isset($canonical)}<link rel=\'canonical\' href=\'{$canonical}\' />{elseif isset($content_obj)}<link rel=\'canonical\' href=\'{$content_obj->GetURL()}\' />{/if}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n{cms_stylesheet}\r\n{* using google fonts *}\r\n<link href=\'//fonts.googleapis.com/css?family=Oswald:400,700\' rel=\'stylesheet\' type=\'text/css\'>\r\n{* learning IE lower then Version 9 some html5 *}\r\n<!--[if lt IE 9]>\r\n<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>\r\n<![endif]-->\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n{cms_selflink dir=\'start\' rellink=\'1\'}\r\n{cms_selflink dir=\'prev\' rellink=\'1\'}\r\n{cms_selflink dir=\'next\' rellink=\'1\'}\r\n</head>\r\n<body id=\'boxed\'>\r\n<!-- #wrapper (wrapping content in a box) -->\r\n<div class=\'container centered\' id=\'wrapper\'>\r\n    <!-- accessibility links, jump to nav or content -->\r\n    <ul class="visuallyhidden">\r\n        <li>{anchor anchor=\'nav\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n    </ul>\r\n    <!-- accessibility //-->\r\n    <!-- .top (top section of page containing logo, navigation search...) -->\r\n    <header class=\'top\'>\r\n        <div class=\'row header\'>\r\n            <!-- .logo (cmsms logo on the left side) -->\r\n            <div class=\'logo grid_4\'>\r\n                <a href=\'{root_url}\' title=\'{sitename}\'>\r\n                    <img src=\'{uploads_url}/simplex/images/cmsmadesimple-logo.png\' width=\'227\' height=\'59\' alt=\'{sitename}\' />\r\n                    <span class=\'palm\'></span>\r\n                </a>\r\n            </div>\r\n            <!-- .logo //-->\r\n            <!-- .main-navigation (main navigation on the right side) -->\r\n            <nav class=\'main-navigation grid_8 noprint\' id=\'nav\' role=\'navigation\'>\r\n                {menu template=\'Simplex_Navigation.tpl\'}\r\n            </nav>\r\n            <!-- .main-navigation //-->\r\n        </div>\r\n        <!-- .header-bottom (bottom part of header containing catchphrase and search field) -->\r\n        <div class=\'row header-bottom\'>\r\n            <section class=\'phrase\'>\r\n                <span class=\'grid_7\'>Content Management System the way it was meant to be.</span>\r\n                {strip}\r\n                {search assign=\'is_search\'}{* assigned search module tag, now we can build different search template for this site template and have fun with html5, Read http://www.w3.org/TR/html-markup/input.search.html for full attirbute specs *}\r\n                {if isset($is_search)}\r\n                <div class=\'grid_5 search noprint\' role=\'search\'>\r\n                        {$startform}\r\n                        <label for=\'{$search_actionid}searchinput\' class=\'visuallyhidden\'>{$searchprompt}:</label>\r\n                            <input type=\'search\' class=\'search-input\' id=\'{$search_actionid}searchinput\' name=\'{$search_actionid}searchinput\' size=\'20\' maxlength=\'50\' value=\'\' placeholder=\'{$searchtext}\' />\r\n                            {if isset($hidden)}{$hidden}{/if}\r\n                        {$endform}\r\n                </div>\r\n                {/if}{/strip}\r\n            </section>\r\n        </div>\r\n        <div class=\'clear\'></div>\r\n        <!-- .header-bottom //-->\r\n        <!-- .banner (banner area for a slider or teaser image) -->\r\n        <section class=\'banner row noprint\' role=\'banner\'>\r\n            <div class=\'banner-text\'>\r\n                <ul>\r\n                    <li>Flexible</li>\r\n                    <li>Powerful</li>\r\n                    <li>Secure</li>\r\n                    <li>Robust</li>\r\n                </ul>\r\n            </div>\r\n            <div class=\'banner-image cf\'>\r\n            {strip}\r\n                {* you do not need a module for every simple site functionality. For example you can build a simple slideshow\r\n                with php glob function (http://www.php.net/manual/en/function.glob.php) without wasting your system resources \r\n                by using modules or plugins.\r\n                Below would search for files matching .jpg in folder named teaser in simplex theme folder *}\r\n                {assign var=\'teaser\' value=\'uploads/simplex/teaser/*.jpg\'|glob}\r\n                    {foreach from=$teaser item=\'one\'}\r\n                        <div><img src=\'{root_url}/{$one}\' width=\'852\' height=\'275\' alt=\'\' /></div>\r\n                    {/foreach}\r\n            {/strip}\r\n            </div>\r\n        </section>\r\n        <!-- .banner //-->\r\n    </header>\r\n    <!-- .top //-->\r\n    <!-- .content-wrapper (wrapping div for content area) -->\r\n    <div class=\'content-wrapper cf\'>\r\n        <!-- .content (display content first) -->\r\n        <div class=\'content-inner grid_8 push_4\'>\r\n            <!-- .content-top (breadcrumbs and print button) -->\r\n            <div class=\'content-top cf\' itemscope itemtype=\'http://data-vocabulary.org/Breadcrumb\'>            \r\n                {* menu manager has action breadcrumbs since 1.11, you can use {cms_breadcrumbs} tag or {menu action=\'breadcrumbs\'} as below *}\r\n                {menu action=\'breadcrumbs\'}                \r\n                {* print tag from CMSPrinting Module *}\r\n                {print showbutton=\'false\' class=\'printbutton noprint\'}                \r\n            </div>\r\n            <!-- .content-top //-->\r\n            <!-- .content (actual content with title and content tags) -->\r\n            <article class=\'content\' id=\'main\' role=\'main\'>\r\n                <h1>{title}</h1> {* title tag *}\r\n                    {content} {* content entered in page editor area *}\r\n            </article>\r\n            <!-- .content //-->\r\n        </div>\r\n        <!-- .content-inner //-->\r\n        <!-- .sidebar (then show sidebar) -->\r\n        <aside class=\'sidebar grid_4 pull_8\'>\r\n            {* sample of using News Module tag for summary of latest two articles *}\r\n            {news summarytemplate=\'Summary_Simplex\' number=\'2\' detailpage=\'news\' detailtemplate=\'Simplex_Detail\'}\r\n        </aside>\r\n        <!-- .sidebar //-->\r\n        <div class=\'cf grid_8 prefix_4\'>\r\n            <span class=\'previous\'>{cms_selflink dir=\'previous\'}</span>\r\n            <span class=\'next\'>{cms_selflink dir=\'next\'}</span>\r\n        </div>\r\n    </div>\r\n    <!-- .content-wrapper //-->\r\n    <!-- .footer (footer area) -->\r\n    <footer class=\'row footer\'>\r\n        <span class=\'back-top\'>{anchor anchor=\'main\' text=\'&uarr;\'}</span>\r\n        <section class=\'grid_4 copyright\'>\r\n            <ul class=\'social cf\'>\r\n                <li class=\'twitter\'><a title=\'Twitter\' href=\'http://twitter.com/#!/cmsms\'>Twitter</a></li>\r\n                <li class=\'facebook\'><a title=\'Facebook\' href=\'https://www.facebook.com/cmsmadesimple\'>Facebook</a></li>\r\n                <li class=\'linkedin\'><a title=\'LinkedIn\' href=\'http://www.linkedin.com/groups?gid=1139537\'>LinkedIn</a></li>\r\n                <li class=\'youtube\'><a title=\'YouTube\' href=\'http://www.youtube.com/user/cmsmadesimple\'>YouTube</a></li>\r\n            </ul>\r\n            {global_content name=\'footer\'}\r\n        </section>\r\n        <section class=\'grid_8 noprint\'>\r\n            <nav class=\'footer-navigation row\'>\r\n                {menu template=\'Simplex_Navigation.tpl\' excludeprefix=\'home\' number_of_levels=\'2\' loadprops=\'0\'}\r\n            </nav>\r\n        </section> \r\n    </footer>\r\n    <div class=\'clear\'></div>\r\n</div>\r\n<!-- #wrapper //--> \r\n{cms_jquery exclude=\'jquery-ui.min.js,jquery.ui.nestedSortable.js,jquery.json.min.js\' append=\'uploads/simplex/js/functions.min.js\'}\r\n</body>\r\n</html>', '', '', 1, 0, '2012-04-23 13:36:19', '2014-01-09 23:06:41'),
	(24, 'Plain template', '{process_pagedata}\r\n{* Start Content *}\r\n<div>\r\n<h2>{title}</h2>\r\n{content} \r\n</div>\r\n{* End Content *}', '', '', 1, 1, '2014-01-09 23:06:30', '2014-01-09 23:10:37');
/*!40000 ALTER TABLE `cms_allicense_templates` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_templates_seq
DROP TABLE IF EXISTS `cms_allicense_templates_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_templates_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_templates_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_templates_seq` (`id`) VALUES
	(24);
/*!40000 ALTER TABLE `cms_allicense_templates_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_userplugins
DROP TABLE IF EXISTS `cms_allicense_userplugins`;
CREATE TABLE IF NOT EXISTS `cms_allicense_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text,
  `description` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_userplugins: 2 rows
/*!40000 ALTER TABLE `cms_allicense_userplugins` DISABLE KEYS */;
INSERT INTO `cms_allicense_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES
	(1, 'user_agent', '//Code to show the user\'s user agent information.\r\necho $_SERVER["HTTP_USER_AGENT"];', 'Code to show the users user agent information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(2, 'custom_copyright', '//set start to date your site was published\r\n$startCopyRight=\'2004\';\r\n\r\n// check if start year is this year\r\nif(date(\'Y\') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.\'-\'. date(\'Y\');\r\n}', 'Code to output copyright information', '2006-07-25 21:22:33', '2006-07-25 21:22:33');
/*!40000 ALTER TABLE `cms_allicense_userplugins` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_userplugins_seq
DROP TABLE IF EXISTS `cms_allicense_userplugins_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_userplugins_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_userplugins_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_userplugins_seq` (`id`) VALUES
	(2);
/*!40000 ALTER TABLE `cms_allicense_userplugins_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_userprefs
DROP TABLE IF EXISTS `cms_allicense_userprefs`;
CREATE TABLE IF NOT EXISTS `cms_allicense_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`preference`),
  KEY `cms_allicense_index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_userprefs: 26 rows
/*!40000 ALTER TABLE `cms_allicense_userprefs` DISABLE KEYS */;
INSERT INTO `cms_allicense_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES
	(1, 'use_wysiwyg', '1', NULL),
	(1, 'default_cms_language', 'en_US', NULL),
	(1, 'date_format_string', '%x %X', NULL),
	(1, 'admintheme', 'OneEleven', NULL),
	(1, 'bookmarks', '1', NULL),
	(1, 'recent', 'on', NULL),
	(1, 'indent', '1', NULL),
	(1, 'ajax', '0', NULL),
	(1, 'paging', '0', NULL),
	(1, 'hide_help_links', '0', NULL),
	(1, 'wysiwyg', 'TinyMCE', NULL),
	(1, 'collapse', '0=1.', NULL),
	(1, 'gcb_wysiwyg', '1', NULL),
	(1, 'syntaxhighlighter', '-1', NULL),
	(1, 'enablenotifications', '1', NULL),
	(1, 'default_parent', '-1', NULL),
	(1, 'homepage', '', NULL),
	(1, 'listtemplates_pagelimit', '20', NULL),
	(1, 'liststylesheets_pagelimit', '20', NULL),
	(1, 'listgcbs_pagelimit', '20', NULL),
	(1, 'ignoredmodules', '', NULL),
	(2, 'wysiwyg', 'TinyMCE', NULL),
	(2, 'default_cms_language', 'en_US', NULL),
	(2, 'admintheme', 'OneEleven', NULL),
	(2, 'bookmarks', '1', NULL),
	(2, 'recent', 'on', NULL);
/*!40000 ALTER TABLE `cms_allicense_userprefs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_users
DROP TABLE IF EXISTS `cms_allicense_users`;
CREATE TABLE IF NOT EXISTS `cms_allicense_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_users: 2 rows
/*!40000 ALTER TABLE `cms_allicense_users` DISABLE KEYS */;
INSERT INTO `cms_allicense_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES
	(1, 'webmaster', '3712cbd77e86b5298fdf3f36e877b6ba', 1, '', '', 'webmaster@centralum.com', 1, '2006-07-25 21:22:33', '2014-01-08 20:50:29'),
	(2, 'MP0001', '3df675410bfd6c2d01d96cafdcf76701', 1, 'Allicense', 'CMS', '', 1, '2014-01-10 00:48:31', '2014-01-24 12:13:08');
/*!40000 ALTER TABLE `cms_allicense_users` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_users_seq
DROP TABLE IF EXISTS `cms_allicense_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_allicense_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_users_seq: 1 rows
/*!40000 ALTER TABLE `cms_allicense_users_seq` DISABLE KEYS */;
INSERT INTO `cms_allicense_users_seq` (`id`) VALUES
	(2);
/*!40000 ALTER TABLE `cms_allicense_users_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_user_groups
DROP TABLE IF EXISTS `cms_allicense_user_groups`;
CREATE TABLE IF NOT EXISTS `cms_allicense_user_groups` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_user_groups: 3 rows
/*!40000 ALTER TABLE `cms_allicense_user_groups` DISABLE KEYS */;
INSERT INTO `cms_allicense_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES
	(1, 1, '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(3, 2, NULL, NULL),
	(2, 2, NULL, NULL);
/*!40000 ALTER TABLE `cms_allicense_user_groups` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_allicense_version
DROP TABLE IF EXISTS `cms_allicense_version`;
CREATE TABLE IF NOT EXISTS `cms_allicense_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_allicense_version: 1 rows
/*!40000 ALTER TABLE `cms_allicense_version` DISABLE KEYS */;
INSERT INTO `cms_allicense_version` (`version`) VALUES
	(37);
/*!40000 ALTER TABLE `cms_allicense_version` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_additional_htmlblob_users
DROP TABLE IF EXISTS `cms_jetson_additional_htmlblob_users`;
CREATE TABLE IF NOT EXISTS `cms_jetson_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htmlblob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_additional_htmlblob_users: 0 rows
/*!40000 ALTER TABLE `cms_jetson_additional_htmlblob_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_additional_htmlblob_users` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_additional_htmlblob_users_seq
DROP TABLE IF EXISTS `cms_jetson_additional_htmlblob_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_additional_htmlblob_users_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_additional_htmlblob_users_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_additional_htmlblob_users_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_jetson_additional_htmlblob_users_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_additional_users
DROP TABLE IF EXISTS `cms_jetson_additional_users`;
CREATE TABLE IF NOT EXISTS `cms_jetson_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_additional_users: 0 rows
/*!40000 ALTER TABLE `cms_jetson_additional_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_additional_users` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_additional_users_seq
DROP TABLE IF EXISTS `cms_jetson_additional_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_additional_users_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_additional_users_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_additional_users_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_jetson_additional_users_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_adminlog
DROP TABLE IF EXISTS `cms_jetson_adminlog`;
CREATE TABLE IF NOT EXISTS `cms_jetson_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(40) DEFAULT NULL,
  KEY `cms_jetson_index_adminlog1` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_adminlog: 11 rows
/*!40000 ALTER TABLE `cms_jetson_adminlog` DISABLE KEYS */;
INSERT INTO `cms_jetson_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
	(1426788012, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1426898964, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1427396023, 3, 'jetson', 3, 'Admin Username: jetson', 'Logged In', '173.165.240.102'),
	(1427396023, 3, 'jetson', -1, 'Core', 'CMSMS version 1.11.13 is available', '173.165.240.102'),
	(1427397354, 3, 'jetson', 3, 'Admin Username: jetson', 'Logged Out', '173.165.240.102'),
	(1427465819, 0, '', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', ''),
	(1427465846, 3, 'jetson', 3, 'Admin Username: jetson', 'Logged In', '162.247.222.53'),
	(1427676374, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1427825634, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1428374367, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
	(1427395437, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', '');
/*!40000 ALTER TABLE `cms_jetson_adminlog` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_admin_bookmarks
DROP TABLE IF EXISTS `cms_jetson_admin_bookmarks`;
CREATE TABLE IF NOT EXISTS `cms_jetson_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `cms_jetson_index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_admin_bookmarks: 0 rows
/*!40000 ALTER TABLE `cms_jetson_admin_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_admin_bookmarks` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_admin_bookmarks_seq
DROP TABLE IF EXISTS `cms_jetson_admin_bookmarks_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_admin_bookmarks_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_admin_bookmarks_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_admin_bookmarks_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_jetson_admin_bookmarks_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_admin_recent_pages
DROP TABLE IF EXISTS `cms_jetson_admin_recent_pages`;
CREATE TABLE IF NOT EXISTS `cms_jetson_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_admin_recent_pages: 0 rows
/*!40000 ALTER TABLE `cms_jetson_admin_recent_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_admin_recent_pages` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_admin_recent_pages_seq
DROP TABLE IF EXISTS `cms_jetson_admin_recent_pages_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_admin_recent_pages_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_admin_recent_pages_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_admin_recent_pages_seq` (`id`) VALUES
	(0);
/*!40000 ALTER TABLE `cms_jetson_admin_recent_pages_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_content
DROP TABLE IF EXISTS `cms_jetson_content`;
CREATE TABLE IF NOT EXISTS `cms_jetson_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `markup` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `cms_jetson_index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `cms_jetson_index_content_by_default_content` (`default_content`),
  KEY `cms_jetson_index_content_by_parent_id` (`parent_id`),
  KEY `cms_jetson_index_content_by_hierarchy` (`hierarchy`),
  KEY `cms_jetson_index_content_by_idhier` (`content_id`,`hierarchy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_content: 5 rows
/*!40000 ALTER TABLE `cms_jetson_content` DISABLE KEYS */;
INSERT INTO `cms_jetson_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES
	(15, 'Steel Fabricators for Industry', 'content', 1, -1, 25, 1, '00001', 1, 'Home', 'home', 1, 1, 'html', 1, 1, '15', 'home', 'target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg,image1,content_en', '', 'Home Page, shortcut key=1', '', '1', 1, '2006-07-25 21:22:31', '2014-04-10 00:20:07', 0, ''),
	(57, 'Request a Quote', 'content', 1, -1, 25, 3, '00003', 0, 'Request a Quote', 'request-a-quote', 1, NULL, 'html', 1, 1, '57', 'request-a-quote', 'searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 3, '2014-04-08 21:59:26', '2014-07-23 12:04:48', 0, ''),
	(58, 'About Jetson, Inc.', 'content', 1, -1, 25, 4, '00004', 0, 'About Jetson', 'about-jetson', 1, NULL, 'html', 1, 1, '58', 'about-jetson', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2014-04-08 22:06:13', '2014-04-10 00:20:07', 0, ''),
	(59, 'Contact Us', 'content', 1, -1, 25, 5, '00005', 0, 'Contact Us', 'contact-us', 1, NULL, 'html', 1, 1, '59', 'contact-us', 'content_en,searchable,extra1,extra2,extra3,pagedata,disable_wysiwyg,image,thumbnail,target', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2014-04-08 22:17:49', '2014-04-10 00:20:07', 0, ''),
	(34, 'Capabilities', 'content', 1, -1, 25, 2, '00002', 0, 'Capabilities', 'capabilities', 1, NULL, 'html', 1, 1, '34', 'capabilities', 'content_en,target,pagedata,extra1,extra2,extra3,image,thumbnail,searchable,disable_wysiwyg', '', '', '', '', 1, '2006-07-25 21:22:31', '2014-04-10 00:20:07', 0, '');
/*!40000 ALTER TABLE `cms_jetson_content` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_content_props
DROP TABLE IF EXISTS `cms_jetson_content_props`;
CREATE TABLE IF NOT EXISTS `cms_jetson_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_jetson_index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_content_props: 53 rows
/*!40000 ALTER TABLE `cms_jetson_content_props` DISABLE KEYS */;
INSERT INTO `cms_jetson_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
	(58, 'string', 'content_en', NULL, NULL, NULL, '<h3><strong>Welcome to Jetson!</strong></h3>\r\n<p>Jetson, Inc. is your source for custom steel fabrication. We specialize in manufacturing your heavy industrial projects — prototype models and short and long-run production jobs — to make your job easier.</p>\r\n<h3><strong>Map/Directions</strong></h3>\r\n<p><strong>---Google Maps---</strong></p>\r\n<h4>From 35W North</h4>\r\n<p>Take Hwy 10 west exit from 35W, take Hwy 65 north. Go approximately 5 miles to 133rd avenue, take a left turn and go north on the frontage road to Jetson.</p>\r\n<h4>From 35W South</h4>\r\n<p>Take Hwy 10 west exit from 35W, take Hwy 65 north. Go approximately 5 miles to 133rd avenue, take a left turn and go north on the frontage road to Jetson<strong>.</strong></p>\r\n<h4>From 65 North</h4>\r\n<p>Turn west at Bunker Lake Boulevard, go south on the frontage road to Jetson.</p>\r\n<h4>From 242 West</h4>\r\n<p>Go north on Hwy 65 to 133rd avenue, take a left turn and go north on the frontage road to Jetson.</p>\r\n<h3><strong>Company History</strong></h3>\r\n<p>Jetson, Inc. is a privately-held company owned by Bill Blanding. Bill purchased the company from retiring owners in 1994 and has updated the equipment and doubled production capacity with an expansion in 1998.</p>', NULL, '2014-04-08 22:06:13'),
	(57, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-07-23 12:04:48'),
	(57, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-07-23 12:04:48'),
	(58, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-04-08 22:06:13'),
	(58, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-04-08 22:06:13'),
	(59, 'string', 'content_en', NULL, NULL, NULL, '<p>We\'d like to hear from you!</p>\r\n<h3>Request a Quote</h3>\r\n<tbody>\r\n            <tr>\r\n              <td valign="top"><p>E-mail your digital file to <a href="mailto:info@jetsoninc.com">info@jetsoninc.com</a> or  send your project specifications using an online form.</p></td>\r\n            </tr>\r\n            <tr>\r\n              <td valign="top"><h3>Need   More Information?</h3>\r\n                <p>Contact us online  with questions or comments   or to request services literature.</p></td>\r\n            </tr>\r\n<h3><strong>Call   or Write Us</strong></h3>\r\n<p>You can call us at 763.755.2780 or toll free at 888.755.2780. Or, fax us at 763.755.2781. To contact us via mail, write to:</p>\r\n                <blockquote>\r\n                    <p>Jetson,   Inc.<br>\r\n                      13414 Hwy 65 NE<br>\r\n                  Ham Lake, MN 55304</p>\r\n</blockquote>\r\n', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'image', NULL, NULL, NULL, '-1', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'thumbnail', NULL, NULL, NULL, '-1', NULL, '2014-04-08 22:17:49'),
	(59, 'string', 'target', NULL, NULL, NULL, '', NULL, '2014-04-08 22:17:49'),
	(31, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
	(32, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
	(15, 'string', 'target', '', '', '', '', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'pagedata', '', '', '', '', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'extra1', '', '', '', '', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'extra2', '', '', '', '', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'extra3', '', '', '', '', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'image', '', '', '', '-1', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'thumbnail', '', '', '', '-1', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'searchable', '', '', '', '1', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2014-04-08 22:23:17'),
	(15, 'string', 'image1', '', '', '', 'uploads/images/logo1.gif', NULL, '2009-05-13 10:12:18'),
	(34, 'string', 'content_en', '', '', '', '<p><strong>Jetson - Your One Stop Shop for All Your Steel Fabrication Needs!</strong><br /> <strong>Hassle-free solutions for your custom steel fabrication projects</strong></p>\r\n<p>We specialize in manufacturing your heavy industrial projects — prototype models and short and long-run production jobs — to make your job easier.</p>\r\n<h3><strong>Capabilities</strong></h3>\r\n<ul>\r\n<li>CNC Plasma Cutting</li>\r\n<li>Heavy Weldments</li>\r\n<li>Cone/Cylinder Rolling</li>\r\n<li>Plate Rolling</li>\r\n<li>Welding</li>\r\n<li>Forming</li>\r\n<li>Sawing</li>\r\n<li>Shearing</li>\r\n<li>Punching</li>\r\n<li>Steel Services</li>\r\n<li>Parts-Prototype, Short &amp;</li>\r\n<li>Long-Run Production</li>\r\n</ul>\r\n<h3><strong>Equipment List</strong></h3>\r\n<ul>\r\n<li>CNC Plasma Table, 72"X300", with 1" thick cutting capacity</li>\r\n<li>175 Ton Press Brake--forms 14 gauge sheet to 1/2" plate</li>\r\n<li>Plate Roll, 9/16"x72", roll to min. 14" diam.</li>\r\n<li>Plate Roll, 1/4"x48", roll to min. 9" diam.</li>\r\n<li>Plate Roll, 10 gauge x 36", roll to min. 5" diam.</li>\r\n<li>Plate Shear, 3/8"x144"</li>\r\n<li>Bandsaw with Miter feature, 9"x16"</li>\r\n<li>100 Ton Ironworkwer with punching capability</li>\r\n<li>Pipe Roller, roll to min. 18" diam.</li>\r\n<li>Drill Press</li>\r\n<li>Magnetic Drills</li>\r\n<li>Mig Welders</li>\r\n<li>Tig Welders</li>\r\n</ul>\r\n<h3><strong>Delivery Solutions</strong></h3>\r\n<ul>\r\n<li>Fast, local delivery to you.</li>\r\n</ul>', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'target', '', '', '', '', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'pagedata', '', '', '', '', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'extra1', '', '', '', '', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'extra2', '', '', '', '', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'extra3', '', '', '', '', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'image', '', '', '', '-1', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'thumbnail', '', '', '', '-1', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'searchable', '', '', '', '1', NULL, '2014-04-08 22:07:07'),
	(34, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2014-04-08 22:07:07'),
	(57, 'string', 'content_en', NULL, NULL, NULL, '<p>We\'re looking forward to working with you. Please fill out as much information as you can and an estimator will follow up for any clarification that may be needed. To send your online quote, click "Submit" at the end of the form. Or, call 888.755.2780 or fax to 763.755.2781.</p>\r\n<form action="http://www.WebUnique.com/cf-bin/cfmail.cfm" method="post"><input type="hidden" name="Contact_required" value="Please include a contact name." /> <input type="hidden" name="MailTo" value="info@jetsoninc.com" /> <input type="hidden" name="Subject" value="Request a Quote" /> <input type="hidden" name="Redirect" value="http://www.jetsoninc.com/thankyou.htm" />\r\n<table border="0" cellspacing="0" cellpadding="2">\r\n<tbody>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Contact:</span></td>\r\n<td><input type="text" name="Contact" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Company:</span></td>\r\n<td><input type="text" name="Company" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Email:</span></td>\r\n<td><input type="text" name="Email" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Phone:</span></td>\r\n<td><input type="text" name="Phone" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Fax:</span></td>\r\n<td><input type="text" name="Fax" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Project Name:</span></td>\r\n<td><input type="text" name="ProjectName" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Number:</span></td>\r\n<td><input type="text" name="Number" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Part:</span></td>\r\n<td><input type="text" name="Part" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Quantity:</span></td>\r\n<td><input type="text" name="Quantity" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"> </td>\r\n</tr>\r\n<tr>\r\n<td align="right" valign="top"><span style="font-family: Arial,Helvetica; font-size: x-small;">Description:</span></td>\r\n<td valign="top"><textarea name="Comments" rows="5" cols="30"></textarea></td>\r\n</tr>\r\n<tr>\r\n<td align="right"><span style="font-family: Arial,Helvetica; font-size: x-small;">Date Due:</span></td>\r\n<td><input type="text" name="DateDue" size="30" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"> </td>\r\n</tr>\r\n<tr>\r\n<td align="right"> </td>\r\n<td><input type="submit" value="Submit" /> <input type="reset" value="Clear Form" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n</form>\r\n<div id="skype_c2c_menu_container" class="skype_c2c_menu_container" style="left: 252.8px; top: 56.4px; display: none;" onmouseover="SkypeClick2Call.MenuInjectionHandler.showMenu(this, event)" onmouseout="SkypeClick2Call.MenuInjectionHandler.hideMenu(event)">\r\n<div class="skype_c2c_menu_click2call"><a id="skype_c2c_menu_click2call_action" class="skype_c2c_menu_click2call_action" href="skype:+18887552780?call&amp;origin=FFTB/SPNR/7.1.15383.6004/http%3A%2F%2Fwww.s25.org%2Fpage%2Fadmin%2Faddcontent.php">Call</a></div>\r\n<div class="skype_c2c_menu_click2sms"><a id="skype_c2c_menu_click2sms_action" class="skype_c2c_menu_click2sms_action" href="skype:+18887552780?sms&amp;origin=FFTB/SPNR/7.1.15383.6004/http%3A%2F%2Fwww.s25.org%2Fpage%2Fadmin%2Faddcontent.php">Send SMS</a></div>\r\n<div class="skype_c2c_menu_add2skype"><a id="skype_c2c_menu_add2skype_text" class="skype_c2c_menu_add2skype_text" href="skype:+18887552780?add&amp;origin=FFTB/SPNR/7.1.15383.6004/http%3A%2F%2Fwww.s25.org%2Fpage%2Fadmin%2Faddcontent.php">Add to Skype</a></div>\r\n<div class="skype_c2c_menu_toll_info"><span class="skype_c2c_menu_toll_callcredit">You\'ll need Skype Credit</span><span class="skype_c2c_menu_toll_free">Free via Skype</span></div>\r\n</div>', NULL, '2014-07-23 12:04:48'),
	(15, 'string', 'content_en', '', '', '', '<strong><span style="color: #993300;">Jetson</span> </strong>is your fabricator and manufacture located in Ham Lake.\r\n<p>We solve problems for maintenance managers that need a “solution” more than a product.</p>\r\n<p>Let us know how we can help you. This website is designed to show our capabilities more than samples of our work. If you don’t see it here than ask us if we can.</p>\r\n<p>Thank you to all of our customers that have helped us grown through word of mouth and referrals.</p>\r\n<p>Sincerely,</p>\r\n<p>Bill Blanding</p>\r\n<p><span style="color: #993300;"><strong>JETSON</strong></span></p>', NULL, '2014-04-08 22:23:17');
/*!40000 ALTER TABLE `cms_jetson_content_props` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_content_props_seq
DROP TABLE IF EXISTS `cms_jetson_content_props_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_content_props_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_content_props_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_content_props_seq` (`id`) VALUES
	(56);
/*!40000 ALTER TABLE `cms_jetson_content_props_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_content_seq
DROP TABLE IF EXISTS `cms_jetson_content_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_content_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_content_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_content_seq` (`id`) VALUES
	(59);
/*!40000 ALTER TABLE `cms_jetson_content_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_crossref
DROP TABLE IF EXISTS `cms_jetson_crossref`;
CREATE TABLE IF NOT EXISTS `cms_jetson_crossref` (
  `child_type` varchar(100) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_jetson_index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `cms_jetson_index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_crossref: 7 rows
/*!40000 ALTER TABLE `cms_jetson_crossref` DISABLE KEYS */;
INSERT INTO `cms_jetson_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES
	('global_content', 1, 'template', 15, '2009-05-10 16:57:24', '2009-05-10 16:57:24'),
	('global_content', 1, 'template', 16, '2009-05-09 17:04:30', '2009-05-09 17:04:30'),
	('global_content', 1, 'template', 20, '2009-05-09 23:57:31', '2009-05-09 23:57:31'),
	('global_content', 1, 'template', 18, '2009-05-09 17:19:20', '2009-05-09 17:19:20'),
	('global_content', 1, 'template', 17, '2009-05-09 21:20:18', '2009-05-09 21:20:18'),
	('global_content', 1, 'template', 21, '2009-05-10 16:59:13', '2009-05-10 16:59:13'),
	('global_content', 1, 'template', 22, '2009-05-11 02:01:23', '2009-05-11 02:01:23');
/*!40000 ALTER TABLE `cms_jetson_crossref` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_css
DROP TABLE IF EXISTS `cms_jetson_css`;
CREATE TABLE IF NOT EXISTS `cms_jetson_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) DEFAULT NULL,
  `css_text` text,
  `media_type` varchar(255) DEFAULT NULL,
  `media_query` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`css_id`),
  KEY `cms_jetson_index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_css: 20 rows
/*!40000 ALTER TABLE `cms_jetson_css` DISABLE KEYS */;
INSERT INTO `cms_jetson_css` (`css_id`, `css_name`, `css_text`, `media_type`, `media_query`, `create_date`, `modified_date`) VALUES
	(41, 'Handheld', '/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}', 'handheld', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(30, 'Print', '/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class="noprint"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}', 'print', '', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(31, 'Accessibility and cross-browser tools', '/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n	text-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n	position: absolute;\r\n/* takes it out top side */\r\n	top: -999em;\r\n/* takes it out left side */\r\n	left: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n	position: absolute;\r\n	left: -1000px;\r\n	top: -1000px;\r\n	width: 0;\r\n	height: 0;\r\n	overflow: hidden;\r\n	display: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n	content: ".";\r\n	display: block;\r\n	height: 0;\r\n	clear: both;\r\n	visibility: hidden;\r\n}\r\n.clear {\r\n	height: 0;\r\n	clear: both;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n#main .clear {\r\n	height: 0;\r\n	clear: right;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n	display: inline-block;\r\n	width: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n	height: 1%;\r\n	clear: right;\r\n	width: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */', 'screen', '', '2006-07-25 21:22:32', '2009-05-13 10:42:54'),
	(32, 'Layout: Left sidebar + 1 column', '/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don\'t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n	color: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n/* a different color is used for visited links */\r\n	color: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n	padding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 14:06:00'),
	(33, 'Navigation: CSSMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\'s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\'s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level "a" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level "a" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092;\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 20:20:30'),
	(34, 'Navigation: CSSMenu - Horizontal', '/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the "a" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the "a" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or \'right\' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or \'right\' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it\'s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 16:52:41'),
	(35, 'Module: News', 'div#news {\r\n/* margin for the entire div surrounding the news items */\r\n	margin: 2em 0 1em 1em;\r\n/* border set here */\r\n	border: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n	background: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n	line-height: 2em;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #f5f5f5;\r\n	border: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n	padding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n	margin: 0 0.5em 1em 0.5em;\r\n	border-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n	font-size: 90%;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n/* little more room at top */\r\n	padding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	margin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	padding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n	line-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n	padding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n	font-size: 90%;\r\n	margin-bottom: 5px;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	border-top: 1px solid #ccc;\r\n	margin-top: 0.5em;\r\n	padding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n	margin-bottom: 15px;\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n	padding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\ndiv#news ul li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}', 'screen', '', '2006-07-25 21:22:32', '2009-05-09 23:29:39'),
	(38, 'Navigation: Simple - Horizontal', '/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n	height: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n	background-color: #243135;\r\n/* insure full width */\r\n	width: 100%;\r\n/* set height */\r\n	height: 49px;\r\n	margin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n	float: left;\r\n/* remove any default bullets */\r\n	list-style: none;\r\n/* still no margin */\r\n	margin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n	margin: 0;\r\n/* removes default underline */\r\n	text-decoration: none;\r\n/* default link color */\r\n	color: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n	display: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the "a" */\r\n	padding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the "a" we can set it here, it lets us use the span for an image */\r\n	padding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n	padding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n	padding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n	padding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the "sectionheader" */\r\n	padding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}', 'screen', '', '2006-07-25 21:22:32', '2010-05-29 13:06:18'),
	(39, 'Layout: Top menu + 2 columns', '/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don\'t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 15px 10px 20px;\r\n/* this one is for sidebar with content and no menu */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 2em 0 1em 0em;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '', '2006-07-25 21:22:32', '2009-05-10 00:13:04'),
	(42, 'Navigation: Simple - Vertical', '/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of "a.parent" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn\'t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}', 'screen', '', '2009-04-30 01:09:15', '2009-07-23 00:17:42'),
	(43, 'Navigation: ShadowMenu - Horizontal', '/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n	list-style-type: none;\r\n	margin: 0px;\r\n	padding-top: 10px;\r\n	padding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 210px;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* room at top for li so image top shows correct */\r\n	padding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n	padding-top: 13px;\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n	margin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n	top: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n	margin-top: 0px;\r\n	padding-left: 5px;\r\n	left: 100%;\r\n	top: -7px;\r\n/* IE6 gets gif as it can\'t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n	margin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n	margin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n	margin-left: 6px;\r\n/* helps hold it inside the ul */\r\n	width: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n	padding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* remove default "a" underline */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal "a" padding minus some for right image */\r\n	padding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n	background:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n	background:  none;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an "h" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n	background:  none;\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n	padding: 5px 10px;\r\n/* to keep it within li */\r\n	width: 165px;\r\n/* space between them */\r\n	margin: 5px;\r\n	background: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n	padding: 5px 10px;\r\n	width: 165px;\r\n	margin: 0px;\r\n	color: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n	background: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n	color: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* just to insure normal */\r\n	font-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n	color: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n	color: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n	color: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n	color: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n	color: #0587A9;\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n	padding: 0px;\r\n	background:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 210px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -8px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n	height: 9px;\r\n	margin: 0px 0px -8px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n	margin: 0px 0px -8px;\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '', '2009-05-01 04:32:33', '2009-07-20 18:18:21'),
	(45, 'Navigation: ShadowMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\'s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 190px;\r\n/* changes padding inherited from first level */\r\n	padding: 0px 10px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic appearance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\'s container */\r\n	position: relative;\r\n/* even padding all 4 sides */\r\n	padding: 6px;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors from here on */\r\n	color: #000;\r\n/* remove any background that may have been set in level above */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 209px;\r\n	height: auto;\r\n/* negative margin pulls it over the parent ul */\r\n	margin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n	padding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n	top: -2px;\r\n	display: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n	list-style-type: none;\r\n/* bit more negative left margin */\r\n	margin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:\'value\', this flat lines it */\r\n	padding: 0px;\r\n/* now we just change one with \'property\'-top:value */\r\n	padding-top: 10px;\r\n	position: absolute;\r\n	width: 209px;\r\n	height: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n	top: -5px;\r\n	left: 100%;\r\n	display: none;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can\'t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 209px;\r\n	padding: 0px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -9px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 \'star html\' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n	height: 2px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	padding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '', '2009-05-02 00:20:03', '2009-05-11 00:43:17'),
	(46, 'Navigation: FatFootMenu', '#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the "a" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}', 'screen', '', '2009-05-02 15:05:04', '2009-05-09 23:47:45'),
	(47, 'ncleanbluecore', '/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n	width: 100%;\r\n}\r\n.core-wrap-960 {\r\n	width: 960px;\r\n}\r\n.core-wrap-780 {\r\n	width: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n	float: left;\r\n	display: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n	float: right;\r\n	display: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}', 'screen', '', '2009-05-06 14:28:28', '2009-05-11 02:35:43'),
	(48, 'ncleanblueutils', '/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	outline: 0;\r\n	font-size: 100%;\r\n	vertical-align: baseline;\r\n	background: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n	line-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n	list-style: none;\r\n}\r\nblockquote, q {\r\n	quotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n	content: \'\';\r\n	content: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n	outline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n	text-decoration: none;\r\n}\r\ndel {\r\n	text-decoration: line-through;\r\n}\r\n/* tables still need \'cellspacing="0"\' in the markup */\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-family: inherit;\r\n}\r\ndfn {\r\n	display: none;\r\n	overflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	position: static;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n	clear: both;\r\n	content: \'.\';\r\n	display: block;\r\n	visibility: hidden;\r\n	height: 0;\r\n}\r\n.util-clearfix {\r\n	display: inline-block;\r\n}\r\n* html .util-clearfix {\r\n	height: 1%;\r\n}\r\n.util-clearfix {\r\n	display: block;\r\n}', 'screen', '', '2009-05-06 14:29:17', '2009-05-11 02:38:10'),
	(49, 'Layout: NCleanBlue', '/*  \n@Nuno Costa [criacaoweb.net]\n@Since [cmsms 1.6]\n@Contributors: Mark and Dev-Team\n*/\nbody {\n/* default text for entire site */\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\n/* default text color for entire site */\n	color: #3A3A36;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\n#ncleanblue {\n/* set to width of viewport */\n	width: auto;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* wiki style external links */\n/* external links will have "(external link)" text added, lets hide it */\na.external span {\n	position: absolute;\n	left: -5000px;\n	width: 4000px;\n}\na.external {\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\n	padding: 0 12px 0 0;\n}\n/* colors for external links */\na.external:link {\n	color: #679EBC;\n/* background image for the link to show wiki style arrow */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:visited {\n	color: #18507C;\n/* a different color can be used for visited external links */\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:hover {\n	color: #18507C;\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\n	background-color: inherit;\n}\n/* end wiki style external links */\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\n.accessibility, hr {\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\n	position: absolute;\n	top: -9999em;\n	left: -9999em;\n	background: none;\n	border: 0;\n	clear: both;\n	display: block;\n	float: none;\n	font-size: 0;\n	margin: 0;\n	padding: 0;\n	overflow: hidden;\n	visibility: hidden;\n	width: 0;\n	height: 0;\n	border: none;\n}\n/* ------------ Standard  HTML elements and their default settings ------------ */\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\np {\n	padding: 0;\n	margin-top: 0.5em;\n    margin-bottom: 1em;\n   text-align:left;\n}\nh1, h2, h3, h4, h5 {\n	line-height: 1.6em;\n	font-weight: normal;\n	width: auto;\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n}\n/*default link styles*/\na {\n	color: #679EBC;\n	text-decoration: none;\n	text-align: left;\n}\na:hover {\n	color: #3A6B85;\n}\na:active {\n	color: #3A6B85;\n}\na:visited {\n	color: #679EBC;\n}\ninput, textarea, select {\n	font-size: 0.95em;\n}\n/* ------------ Wrapper ------------ */\ndiv#pagewrapper {\n	font-size: 95%;\n	position: relative;\n	z-index: 1;\n}\n/* ------------ Header ------------ */\n#header {\n	height: 111px;\n	width: 960px;\n}\n#logo a {\n/* adjust according your image size */\n	height: 75px;\n	width: 215px;\n/* forces full link size */\n	display: block;\n/* this hides the text */\n	text-indent: -9999em;\n	margin-top: 0;\n	margin-left: 0;\n/* you can set your own image here, note size adjustments */\n	background: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\n}\n/* ------------ Header - Search ------------ */\ndiv#search {\n	width: 190px;\n	height: 28px;\n	margin-top: 31px;\n	margin-right: 20px;\n}\ndiv#search label {\n	text-indent: -9999em;\n	height: 0pt;\n	width: 0pt;\n	display: none;\n}\ndiv#search input.search-input {\n/* specific size for image, your image may need these adjusted */\n	width: 143px;\n	height: 17px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* text color */\n	color: #999;\n/* padding of text */\n	padding: 7px 0px 4px 10px;\n	float: left;\n/* set all font properties at once, weight, size, family */\n	font: bold 0.9em Arial, Helvetica, sans-serif;\n/* left input image, set your own here */\n	background: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\n}\ndiv#search input.search-button {\n/* specific size for image, your image may need these adjusted */\n	width: 37px;\n	height: 28px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* hides text, image has text */\n	text-indent: -9999em;\n	float: left;\n	margin: 0;\n/* provides positive hover effect */\n	cursor: pointer;\n/* removes default size/height */\n	font-size: 0px;\n	line-height: 0px;\n/* submit button image, set your own here */\n	background: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\n}\n/* ------------ Content ------------ */\n#content {\n	width: auto;\n/* all text in #content will default align left, changed in other calls */\n	text-align: left;\n}\n#bar {\n	width: auto;\n	height: 40px;\n	padding-right: 1em;\n	padding-left: 1em;\n}\n.print {\n	margin-right: 75px;\n	margin-top: 10px;\n}\n#version {\n	width: 50px;\n	height: 31px;\n	position: absolute;\n	z-index: 5;\n	top: 130px;\n	right: -16px;\n	font-size: 1.6em;\n	font-weight: bold;\n	padding: 28px 15px;\n	color: #FFF;\n	text-align: center;\n	vertical-align: middle;\n	background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\n}\n/* IE6 fixes */\n* html div#version {\n	top: 150px;\n}\n/* End IE6 fixes */\n/* Site Title */\nh1.title {\n	font-size: 1.8em;\n	color: #666666;\n	margin-bottom: 0.5em;\n}\n/* Breadcrumbs */\ndiv.breadcrumbs {\n	padding: 0.5em 0;\n	font-size: 80%;\n	margin: 0 1em;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\n/* ------------ Side Bar (Left) ------------ */\n#left {\n	width: 250px;\n}\n/* Image that Represents the new CMS design */\n#left .screen {\n	margin: 10px 50px;\n}\n/* End  */\n.sbar-title {\n	font: bold 1.2em Arial, Helvetica, sans-serif;\n	color: #252523;\n}\n.sbar-top {\n	height: 20px;\n	width: auto;\n	padding: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\n}\n.sbar-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n}\nspan.sbar-bottom {\n	width: auto;\n	display: block;\n	height: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\n}\n/* ------------ Main (Right) ------------ */\n#main {\n	width: 690px;\n}\n.main-top {\n	height: 15px;\n	width: auto;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\n}\n.main-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n	padding: 20px;\n	padding-top: 0px;\n}\n.main-bottom {\n	width: auto;\n	height: 41px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\n}\n.right49, .left49 {\n	font-size: 0.85em;\n	margin: 7px 5px 5px 10px;\n	font-weight: bold;\n}\n.left49 span {\n	display: block;\n	padding-top: 1px;\n}\n.left49 a {\n	font-weight: normal;\n}\n.right49 {\n	height: 28px;\n	width: 50px;\n	padding-right: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\n}\n.right49 a, .right49 a:visited {\n	padding: 7px 4px;\n	display: block;\n	color: #000;\n	height: 15px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\n}\n#main h2,\n#main h3,\n#main h4,\n#main h5,\n#main h6 {\n	font-size: 1.4em;\n	color: #301E12;\n}\ndiv#main ul,\ndiv#main ol,\ndiv#main dl,\n#footer ul,\n#footer ol {\n	line-height: 1em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul,\n#footer ul {\n	list-style: circle;\n}\ndiv#main ul li,\ndiv#main ol li,\n#footer ul li,\n#footer ol li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}\n/* definition lists topics on bold */\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\n/* ------------ Footer ------------ */\n#footer-wrapper {\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	width: auto;\n	margin-top: 5px;\n	text-align: center;\n	margin-right: 00px;\n	margin-left: 0px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer {\n	color: #FFF;\n	font-size: 0.8em;\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer .block {\n	width: 300px;\n	margin: 20px 10px 10px;\n}\n#footer .cms {\n	text-align: right;\n}\n/* ------------ Footer Links ------------ */\n#footer ul {\n	width: auto;\n	text-align: left;\n	margin-left: 50px;\n}\n#footer ul ul {\n	margin-left: 0px;\n}\n#footer ul li a {\n	color: #FFF;\n	display: block;\n	font-weight: normal;\n	margin-bottom: 0.5em;\n	text-decoration: none;\n}\n#footer a {\n	color: #DCEDF1;\n	text-decoration: underline;\n	font-weight: bold;\n}\n/* ------------ END LAYOUT ---------------*/\n/* ------------  Menu  ROOT  ------------ */\n.page-menu {\n	width: auto;\n	height: 35px;\n	margin: 3px 0 0 20px;\n}\n.menuwrapper {}\n\nul#primary-nav li hr.menu_separator{\n        position: relative;\n        visibility: hidden;\n        display:block;\n        width:5px;\n       	height: 32px;\n       	margin: 0px 5px 0px;\n}\n.page-menu ul#primary-nav {\n	height: 1%;\n	float: left;\n	list-style: none;\n	padding: 0;\n	margin: 0;\n}\n.page-menu ul#primary-nav li {\n	float: left;\n}\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a span {\n	display: block;\n	padding: 0 10px;\n	background-repeat: no-repeat;\n	background-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\n}\n.page-menu ul#primary-nav li a {\n	padding-left: 0;\n	color: #000;\n	font-weight: bold;\n	line-height: 2.15em;\n	text-decoration: none;\n	margin-left: 1px;\n	font-size: 0.85em;\n}\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:active {\n	color: #000;\n}\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover span {\n	color: #000;\n}\n.page-menu ul#primary-nav li a span {\n	padding-top: 6px;\n	padding-right: 0;\n	padding-bottom: 5px;\n}\n.page-menu ul#primary-nav li a.menuparenth,\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n	background-position: 100% -120px;\n}\n.page-menu ul#primary-nav li a {\n	background-position: 100% -80px;\n}\n.page-menu ul#primary-nav li a.menuactive span,\n.page-menu ul#primary-nav li a:hover span,\n.page-menu ul#primary-nav li a:focus span,\n.page-menu ul#primary-nav li a:active span {\n	background-position: 0 -40px;\n}\n.page-menu ul#primary-nav li a span {\n	background-position: 0 0;\n}\n.page-menu ul#primary-nav .sectionheader,\n.page-menu ul#primary-nav li a:link.menuactive,\n.page-menu ul#primary-nav li a:visited.menuactive {\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\n	cursor: text;\n}\n.page-menu ul#primary-nav li span,\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n/* @ Opera, we need to be explicit again here now... */\n	cursor: pointer;\n}\n/* Additional IE specific bug fixes... */\n* html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n*:first-child+html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n/* --------------------  menu dropdow  -------------------------\n/* Unless you know what you do, do not touch this */\n/* Reset all ROOT menu styles. */\nul#primary-nav ul.unli li li a span,\nul#primary-nav ul.unli li a span,\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\n	font-weight: normal;\n	background-image: none;\n	display: block;\n	padding-top: 0px;\n	padding-left: 0px;\n	padding-right: 0px;\n	padding-bottom: 0px;\n}\n#primary-nav {\n	margin: 0px;\n	padding: 0px;\n}\n#primary-nav ul {\n	list-style: none;\n	margin: -6px 0px 0px;\n	padding: 0px;\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\n	width: 209px;\n}\n#primary-nav ul {\n	position: absolute;\n	z-index: 1001;\n	top: auto;\n	display: none;\n	padding-top: 9px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\n}\n* html #primary-nav ul.unli {\n	padding-top: 12px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\n}\n#primary-nav ul.unli ul {\n	margin-left: -7px;\n	left: 100%;\n	top: 3px;\n}\n* html #primary-nav ul.unli ul {\n	margin-left: -0px;\n}\n#primary-nav li {\n	margin: 0px;\n	float: left;\n}\n#primary-nav li li {\n	margin-left: 7px;\n	margin-top: -1px;\n	float: none;\n	position: relative;\n}\n/* Styling the basic appearance of the menu elements */\nul#primary-nav ul hr.menu_separator{\n        position: relative;\n        visibility: visible;\n        display:block;\n        width:130px;\n       	height: 1px;\n       	margin: 2px 30px 2px;\n	padding: 0em;\n	border-bottom: 1px solid #ccc;\n	border-top-width: 0px;\n	border-right-width: 0px;\n	border-left-width: 0px;\n	border-top-style: none;\n	border-right-style: none;\n	border-left-style: none;\n}\n#primary-nav .separator,\n#primary-nav .separatorh {\n	height: 9px;\n	width: 209px;\n	margin: 0px 0px -8px;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\n}\n* html #primary-nav .separator {\n       z-index:-1;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\n}\n*:first-child+html #primary-nav .separator {\n       z-index:-1;\n}\n#primary-nav ul.unli li a {\n	padding: 0px 10px;\n	width: 165px;\n	margin: 5px;\n	background-image: none;\n}\n* html #primary-nav ul.unli li a {\n	padding: 0px 10px 0px 5px;\n	width: 165px;\n	margin: 5px 0px;\n}\n#primary-nav li li a:hover {\n	background-color: #DBE7F2;\n}\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\n#primary-nav li.menuactive li a {\n	text-decoration: none;\n	background: none;\n}\n#primary-nav ul.unli li.menuparenth,\n#primary-nav ul.unli a:hover,\n#primary-nav ul.unli a.menuactive {\n	background-color: #DBE7F2;\n}\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\n#primary-nav ul.unli li .menuparent,\n#primary-nav ul.unli li .menuparent:hover,\n#primary-nav ul.unli li .menuparent,\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\n	background-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\n	background-position: center right;\n	background-repeat: no-repeat;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul,\n#primary-nav li.menuparenth ul ul ul {\n	display: none;\n}\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav ul ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul,\n#primary-nav ul ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hacks */\n#primary-nav li li {\n	float: left;\n	clear: both;\n}\n#primary-nav li li a {\n	height: 1%;\n}\n/*************** End Menu *****************/\n/* ------------ News Module ------------ */\n#news {\n	padding: 10px;\n}\n.NewsSummary {\n}\n.NewsSummaryPostdate,\n.NewsSummaryCategory,\n.NewsSummaryAuthor {\n	font-style: italic;\n	font-size: 0.8em;\n}\n.NewsSummaryLink {\n	margin: 2px 0;\n}\n.NewsSummaryContent {\n	margin: 10px 0;\n}\n.NewsSummaryMorelink {\n	margin: 5px 0 15px;\n}\n/* ------------ End News Module ------------ */', 'screen', '', '2009-05-06 14:30:25', '2009-07-22 17:39:51'),
	(50, 'Simplex: Core', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n/* =====================================\r\nBASE STYLES\r\n===================================== */\r\narticle, aside, details, figcaption, figure, footer, header, hgroup, nav, section { \r\n    display: block\r\n}\r\n/* taken from HTML5 Boilerplate http://h5bp.com */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100%\r\n}\r\naudio, canvas, video { \r\n    display: inline-block; \r\n    *display: inline; \r\n    *zoom: 1\r\n}\r\naudio:not([controls]) { \r\n    display: none\r\n}\r\n[hidden] { \r\n    display: none\r\n}\r\n/* text selection */\r\n.content-wrapper ::-moz-selection { \r\n    background: #f39c2c;\r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none\r\n}\r\n.content-wrapper ::selection { \r\n    background: #f39c2c; \r\n    background: rgba(243,156,44,0.7);\r\n    color: #555;\r\n    text-shadow: none \r\n}\r\n/* Consistent box sizing and appearance */\r\ninput[type="checkbox"], input[type="radio"] { \r\n    box-sizing: border-box; \r\n    padding: 0; \r\n    *width: 13px; \r\n    *height: 13px\r\n}\r\ninput[type="search"] { \r\n    -webkit-appearance: textfield; \r\n    -moz-box-sizing: content-box; \r\n    -webkit-box-sizing: content-box; \r\n    box-sizing: content-box\r\n}\r\ninput[type="search"]::-webkit-search-decoration, input[type="search"]::-webkit-search-cancel-button { \r\n    -webkit-appearance: none\r\n}\r\n/* Remove inner padding and border in FF3/4 */\r\nbutton::-moz-focus-inner, input::-moz-focus-inner { \r\n    border: 0; \r\n    padding: 0\r\n}\r\n/*\r\n * 1. Remove default vertical scrollbar in IE6/7/8/9\r\n * 2. Allow only vertical resizing\r\n */\r\ntextarea { \r\n    overflow: auto; \r\n    vertical-align: top; \r\n    resize: vertical\r\n}\r\nul, ol { \r\n    margin: 1em 0; \r\n    padding: 0 0 0 40px\r\n}\r\ndd { \r\n    margin: 0 0 0 40px\r\n}\r\nnav ul, nav ol { \r\n    list-style: none; \r\n    list-style-image: none; \r\n    margin: 0; \r\n    padding: 0\r\n}\r\n/* Redeclare monospace font family */\r\npre, code, kbd, samp { \r\n    font-family: monospace, serif; _font-family: \'courier new\', monospace; \r\n    font-size: 1em }\r\n/* Improve readability of pre-formatted text in all browsers */\r\npre { \r\n    white-space: pre;\r\n    white-space: pre-wrap; \r\n    word-wrap: break-word\r\n}\r\nq { \r\n    quotes: none\r\n}\r\nq:before, q:after { \r\n    content: ""; \r\n    content: none\r\n}\r\nsmall { \r\n    font-size: 85%\r\n}\r\n/* Hide from both screenreaders and browsers */\r\n.hidden { \r\n    display: none !important; \r\n    visibility: hidden\r\n}\r\n/* Hide only visually, but have it available for screenreaders */\r\n.visuallyhidden { \r\n    border: 0; \r\n    clip: rect(0,0,0,0); \r\n    height: 1px; \r\n    margin: -1px; \r\n    overflow: hidden; \r\n    padding: 0; \r\n    position: absolute; \r\n    width: 1px\r\n}\r\n/* Extends the .visuallyhidden class to allow the element to be focusable when navigated to via the keyboard */\r\n.visuallyhidden.focusable:active, \r\n.visuallyhidden.focusable:focus { \r\n    clip: auto; \r\n    height: auto; \r\n    margin: 0; \r\n    overflow: visible; \r\n    position: static; \r\n    width: auto\r\n}\r\n/* Hide visually and from screenreaders, but maintain layout */\r\n.invisible { \r\n    visibility: hidden\r\n}\r\n/* correct text resizing */\r\nhtml { \r\n    font-size: 100%; \r\n    -webkit-text-size-adjust: 100%; \r\n    -ms-text-size-adjust: 100% \r\n}\r\nbody { \r\n    margin: 0; \r\n    font-size: 1em;\r\n   /* -webkit-font-smoothing: antialiased */\r\n}\r\n/* =====================================\r\n12 COLUMN GRID\r\n===================================== */\r\n\r\n/* ================================\r\nDesktop\r\n================================ */\r\n\r\n/* the wraping container */\r\n.container {\r\n    width: 92%;\r\n    min-width: 980px;\r\n    max-width: 1260px\r\n}\r\n/* align the site */\r\n.leftaligned {\r\n    margin: 0 auto 0  0\r\n}\r\n.rightaligned {\r\n    margin: 0 0 0 auto\r\n}\r\n.centered {\r\n    margin: 0 auto\r\n}\r\n/* Global Grid layout */\r\n.grid_1,\r\n.grid_2,\r\n.grid_3,\r\n.grid_4,\r\n.grid_5,\r\n.grid_6,\r\n.grid_7,\r\n.grid_8,\r\n.grid_9,\r\n.grid_10,\r\n.grid_11,\r\n.grid_12 {\r\n	display:inline;\r\n	float: left;\r\n	position: relative;\r\n	margin-left: .96%;\r\n	margin-right: .96%   \r\n}\r\n\r\n/* alpha and omega classes remove margins, aplha = no margin left, omega = no margin right */\r\n.alpha { margin-left: 0 }\r\n.omega { margin-right: 0 }\r\n\r\n/* Grid sizes up to 12 columns */\r\n.container .grid_1 { width:6.333% }\r\n.container .grid_2 { width:14.667% }\r\n.container .grid_3 { width:23.0% }\r\n.container .grid_4 { width:31.333% }\r\n.container .grid_5 { width:39.667% }\r\n.container .grid_6 { width:48.0% }\r\n.container .grid_7 { width:56.333% }\r\n.container .grid_8 { width:64.667% }\r\n.container .grid_9 { width:73.0% }\r\n.container .grid_10 { width:81.333% }\r\n.container .grid_11 { width:89.667% }\r\n.container .grid_12 { width:98.0% }\r\n\r\n/* Prefix to add extra space left */\r\n.container .prefix_1 { padding-left:8.333% }\r\n.container .prefix_2 { padding-left:16.667% }\r\n.container .prefix_3 { padding-left:25.0% }\r\n.container .prefix_4 { padding-left:33.333% }\r\n.container .prefix_5 { padding-left:41.667% }\r\n.container .prefix_6 { padding-left:50.0% }\r\n.container .prefix_7 { padding-left:58.333% }\r\n.container .prefix_8 { padding-left:66.667% }\r\n.container .prefix_9 { padding-left:75.0% }\r\n.container .prefix_10 { padding-left:83.333% }\r\n.container .prefix_11 { padding-left:91.667% }\r\n\r\n/* Suffix to add extra space right */\r\n.container .suffix_1 { padding-right:8.333% }\r\n.container .suffix_2 { padding-right:16.667% }\r\n.container .suffix_3 { padding-right:25.0% }\r\n.container .suffix_4 { padding-right:33.333% }\r\n.container .suffix_5 { padding-right:41.667% }\r\n.container .suffix_6 { padding-right:50.0% }\r\n.container .suffix_7 { padding-right:58.333% }\r\n.container .suffix_8 { padding-right:66.667% }\r\n.container .suffix_9 { padding-right:75.0% }\r\n.container .suffix_10 { padding-right:83.333% }\r\n.container .suffix_11 { padding-right:91.667% }\r\n\r\n/* Push columns to right */\r\n.container .push_1 { left:8.333% }\r\n.container .push_2 { left:16.667% }\r\n.container .push_3 { left:25.0% }\r\n.container .push_4 { left:33.333% }\r\n.container .push_5 { left:41.667% }\r\n.container .push_6 { left:50.0% }\r\n.container .push_7 { left:58.333% }\r\n.container .push_8 { left:66.667% }\r\n.container .push_9 { left:75.0% }\r\n.container .push_10 { left:83.333% }\r\n.container .push_11 { left:91.667% }\r\n\r\n/* Pull columns to left */\r\n.container .pull_1 { left:-8.333% }\r\n.container .pull_2 { left:-16.667% }\r\n.container .pull_3 { left:-25.0% }\r\n.container .pull_4 { left:-33.333% }\r\n.container .pull_5 { left:-41.667% }\r\n.container .pull_6 { left:-50.0% }\r\n.container .pull_7 { left:-58.333% }\r\n.container .pull_8 { left:-66.667% }\r\n.container .pull_9 { left:-75.0% }\r\n.container .pull_10 { left:-83.333% }\r\n.container .pull_11 { left:-91.667% }\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 768px;\r\n        max-width: 1024px\r\n    } \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 320px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 300px;\r\n        max-width: 320px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;  \r\n        margin: 0 1%;\r\n        float: none\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) {\r\n    .container {\r\n        width: 92%;\r\n        min-width: 321px;\r\n        max-width: 767px\r\n    } \r\n    .container .grid_1, \r\n    .container .grid_2,\r\n    .container .grid_3,\r\n    .container .grid_4,\r\n    .container .grid_5,\r\n    .container .grid_6,\r\n    .container .grid_7,\r\n    .container .grid_8,\r\n    .container .grid_9,\r\n    .container .grid_10,\r\n    .container .grid_11,\r\n    .container .grid_12 { \r\n        width: 98%;\r\n        margin: 0 1%;\r\n        display: block;\r\n        float: none\r\n    }    \r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portrait & Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 300px) and (max-width: 767px) {\r\n    .container .prefix_1,\r\n    .container .prefix_2,\r\n    .container .prefix_3,\r\n    .container .prefix_4,\r\n    .container .prefix_5,\r\n    .container .prefix_6,\r\n    .container .prefix_7,\r\n    .container .prefix_8,\r\n    .container .prefix_9,\r\n    .container .prefix_10,\r\n    .container .prefix_11,\r\n    .container .suffix_1,\r\n    .container .suffix_2,\r\n    .container .suffix_3,\r\n    .container .suffix_4,\r\n    .container .suffix_5,\r\n    .container .suffix_6,\r\n    .container .suffix_7,\r\n    .container .suffix_8,\r\n    .container .suffix_9,\r\n    .container .suffix_10,\r\n    .container .suffix_11 { \r\n        padding-right: 0;\r\n        padding-left: 0\r\n    } \r\n    .container .push_1,\r\n    .container .push_2,\r\n    .container .push_3,\r\n    .container .push_4,\r\n    .container .push_5,\r\n    .container .push_6,\r\n    .container .push_7,\r\n    .container .push_8,\r\n    .container .push_9,\r\n    .container .push_10,\r\n    .container .push_11,\r\n    .container .pull_1,\r\n    .container .pull_2,\r\n    .container .pull_3,\r\n    .container .pull_4,\r\n    .container .pull_5,\r\n    .container .pull_6,\r\n    .container .pull_7,\r\n    .container .pull_8,\r\n    .container .pull_9,\r\n    .container .pull_10,\r\n    .container .pull_11 {\r\n        left: auto;\r\n        right: auto\r\n    }\r\n}\r\n\r\n/* =====================================\r\niPhone 4, iPad2, Retina stuff ?\r\n===================================== */\r\n@media only screen and (-webkit-min-device-pixel-ratio : 1.5), only screen and (min-device-pixel-ratio : 1.5) {\r\n\r\n/* if you buy me one i might test and add something here */\r\n\r\n}\r\n\r\n/* =====================================\r\nCLEARING FLOATS\r\n===================================== */\r\n.clear {\r\n	clear: both;\r\n	display: block;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0\r\n}\r\n\r\n.cf:before, \r\n.cf:after,\r\n.row:before,\r\n.row:after{ \r\n    content: ""; \r\n    display: table\r\n}\r\n.cf:after,\r\n.row:after{ \r\n    clear: both\r\n}\r\n.cf,\r\n.row { \r\n    *zoom: 1\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:15:51', '2012-05-06 18:49:29'),
	(51, 'Simplex: Layout', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n[[* APPEARANCE *]]\r\n[[* \r\nBy adding #boxed id to body tag you can easily change appearance of the site.\r\nThis would add a background image to body and content would be wrapped in a box.\r\nBy removing that id the background is removed and site is presented in white.\r\n\r\nHow: Go to Template -> Simplex and find <body>\r\nNow simply edit as following <body id=\'boxed\'>\r\n\r\nYou can as well reposition your site by changing class on wrapping div.\r\nFind in Simplex Template following: \r\n\r\n<div class=\'container centered\' id=\'wrapper\'>\r\n\r\nNow change "centered" to "left" or "right" and page will be left or right aligned.\r\n*]]\r\n\r\n[[* assign the images path to a variable *]]\r\n[[capture assign=\'path\']][[uploads_url]]/simplex/images[[/capture]]\r\n\r\n[[* COLORS *]]\r\n\r\n[[assign var=\'boxed_bg\' value="#d1d1d1 url(`$path`/boxed-bg.gif)"]]\r\n\r\n[[assign var=\'light_grey\' value=\'#f1f1f1\']]\r\n[[assign var=\'grey\' value=\'#e9e9e9\']]\r\n[[assign var=\'dark_grey\' value=\'#555\']]\r\n[[assign var=\'white\' value=\'#fff\']]\r\n[[assign var=\'orange\' value=\'#f39c2c\']]\r\n[[assign var=\'dark_orange\' value=\'#e6870e\']]\r\n[[assign var=\'yellow\' value=\'#fdbd34\']]\r\n\r\n\r\n/* =====================================\r\nBASIC STYLES\r\n===================================== */\r\nbody {\r\n    background: [[$white]];\r\n    font-family: sans-serif; /* sans-serif falls back to default OS and Browser font, usually Arial or Helvetica and so on */\r\n    font-size: 12px;\r\n    color: [[$dark_grey]];\r\n    line-height: 1.3\r\n}\r\n/* you can change appearance of the page by adding or removing #boxed id to body tag. */\r\nbody#boxed {\r\n    background: [[$boxed_bg]] repeat\r\n}\r\n/* add some space inside the boxed container */\r\n#boxed .container {\r\n    padding: 0 1%\r\n}\r\na img {\r\n    border: none\r\n}\r\n/* you can use these classes to align images to left or right */\r\n.right {\r\n    float: right\r\n}\r\n.left {\r\n    float:left\r\n}\r\n/* if image needs some space add this class to img tag\r\n * so at the end a left floating image would be <img src=\'some.jpg\' class=\'left spacing\' alt=\'foo\' />\r\n */\r\n.spacing {\r\n    margin: 10px\r\n}\r\n.spacing.left {\r\n    margin: 10px 10px 10px 0\r\n}\r\n.spacing.right {\r\n    margin: 10px 0 10px 10px\r\n}\r\n/* or add a 2 px border to image or something, change as you need it */\r\n.border {\r\n    border: 2px solid [[$grey]]\r\n}\r\n/* some styling for code chunks */\r\ncode, samp, kbd {\r\n    font-family: Consolas, \'Andale Mono WT\', \'Andale Mono\', \'Lucida Console\', \'Lucida Sans Typewriter\', monospace;\r\n    color: [[$dark_grey]]\r\n}\r\npre code {\r\n    line-height: 1.4;\r\n    font-size: 11px\r\n}\r\npre {\r\n    padding: 10px;\r\n    margin: 10px 0;\r\n    overflow: auto;\r\n    width: 93%;\r\n    background: [[$light_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px\r\n}\r\n/* target IE7 and IE6 */\r\n*:first-child+html pre {\r\n    padding-bottom: 20px;\r\n    overflow-y: hidden;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n* html pre {\r\n    padding-bottom: 20px;\r\n    overflow: visible;\r\n    overflow-x: auto\r\n}\r\n/* horizontal ruler */\r\nhr { \r\n    border: solid [[$grey]]; \r\n    border-width: 1px 0 0 0; \r\n    clear: both; \r\n    margin: 10px 0 30px 0; \r\n    height: 0\r\n}\r\n/* =====================================\r\nCOMMON TYPOGRAPHY\r\n===================================== */\r\n\r\n/* link default styles */\r\na { \r\n    color: [[$orange]];\r\n}\r\na:visited {  \r\n    color: [[$dark_orange]] \r\n}\r\na:hover { \r\n    color: [[$dark_grey]];\r\n    transition: transform 0.6s ease-out;\r\n    -webkit-transition: color 0.6s ease-out;\r\n    -moz-transition: color 0.6s ease-out;\r\n    -o-transition: color 0.6s ease-out;     \r\n    text-decoration: underline\r\n}\r\na:focus { \r\n    outline: thin dotted\r\n}\r\na:hover, a:active { \r\n    outline: 0\r\n}\r\n/* add icon to links with class external */\r\na.external span {\r\n    display: inline-block;\r\n    width: 9px;\r\n    height: 9px;\r\n    text-indent: -999em;\r\n    margin: 0 3px;\r\n    /* using sprite image, but left as reference to single image \r\n    background: transparent url([[$path]]/external-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -130px;\r\n}\r\na.external:hover span {\r\n    background-position: -10px -139px\r\n}\r\n/* default heading styles */\r\nh1,\r\nh2,\r\nh3 {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n}\r\nh1 {\r\n    color: [[$orange]];\r\n    margin: 10px 0;\r\n    font-size: 28px;\r\n    text-transform: uppercase;\r\n}\r\nh2 {\r\n    color: [[$dark_grey]];\r\n    font-size: 22px\r\n}\r\nh3 {\r\n    color: [[$dark_grey]];\r\n    font-weight: 300;\r\n    font-size: 18px\r\n}\r\n/* blockquotes and cites */\r\nblockquote, \r\nblockquote p { \r\n    font-size: 14px; \r\n    line-height: 1.5; \r\n    color: [[$dark_grey]]; \r\n    font-style: italic;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\nblockquote { \r\n    margin: 0 0 20px 0; \r\n    padding: 9px 10px 10px 19px; \r\n    border-left: 5px solid [[$light_grey]]\r\n}\r\nblockquote cite { \r\n    display: block; \r\n    font-size: 12px; \r\n    color: [[$dark_grey]] \r\n}\r\nblockquote cite:before { \r\n    content: "\\2014 \\0020"; \r\n}\r\nblockquote cite a, \r\nblockquote cite a:visited, \r\nblockquote cite a:visited {\r\n    font-family: Georgia, Times New Roman, serif;    \r\n}\r\n\r\n/* =====================================\r\nLAYOUT\r\n===================================== */\r\n/* wrapping the page in a box */\r\n#wrapper {\r\n    margin-top: 10px;\r\n    border-top: 5px solid [[$orange]]\r\n}\r\n/* you can switch appearance of the page by adding or removing id #boxed to body tag */\r\n#boxed #wrapper {\r\n    background: [[$white]];\r\n    box-shadow: 2px 2px 8px [[$dark_grey]]\r\n}\r\n   \r\n/* ------ HEADER SECTION ------ */\r\n/* if you need height or something for header part add style here */\r\n.header {\r\n \r\n}\r\n/* the logo */\r\n.logo {\r\n    margin-top: 12px;\r\n    position: relative\r\n}\r\n/* having some fun with palm, rotating with css3, will not work in IE */\r\n.logo .palm {\r\n    position: absolute;\r\n    top: 5px;\r\n    left: 45px;\r\n    /* using sprite image as background, left as reference to single image \r\n    background: url([[$path]]/palm-circle.png) no-repeat;\r\n    */\r\n    background: url([[$path]]/simplex-sprite.png) no-repeat -10px -10px;\r\n    display: block;\r\n    width: 48px;\r\n    height: 48px;\r\n    transition: transform 0.6s ease-out;    \r\n    -webkit-transition: -webkit-transform 0.6s ease-out;\r\n    -moz-transition: -moz-transform 0.6s ease-out;\r\n    -o-transition: -o-transform 0.6s ease-out;\r\n    -webkit-perspective: 1000;\r\n    -webkit-backface-visibility: hidden;     \r\n}\r\n/* css3 transform rotating palm on hover */\r\n.logo a:hover .palm {\r\n    transform: rotate(360deg);    \r\n    -webkit-transform: rotate(360deg);\r\n    -moz-transform: rotate(360deg);\r\n    -o-transform: rotate(360deg)   \r\n}\r\n.top .header {\r\n    border-bottom: 1px solid [[$light_grey]]\r\n}\r\n\r\n/* ------ NAVIGATION ------ */\r\n\r\n/* first level */\r\nnav.main-navigation {\r\n    z-index: 990;\r\n    height: 55px;\r\n    line-height: 37px;\r\n    margin-top: 20px;\r\n}\r\nnav.main-navigation > ul {\r\n    float:right;\r\n    padding: 0\r\n}\r\nnav.main-navigation > ul > li {\r\n    float: left;\r\n    padding: 0;\r\n    margin:0 12px;\r\n    position: relative\r\n}\r\nnav.main-navigation > ul > li:first-child,\r\nnav.main-navigation > ul > li.first {\r\n    margin-left: 0\r\n}\r\nnav.main-navigation > ul > li:last-child,\r\nnav.main-navigation > ul > li.last {\r\n    margin-right: 0\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader span {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    cursor: pointer;\r\n    text-transform: uppercase\r\n}\r\n/* Second Level */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    position: absolute;\r\n    display: block;\r\n    height: 0px;\r\n    width: 200px;  \r\n    padding: 10px;\r\n    background: [[$white]];\r\n    background: rgba(255,255,255,.95);    \r\n    box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -webkit-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -moz-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    -o-box-shadow: 1px 1px 8px [[$dark_grey]];\r\n    border-radius: 6px;\r\n    -webkit-border-radius: 6px;\r\n    -moz-border-radius: 6px;\r\n    -o-border-radius: 6px;\r\n    border: 1px solid [[$grey]] \r\n}\r\nnav.main-navigation > ul > li:hover > ul {    \r\n    height: auto;\r\n    z-index: 9999;\r\n    top: 37px;\r\n    right: 0;\r\n    left: auto;\r\n    display: block\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    line-height: 1;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul { \r\n    height: auto;\r\n    top: 0;\r\n    right: auto;\r\n    left: -210px;\r\n    z-index: 999;    \r\n    display: block\r\n}\r\n/* navigation text color */\r\nnav.main-navigation ul li li a,\r\nnav.main-navigation ul li li.sectionheader span {\r\n    padding: 6px 12px;\r\n    font-family: sans-serif;\r\n    text-transform: none;\r\n    font-weight: normal;\r\n    font-size: 12px;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    display: block\r\n}\r\nnav.main-navigation a:hover,\r\nnav.main-navigation a.current,\r\nnav.main-navigation li.sectionheader span:hover,\r\nnav.main-navigation li.sectionheader span.current,\r\nnav.main-navigation li.sectionheader span.parent,\r\nnav.main-navigation ul ul li a:hover,\r\nnav.main-navigation ul ul li a.current {\r\n    color: [[$orange]]\r\n}\r\n/* bottom part of header*/\r\n.header-bottom {\r\n    height: 55px;\r\n    line-height: 55px\r\n}\r\n/* catchphrase */\r\n.phrase span {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    text-transform: uppercase;\r\n    color: #ddd;\r\n    font-size: 16px;\r\n    font-weight: 700\r\n}\r\n/* search */\r\n.search {\r\n    text-align: right;\r\n}\r\n/* webkit browser add icons to input of type search, we dont want it here now */\r\ninput.search-input::-webkit-search-decoration,\r\ninput.search-input::-webkit-search-results-button,\r\ninput.search-input::-webkit-search-results-decoration {\r\n    -webkit-appearance:none\r\n}\r\n/* styling the search input field */\r\ninput.search-input {\r\n    border: 1px solid [[$light_grey]];  \r\n    height: 17px;\r\n    line-height: 17px;\r\n    outline: 0;\r\n    margin: 13px 0 0 0;\r\n    width: 165px;\r\n    padding: 5px 0 3px 35px;\r\n    font-size: 11px;\r\n    color: [[$dark_grey]];\r\n    transition: all .35s ease-in-out;\r\n    -webkit-transition: all .35s ease-in-out;\r\n    -moz-transition: all .35s ease-in-out;\r\n    -o-transition: all .35s ease-in-out; \r\n    /* using sprite image, left as reference to single image \r\n    background: [[$white]] url([[$path]]/search-icon.png) 10px 50% no-repeat\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) 0px -434px no-repeat\r\n}\r\ninput.search-input:focus {\r\n    border: 1px solid [[$orange]];\r\n    width: 240px;      \r\n    box-shadow: 0 0 3px [[$orange]];    \r\n    -webkit-box-shadow: 0 0 3px [[$orange]];\r\n    -moz-box-shadow: 0 0 3px [[$orange]];\r\n    -o-box-shadow: 0 0 3px [[$orange]];\r\n}\r\n   \r\n/* ------ BANNER AREA ------ */\r\n.banner {\r\n    overflow: hidden;\r\n    background: [[$orange]]\r\n}\r\n/* left text in orange box */\r\n.banner-text {\r\n    padding:0 0 0 1%;\r\n    position: relative;\r\n    float: left;\r\n    max-height: 275px;\r\n    width: 30.333%\r\n}\r\n.banner-text ul {\r\n    padding: 32px 0;\r\n}\r\n.banner-text li {\r\n    list-style: none;\r\n    display: block;\r\n    color: [[$dark_orange]];\r\n    text-shadow: 0px 1px 0 [[$yellow]], 0 -1px 0 rgba(0,0,0,0.3);\r\n    font-size: 36px;\r\n    font-weight: 700;\r\n    transition: all 2s linear;\r\n    -webkit-transition: all 1.5s linear;\r\n    -moz-transition: all 1.5s linear;\r\n    -o-transition: all 1.5s linear;\r\n    display: block\r\n}\r\n/* animating unordered list text in banner */\r\n.banner-text li:hover {\r\n    text-indent: 120px;\r\n    opacity: 0;\r\n    transform: scale(2) rotate(35deg);\r\n    -webkit-transform: scale(2) rotate(35deg);\r\n    -moz-transform: scale(2) rotate(35deg);\r\n    -o-transform: scale(2) rotate(35deg)\r\n}\r\n/* images on the right */\r\n.banner-image {\r\n    float:right;\r\n    display: block;\r\n    position: relative;\r\n    width: 67.667%;\r\n    overflow: hidden;\r\n    background: [[$grey]]\r\n}\r\n.banner-image div {\r\n    position: absolute;\r\n    z-index: 0;\r\n    width: 100%;\r\n    min-height: 100px;\r\n    overflow: hidden;\r\n    display: block;\r\n    top: 0;\r\n    left: 0\r\n}\r\n.banner-image img {\r\n    display: block;\r\n	height: auto;\r\n    width: 100%;\r\n    bottom: 0;\r\n    max-width: 100%;\r\n}\r\n/* ------ CONTENT AREA ------ */\r\n.content-wrapper {\r\n    padding-top: 20px\r\n}\r\n.content-top {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    font-style: italic;\r\n    line-height: 20px\r\n}\r\n\r\n/* breadcrumbs */\r\n.breadcrumb {\r\n    display: inline-block;\r\n    background: [[$white]];\r\n    width: auto;\r\n    padding-right: 6px\r\n}\r\n.breadcrumb a {\r\n    color: [[$dark_grey]];\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]]\r\n}\r\n\r\n/* print button */\r\na.printbutton {\r\n    display: block;\r\n    padding-left: 6px;\r\n    width: 16px;\r\n    height: 16px;\r\n    float:right;\r\n    text-indent: -999em;\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px -16px;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -94px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out     \r\n}\r\na.printbutton:hover {\r\n    /* using sprite image, left as reference to single image\r\n    background: [[$white]] url([[$path]]/print-icon.png) no-repeat 6px 0;\r\n    */\r\n    background: [[$white]] url([[$path]]/simplex-sprite.png) no-repeat -4px -78px;\r\n}\r\n\r\n/* news module summary -> content */\r\n.content .news-summary  span.heading {\r\n    display: none\r\n}\r\n.content .news-article {\r\n    margin-bottom: 15px;\r\n    padding-bottom: 15px;\r\n    border-bottom: 1px dotted [[$grey]]\r\n}\r\n.content .news-summary ul.category-list {\r\n    margin: 15px 0\r\n}\r\n.content .news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    border-radius: 4px\r\n}\r\n.news-summary ul.category-list li span {\r\n    opacity: .4\r\n}\r\n/* news module summary -> sitewide (content + sidebar) */\r\n/* article heading */\r\n.news-article h2 {\r\n    margin: 0 0 15px 0\r\n}\r\n.news-article h2 a {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    font-size: 16px;\r\n    text-decoration: none;\r\n    font-weight: 700\r\n}\r\n/* date circle, well square for IE  */\r\n.news-article .date {\r\n    background: [[$orange]];\r\n    color: [[$white]];\r\n    display: block;\r\n    float:left;\r\n    width: 40px;\r\n    padding: 6px;\r\n    height: 40px;\r\n    border-radius: 26px;\r\n    text-align: center;\r\n    font-family: Georgia, Times New Roman, serif\r\n}\r\n.news-article .day {\r\n    font-size: 20px;\r\n    line-height: 1;\r\n    padding-bottom: 2px;\r\n    font-style: italic;\r\n    display: block\r\n}\r\n.news-article.month {\r\n    font-size: 11px;\r\n    display: block\r\n}\r\n/* author and category */\r\n.news-article .author,\r\n.news-article .category {\r\n    font-family: Georgia, Times New Roman, serif;\r\n    display: block;\r\n    padding-left: 60px;\r\n    font-size: 11px;\r\n    font-style: italic\r\n}\r\n/* category list on top of summary */\r\n.news-summary ul.category-list {\r\n    margin:15px 0 0 0;\r\n    padding:0;\r\n    list-style: none\r\n}\r\n.news-summary ul.category-list li {\r\n    float:left;\r\n    display: block;\r\n    width: auto;\r\n    margin-right: 5px\r\n}\r\n.news-summary ul.category-list li a,\r\n.news-summary ul.category-list li span {\r\n    display: block;\r\n    color: [[$dark_grey]];\r\n    padding: 4px 8px;\r\n    background: [[$light_grey]];\r\n    border-radius: 4px 4px 0 0;\r\n    text-decoration: none;\r\n    font-size: 11px;\r\n    text-transform: uppercase\r\n}\r\n.news-summary ul.category-list li a:hover {\r\n    color: [[$orange]]\r\n}\r\n.news-summary .paginate {\r\n    font: italic 11px/1.2 Georgia, Times New Roman, serif;\r\n    \r\n}\r\n.news-summary .paginate a {\r\n    padding: 0 3px;\r\n}\r\n.news-meta {\r\n    background: [[$light_grey]];\r\n    padding: 10px;\r\n    margin: 10px 0\r\n}\r\n/* more link */\r\n.more,\r\n.more a,\r\n/* back link */\r\n.back,\r\n.back a,\r\n/* previous, next links */\r\n.previous a,\r\n.next a,\r\n.previous,\r\n.next {\r\n    font:  italic 12px/1.3 Georgia, Times New Roman, serif;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none\r\n} \r\n/* hover behavior of more, next, previous links */\r\n.more a:hover,\r\n.back a:hover,\r\n.previous a:hover,\r\n.next a:hover {\r\n    text-decoration: underline\r\n}\r\n.previous,\r\n.next {\r\n    padding: 6px 0;\r\n}\r\n/* align next link to right */\r\n.previous {\r\n    float:left;\r\n}\r\n.next {\r\n    float: right\r\n}\r\n\r\n/* ------ SIDEBAR AREA ------ */\r\n\r\n/* news module summary -> sidebar */\r\n.sidebar .news-summary  span.heading {\r\n    background: url([[$path]]/dots.gif) repeat-x 0 50%;\r\n    color: [[$dark_grey]];\r\n    font:  normal 16px/20px Georgia, Times New Roman, serif;\r\n    margin: 0 0 15px 0;\r\n    display: block\r\n}\r\n.sidebar .news-summary .heading span {\r\n    display: inline-block;\r\n    width: auto;\r\n    background: [[$white]];\r\n    padding-right: 6px\r\n}\r\n.sidebar .news-article {\r\n    padding: 15px;\r\n    position: relative;\r\n    background: [[$light_grey]];\r\n    margin-bottom: 20px;\r\n    border-radius: 0 0 6px 0\r\n}\r\n/* creating a bubble box with css3 */\r\n.sidebar .news-article:before {\r\n    content:\'\';\r\n    position: absolute;\r\n    bottom: -15px;\r\n    right: 25px;\r\n    width: 10px;\r\n    height: 35px;\r\n    -webkit-transform: rotate(55deg) skewY(55deg);\r\n    -moz-transform: rotate(55deg) skewY(55deg);\r\n    -o-transform: rotate(55deg) skewY(55deg);\r\n    -ms-transform: rotate(55deg) skewY(55deg);\r\n    transform: rotate(55deg) skewY(55deg);\r\n    background: [[$light_grey]]\r\n}\r\n\r\n/* ------ FOOTER AREA ------ */\r\n/* footer wrapper */\r\n.footer {\r\n    position: relative;\r\n    background: transparent url([[$path]]/footer-background.png) repeat-x top;\r\n    border-bottom: 1px dotted [[$grey]];\r\n    margin: 25px 0 10px 0;\r\n    padding: 20px 0\r\n}\r\n/* copyright text */\r\n.copyright {\r\n    padding-top: 15px\r\n}\r\n.copyright p,\r\n.copyright a {\r\n    color: [[$dark_grey]];\r\n    font-size: 11px\r\n}\r\n/* social icons */\r\n.footer ul.social {\r\n    padding: 0;\r\n    margin: 0\r\n}\r\n.footer .social li {\r\n    float:left;\r\n    margin: 0;\r\n    padding: 0;\r\n    list-style: none;\r\n    margin-right: 6px\r\n}\r\n.footer .social li a {\r\n    display: block;\r\n    width: 24px;\r\n    height: 24px;\r\n    transition: all 0.2s ease-out;    \r\n    -webkit-transition: all 0.2s ease-out;\r\n    -moz-transition: all 0.2s ease-out;\r\n    -o-transition: all 0.2s ease-out;     \r\n    text-indent: -999em\r\n}\r\n.footer .social li.facebook a { \r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 -24px\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -260px\r\n}\r\n.footer .social li.facebook a:hover {\r\n    /* using sprite image, left as reference to single image \r\n    background: transparent url([[$path]]/facebook-icon.png) no-repeat 0 0\r\n    */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -236px\r\n}\r\n.footer .social li.twitter a { \r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -192px\r\n}\r\n.footer .social li.twitter a:hover {\r\n    /* background: transparent url([[$path]]/twitter-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -168px\r\n}\r\n.footer .social li.linkedin a { \r\n    /* background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -328px\r\n}\r\n.footer .social li.linkedin a:hover {\r\n   /*  background: transparent url([[$path]]/linkedin-icon.png) no-repeat 0 0 */\r\n   background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -304px\r\n}\r\n.footer .social li.youtube a { \r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 -24px */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -396px\r\n}\r\n.footer .social li.youtube a:hover {\r\n    /* background: transparent url([[$path]]/youtube-icon.png) no-repeat 0 0 */\r\n    background: transparent url([[$path]]/simplex-sprite.png) no-repeat -10px -372px\r\n}\r\n/* back to top anchor */\r\n.back-top a {\r\n    display: inline-block;\r\n    width: auto;\r\n    padding: 8px;\r\n    border-left: 5px solid [[$white]];\r\n    border-right: 5px solid [[$white]];\r\n    font:  normal italic 11px/20px Georgia, Times New Roman, serif;\r\n    text-decoration: none;\r\n    color: [[$dark_grey]];\r\n    background: [[$light_grey]];\r\n    color: [[$dark_grey]];\r\n    border-radius: 10px 0 10px 0;\r\n    -webkit-border-radius: 10px 0 10px 0;\r\n    -moz-border-radius: 10px 0 10px 0;\r\n    -o-border-radius: 10px 0 10px 0;\r\n    position: absolute;\r\n    top: -14px;\r\n    left: 48%\r\n}\r\n/* Footer navigation */\r\n.footer-navigation {\r\n    padding-top: 15px\r\n}\r\n.footer-navigation > ul > li {\r\n    float:left;\r\n    width: 32.333%\r\n}\r\n.footer-navigation > ul > li > a,\r\n.footer-navigation > ul > li span.sectionheader {\r\n    font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n    text-transform: uppercase;\r\n    color: [[$dark_grey]];\r\n    text-decoration: none;\r\n    display: block\r\n}\r\n/* second level */\r\n.footer-navigation > ul ul {\r\n    margin-top: 10px\r\n}\r\n.footer-navigation > ul > li li {\r\n    float: none;\r\n    width: 100%;\r\n    display: block\r\n}\r\n.footer-navigation > ul > li li a,\r\n.footer-navigation > ul > li.sectionheader li a,\r\n.footer-navigation > ul > li li span.sectionheader  {\r\n    text-decoration: none;\r\n    font-family: sans-serif;\r\n    font-weight: normal;\r\n    text-transform: none; \r\n    display: block;\r\n    padding: 2px 0;\r\n    color: [[$dark_grey]]\r\n}\r\n.footer-navigation > ul > li li a:hover {\r\n    color: [[$orange]]\r\n}\r\n\r\n[[/strip]]', '', 'screen', '2012-04-24 13:16:21', '2013-04-17 14:33:49'),
	(52, 'Simplex: Print', '/* reset body background and color, just in case */\r\nbody {\r\n    background: #fff;\r\n    color: #000;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    font-size: 12pt\r\n}\r\n/* any element with class noprint or listed below should not be printed */\r\n.noprint,\r\n.visuallyhidden {\r\n    display: none\r\n}\r\n/* display image as block */\r\nimg {\r\n    display: block;\r\n    float: none\r\n}\r\n/* remove width and floats from elements */\r\n#wrapper,\r\n.container,\r\n.container .grid_1, \r\n.container .grid_2,\r\n.container .grid_3,\r\n.container .grid_4,\r\n.container .grid_5,\r\n.container .grid_6,\r\n.container .grid_7,\r\n.container .grid_8,\r\n.container .grid_9,\r\n.container .grid_10,\r\n.container .grid_11,\r\n.container .grid_12 {\r\n    width: 100%;\r\n    margin: 0;\r\n    float: none    \r\n}\r\n/* links arent clickable on paper, lets display url */\r\na:link:after {\r\n    content: " (" attr(href) ") ";\r\n}\r\na {\r\n    text-decoration: underline\r\n}\r\n', 'print', '', '2012-04-26 07:47:10', '2012-05-06 17:10:32'),
	(53, 'Simplex: Mobile', '[[strip]][[* using strip in stylesheet to remove unneeded empty space, will reduce the file size *]]\r\n\r\n/* Default styles for screens up to 1024px width */\r\n/* realign logo for mobile devices */\r\n.logo.grid_4 {\r\n    float: none;\r\n    display: block;\r\n    text-align: center;\r\n    margin:10px 0;\r\n    padding:0;\r\n    width: 100%\r\n}\r\n/* hide rotating palm */\r\n.logo .palm {\r\n    display: none\r\n}\r\n/* realign navigation for mobile devices */\r\nnav.main-navigation {\r\n    float: none;\r\n    margin: 0;\r\n    height: auto;\r\n    line-height: 1\r\n}\r\nnav.main-navigation > ul {\r\n    float:none;\r\n    position: relative;\r\n    padding: 0\r\n}\r\nnav.main-navigation ul li {\r\n    background: #f1f1f1;\r\n    display: block;\r\n    position: relative;\r\n    border-radius: 4px 4px 0 0;\r\n    padding: 0 10px;\r\n    margin: 0 1px\r\n}\r\nnav.main-navigation > ul > li > a,\r\nnav.main-navigation > ul > li.sectionheader > span {\r\n    font-size: 12px;\r\n    line-height: 28px;\r\n}\r\n/* second level navigation */\r\nnav.main-navigation ul li ul {\r\n    top: -999em;\r\n    left: -999em;\r\n    width: 200px;\r\n    height: auto;\r\n    display: block;\r\n    position: absolute;\r\n}\r\nnav.main-navigation > ul > li:hover > ul,\r\nnav.main-navigation > ul > li.active > ul {\r\n    top: 28px;\r\n    left: 0;\r\n    z-index: 999;\r\n    right: auto\r\n}\r\nnav.main-navigation ul ul li {\r\n    position: relative;\r\n    background: #fff;\r\n    line-height: 1;\r\n    height: auto;\r\n    margin: 0;\r\n    padding: 0\r\n} \r\nnav.main-navigation > ul > li li a {\r\n    line-height: 1\r\n}\r\n/* third level */\r\nnav.main-navigation > ul > li > ul > li:hover > ul {\r\n    left: 0;\r\n    top: 28px\r\n}\r\n/* close button (appended to dropdown with jquery) */\r\n.close-button {\r\n    display: block;\r\n    background: url([[uploads_url]]/simplex/images/close_button.png) no-repeat;\r\n    text-indent: -999em;\r\n    position: absolute;\r\n    bottom: -5px;\r\n    right: -5px;\r\n    width: 24px;\r\n    height: 24px\r\n}\r\n/* display phrase text and search box in full width */\r\n.header-bottom {\r\n    height: auto;\r\n    line-height: 1.2;\r\n    padding: 10px 0\r\n}\r\n.search input {\r\n    text-align: center;\r\n    padding: 5px 0 3px 0;\r\n    display: block\r\n}\r\n/* phrase */\r\n.phrase .grid_7 {\r\n    margin: 0;\r\n    width: 100%;\r\n    float: none;\r\n    display: block\r\n}\r\n/* hide banner text and size image area */\r\n.banner-text {\r\n    display: none;\r\n    width: 0\r\n}\r\n.banner-image {\r\n    display: block;\r\n    width: 100%;\r\n    float:none;\r\n    margin: 0;\r\n    padding: 0\r\n}\r\n/* hide print button */\r\na.printbutton {\r\n    display: none\r\n}\r\n\r\n/* =====================================\r\nTablet (Portrait) \r\n===================================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation : portrait) {\r\n    /* realign navigation for mobile devices */\r\n    nav.main-navigation {\r\n        float: none;\r\n        margin: 0;\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 14px\r\n    } \r\n    .header-bottom {\r\n        height: auto;\r\n        line-height: 1.2;\r\n        padding: 10px 0\r\n    }\r\n    .search input {\r\n        width: 60%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Landscape) \r\n===================================== */\r\n@media only screen and (min-width: 321px) and (max-width: 767px) { \r\n    nav.main-navigation ul li {\r\n        position: static\r\n    }    \r\n    nav.main-navigation > ul > li > a.\r\n    nav.main-navigation > ul > li.sectionheader > span {\r\n        font-size: 10px\r\n    }\r\n}\r\n\r\n/* =====================================\r\nSmartphones (Portait) \r\n===================================== */\r\n@media only screen and (max-width: 480px) {\r\n    .logo img {\r\n        margin: 20px auto\r\n    }\r\n    /* realing navigation */\r\n    nav.main-navigation {\r\n        line-height: 1\r\n    }\r\n    nav.main-navigation > ul > li:hover > ul,\r\n    nav.main-navigation > ul > li.active > ul {\r\n        top: 58px;\r\n        left: 2%;\r\n        right: auto\r\n    }    \r\n    nav.main-navigation ul li {\r\n        float: none;\r\n        position: relative;\r\n        background: none;\r\n        border-bottom: 1px dotted #f1f1f1;\r\n        border-radius: 0;\r\n        padding: 8px 0;\r\n        margin: 0\r\n    }\r\n    nav.main-navigation > ul > li > a,\r\n    nav.main-navigation > ul > li.sectionheader span {\r\n        font-size: 20px\r\n    }\r\n    /* search box */\r\n    .grid_5.search {\r\n        float:none;\r\n        margin: 0 auto;\r\n        width: 100%;\r\n    }    \r\n    .search input {\r\n        width: 80%;\r\n        text-align: center;\r\n        padding: 5px 0 3px 0;\r\n        display: block\r\n    }     \r\n    /* hiding footer navigation or it is squeezed to much */\r\n    .footer-navigation {\r\n        display: none\r\n    }\r\n    .footer .copyright {\r\n        text-align: center\r\n    }\r\n}\r\n\r\n[[/strip]]', '', 'screen and (min-width: 300px) and (max-width: 1024px)', '2012-04-30 12:27:44', '2013-04-17 14:36:32');
/*!40000 ALTER TABLE `cms_jetson_css` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_css_assoc
DROP TABLE IF EXISTS `cms_jetson_css_assoc`;
CREATE TABLE IF NOT EXISTS `cms_jetson_css_assoc` (
  `assoc_to_id` int(11) DEFAULT NULL,
  `assoc_css_id` int(11) DEFAULT NULL,
  `assoc_type` varchar(80) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `assoc_order` int(11) DEFAULT NULL,
  KEY `cms_jetson_index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `cms_jetson_index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_css_assoc: 45 rows
/*!40000 ALTER TABLE `cms_jetson_css_assoc` DISABLE KEYS */;
INSERT INTO `cms_jetson_css_assoc` (`assoc_to_id`, `assoc_css_id`, `assoc_type`, `create_date`, `modified_date`, `assoc_order`) VALUES
	(17, 41, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(16, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(18, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(18, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(18, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
	(18, 38, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
	(18, 42, 'template', '2009-04-30 17:44:09', '2009-04-30 17:44:09', 3),
	(18, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(16, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(16, 34, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
	(16, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
	(16, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(15, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
	(15, 33, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
	(15, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(15, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
	(15, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(17, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
	(17, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
	(17, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
	(17, 42, 'template', '2009-04-30 01:10:05', '2009-04-30 01:10:05', 2),
	(17, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
	(20, 39, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 1),
	(20, 31, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 4),
	(20, 43, 'template', '2009-05-01 04:33:01', '2009-05-01 04:33:01', 2),
	(20, 35, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 3),
	(20, 30, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 5),
	(21, 31, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 3),
	(21, 45, 'template', '2009-05-02 00:20:26', '2009-05-02 00:20:26', 2),
	(21, 32, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 1),
	(21, 30, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 4),
	(21, 35, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 5),
	(15, 46, 'template', '2009-05-02 15:05:19', '2009-05-02 15:05:19', 6),
	(21, 46, 'template', '2009-05-02 15:05:22', '2009-05-02 15:05:22', 6),
	(16, 46, 'template', '2009-05-02 15:05:24', '2009-05-02 15:05:24', 6),
	(20, 46, 'template', '2009-05-02 15:05:27', '2009-05-02 15:05:27', 6),
	(17, 46, 'template', '2009-05-02 15:05:29', '2009-05-02 15:05:29', 7),
	(22, 48, 'template', '2009-05-06 14:31:08', '2009-05-06 14:31:08', 1),
	(18, 46, 'template', '2009-05-02 15:05:34', '2009-05-02 15:05:34', 7),
	(22, 47, 'template', '2009-05-06 14:31:14', '2009-05-06 14:31:14', 2),
	(22, 49, 'template', '2009-05-06 14:31:20', '2009-05-06 14:31:20', 3),
	(23, 50, 'template', '2012-04-24 13:16:37', '2012-04-24 13:16:37', 2),
	(23, 51, 'template', '2012-04-24 13:16:44', '2012-04-24 13:16:44', 3),
	(23, 52, 'template', '2012-04-26 07:47:34', '2012-04-26 07:47:34', 1),
	(23, 53, 'template', '2012-04-30 12:28:14', '2012-04-30 12:28:14', 4);
/*!40000 ALTER TABLE `cms_jetson_css_assoc` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_css_seq
DROP TABLE IF EXISTS `cms_jetson_css_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_css_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_css_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_css_seq` (`id`) VALUES
	(53);
/*!40000 ALTER TABLE `cms_jetson_css_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_events
DROP TABLE IF EXISTS `cms_jetson_events`;
CREATE TABLE IF NOT EXISTS `cms_jetson_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `cms_jetson_originator` (`originator`),
  KEY `cms_jetson_event_name` (`event_name`),
  KEY `cms_jetson_event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_events: 73 rows
/*!40000 ALTER TABLE `cms_jetson_events` DISABLE KEYS */;
INSERT INTO `cms_jetson_events` (`originator`, `event_name`, `event_id`) VALUES
	('Core', 'LoginPost', 1),
	('Core', 'LogoutPost', 2),
	('Core', 'AddUserPre', 3),
	('Core', 'AddUserPost', 4),
	('Core', 'EditUserPre', 5),
	('Core', 'EditUserPost', 6),
	('Core', 'DeleteUserPre', 7),
	('Core', 'DeleteUserPost', 8),
	('Core', 'AddGroupPre', 9),
	('Core', 'AddGroupPost', 10),
	('Core', 'EditGroupPre', 11),
	('Core', 'EditGroupPost', 12),
	('Core', 'DeleteGroupPre', 13),
	('Core', 'DeleteGroupPost', 14),
	('Core', 'AddStylesheetPre', 15),
	('Core', 'AddStylesheetPost', 16),
	('Core', 'EditStylesheetPre', 17),
	('Core', 'EditStylesheetPost', 18),
	('Core', 'DeleteStylesheetPre', 19),
	('Core', 'DeleteStylesheetPost', 20),
	('Core', 'AddTemplatePre', 21),
	('Core', 'AddTemplatePost', 22),
	('Core', 'EditTemplatePre', 23),
	('Core', 'EditTemplatePost', 24),
	('Core', 'DeleteTemplatePre', 25),
	('Core', 'DeleteTemplatePost', 26),
	('Core', 'TemplatePreCompile', 27),
	('Core', 'TemplatePostCompile', 28),
	('Core', 'AddGlobalContentPre', 29),
	('Core', 'AddGlobalContentPost', 30),
	('Core', 'EditGlobalContentPre', 31),
	('Core', 'EditGlobalContentPost', 32),
	('Core', 'DeleteGlobalContentPre', 33),
	('Core', 'DeleteGlobalContentPost', 34),
	('Core', 'GlobalContentPreCompile', 35),
	('Core', 'GlobalContentPostCompile', 36),
	('Core', 'ContentEditPre', 37),
	('Core', 'ContentEditPost', 38),
	('Core', 'ContentDeletePre', 39),
	('Core', 'ContentDeletePost', 40),
	('Core', 'AddUserDefinedTagPre', 41),
	('Core', 'AddUserDefinedTagPost', 42),
	('Core', 'EditUserDefinedTagPre', 43),
	('Core', 'EditUserDefinedTagPost', 44),
	('Core', 'DeleteUserDefinedTagPre', 45),
	('Core', 'DeleteUserDefinedTagPost', 46),
	('Core', 'ModuleInstalled', 47),
	('Core', 'ModuleUninstalled', 48),
	('Core', 'ModuleUpgraded', 49),
	('Core', 'ContentStylesheet', 50),
	('Core', 'ContentPreCompile', 51),
	('Core', 'ContentPostCompile', 52),
	('Core', 'ContentPostRender', 53),
	('Core', 'SmartyPreCompile', 54),
	('Core', 'SmartyPostCompile', 55),
	('Core', 'ChangeGroupAssignPre', 56),
	('Core', 'ChangeGroupAssignPost', 57),
	('Core', 'StylesheetPreCompile', 58),
	('Core', 'StylesheetPostCompile', 59),
	('Core', 'LoginFailed', 60),
	('Core', 'TemplatePreFetch', 61),
	('FileManager', 'OnFileUploaded', 62),
	('News', 'NewsArticleAdded', 63),
	('News', 'NewsArticleEdited', 64),
	('News', 'NewsArticleDeleted', 65),
	('News', 'NewsCategoryAdded', 66),
	('News', 'NewsCategoryEdited', 67),
	('News', 'NewsCategoryDeleted', 68),
	('Search', 'SearchInitiated', 69),
	('Search', 'SearchCompleted', 70),
	('Search', 'SearchItemAdded', 71),
	('Search', 'SearchItemDeleted', 72),
	('Search', 'SearchAllItemsDeleted', 73);
/*!40000 ALTER TABLE `cms_jetson_events` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_events_seq
DROP TABLE IF EXISTS `cms_jetson_events_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_events_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_events_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_events_seq` (`id`) VALUES
	(73);
/*!40000 ALTER TABLE `cms_jetson_events_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_event_handlers
DROP TABLE IF EXISTS `cms_jetson_event_handlers`;
CREATE TABLE IF NOT EXISTS `cms_jetson_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_event_handlers: 5 rows
/*!40000 ALTER TABLE `cms_jetson_event_handlers` DISABLE KEYS */;
INSERT INTO `cms_jetson_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES
	(38, NULL, 'MenuManager', 0, 1, 1),
	(40, NULL, 'MenuManager', 0, 1, 2),
	(38, NULL, 'Search', 0, 2, 3),
	(40, NULL, 'Search', 0, 2, 4),
	(48, NULL, 'Search', 0, 1, 5);
/*!40000 ALTER TABLE `cms_jetson_event_handlers` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_event_handler_seq
DROP TABLE IF EXISTS `cms_jetson_event_handler_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_event_handler_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_event_handler_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_event_handler_seq` (`id`) VALUES
	(5);
/*!40000 ALTER TABLE `cms_jetson_event_handler_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_groups
DROP TABLE IF EXISTS `cms_jetson_groups`;
CREATE TABLE IF NOT EXISTS `cms_jetson_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_groups: 3 rows
/*!40000 ALTER TABLE `cms_jetson_groups` DISABLE KEYS */;
INSERT INTO `cms_jetson_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES
	(1, 'Admin', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(2, 'Editor', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
	(3, 'Designer', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32');
/*!40000 ALTER TABLE `cms_jetson_groups` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_groups_seq
DROP TABLE IF EXISTS `cms_jetson_groups_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_groups_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_groups_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_groups_seq` (`id`) VALUES
	(3);
/*!40000 ALTER TABLE `cms_jetson_groups_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_group_perms
DROP TABLE IF EXISTS `cms_jetson_group_perms`;
CREATE TABLE IF NOT EXISTS `cms_jetson_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_perm_id`),
  KEY `cms_jetson_index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_group_perms: 22 rows
/*!40000 ALTER TABLE `cms_jetson_group_perms` DISABLE KEYS */;
INSERT INTO `cms_jetson_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES
	(203, 2, 50, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(202, 3, 31, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(201, 2, 31, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(200, 2, 20, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(199, 2, 35, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(198, 2, 6, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(197, 2, 49, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(196, 2, 48, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(195, 2, 44, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(194, 2, 52, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(193, 3, 4, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(192, 3, 25, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(191, 2, 1, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(190, 3, 30, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(204, 3, 26, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(205, 3, 22, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(206, 3, 11, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(207, 3, 32, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(208, 2, 13, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(209, 3, 27, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(210, 3, 24, '2014-04-17 15:06:07', '2014-04-17 15:06:07'),
	(211, 3, 16, '2014-04-17 15:06:07', '2014-04-17 15:06:07');
/*!40000 ALTER TABLE `cms_jetson_group_perms` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_group_perms_seq
DROP TABLE IF EXISTS `cms_jetson_group_perms_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_group_perms_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_group_perms_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_group_perms_seq` (`id`) VALUES
	(211);
/*!40000 ALTER TABLE `cms_jetson_group_perms_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_htmlblobs
DROP TABLE IF EXISTS `cms_jetson_htmlblobs`;
CREATE TABLE IF NOT EXISTS `cms_jetson_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) DEFAULT NULL,
  `html` text,
  `description` text,
  `use_wysiwyg` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`htmlblob_id`),
  KEY `cms_jetson_index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_htmlblobs: 1 rows
/*!40000 ALTER TABLE `cms_jetson_htmlblobs` DISABLE KEYS */;
INSERT INTO `cms_jetson_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `description`, `use_wysiwyg`, `owner`, `create_date`, `modified_date`) VALUES
	(1, 'footer', '<p>© Copyright {custom_copyright} - Jetson, Inc.</p>', '', 1, 1, '2006-07-25 21:22:32', '2014-04-10 01:36:15');
/*!40000 ALTER TABLE `cms_jetson_htmlblobs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_htmlblobs_seq
DROP TABLE IF EXISTS `cms_jetson_htmlblobs_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_htmlblobs_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_htmlblobs_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_htmlblobs_seq` (`id`) VALUES
	(1);
/*!40000 ALTER TABLE `cms_jetson_htmlblobs_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_modules
DROP TABLE IF EXISTS `cms_jetson_modules`;
CREATE TABLE IF NOT EXISTS `cms_jetson_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`module_name`),
  KEY `cms_jetson_index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_modules: 9 rows
/*!40000 ALTER TABLE `cms_jetson_modules` DISABLE KEYS */;
INSERT INTO `cms_jetson_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES
	('CMSMailer', 'installed', '5.2.2', 0, 1, 1, 0),
	('CMSPrinting', 'installed', '1.0.5', 0, 1, 0, 1),
	('FileManager', 'installed', '1.4.3', 0, 1, 1, 0),
	('MenuManager', 'installed', '1.8.6', 0, 1, 0, 0),
	('MicroTiny', 'installed', '1.2.5', 0, 1, 1, 1),
	('ModuleManager', 'installed', '1.5.5', 1, 1, 0, 1),
	('News', 'installed', '2.13', 0, 1, 1, 1),
	('Search', 'installed', '1.7.11', 0, 1, 1, 1),
	('ThemeManager', 'installed', '1.1.8', 1, 1, 0, 1);
/*!40000 ALTER TABLE `cms_jetson_modules` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_deps
DROP TABLE IF EXISTS `cms_jetson_module_deps`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_deps: 1 rows
/*!40000 ALTER TABLE `cms_jetson_module_deps` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES
	('FileManager', 'MicroTiny', '1.4.2', '2014-04-01 23:53:03', '2014-04-01 23:53:03');
/*!40000 ALTER TABLE `cms_jetson_module_deps` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_news
DROP TABLE IF EXISTS `cms_jetson_module_news`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `cms_jetson_news_postdate` (`news_date`),
  KEY `cms_jetson_news_daterange` (`start_time`,`end_time`),
  KEY `cms_jetson_news_author` (`author_id`),
  KEY `cms_jetson_news_hier` (`news_category_id`),
  KEY `cms_jetson_news_url` (`news_url`),
  KEY `cms_jetson_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_news: 1 rows
/*!40000 ALTER TABLE `cms_jetson_module_news` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`) VALUES
	(1, 1, 'News Module Installed', 'The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.', '2014-04-01 23:53:03', NULL, NULL, NULL, 'published', NULL, '2014-04-01 23:53:03', '2014-04-01 23:53:03', 1, NULL, NULL);
/*!40000 ALTER TABLE `cms_jetson_module_news` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_news_categories
DROP TABLE IF EXISTS `cms_jetson_module_news_categories`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `long_name` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_news_categories: 1 rows
/*!40000 ALTER TABLE `cms_jetson_module_news_categories` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES
	(1, 'General', -1, '00001', 'General', '2014-04-01 23:53:03', '2014-04-01 23:53:03');
/*!40000 ALTER TABLE `cms_jetson_module_news_categories` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_news_categories_seq
DROP TABLE IF EXISTS `cms_jetson_module_news_categories_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_news_categories_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_module_news_categories_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_news_categories_seq` (`id`) VALUES
	(1);
/*!40000 ALTER TABLE `cms_jetson_module_news_categories_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_news_fielddefs
DROP TABLE IF EXISTS `cms_jetson_module_news_fielddefs`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  `extra` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_news_fielddefs: 0 rows
/*!40000 ALTER TABLE `cms_jetson_module_news_fielddefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_module_news_fielddefs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_news_fieldvals
DROP TABLE IF EXISTS `cms_jetson_module_news_fieldvals`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_news_fieldvals: 0 rows
/*!40000 ALTER TABLE `cms_jetson_module_news_fieldvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_module_news_fieldvals` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_news_seq
DROP TABLE IF EXISTS `cms_jetson_module_news_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_news_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_module_news_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_news_seq` (`id`) VALUES
	(1);
/*!40000 ALTER TABLE `cms_jetson_module_news_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_search_index
DROP TABLE IF EXISTS `cms_jetson_module_search_index`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `cms_jetson_index_search_count` (`count`),
  KEY `cms_jetson_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_search_index: 290 rows
/*!40000 ALTER TABLE `cms_jetson_module_search_index` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_search_index` (`item_id`, `word`, `count`) VALUES
	(42, 'blanding', 1),
	(42, 'bill', 1),
	(42, 'sincerely', 1),
	(42, 'referrals', 1),
	(42, 'mouth', 1),
	(42, 'word', 1),
	(42, 'grown', 1),
	(42, 'helped', 1),
	(42, 'customers', 1),
	(42, 'thank', 1),
	(42, 'ask', 1),
	(42, 'see', 1),
	(42, 'don’t', 1),
	(42, 'work', 1),
	(42, 'samples', 1),
	(42, 'capabilities', 1),
	(42, 'show', 1),
	(42, 'designed', 1),
	(42, 'website', 1),
	(42, 'help', 1),
	(42, 'can', 2),
	(42, 'know', 1),
	(42, 'let', 1),
	(42, 'product', 1),
	(42, '“solution”', 1),
	(42, 'need', 1),
	(42, 'managers', 1),
	(42, 'maintenance', 1),
	(42, 'problems', 1),
	(42, 'solve', 1),
	(42, 'lake', 1),
	(42, 'ham', 1),
	(42, 'located', 1),
	(42, 'manufacture', 1),
	(42, 'fabricator', 1),
	(42, 'jetson', 2),
	(42, 'home', 2),
	(42, 'industry', 2),
	(42, 'fabricators', 2),
	(42, 'steel', 2),
	(40, 'mig', 1),
	(40, 'drills', 1),
	(40, 'magnetic', 1),
	(40, 'drill', 1),
	(40, 'roller', 1),
	(40, 'pipe', 1),
	(40, 'capability', 1),
	(40, 'ironworkwer', 1),
	(40, '100', 1),
	(40, '9"x16', 1),
	(40, 'feature', 1),
	(40, 'miter', 1),
	(40, 'bandsaw', 1),
	(40, '8"x144', 1),
	(40, 'shear', 1),
	(40, '4"x48', 1),
	(40, 'diam', 4),
	(40, 'min', 4),
	(40, '16"x72', 1),
	(40, 'roll', 7),
	(40, 'sheet', 1),
	(40, 'gauge', 2),
	(40, 'forms', 1),
	(40, 'brake', 1),
	(40, 'press', 2),
	(40, 'ton', 2),
	(40, '175', 1),
	(40, 'capacity', 1),
	(40, 'thick', 1),
	(40, '72"x300', 1),
	(40, 'table', 1),
	(40, 'list', 1),
	(40, 'equipment', 1),
	(40, '&amp', 1),
	(40, 'parts', 1),
	(40, 'services', 1),
	(40, 'punching', 2),
	(40, 'shearing', 1),
	(40, 'sawing', 1),
	(40, 'forming', 1),
	(40, 'cnc', 2),
	(39, 'industrial', 1),
	(39, 'heavy', 1),
	(39, 'manufacturing', 1),
	(39, 'specialize', 1),
	(39, 'fabrication', 1),
	(39, 'steel', 1),
	(39, 'custom', 1),
	(39, 'source', 1),
	(39, 'welcome', 1),
	(39, 'inc', 4),
	(39, 'jetson', 11),
	(43, 'via', 1),
	(43, 'creditfree', 1),
	(43, 'need', 1),
	(43, 'you\'ll', 1),
	(43, 'skype', 3),
	(43, 'add', 1),
	(43, 'sms', 1),
	(43, 'due', 1),
	(43, 'date', 1),
	(43, 'description', 1),
	(43, 'quantity', 1),
	(43, 'part', 1),
	(43, 'number', 1),
	(43, 'name', 1),
	(43, 'project', 1),
	(43, 'phone', 1),
	(43, 'email', 1),
	(43, 'company', 1),
	(43, 'contact', 1),
	(43, '2781', 1),
	(43, '763', 1),
	(43, 'fax', 2),
	(43, '2780', 1),
	(43, '755', 2),
	(43, '888', 1),
	(43, 'call', 2),
	(43, 'form', 1),
	(43, 'end', 1),
	(43, 'submit', 1),
	(43, 'click', 1),
	(43, 'online', 1),
	(43, 'send', 2),
	(43, 'needed', 1),
	(43, 'may', 1),
	(43, 'clarification', 1),
	(43, 'follow', 1),
	(43, 'will', 1),
	(43, 'estimator', 1),
	(43, 'can', 1),
	(43, 'information', 1),
	(43, 'much', 1),
	(43, 'fill', 1),
	(43, 'please', 1),
	(43, 'working', 1),
	(43, 'forward', 1),
	(43, 'looking', 1),
	(43, 'we\'re', 1),
	(43, 'quote', 5),
	(43, 'request', 4),
	(39, 'miles', 2),
	(39, 'approximately', 2),
	(39, 'exit', 2),
	(39, 'west', 4),
	(39, 'hwy', 5),
	(39, 'take', 7),
	(39, 'north', 8),
	(39, '35w', 4),
	(39, 'maps', 1),
	(39, 'google', 1),
	(39, 'directions', 1),
	(39, 'map', 1),
	(39, 'easier', 1),
	(39, 'job', 1),
	(39, 'make', 1),
	(39, 'jobs', 1),
	(39, 'production', 2),
	(39, 'run', 1),
	(39, 'long', 1),
	(39, 'short', 1),
	(39, 'models', 1),
	(39, 'prototype', 1),
	(39, '—', 2),
	(39, 'projects', 1),
	(40, 'welding', 1),
	(40, 'plate', 6),
	(40, 'rolling', 2),
	(40, 'cylinder', 1),
	(40, 'cone', 1),
	(40, 'weldments', 1),
	(40, 'cutting', 2),
	(40, 'plasma', 2),
	(40, 'easier', 1),
	(40, 'job', 1),
	(40, 'make', 1),
	(40, 'jobs', 1),
	(40, 'production', 2),
	(40, 'run', 2),
	(40, 'long', 2),
	(40, 'short', 1),
	(40, 'models', 1),
	(40, 'prototype', 2),
	(40, '—', 2),
	(40, 'industrial', 1),
	(40, 'heavy', 2),
	(40, 'manufacturing', 1),
	(40, 'specialize', 1),
	(40, 'projects', 2),
	(40, 'custom', 1),
	(40, 'solutions', 2),
	(40, 'free', 1),
	(40, 'hassle', 1),
	(40, 'needs', 1),
	(40, 'fabrication', 2),
	(40, 'steel', 3),
	(40, 'shop', 1),
	(40, 'stop', 1),
	(40, 'capabilities', 5),
	(40, 'jetson', 1),
	(40, 'one', 1),
	(41, '55304', 1),
	(41, 'lake', 1),
	(41, 'ham', 1),
	(41, 'hwy', 1),
	(41, '13414', 1),
	(41, 'inc', 1),
	(41, 'jetson', 1),
	(41, 'via', 1),
	(41, '2781', 1),
	(41, 'fax', 1),
	(41, '888', 1),
	(41, 'free', 1),
	(41, 'toll', 1),
	(41, '2780', 2),
	(41, '755', 3),
	(41, '763', 2),
	(41, 'can', 1),
	(41, 'write', 2),
	(41, 'call', 2),
	(41, 'literature', 1),
	(41, 'services', 1),
	(41, 'comments', 1),
	(41, 'questions', 1),
	(41, 'information', 1),
	(41, 'need', 1),
	(41, 'form', 1),
	(41, 'online', 2),
	(41, 'using', 1),
	(41, 'specifications', 1),
	(41, 'project', 1),
	(41, 'send', 1),
	(41, 'com', 1),
	(41, 'info@jetsoninc', 1),
	(41, 'file', 1),
	(41, 'digital', 1),
	(41, 'mail', 2),
	(41, 'quote', 1),
	(41, 'request', 2),
	(41, 'hear', 1),
	(41, 'like', 1),
	(41, 'we\'d', 1),
	(41, 'contact', 6),
	(40, 'local', 1),
	(40, 'fast', 1),
	(40, 'delivery', 2),
	(40, 'tig', 1),
	(40, 'welders', 2),
	(39, '1998', 1),
	(39, 'expansion', 1),
	(39, 'capacity', 1),
	(39, 'doubled', 1),
	(39, 'equipment', 1),
	(39, 'updated', 1),
	(39, '1994', 1),
	(39, 'owners', 1),
	(39, 'retiring', 1),
	(39, 'purchased', 1),
	(39, 'blanding', 1),
	(39, 'bill', 2),
	(39, 'owned', 1),
	(39, 'held', 1),
	(39, 'privately', 1),
	(39, 'history', 1),
	(39, 'company', 3),
	(39, '242', 1),
	(39, 'boulevard', 1),
	(39, 'lake', 1),
	(39, 'bunker', 1),
	(39, 'south', 2),
	(39, 'road', 4),
	(39, 'frontage', 4),
	(39, 'turn', 4),
	(39, 'left', 3),
	(39, 'avenue', 3),
	(39, '133rd', 3),
	(34, 'news', 5),
	(34, 'module', 3),
	(34, 'installed', 3),
	(34, 'exciting', 1),
	(34, 'article', 2),
	(34, 'using', 1),
	(34, 'summary', 1),
	(34, 'field', 1),
	(34, 'therefore', 1),
	(34, 'link', 1),
	(34, 'read', 2),
	(34, 'can', 1),
	(34, 'click', 1),
	(34, 'heading', 1);
/*!40000 ALTER TABLE `cms_jetson_module_search_index` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_search_items
DROP TABLE IF EXISTS `cms_jetson_module_search_items`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_jetson_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_search_items: 6 rows
/*!40000 ALTER TABLE `cms_jetson_module_search_items` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES
	(42, 'Search', 15, 'content', NULL),
	(40, 'Search', 34, 'content', NULL),
	(43, 'Search', 57, 'content', NULL),
	(39, 'Search', 58, 'content', NULL),
	(41, 'Search', 59, 'content', NULL),
	(34, 'News', 1, 'article', NULL);
/*!40000 ALTER TABLE `cms_jetson_module_search_items` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_search_items_seq
DROP TABLE IF EXISTS `cms_jetson_module_search_items_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_search_items_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_module_search_items_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_search_items_seq` (`id`) VALUES
	(43);
/*!40000 ALTER TABLE `cms_jetson_module_search_items_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_search_words
DROP TABLE IF EXISTS `cms_jetson_module_search_words`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_search_words: 0 rows
/*!40000 ALTER TABLE `cms_jetson_module_search_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_jetson_module_search_words` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_smarty_plugins
DROP TABLE IF EXISTS `cms_jetson_module_smarty_plugins`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_smarty_plugins` (
  `sig` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `module` varchar(160) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sig`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_smarty_plugins: 8 rows
/*!40000 ALTER TABLE `cms_jetson_module_smarty_plugins` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_smarty_plugins` (`sig`, `name`, `module`, `type`, `callback`, `available`, `cachable`) VALUES
	('a13f88201fd98d2fbb219f4bb4d4d75e', 'FileManager', 'FileManager', 'function', 's:15:"function_plugin";', 1, 0),
	('d077ec0a46ac7ac76f7ebb22bf223dd5', 'MenuManager', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 0),
	('0d66b5f48afdb3ab28b1b00f23e3251f', 'menu', 'MenuManager', 'function', 's:15:"function_plugin";', 1, 1),
	('042ecc80bd5585fce43393f9d3f434b6', 'cms_breadcrumbs', 'MenuManager', 'function', 's:22:"smarty_cms_breadcrumbs";', 1, 1),
	('6db731a58353c03d0b79fe4e4adacdbd', 'News', 'News', 'function', 's:15:"function_plugin";', 1, 0),
	('1ec62e1e885cc0fd80237da2d5ea8778', 'news', 'News', 'function', 's:15:"function_plugin";', 1, 1),
	('bb0d76390dd2c0ab4e365e2e49d534b0', 'Search', 'Search', 'function', 's:15:"function_plugin";', 1, 0),
	('f3114372c8995dd5974b0306430a3ce3', 'search', 'Search', 'function', 's:15:"function_plugin";', 1, 1);
/*!40000 ALTER TABLE `cms_jetson_module_smarty_plugins` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_module_templates
DROP TABLE IF EXISTS `cms_jetson_module_templates`;
CREATE TABLE IF NOT EXISTS `cms_jetson_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_jetson_index_module_templates_by_module_name_template_name` (`module_name`,`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_module_templates: 11 rows
/*!40000 ALTER TABLE `cms_jetson_module_templates` DISABLE KEYS */;
INSERT INTO `cms_jetson_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
	('CMSPrinting', 'linktemplate', '{if isset($imgsrc)}\n{capture assign=\'image\'}\n  <img src="{$imgsrc}" title="{$linktext}" alt="{$linktext}" {if isset($imgclass) && $imgclass!=\'\'}class="{$imgclass}"{/if} />\n{/capture}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$image}</a>\n{else}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$linktext}</a>\n{/if}\n', '2014-04-01 23:53:02', '2014-04-01 23:53:02'),
	('CMSPrinting', 'printtemplate', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n  <head>\n    <title>Printing {title}</title>\n    <meta name="robots" content="noindex" />\n    <base href="{$rooturl}" />\n    <meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\n    <meta http-equiv="Content-Type" content="text/html; charset={$encoding}" />\n\n    {cms_stylesheet media=\'print\' templateid=$templateid}\n\n    {if $overridestylesheet!=\'\'}\n    <style type="text/css">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style="background-color: white; color: black; background-image: none; text-align: left;">	\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n', '2014-04-01 23:53:02', '2014-04-01 23:53:02'),
	('News', 'summarySample', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsSummaryField">\n        {if $field->type == \'file\'}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('News', 'summarySummary_Simplex', '{strip}\r\n\r\n<!-- .news-summary wrapper -->\r\n<article class=\'news-summary\'>\r\n<span class=\'heading\'><span>News</span></span>\r\n        <ul class=\'category-list cf\'>\r\n        {foreach from=$cats item=\'node\'}\r\n        {if $node.depth > $node.prevdepth}\r\n            {repeat string=\'<ul>\' times=$node.depth-$node.prevdepth}\r\n        {elseif $node.depth < $node.prevdepth}\r\n            {repeat string=\'</li></ul>\' times=$node.prevdepth-$node.depth}\r\n            </li>\r\n            {elseif $node.index > 0}</li>\r\n            {/if}\r\n            <li{if $node.index == 0} class=\'first\'{/if}>\r\n        {if $node.count > 0}\r\n                <a href=\'{$node.url}\'>{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\r\n        {/foreach}\r\n        {repeat string=\'</li></ul>\' times=$node.depth-1}</li>\r\n        </ul>\r\n    {foreach from=$items item=\'entry\'}\r\n    <!-- .news-article (wrapping each article) -->\r\n    <section class=\'news-article\'>\r\n        <header>\r\n            <h2><a href=\'{$entry->moreurl}\' title=\'{$entry->title|cms_escape:htmlall}\'>{$entry->title|cms_escape}</a></h2>\r\n            <div class=\'meta cf\'>\r\n                <time class=\'date\' datetime=\'{$entry->postdate|date_format:\'%Y-%m-%d\'}\'>\r\n                    <span class=\'day\'> {$entry->postdate|date_format:\'%d\'} </span>\r\n                    <span class=\'month\'> {$entry->postdate|date_format:\'%b\'} </span>\r\n                </time>\r\n                <span class=\'author\'> {$author_label} {$entry->author} </span>\r\n                <span class=\'category\'> {$category_label} {$entry->category}</span>\r\n            </div>\r\n        </header>\r\n        {if $entry->summary}\r\n            <p>{eval var=$entry->summary|strip_tags}</p>\r\n            <span class=\'more\'>{$entry->morelink} →</span>\r\n        {else if $entry->content}\r\n            <p>{eval var=$entry->content|strip_tags}</p>\r\n        {/if}\r\n    </section>\r\n    <!-- .news-article //-->\r\n    {/foreach}\r\n        <!-- news pagination -->\r\n        {if $pagecount > 1}\r\n        <span class=\'paginate\'>\r\n            {if $pagenumber > 1}\r\n                {$firstpage} {$prevpage}\r\n            {/if}\r\n                {$pagetext} {$pagenumber} {$oftext} {$pagecount}\r\n            {if $pagenumber < $pagecount}\r\n                {$nextpage} {$lastpage}\r\n            {/if}\r\n        </span>\r\n        {/if}\r\n</article>\r\n<!-- .news-summary //-->\r\n\r\n{/strip}', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('News', 'detailSample', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the \'object\' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as \'simple\' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=\'foo\' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either \'draft\' or \'published\' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the \'fields\' member\n     fieldsbyname           = (deprecated) - A synonym for the \'fields\' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n     displayvalue (mixed) = A displayable value for the field.  This is particularly useful in the case of dropdown fields.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=\'canonical\' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsDetailField">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('News', 'detailSimplex_Detail', '{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=\'canonical\' value=$entry->canonical}\r\n{/if}\r\n\r\n<h2>{$entry->title|cms_escape:htmlall}</h2>\r\n{if $entry->summary}\r\n    {eval var=$entry->summary}\r\n{/if}\r\n    {eval var=$entry->content}\r\n{if $entry->extra}\r\n		{$extra_label} {$entry->extra}\r\n{/if}\r\n{if $return_url != ""}\r\n    <br />\r\n        <span class=\'back\'>← {$return_url}{if $category_name != \'\'} - {$category_link}{/if}</span>\r\n{/if}\r\n\r\n{if isset($entry->fields)}\r\n  {foreach from=$entry->fields item=\'field\'}\r\n     <div>\r\n        {if $field->type == \'file\'}\r\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\r\n          <img src=\'{$entry->file_location}/{$field->value}\' alt=\'\' />\r\n        {else}\r\n          {$field->name}: {eval var=$field->value}\r\n        {/if}\r\n     </div>\r\n  {/foreach}\r\n{/if}\r\n    <footer class=\'news-meta\'>\r\n    {if $entry->postdate}\r\n        {$entry->postdate|cms_date_format}\r\n    {/if}\r\n    {if $entry->category}\r\n        <strong>{$category_label}</strong> {$entry->category}\r\n    {/if}\r\n    {if $entry->author}\r\n        <strong>{$author_label}</strong> {$entry->author}\r\n    {/if}\r\n    </footer>', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('News', 'formSample', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'onefield\'}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('News', 'browsecatSample', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('News', 'email_template', 'A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nPost Date:  {$postdate|date_format}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('Search', 'displaysearch', '\n{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" value="{$searchtext}" {$hogan}/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	('Search', 'displayresult', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', '2014-04-01 23:53:03', '2014-04-01 23:53:03');
/*!40000 ALTER TABLE `cms_jetson_module_templates` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_permissions
DROP TABLE IF EXISTS `cms_jetson_permissions`;
CREATE TABLE IF NOT EXISTS `cms_jetson_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_permissions: 39 rows
/*!40000 ALTER TABLE `cms_jetson_permissions` DISABLE KEYS */;
INSERT INTO `cms_jetson_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES
	(1, 'Add Pages', 'Add Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(2, 'Add Groups', 'Add Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(4, 'Add Templates', 'Add Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(5, 'Add Users', 'Add Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(6, 'Modify Any Page', 'Modify Any Page', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(7, 'Modify Groups', 'Modify Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(8, 'Modify Group Assignments', 'Modify Group Assignments', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(9, 'Modify Permissions', 'Modify Permissions for Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(11, 'Modify Templates', 'Modify Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(12, 'Modify Users', 'Modify Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(13, 'Remove Pages', 'Remove Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(14, 'Remove Groups', 'Remove Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(16, 'Remove Templates', 'Remove Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(17, 'Remove Users', 'Remove Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(18, 'Modify Modules', 'Modify Modules', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(20, 'Modify Files', 'Modify Files', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(21, 'Modify Site Preferences', 'Modify Site Preferences', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(22, 'Modify Stylesheets', 'Modify Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(23, 'Add Stylesheets', 'Add Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(24, 'Remove Stylesheets', 'Remove Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(25, 'Add Stylesheet Assoc', 'Add Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(26, 'Modify Stylesheet Assoc', 'Modify Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(27, 'Remove Stylesheet Assoc', 'Remove Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(28, 'Modify User-defined Tags', 'Modify User defined Tags', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(29, 'Clear Admin Log', 'Clear Admin Log', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(30, 'Add Global Content Blocks', 'Add Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(31, 'Modify Global Content Blocks', 'Modify Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(32, 'Remove Global Content Blocks', 'Remove Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(35, 'Modify Events', 'Modify Events', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
	(36, 'View Tag Help', 'View Tag Help', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
	(44, 'Manage All Content', 'Manage All Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
	(46, 'Reorder Content', 'Reorder Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
	(47, 'Use FileManager Advanced', 'Advanced usage of the File Manager module', '2014-04-01 23:53:02', '2014-04-01 23:53:02'),
	(48, 'Manage Menu', 'Manage Menu', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	(49, 'MicroTiny View HTML Source', 'MicroTiny View HTML Source', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	(50, 'Modify News', 'Modify News', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	(51, 'Approve News', 'Approve News For Frontend Display', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	(52, 'Delete News', 'Delete News Articles', '2014-04-01 23:53:03', '2014-04-01 23:53:03'),
	(53, 'Manage Themes', 'Manage Themes', '2014-04-01 23:53:09', '2014-04-01 23:53:09');
/*!40000 ALTER TABLE `cms_jetson_permissions` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_permissions_seq
DROP TABLE IF EXISTS `cms_jetson_permissions_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_permissions_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_permissions_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_permissions_seq` (`id`) VALUES
	(53);
/*!40000 ALTER TABLE `cms_jetson_permissions_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_routes
DROP TABLE IF EXISTS `cms_jetson_routes`;
CREATE TABLE IF NOT EXISTS `cms_jetson_routes` (
  `term` varchar(255) NOT NULL,
  `key1` varchar(50) NOT NULL,
  `key2` varchar(50) DEFAULT NULL,
  `key3` varchar(50) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`term`,`key1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_routes: 4 rows
/*!40000 ALTER TABLE `cms_jetson_routes` DISABLE KEYS */;
INSERT INTO `cms_jetson_routes` (`term`, `key1`, `key2`, `key3`, `data`, `created`) VALUES
	('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:97:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2014-04-01 23:53:04'),
	('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:70:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2014-04-01 23:53:04'),
	('/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:4:{s:4:"term";s:55:"/[nN]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;}s:18:"\0CmsRoute\0_results";N;}', '2014-04-01 23:53:04'),
	('/[nN]ews\\/(?P<articleid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:"CmsRoute":2:{s:15:"\0CmsRoute\0_data";a:5:{s:4:"term";s:33:"/[nN]ews\\/(?P<articleid>[0-9]+)$/";s:8:"absolute";b:0;s:4:"key1";s:4:"News";s:4:"key2";N;s:8:"defaults";a:1:{s:8:"returnid";i:-1;}}s:18:"\0CmsRoute\0_results";N;}', '2014-04-01 23:53:04');
/*!40000 ALTER TABLE `cms_jetson_routes` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_siteprefs
DROP TABLE IF EXISTS `cms_jetson_siteprefs`;
CREATE TABLE IF NOT EXISTS `cms_jetson_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_siteprefs: 68 rows
/*!40000 ALTER TABLE `cms_jetson_siteprefs` DISABLE KEYS */;
INSERT INTO `cms_jetson_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
	('enablesitedownmessage', '0', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('sitedownmessage', '<p>Site is currently down for maintenance.</p>', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('sitedownmessagetemplate', '-1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('useadvancedcss', '1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('metadata', '<meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-12 Ted Kulp. All rights reserved." />\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n ', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('xmlmodulerepository', '', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('logintheme', 'OneEleven', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	('global_umask', '022', NULL, NULL),
	('frontendlang', '', NULL, NULL),
	('frontendwysiwyg', '', NULL, NULL),
	('nogcbwysiwyg', '0', NULL, NULL),
	('urlcheckversion', '', NULL, NULL),
	('defaultdateformat', '', NULL, NULL),
	('css_max_age', '0', NULL, NULL),
	('backendwysiwyg', 'MicroTiny', NULL, NULL),
	('disablesafemodewarning', '0', NULL, NULL),
	('allowparamcheckwarnings', '0', NULL, NULL),
	('enablenotifications', '1', NULL, NULL),
	('page_active', '1', NULL, NULL),
	('page_showinmenu', '1', NULL, NULL),
	('page_cachable', '1', NULL, NULL),
	('page_metadata', '{* Add code here that should appear in the metadata section of all new pages *}', NULL, NULL),
	('defaultpagecontent', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, NULL),
	('default_parent_page', '-1', NULL, NULL),
	('additional_editors', '', NULL, NULL),
	('page_searchable', '1', NULL, NULL),
	('page_extra1', '', NULL, NULL),
	('page_extra2', '', NULL, NULL),
	('page_extra3', '', NULL, NULL),
	('sitedownexcludes', '', NULL, NULL),
	('clear_vc_cache', '0', NULL, NULL),
	('sitename', 'Jetson Inc.', NULL, NULL),
	('sitemask', 'EoBm8Uci4T7lsSy2', NULL, NULL),
	('CMSMailer_mapi_pref_mailer', 'smtp', NULL, NULL),
	('CMSMailer_mapi_pref_host', 'localhost', NULL, NULL),
	('CMSMailer_mapi_pref_port', '25', NULL, NULL),
	('CMSMailer_mapi_pref_from', 'root@localhost', NULL, NULL),
	('CMSMailer_mapi_pref_fromuser', 'CMS Administrator', NULL, NULL),
	('CMSMailer_mapi_pref_sendmail', '/usr/sbin/sendmail', NULL, NULL),
	('CMSMailer_mapi_pref_timeout', '1000', NULL, NULL),
	('CMSMailer_mapi_pref_smtpauth', '0', NULL, NULL),
	('CMSMailer_mapi_pref_username', '', NULL, NULL),
	('CMSMailer_mapi_pref_password', '', NULL, NULL),
	('CMSMailer_mapi_pref_secure', '', NULL, NULL),
	('CMSPrinting_mapi_pref_overridestyle', '/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don\'t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/', NULL, NULL),
	('FileManager_mapi_pref_iconsize', '32px', NULL, NULL),
	('FileManager_mapi_pref_uploadboxes', '5', NULL, NULL),
	('FileManager_mapi_pref_showhiddenfiles', '0', NULL, NULL),
	('ModuleManager_mapi_pref_module_repository', 'http://www.cmsmadesimple.org/ModuleRepository/request/v2/', NULL, NULL),
	('News_mapi_pref_default_summary_template_contents', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsSummaryField">\n        {if $field->type == \'file\'}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, NULL),
	('News_mapi_pref_current_summary_template', 'Sample', NULL, NULL),
	('News_mapi_pref_default_detail_template_contents', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the \'object\' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as \'simple\' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=\'foo\' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either \'draft\' or \'published\' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the \'fields\' member\n     fieldsbyname           = (deprecated) - A synonym for the \'fields\' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n     displayvalue (mixed) = A displayable value for the field.  This is particularly useful in the case of dropdown fields.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=\'canonical\' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsDetailField">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          <img src="{$entry->file_location}/{$field->displayvalue}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->displayvalue}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, NULL),
	('News_mapi_pref_current_detail_template', 'Sample', NULL, NULL),
	('News_mapi_pref_default_form_template_contents', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'onefield\'}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', NULL, NULL),
	('News_mapi_pref_current_form_template', 'Sample', NULL, NULL),
	('News_mapi_pref_default_browsecat_template_contents', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, NULL),
	('News_mapi_pref_current_browsecat_template', 'Sample', NULL, NULL),
	('News_mapi_pref_email_subject', 'A new News article has been posted', NULL, NULL),
	('News_mapi_pref_allowed_upload_types', 'gif,png,jpeg,jpg', NULL, NULL),
	('News_mapi_pref_auto_create_thumbnails', 'gif,png,jpeg,jpg', NULL, NULL),
	('Search_mapi_pref_stopwords', 'i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very', NULL, NULL),
	('Search_mapi_pref_usestemming', 'false', NULL, NULL),
	('Search_mapi_pref_searchtext', 'Enter Search...', NULL, NULL),
	('__NOTIFICATIONS__', 'a:1:{i:0;O:8:"stdClass":5:{s:8:"priority";i:1;s:4:"link";s:97:"http://s25.org/page/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=8d365543";s:4:"html";s:446:"Your mail settings have not been configured.  This could interfere with the ability of your website to send email messages.  You should go to <a href="http://s25.org/page/admin/moduleinterface.php?mact=CMSMailer,m1_,defaultadmin,0&amp;_sx_=8d365543">Extensions >> CMSMailer</a> and configure the mail settings with the information provided by your host.&nbsp;This test is generated on an infrequent basis.  It may take some time for it to go away";s:4:"name";s:9:"CMSMailer";s:12:"friendlyname";s:9:"CMSMailer";}}', NULL, NULL),
	('PruneAdminlog_lastexecute', '1428374367', NULL, NULL),
	('pseudocron_lastrun', '1428374367', NULL, NULL),
	('cms_is_uptodate', '0', NULL, NULL),
	('lastcmsversioncheck', '1427432395', NULL, NULL);
/*!40000 ALTER TABLE `cms_jetson_siteprefs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_templates
DROP TABLE IF EXISTS `cms_jetson_templates`;
CREATE TABLE IF NOT EXISTS `cms_jetson_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `default_template` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `cms_jetson_index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_templates: 11 rows
/*!40000 ALTER TABLE `cms_jetson_templates` DISABLE KEYS */;
INSERT INTO `cms_jetson_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
	(19, 'Minimal template', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style="float: left; width: 25%;">\r\n         {menu loadprops=0 template=\'minimal_menu.tpl\'}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>', NULL, NULL, 1, 0, '2006-07-25 21:22:33', '2009-05-02 15:05:44'),
	(15, 'CSSMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: CSSMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=\'cssmenu.tpl\'}\n            <hr class="accessibility" />\n{* End Navigation *}\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2009-05-13 10:42:54'),
	(16, 'CSSMenu top + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation *}\r\n      <div id="menu_vert">\r\n{* stylesheet  "Navigation: CSSMenu - Horizontal" *}\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=\'cssmenu.tpl\'}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {cms_breadcrumbs root=\'Home\'}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=\'Sidebar\'}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=\'3\' detailpage=\'news\'}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=\'footer\'}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2009-05-13 10:42:54'),
	(17, 'Left simple navigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Left sidebar + 1 column" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything with class="accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1> \n       \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Navigation</h2>\n              {menu loadprops=0 template=\'simple_navigation.tpl\' collapse=\'1\'}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class="back">        \n          <div id="main">\n            <div style="float: right;">{print showbutton=true script=true}</div>\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class="accessibility" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class="clear"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2009-05-13 10:42:54'),
	(18, 'Top simple navigation + left subnavigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>\n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id="menu_horiz">\n{* stylesheet  "Navigation: Simple - Horizontal" *}\n        <h2 class="accessibility">Navigation</h2>\n        {menu loadprops=0 template=\'simple_navigation.tpl\' number_of_levels=\'1\'}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Sub Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Sub Navigation</h2>\n              {menu loadprops=0 template=\'simple_navigation.tpl\' start_level=\'2\' collapse=\'1\'}\n                <hr class="accessibility" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2009-05-13 10:42:54'),
	(20, 'ShadowMenu Tab + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation, stylesheet "Navigation: ShadowMenu - Horizontal" *}\r\n      <div id="menu_vert">\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=\'cssmenu_ulshadow.tpl\'}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {cms_breadcrumbs root=\'Home\'}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=\'Sidebar\'}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=\'3\' detailpage=\'news\'}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=\'footer\'}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-01 04:30:42', '2009-05-13 10:42:54'),
	(21, 'ShadowMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {cms_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: ShadowMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=\'cssmenu_ulshadow.tpl\'}\n            <hr class="accessibility" />\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2009-05-01 23:17:51', '2009-05-13 10:42:54'),
	(22, 'NCleanBlue', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel="canonical" href="{$canonical}" />{elseif isset($content_obj)}<link rel="canonical" href="{$content_obj->GetURL()}" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir="start" rellink=1}\r\n{cms_selflink dir="prev" rellink=1}\r\n{cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type="text/javascript"  src="uploads/NCleanBlue/js/ie6fix.js"></script>\r\n<script type="text/javascript">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(\'.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version\');\r\n</script>\r\n<style type="text/css">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand("BackgroundImageCache", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="ncleanblue">\r\n      <div id="pagewrapper" class="core-wrap-960 core-center">\r\n{* start accessibility skip links *}\r\n        <ul class="accessibility">\r\n          <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n          <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id="header" class="util-clearfix">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  "Layout: NCleanBlue" *}\r\n          <div id="logo" class="core-float-left">\r\n            {cms_selflink dir="start" text="$sitename"}\r\n          </div>\r\n          \r\n{* Start Search, the input "Submit" is using an image, CSS: div#search input.search-button *}\r\n          <div id="search" class="core-float-right">\r\n            {search search_method="post"}\r\n          </div>\r\n{* End Search *}\r\n          <span class="util-clearb">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  "Layout: NCleanBlue", starting at Menu  ROOT *}\r\n          <h2 class="accessibility util-clearb">Navigation</h2>\r\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\r\n          <div class="page-menu util-clearfix">\r\n          {menu loadprops=0 template=\'cssmenu_ulshadow.tpl\'}\r\n          </div>\r\n          <hr class="accessibility util-clearb" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id="content" class="util-clearfix"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          <div title="CMS - {cms_version} - {cms_versionname}" id="version">\r\n          {capture assign=\'cms_version\'}{cms_version|lower}{/capture}{"/-([a-z]).*/"|preg_replace:"":$cms_version}\r\n          </div>\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id="bar" class="util-clearfix">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class="breadcrumbs core-float-right">\r\n              {cms_breadcrumbs root=\'Home\'}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class="accessibility util-clearb" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id="left" class="core-float-left">\r\n            <div class="sbar-top">\r\n              <h2 class="sbar-title">News</h2>\r\n            </div>\r\n            <div class="sbar-main">\r\n{* Start News *}\r\n              <div id="news">\r\n              {news number=\'3\' detailpage=\'news\'}\r\n              </div>\r\n              <img class="screen" src="uploads/NCleanBlue/screen-1.6.jpg" width="139" height="142" title="CMS - {cms_version} - {cms_versionname}" alt="CMS - {cms_version} - {cms_versionname}" />\r\n{* End News *} \r\n            </div>\r\n            <span class="sbar-bottom">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id="main"  class="core-float-right">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class="main-top">\r\n              <div class="print core-float-right">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class="main-main util-clearfix">\r\n              <h1 class="title">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class="main-bottom">\r\n              <div class="right49 core-float-right">\r\n              {anchor anchor=\'main\' text=\'^&nbsp;&nbsp;Top\'}\r\n              </div>\r\n              <div class="left49 core-float-left">\r\n                <span>\r\n                  {cms_selflink dir="previous" label="Previous page: "}&nbsp;\r\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir="next"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class="accessibility" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class="util-clearb">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id="footer-wrapper">\r\n        <div id="footer" class="core-wrap-960">\r\n{* first foot menu *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=\'minimal_menu.tpl\'  number_of_levels=\'1\'}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=\'minimal_menu.tpl\'  start_level="2"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called "footer" *}\r\n          <div class="block cms core-float-left">\r\n            {global_content name=\'footer\'}\r\n          </div>\r\n          \r\n          <span class="util-clearb">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>', '', '', 1, 1, '2009-05-06 14:20:10', '2009-05-13 10:43:19'),
	(23, 'Simplex', '{strip}\r\n{process_pagedata}\r\n\r\n{* With cms_lang_info we retrieve current language information, assign gives us $nls variable we can work with *}\r\n{cms_lang_info assign=\'nls\'}\r\n\r\n{* using strip as we don\'t want useless whitespace, especially not before doctype *}\r\n{/strip}<!doctype html>\r\n<html lang=\'{if isset($nls)}{$nls->htmlarea()}{/if}\' dir=\'{if isset($nls)}{$nls->direction()}{/if}\'>\r\n<head>\r\n<meta charset=\'{if isset($nls)}{$nls->encoding()}{/if}\'>\r\n<title>{title} - {sitename}</title>\r\n<meta name=\'viewport\' content=\'initial-scale=1.0 maximum-scale=1.0 user-scalable=no\' />\r\n<meta name=\'HandheldFriendly\' content=\'true\' />\r\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n{metadata}\r\n{* See in news detail template how cannonical url can be assigned from module *}\r\n{if isset($canonical)}<link rel=\'canonical\' href=\'{$canonical}\' />{elseif isset($content_obj)}<link rel=\'canonical\' href=\'{$content_obj->GetURL()}\' />{/if}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n{cms_stylesheet}\r\n{* using google fonts *}\r\n<link href=\'//fonts.googleapis.com/css?family=Oswald:400,700\' rel=\'stylesheet\' type=\'text/css\'>\r\n{* learning IE lower then Version 9 some html5 *}\r\n<!--[if lt IE 9]>\r\n<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>\r\n<![endif]-->\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n{cms_selflink dir=\'start\' rellink=\'1\'}\r\n{cms_selflink dir=\'prev\' rellink=\'1\'}\r\n{cms_selflink dir=\'next\' rellink=\'1\'}\r\n</head>\r\n<body id=\'boxed\'>\r\n<!-- #wrapper (wrapping content in a box) -->\r\n<div class=\'container centered\' id=\'wrapper\'>\r\n    <!-- accessibility links, jump to nav or content -->\r\n    <ul class="visuallyhidden">\r\n        <li>{anchor anchor=\'nav\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n    </ul>\r\n    <!-- accessibility //-->\r\n    <!-- .top (top section of page containing logo, navigation search...) -->\r\n    <header class=\'top\'>\r\n        <div class=\'row header\'>\r\n            <!-- .logo (cmsms logo on the left side) -->\r\n            <div class=\'logo grid_4\'>\r\n                <a href=\'{root_url}\' title=\'{sitename}\'>\r\n                    <img src=\'{uploads_url}/simplex/images/cmsmadesimple-logo.png\' width=\'227\' height=\'59\' alt=\'{sitename}\' />\r\n                    <span class=\'palm\'></span>\r\n                </a>\r\n            </div>\r\n            <!-- .logo //-->\r\n            <!-- .main-navigation (main navigation on the right side) -->\r\n            <nav class=\'main-navigation grid_8 noprint\' id=\'nav\' role=\'navigation\'>\r\n                {menu template=\'Simplex_Navigation.tpl\'}\r\n            </nav>\r\n            <!-- .main-navigation //-->\r\n        </div>\r\n        <!-- .header-bottom (bottom part of header containing catchphrase and search field) -->\r\n        <div class=\'row header-bottom\'>\r\n            <section class=\'phrase\'>\r\n                <span class=\'grid_7\'>Content Management System the way it was meant to be.</span>\r\n                {strip}\r\n                {search assign=\'is_search\'}{* assigned search module tag, now we can build different search template for this site template and have fun with html5, Read http://www.w3.org/TR/html-markup/input.search.html for full attirbute specs *}\r\n                {if isset($is_search)}\r\n                <div class=\'grid_5 search noprint\' role=\'search\'>\r\n                        {$startform}\r\n                        <label for=\'{$search_actionid}searchinput\' class=\'visuallyhidden\'>{$searchprompt}:</label>\r\n                            <input type=\'search\' class=\'search-input\' id=\'{$search_actionid}searchinput\' name=\'{$search_actionid}searchinput\' size=\'20\' maxlength=\'50\' value=\'\' placeholder=\'{$searchtext}\' />\r\n                            {if isset($hidden)}{$hidden}{/if}\r\n                        {$endform}\r\n                </div>\r\n                {/if}{/strip}\r\n            </section>\r\n        </div>\r\n        <div class=\'clear\'></div>\r\n        <!-- .header-bottom //-->\r\n        <!-- .banner (banner area for a slider or teaser image) -->\r\n        <section class=\'banner row noprint\' role=\'banner\'>\r\n            <div class=\'banner-text\'>\r\n                <ul>\r\n                    <li>Flexible</li>\r\n                    <li>Powerful</li>\r\n                    <li>Secure</li>\r\n                    <li>Robust</li>\r\n                </ul>\r\n            </div>\r\n            <div class=\'banner-image cf\'>\r\n            {strip}\r\n                {* you do not need a module for every simple site functionality. For example you can build a simple slideshow\r\n                with php glob function (http://www.php.net/manual/en/function.glob.php) without wasting your system resources \r\n                by using modules or plugins.\r\n                Below would search for files matching .jpg in folder named teaser in simplex theme folder *}\r\n                {assign var=\'teaser\' value=\'uploads/simplex/teaser/*.jpg\'|glob}\r\n                    {foreach from=$teaser item=\'one\'}\r\n                        <div><img src=\'{root_url}/{$one}\' width=\'852\' height=\'275\' alt=\'\' /></div>\r\n                    {/foreach}\r\n            {/strip}\r\n            </div>\r\n        </section>\r\n        <!-- .banner //-->\r\n    </header>\r\n    <!-- .top //-->\r\n    <!-- .content-wrapper (wrapping div for content area) -->\r\n    <div class=\'content-wrapper cf\'>\r\n        <!-- .content (display content first) -->\r\n        <div class=\'content-inner grid_8 push_4\'>\r\n            <!-- .content-top (breadcrumbs and print button) -->\r\n            <div class=\'content-top cf\' itemscope itemtype=\'http://data-vocabulary.org/Breadcrumb\'>            \r\n                {* menu manager has action breadcrumbs since 1.11, you can use {cms_breadcrumbs} tag or {menu action=\'breadcrumbs\'} as below *}\r\n                {menu action=\'breadcrumbs\'}                \r\n                {* print tag from CMSPrinting Module *}\r\n                {print showbutton=\'false\' class=\'printbutton noprint\'}                \r\n            </div>\r\n            <!-- .content-top //-->\r\n            <!-- .content (actual content with title and content tags) -->\r\n            <article class=\'content\' id=\'main\' role=\'main\'>\r\n                <h1>{title}</h1> {* title tag *}\r\n                    {content} {* content entered in page editor area *}\r\n            </article>\r\n            <!-- .content //-->\r\n        </div>\r\n        <!-- .content-inner //-->\r\n        <!-- .sidebar (then show sidebar) -->\r\n        <aside class=\'sidebar grid_4 pull_8\'>\r\n            {* sample of using News Module tag for summary of latest two articles *}\r\n            {news summarytemplate=\'Summary_Simplex\' number=\'2\' detailpage=\'news\' detailtemplate=\'Simplex_Detail\'}\r\n        </aside>\r\n        <!-- .sidebar //-->\r\n        <div class=\'cf grid_8 prefix_4\'>\r\n            <span class=\'previous\'>{cms_selflink dir=\'previous\'}</span>\r\n            <span class=\'next\'>{cms_selflink dir=\'next\'}</span>\r\n        </div>\r\n    </div>\r\n    <!-- .content-wrapper //-->\r\n    <!-- .footer (footer area) -->\r\n    <footer class=\'row footer\'>\r\n        <span class=\'back-top\'>{anchor anchor=\'main\' text=\'&uarr;\'}</span>\r\n        <section class=\'grid_4 copyright\'>\r\n            <ul class=\'social cf\'>\r\n                <li class=\'twitter\'><a title=\'Twitter\' href=\'http://twitter.com/#!/cmsms\'>Twitter</a></li>\r\n                <li class=\'facebook\'><a title=\'Facebook\' href=\'https://www.facebook.com/cmsmadesimple\'>Facebook</a></li>\r\n                <li class=\'linkedin\'><a title=\'LinkedIn\' href=\'http://www.linkedin.com/groups?gid=1139537\'>LinkedIn</a></li>\r\n                <li class=\'youtube\'><a title=\'YouTube\' href=\'http://www.youtube.com/user/cmsmadesimple\'>YouTube</a></li>\r\n            </ul>\r\n            {global_content name=\'footer\'}\r\n        </section>\r\n        <section class=\'grid_8 noprint\'>\r\n            <nav class=\'footer-navigation row\'>\r\n                {menu template=\'Simplex_Navigation.tpl\' excludeprefix=\'home\' number_of_levels=\'2\' loadprops=\'0\'}\r\n            </nav>\r\n        </section> \r\n    </footer>\r\n    <div class=\'clear\'></div>\r\n</div>\r\n<!-- #wrapper //--> \r\n{cms_jquery exclude=\'jquery-ui.min.js,jquery.ui.nestedSortable.js,jquery.json.min.js\' append=\'uploads/simplex/js/functions.min.js\'}\r\n</body>\r\n</html>', '', '', 1, 0, '2012-04-23 13:36:19', '2012-05-17 09:41:42'),
	(24, 'Plain Template', '{process_pagedata}\r\n{metadata}\r\n<!-- start menu -->\r\n<div id="menu">\r\n  {menu}\r\n</div>\r\n<!-- end menu -->\r\n\r\n<!-- start content -->\r\n<div id="content">\r\n  <h2>{title}</h2>\r\n  {content}\r\n</div>\r\n', '', '', 1, 0, '2014-04-08 21:34:49', '2014-04-08 21:34:49'),
	(25, 'Jetson v.1', '{process_pagedata}<!DOCTYPE html>\r\n<!--[if IE 6]>\r\n<html id="ie6" dir="ltr" lang="en-US">\r\n<![endif]-->\r\n<!--[if IE 7]>\r\n<html id="ie7" dir="ltr" lang="en-US">\r\n<![endif]-->\r\n<!--[if IE 8]>\r\n<html id="ie8" dir="ltr" lang="en-US">\r\n<![endif]-->\r\n<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->\r\n<html dir="ltr" lang="en-US">\r\n<!--<![endif]-->\r\n<head>\r\n<meta charset="UTF-8" />\r\n<meta name="viewport" content="width=device-width" />\r\n<title>{sitename} - {title}</title>\r\n{metadata}\r\n<link rel="stylesheet" type="text/css" media="all" href="http://jetson.commercereactor.com/page/css/style.css" />\r\n<link rel="stylesheet" type="text/css" media="all" href="http://jetson.commercereactor.com/page/css/jetson.css" />\r\n<link rel="shortcut icon" href="http://jetson.commercereactor.com/page/img/favicon.ico" type="image/vnd.microsoft.icon">\r\n<link rel="icon" href="http://jetson.commercereactor.com/page/img/favicon.ico" type="image/vnd.microsoft.icon">\r\n<!--[if lt IE 9]>\r\n<script src="js/html5.js" type="text/javascript"></script>\r\n<![endif]-->\r\n<script type=\'text/javascript\' src=\'http://jetson.commercereactor.com/wp-includes/js/jquery/jquery.js?ver=1.7.2\'></script>\r\n<link rel=\'canonical\' href=\'http://jetson.commercereactor.com/\' />\r\n</head>\r\n\r\n<body class="home page page-id-2 page-template page-template-sidebar-page-php single-author two-column left-sidebar">\r\n<div id="box">\r\n    <div id="page" class="hfeed">\r\n        <header id="branding" role="banner">\r\n            <nav id="access_" role="navigation">\r\n                <h3 class="assistive-text">Main menu</h3>\r\n                <div class="menu-top-bar-container" id="top-nav">\r\n                    {menu}\r\n                </div>\r\n            </nav>\r\n                \r\n            <a href="http://jetson.commercereactor.com/">\r\n                <img src="http://jetson.commercereactor.com/page/img/theme-01.jpg" width="1000" height="321" alt="" />\r\n            </a>\r\n        </header>\r\n    \r\n    \r\n        <div id="main">\r\n            <div id="first" class="widget-area" role="complementary">\r\n                <div class="textwidget">\r\n                    <div id="jetson-buttons">\r\n                        <div class="jb-1"><a href="#">Fabrication<br />Services</a></div>\r\n                        <div class="jb-1"><a href="#">Custom<br />Processing</a></div>\r\n                        <div class="jb-1"><a href="#">Stock<br />Materials</a></div>\r\n                        <div class="jb-1"><a href="#">Project<br />Capabilities</a></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n    \r\n            <div id="primary">\r\n                <div id="content" role="main">					\r\n                    <article id="post-2" class="post-2 page type-page status-publish hentry">\r\n                        <header class="entry-header">\r\n                            <h1 class="entry-title">{title}</h1>\r\n                        </header>\r\n    \r\n                        <div class="entry-content">\r\n                            {content}\r\n                        </div>\r\n        \r\n                        <footer class="entry-meta"></footer>\r\n                    </article>\r\n                </div>\r\n            </div>\r\n    \r\n            <div id="secondary" class="widget-area" role="complementary">\r\n                <aside id="text-4" class="widget widget_text">\r\n                    <h3 class="widget-title">Our Capabilities</h3>\r\n                    <div class="textwidget">\r\n                        <ul class="k-words">\r\n                            <li>CNC Plasma Cutting</li>\r\n                            <li>Heavy Weldments</li>\r\n                            <li>Cone/Cylinder Rolling</li>\r\n                            <li>Plate Rolling</li>\r\n                            <li>Welding</li>\r\n                            <li>Forming</li>\r\n                            <li>Sawing</li>\r\n                            <li>Shearing</li>\r\n                            <li>Punching</li>\r\n                            <li>Steel Services</li>\r\n                            <li>Parts-Prototype</li>\r\n                            <li>Short & Long-Run Production</li>\r\n                        </ul>\r\n                    </div>\r\n                </aside>\r\n            </div>\r\n        </div>\r\n    \r\n        <footer id="colophon" role="contentinfo">\r\n            <div id="site-generator">\r\n                {global_content name=\'footer\'}\r\n            </div>\r\n        </footer>\r\n    </div>\r\n    <div id="pan"></div>\r\n</div>\r\n</body>\r\n</html>', '', '', 1, 0, '2014-04-10 00:19:51', '2014-04-10 01:14:43');
/*!40000 ALTER TABLE `cms_jetson_templates` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_templates_seq
DROP TABLE IF EXISTS `cms_jetson_templates_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_templates_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_templates_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_templates_seq` (`id`) VALUES
	(25);
/*!40000 ALTER TABLE `cms_jetson_templates_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_userplugins
DROP TABLE IF EXISTS `cms_jetson_userplugins`;
CREATE TABLE IF NOT EXISTS `cms_jetson_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text,
  `description` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_userplugins: 2 rows
/*!40000 ALTER TABLE `cms_jetson_userplugins` DISABLE KEYS */;
INSERT INTO `cms_jetson_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES
	(1, 'user_agent', '//Code to show the user\'s user agent information.\r\necho $_SERVER["HTTP_USER_AGENT"];', 'Code to show the users user agent information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(2, 'custom_copyright', '//set start to date your site was published\r\n$startCopyRight=\'2004\';\r\n\r\n// check if start year is this year\r\nif(date(\'Y\') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.\'-\'. date(\'Y\');\r\n}', 'Code to output copyright information', '2006-07-25 21:22:33', '2006-07-25 21:22:33');
/*!40000 ALTER TABLE `cms_jetson_userplugins` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_userplugins_seq
DROP TABLE IF EXISTS `cms_jetson_userplugins_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_userplugins_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_userplugins_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_userplugins_seq` (`id`) VALUES
	(2);
/*!40000 ALTER TABLE `cms_jetson_userplugins_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_userprefs
DROP TABLE IF EXISTS `cms_jetson_userprefs`;
CREATE TABLE IF NOT EXISTS `cms_jetson_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`preference`),
  KEY `cms_jetson_index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_userprefs: 25 rows
/*!40000 ALTER TABLE `cms_jetson_userprefs` DISABLE KEYS */;
INSERT INTO `cms_jetson_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES
	(1, 'use_wysiwyg', '1', NULL),
	(1, 'default_cms_language', 'en_US', NULL),
	(1, 'date_format_string', '%x %X', NULL),
	(1, 'admintheme', 'OneEleven', NULL),
	(1, 'bookmarks', 'on', NULL),
	(1, 'recent', 'on', NULL),
	(1, 'indent', 'on', NULL),
	(1, 'ajax', '0', NULL),
	(1, 'paging', '0', NULL),
	(1, 'hide_help_links', '0', NULL),
	(1, 'wysiwyg', 'MicroTiny', NULL),
	(1, 'collapse', '0=1.', NULL),
	(2, 'wysiwyg', 'MicroTiny', NULL),
	(2, 'default_cms_language', 'en_US', NULL),
	(2, 'admintheme', 'OneEleven', NULL),
	(2, 'bookmarks', 'on', NULL),
	(2, 'recent', 'on', NULL),
	(2, 'filemanager_cwd', 'uploads/images', NULL),
	(3, 'wysiwyg', 'MicroTiny', NULL),
	(3, 'default_cms_language', 'en_US', NULL),
	(3, 'admintheme', 'OneEleven', NULL),
	(3, 'bookmarks', 'on', NULL),
	(3, 'recent', 'on', NULL),
	(3, 'filemanager_cwd', 'uploads/ngrey', NULL),
	(3, 'collapse', '', NULL);
/*!40000 ALTER TABLE `cms_jetson_userprefs` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_users
DROP TABLE IF EXISTS `cms_jetson_users`;
CREATE TABLE IF NOT EXISTS `cms_jetson_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_users: 3 rows
/*!40000 ALTER TABLE `cms_jetson_users` DISABLE KEYS */;
INSERT INTO `cms_jetson_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES
	(1, 'webmaster', '75800cb69455f6deb44f3601fd3c346b', 1, '', '', 'webmaster@centralum.com', 1, '2006-07-25 21:22:33', '2009-05-13 07:43:16'),
	(2, 'noel', 'e591d2d136d2138dbd02981f88eca849', 1, '', '', 'luts111@gmail.com', 1, '2014-04-17 14:28:52', '2014-04-17 14:49:56'),
	(3, 'jetson', 'ab598c75ce25cf7595cb8e939869a6a4', 1, '', '', '', 1, '2014-04-17 14:56:37', '2014-04-17 14:56:37');
/*!40000 ALTER TABLE `cms_jetson_users` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_users_seq
DROP TABLE IF EXISTS `cms_jetson_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_jetson_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_users_seq: 1 rows
/*!40000 ALTER TABLE `cms_jetson_users_seq` DISABLE KEYS */;
INSERT INTO `cms_jetson_users_seq` (`id`) VALUES
	(3);
/*!40000 ALTER TABLE `cms_jetson_users_seq` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_user_groups
DROP TABLE IF EXISTS `cms_jetson_user_groups`;
CREATE TABLE IF NOT EXISTS `cms_jetson_user_groups` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_user_groups: 3 rows
/*!40000 ALTER TABLE `cms_jetson_user_groups` DISABLE KEYS */;
INSERT INTO `cms_jetson_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES
	(1, 1, '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
	(1, 2, NULL, NULL),
	(2, 3, NULL, NULL);
/*!40000 ALTER TABLE `cms_jetson_user_groups` ENABLE KEYS */;


-- Dumping structure for table allicense.cms_jetson_version
DROP TABLE IF EXISTS `cms_jetson_version`;
CREATE TABLE IF NOT EXISTS `cms_jetson_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.cms_jetson_version: 1 rows
/*!40000 ALTER TABLE `cms_jetson_version` DISABLE KEYS */;
INSERT INTO `cms_jetson_version` (`version`) VALUES
	(37);
/*!40000 ALTER TABLE `cms_jetson_version` ENABLE KEYS */;


-- Dumping structure for table allicense.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `shipAddressID` int(11) DEFAULT NULL,
  `billingAddressID` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `emailAddress` (`emailAddress`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.customers: 3 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customerID`, `emailAddress`, `password`, `firstName`, `lastName`, `shipAddressID`, `billingAddressID`) VALUES
	(1, 'allan.sherwood@yahoo.com', '650215acec746f0e32bdfff387439eefc1358737', 'Allan', 'Sherwood', 1, 2),
	(2, 'barryz@gmail.com', '3f563468d42a448cb1e56924529f6e7bbe529cc7', 'Barry', 'Zimmer', 3, 4),
	(3, 'christineb@solarone.com', 'ed19f5c0833094026a2f1e9e6f08a35d26037066', 'Christine', 'Brown', 5, 6);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_customers
DROP TABLE IF EXISTS `northwind_customers`;
CREATE TABLE IF NOT EXISTS `northwind_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext,
  `notes` longtext,
  `attachments` longblob,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `zip_postal_code` (`zip_postal_code`),
  KEY `state_province` (`state_province`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_customers: ~30 rows (approximately)
/*!40000 ALTER TABLE `northwind_customers` DISABLE KEYS */;
INSERT INTO `northwind_customers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `attachments`, `recordstatus`) VALUES
	(1, 'Company A', 'Bedecs', 'Anna', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 1st Street', 'Seattle', 'WA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(2, 'Company B', 'Axen', 'Thomas', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 2nd Street', 'Boston', 'MA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(3, 'Company C', 'Lee', 'Christina', NULL, 'Purchasing Representative', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 3rd Street', 'Los Angelas', 'CA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(4, 'Company D', 'ODonnell', 'Martin', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 4th Street', 'New York', 'NY', '99999', 'USA', NULL, NULL, _binary '', 1),
	(5, 'Company E', 'Perez-Olaeta', 'Francisco', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 5th Street', 'Minneapolis', 'MN', '99999', 'USA', NULL, NULL, _binary '', 1),
	(6, 'Company F', 'Xie', 'Ming-Yang', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', NULL, NULL, _binary '', 1),
	(7, 'Company G', 'Andersen', 'Elizabeth', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 7th Street', 'Boise', 'ID', '99999', 'USA', NULL, NULL, _binary '', 1),
	(8, 'Company H', 'Mortensen', 'Sven', NULL, 'Purchasing Representative', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 8th Street', 'Portland', 'OR', '99999', 'USA', NULL, NULL, _binary '', 1),
	(9, 'Company I', 'Wacker', 'Roland', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 9th Street', 'Salt Lake City', 'UT', '99999', 'USA', NULL, NULL, _binary '', 1),
	(10, 'Company J', 'Wacker', 'Roland', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 10th Street', 'Chicago', 'IL', '99999', 'USA', NULL, NULL, _binary '', 1),
	(11, 'Company K', 'Krschne', 'Peter', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 11th Street', 'Miami', 'FL', '99999', 'USA', NULL, NULL, _binary '', 1),
	(12, 'Company L', 'Edwards', 'John', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '123 12th Street', 'Las Vegas', 'NV', '99999', 'USA', NULL, NULL, _binary '', 1),
	(13, 'Company M', 'Ludick', 'Andre', NULL, 'Purchasing Representative', '(123)555-0100', NULL, NULL, '(123)555-0101', '456 13th Street', 'Memphis', 'TN', '99999', 'USA', NULL, NULL, _binary '', 1),
	(14, 'Company N', 'Grilo', 'Carlos', NULL, 'Purchasing Representative', '(123)555-0100', NULL, NULL, '(123)555-0101', '456 14th Street', 'Denver', 'CO', '99999', 'USA', NULL, NULL, _binary '', 1),
	(15, 'Company O', 'Kupkova', 'Helena', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '456 15th Street', 'Honolulu', 'HI', '99999', 'USA', NULL, NULL, _binary '', 1),
	(16, 'Company P', 'Goldschmidt', 'Daniel', NULL, 'Purchasing Representative', '(123)555-0100', NULL, NULL, '(123)555-0101', '456 16th Street', 'San Francisco', 'CA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(17, 'Company Q', 'Bagel', 'Jean Philippe', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '456 17th Street', 'Seattle', 'WA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(18, 'Company R', 'Autier Miconi', 'Catherine', NULL, 'Purchasing Representative', '(123)555-0100', NULL, NULL, '(123)555-0101', '456 18th Street', 'Boston', 'MA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(19, 'Company S', 'Eggerer', 'Alexander', NULL, 'Accounting Assistant', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 19th Street', 'Los Angelas', 'CA', '99999', 'USA', NULL, NULL, _binary '', 1),
	(20, 'Company T', 'Li', 'George', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 20th Street', 'New York', 'NY', '99999', 'USA', NULL, NULL, _binary '', 1),
	(21, 'Company U', 'Tham', 'Bernard', NULL, 'Accounting Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 21th Street', 'Minneapolis', 'MN', '99999', 'USA', NULL, NULL, _binary '', 1),
	(22, 'Company V', 'Ramos', 'Luciana', NULL, 'Purchasing Assistant', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 22th Street', 'Milwaukee', 'WI', '99999', 'USA', NULL, NULL, _binary '', 1),
	(23, 'Company W', 'Entin', 'Michael', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 23th Street', 'Portland', 'OR', '99999', 'USA', NULL, NULL, _binary '', 1),
	(24, 'Company X', 'Hasselberg', 'Jonas', NULL, 'Owner', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 24th Street', 'Salt Lake City', 'UT', '99999', 'USA', NULL, NULL, _binary '', 1),
	(25, 'Company Y', 'Rodman', 'John', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 25th Street', 'Chicago', 'IL', '99999', 'USA', NULL, NULL, _binary '', 1),
	(26, 'Company Z', 'Liu', 'Run', NULL, 'Accounting Assistant', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 26th Street', 'Miami', 'FL', '99999', 'USA', NULL, NULL, _binary '', 1),
	(27, 'Company AA', 'Toh', 'Karen', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 27th Street', 'Las Vegas', 'NV', '99999', 'USA', NULL, NULL, _binary '', 1),
	(28, 'Company BB', 'Raghav', 'Amritansh', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 28th Street', 'Memphis', 'TN', '99999', 'USA', NULL, NULL, _binary '', 1),
	(29, 'Company CC', 'Lee', 'Soo Jung', NULL, 'Purchasing Manager', '(123)555-0100', NULL, NULL, '(123)555-0101', '789 29th Street', 'Denver', 'CO', '99999', 'USA', NULL, NULL, _binary '', 1),
	(34, 'asdf', 'asdf', 'frank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `northwind_customers` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_employees
DROP TABLE IF EXISTS `northwind_employees`;
CREATE TABLE IF NOT EXISTS `northwind_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext,
  `password` varchar(25) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext,
  `notes` longtext,
  `attachments` longblob,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `zip_postal_code` (`zip_postal_code`),
  KEY `state_province` (`state_province`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_employees: ~19 rows (approximately)
/*!40000 ALTER TABLE `northwind_employees` DISABLE KEYS */;
INSERT INTO `northwind_employees` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `password`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `attachments`, `recordstatus`) VALUES
	(1, 'Northwind Traders', 'Freehafer', 'Nancy', 'nancy@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 1st Avenue', '123', 'Seattle', 'WA', '99999', 'USA', '#http://northwindtraders.com#', NULL, _binary '', 1),
	(2, 'Northwind Traders', 'Cencini', 'Andrew', 'andrew@northwindtraders.com', 'Vice President, Sales', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 2nd Avenue', '123', 'Bellevue', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.', _binary '', 1),
	(3, 'Northwind Traders', 'Kotas', 'Jennie', 'jan@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 3rd Avenue', '123', 'Redmond', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Was hired as a sales associate and was promoted to sales representative.', _binary '', 1),
	(4, 'Northwind Traders', 'Sergienko', 'Mariya', 'mariya@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 4th Avenue', '123', 'Kirkland', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', NULL, _binary '', 1),
	(5, 'Northwind Traders', 'Thorpe', 'Steven', 'steven@northwindtraders.com', 'Sales Manager', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 5th Avenue', '123', 'Seattle', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Joined the company as a sales representative and was promoted to sales manager.  Fluent in French.', _binary '', 1),
	(6, 'Northwind Traders', 'Neipper', 'Michael', 'michael@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 6th Avenue', '123', 'Redmond', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Fluent in Japanese and can read and write French, Portuguese, and Spanish.', _binary '', 1),
	(7, 'Northwind Traders', 'Zare', 'Robert', 'robert@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 7th Avenue', '123', 'Seattle', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', NULL, _binary '', 1),
	(8, 'Northwind Traders', 'Giussani', 'Laura', 'laura@northwindtraders.com', 'Sales Coordinator', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 8th Avenue', '123', 'Redmond', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Reads and writes French.', _binary '', 1),
	(9, 'Northwind Traders', 'Hellung-Larsen', 'Annabelle', 'anne@northwindtraders.com', 'Sales Representative', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 9th Avenue', '123', 'Seattle', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Fluent in French and German.', _binary '', 1),
	(30, 'Northwind Traders', 'Lunderberg', 'Dean', 'dean.lunderberg@gmail.com', 'none', '(123)555-0100', NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(126, 'php', 'Barot', 'Vishal', 'v@123.com', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(130, 'ATC', 'barot2', 'vishal2', 'vb@123.com', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(131, 'Northwind Traders', 'Hagen', 'Preston', 'preston@northwindtraders.com', 'Vice President, Sales', '(123)555-0100', '(123)555-0102', NULL, '(123)555-0103', '123 2nd Avenue', '123', 'Seattle', 'WA', '99999', 'USA', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.', NULL, 1),
	(133, 'ATC', 'Kewatt', 'Kenneth', 'me@me.com', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(141, 'Student', 'Ndingwan', 'Awah', 'a@northwind.com', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(143, 'Boston Scientific', 'Ndingwan', 'Awah', 'ay@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(145, 'happy', 'Wagner', 'Nick', '77@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(146, 'joe', 't', 'willy', 'type@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(147, 'Northwind Traders', 'Kent', 'Rachael', 'rbkent07@gmail.com', 'none', '(123)555-0100', NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `northwind_employees` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_employee_privileges
DROP TABLE IF EXISTS `northwind_employee_privileges`;
CREATE TABLE IF NOT EXISTS `northwind_employee_privileges` (
  `employee_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`employee_id`,`privilege_id`),
  KEY `employee_id` (`employee_id`),
  KEY `privilege_id` (`privilege_id`),
  KEY `privilege_id_2` (`privilege_id`),
  CONSTRAINT `fk_employee_privileges_employees1` FOREIGN KEY (`employee_id`) REFERENCES `northwind_employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_privileges_privileges1` FOREIGN KEY (`privilege_id`) REFERENCES `northwind_privileges` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_employee_privileges: ~1 rows (approximately)
/*!40000 ALTER TABLE `northwind_employee_privileges` DISABLE KEYS */;
INSERT INTO `northwind_employee_privileges` (`employee_id`, `privilege_id`, `recordstatus`) VALUES
	(2, 2, 1);
/*!40000 ALTER TABLE `northwind_employee_privileges` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_inventory_transactions
DROP TABLE IF EXISTS `northwind_inventory_transactions`;
CREATE TABLE IF NOT EXISTS `northwind_inventory_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_type` tinyint(4) NOT NULL,
  `transaction_created_date` datetime DEFAULT NULL,
  `transaction_modified_date` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `customer_order_id` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customer_order_id` (`customer_order_id`),
  KEY `customer_order_id_2` (`customer_order_id`),
  KEY `product_id` (`product_id`),
  KEY `product_id_2` (`product_id`),
  KEY `purchase_order_id` (`purchase_order_id`),
  KEY `purchase_order_id_2` (`purchase_order_id`),
  KEY `transaction_type` (`transaction_type`),
  CONSTRAINT `fk_inventory_transactions_inventory_transaction_types1` FOREIGN KEY (`transaction_type`) REFERENCES `northwind_inventory_transaction_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inventory_transactions_orders1` FOREIGN KEY (`customer_order_id`) REFERENCES `northwind_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inventory_transactions_products1` FOREIGN KEY (`product_id`) REFERENCES `northwind_products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inventory_transactions_purchase_orders1` FOREIGN KEY (`purchase_order_id`) REFERENCES `northwind_purchase_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_inventory_transactions: ~102 rows (approximately)
/*!40000 ALTER TABLE `northwind_inventory_transactions` DISABLE KEYS */;
INSERT INTO `northwind_inventory_transactions` (`id`, `transaction_type`, `transaction_created_date`, `transaction_modified_date`, `product_id`, `quantity`, `purchase_order_id`, `customer_order_id`, `comments`, `recordstatus`) VALUES
	(35, 1, '2006-03-22 16:02:28', '2006-03-22 16:02:28', 80, 75, NULL, NULL, NULL, 1),
	(36, 1, '2006-03-22 16:02:48', '2006-03-22 16:02:48', 72, 40, NULL, NULL, NULL, 1),
	(37, 1, '2006-03-22 16:03:04', '2006-03-22 16:03:04', 52, 100, NULL, NULL, NULL, 1),
	(38, 1, '2006-03-22 16:03:09', '2006-03-22 16:03:09', 56, 120, NULL, NULL, NULL, 1),
	(39, 1, '2006-03-22 16:03:14', '2006-03-22 16:03:14', 57, 80, NULL, NULL, NULL, 1),
	(40, 1, '2006-03-22 16:03:40', '2006-03-22 16:03:40', 6, 100, NULL, NULL, NULL, 1),
	(41, 1, '2006-03-22 16:03:47', '2006-03-22 16:03:47', 7, 40, NULL, NULL, NULL, 1),
	(42, 1, '2006-03-22 16:03:54', '2006-03-22 16:03:54', 8, 40, NULL, NULL, NULL, 1),
	(43, 1, '2006-03-22 16:04:02', '2006-03-22 16:04:02', 14, 40, NULL, NULL, NULL, 1),
	(44, 1, '2006-03-22 16:04:07', '2006-03-22 16:04:07', 17, 40, NULL, NULL, NULL, 1),
	(45, 1, '2006-03-22 16:04:12', '2006-03-22 16:04:12', 19, 20, NULL, NULL, NULL, 1),
	(46, 1, '2006-03-22 16:04:17', '2006-03-22 16:04:17', 20, 40, NULL, NULL, NULL, 1),
	(47, 1, '2006-03-22 16:04:20', '2006-03-22 16:04:20', 21, 20, NULL, NULL, NULL, 1),
	(48, 1, '2006-03-22 16:04:24', '2006-03-22 16:04:24', 40, 120, NULL, NULL, NULL, 1),
	(49, 1, '2006-03-22 16:04:28', '2006-03-22 16:04:28', 41, 40, NULL, NULL, NULL, 1),
	(50, 1, '2006-03-22 16:04:31', '2006-03-22 16:04:31', 48, 100, NULL, NULL, NULL, 1),
	(51, 1, '2006-03-22 16:04:38', '2006-03-22 16:04:38', 51, 40, NULL, NULL, NULL, 1),
	(52, 1, '2006-03-22 16:04:41', '2006-03-22 16:04:41', 74, 20, NULL, NULL, NULL, 1),
	(53, 1, '2006-03-22 16:04:45', '2006-03-22 16:04:45', 77, 60, NULL, NULL, NULL, 1),
	(54, 1, '2006-03-22 16:05:07', '2006-03-22 16:05:07', 3, 100, NULL, NULL, NULL, 1),
	(55, 1, '2006-03-22 16:05:11', '2006-03-22 16:05:11', 4, 40, NULL, NULL, NULL, 1),
	(56, 1, '2006-03-22 16:05:14', '2006-03-22 16:05:14', 5, 40, NULL, NULL, NULL, 1),
	(57, 1, '2006-03-22 16:05:26', '2006-03-22 16:05:26', 65, 40, NULL, NULL, NULL, 1),
	(58, 1, '2006-03-22 16:05:32', '2006-03-22 16:05:32', 66, 80, NULL, NULL, NULL, 1),
	(59, 1, '2006-03-22 16:05:47', '2006-03-22 16:05:47', 1, 40, NULL, NULL, NULL, 1),
	(60, 1, '2006-03-22 16:05:51', '2006-03-22 16:05:51', 34, 60, NULL, NULL, NULL, 1),
	(61, 1, '2006-03-22 16:06:00', '2006-03-22 16:06:00', 43, 100, NULL, NULL, NULL, 1),
	(62, 1, '2006-03-22 16:06:03', '2006-03-22 16:06:03', 81, 125, NULL, NULL, NULL, 1),
	(63, 2, '2006-03-22 16:07:56', '2006-03-24 11:03:00', 80, 30, NULL, NULL, NULL, 1),
	(64, 2, '2006-03-22 16:08:19', '2006-03-22 16:08:59', 7, 10, NULL, NULL, NULL, 1),
	(65, 2, '2006-03-22 16:08:29', '2006-03-22 16:08:59', 51, 10, NULL, NULL, NULL, 1),
	(66, 2, '2006-03-22 16:08:37', '2006-03-22 16:08:59', 80, 10, NULL, NULL, NULL, 1),
	(67, 2, '2006-03-22 16:09:46', '2006-03-22 16:10:27', 1, 15, NULL, NULL, NULL, 1),
	(68, 2, '2006-03-22 16:10:06', '2006-03-22 16:10:27', 43, 20, NULL, NULL, NULL, 1),
	(69, 2, '2006-03-22 16:11:39', '2006-03-24 11:00:55', 19, 20, NULL, NULL, NULL, 1),
	(70, 2, '2006-03-22 16:11:56', '2006-03-24 10:59:41', 48, 10, NULL, NULL, NULL, 1),
	(71, 2, '2006-03-22 16:12:29', '2006-03-24 10:57:38', 8, 17, NULL, NULL, NULL, 1),
	(72, 1, '2006-03-24 10:41:30', '2006-03-24 10:41:30', 81, 200, NULL, NULL, NULL, 1),
	(73, 2, '2006-03-24 10:41:33', '2006-03-24 10:41:42', 81, 200, NULL, NULL, 'Fill Back Ordered product, Order #40', 1),
	(74, 1, '2006-03-24 10:53:13', '2006-03-24 10:53:13', 48, 100, NULL, NULL, NULL, 1),
	(75, 2, '2006-03-24 10:53:16', '2006-03-24 10:55:46', 48, 100, NULL, NULL, 'Fill Back Ordered product, Order #39', 1),
	(76, 1, '2006-03-24 10:53:36', '2006-03-24 10:53:36', 43, 300, NULL, NULL, NULL, 1),
	(77, 2, '2006-03-24 10:53:39', '2006-03-24 10:56:57', 43, 300, NULL, NULL, 'Fill Back Ordered product, Order #38', 1),
	(78, 1, '2006-03-24 10:54:04', '2006-03-24 10:54:04', 41, 200, NULL, NULL, NULL, 1),
	(79, 2, '2006-03-24 10:54:07', '2006-03-24 10:58:40', 41, 200, NULL, NULL, 'Fill Back Ordered product, Order #36', 1),
	(80, 1, '2006-03-24 10:54:33', '2006-03-24 10:54:33', 19, 30, NULL, NULL, NULL, 1),
	(81, 2, '2006-03-24 10:54:35', '2006-03-24 11:02:02', 19, 30, NULL, NULL, 'Fill Back Ordered product, Order #33', 1),
	(82, 1, '2006-03-24 10:54:58', '2006-03-24 10:54:58', 34, 100, NULL, NULL, NULL, 1),
	(83, 2, '2006-03-24 10:55:02', '2006-03-24 11:03:00', 34, 100, NULL, NULL, 'Fill Back Ordered product, Order #30', 1),
	(84, 2, '2006-03-24 14:48:15', '2006-04-04 11:41:14', 6, 10, NULL, NULL, NULL, 1),
	(85, 2, '2006-03-24 14:48:23', '2006-04-04 11:41:14', 4, 10, NULL, NULL, NULL, 1),
	(86, 3, '2006-03-24 14:49:16', '2006-03-24 14:49:16', 80, 20, NULL, NULL, NULL, 1),
	(87, 3, '2006-03-24 14:49:20', '2006-03-24 14:49:20', 81, 50, NULL, NULL, NULL, 1),
	(88, 3, '2006-03-24 14:50:09', '2006-03-24 14:50:09', 1, 25, NULL, NULL, NULL, 1),
	(89, 3, '2006-03-24 14:50:14', '2006-03-24 14:50:14', 43, 25, NULL, NULL, NULL, 1),
	(90, 3, '2006-03-24 14:50:18', '2006-03-24 14:50:18', 81, 25, NULL, NULL, NULL, 1),
	(91, 2, '2006-03-24 14:51:03', '2006-04-04 11:09:24', 40, 50, NULL, NULL, NULL, 1),
	(92, 2, '2006-03-24 14:55:03', '2006-04-04 11:06:56', 21, 20, NULL, NULL, NULL, 1),
	(93, 2, '2006-03-24 14:55:39', '2006-04-04 11:06:13', 5, 25, NULL, NULL, NULL, 1),
	(94, 2, '2006-03-24 14:55:52', '2006-04-04 11:06:13', 41, 30, NULL, NULL, NULL, 1),
	(95, 2, '2006-03-24 14:56:09', '2006-04-04 11:06:13', 40, 30, NULL, NULL, NULL, 1),
	(96, 3, '2006-03-30 16:46:34', '2006-03-30 16:46:34', 34, 12, NULL, NULL, NULL, 1),
	(97, 3, '2006-03-30 17:23:27', '2006-03-30 17:23:27', 34, 10, NULL, NULL, NULL, 1),
	(98, 3, '2006-03-30 17:24:33', '2006-03-30 17:24:33', 34, 1, NULL, NULL, NULL, 1),
	(99, 2, '2006-04-03 13:50:08', '2006-04-03 13:50:15', 48, 10, NULL, NULL, NULL, 1),
	(100, 1, '2006-04-04 11:00:54', '2006-04-04 11:00:54', 57, 100, NULL, NULL, NULL, 1),
	(101, 2, '2006-04-04 11:00:56', '2006-04-04 11:08:49', 57, 100, NULL, NULL, 'Fill Back Ordered product, Order #46', 1),
	(102, 1, '2006-04-04 11:01:14', '2006-04-04 11:01:14', 34, 50, NULL, NULL, NULL, 1),
	(103, 1, '2006-04-04 11:01:35', '2006-04-04 11:01:35', 43, 250, NULL, NULL, NULL, 1),
	(104, 3, '2006-04-04 11:01:37', '2006-04-04 11:01:37', 43, 300, NULL, NULL, 'Fill Back Ordered product, Order #41', 1),
	(105, 1, '2006-04-04 11:01:55', '2006-04-04 11:01:55', 8, 25, NULL, NULL, NULL, 1),
	(106, 2, '2006-04-04 11:01:58', '2006-04-04 11:07:37', 8, 25, NULL, NULL, 'Fill Back Ordered product, Order #48', 1),
	(107, 1, '2006-04-04 11:02:17', '2006-04-04 11:02:17', 34, 300, NULL, NULL, NULL, 1),
	(108, 2, '2006-04-04 11:02:19', '2006-04-04 11:08:14', 34, 300, NULL, NULL, 'Fill Back Ordered product, Order #47', 1),
	(109, 1, '2006-04-04 11:02:37', '2006-04-04 11:02:37', 19, 25, NULL, NULL, NULL, 1),
	(110, 2, '2006-04-04 11:02:39', '2006-04-04 11:41:14', 19, 10, NULL, NULL, 'Fill Back Ordered product, Order #42', 1),
	(111, 1, '2006-04-04 11:02:56', '2006-04-04 11:02:56', 19, 10, NULL, NULL, NULL, 1),
	(112, 2, '2006-04-04 11:02:58', '2006-04-04 11:07:37', 19, 25, NULL, NULL, 'Fill Back Ordered product, Order #48', 1),
	(113, 1, '2006-04-04 11:03:12', '2006-04-04 11:03:12', 72, 50, NULL, NULL, NULL, 1),
	(114, 2, '2006-04-04 11:03:14', '2006-04-04 11:08:49', 72, 50, NULL, NULL, 'Fill Back Ordered product, Order #46', 1),
	(115, 1, '2006-04-04 11:03:38', '2006-04-04 11:03:38', 41, 50, NULL, NULL, NULL, 1),
	(116, 2, '2006-04-04 11:03:39', '2006-04-04 11:09:24', 41, 50, NULL, NULL, 'Fill Back Ordered product, Order #45', 1),
	(117, 2, '2006-04-04 11:04:55', '2006-04-04 11:05:04', 34, 87, NULL, NULL, NULL, 1),
	(118, 2, '2006-04-04 11:35:50', '2006-04-04 11:35:54', 51, 30, NULL, NULL, NULL, 1),
	(119, 2, '2006-04-04 11:35:51', '2006-04-04 11:35:54', 7, 30, NULL, NULL, NULL, 1),
	(120, 2, '2006-04-04 11:36:15', '2006-04-04 11:36:21', 17, 40, NULL, NULL, NULL, 1),
	(121, 2, '2006-04-04 11:36:39', '2006-04-04 11:36:47', 6, 90, NULL, NULL, NULL, 1),
	(122, 2, '2006-04-04 11:37:06', '2006-04-04 11:37:09', 4, 30, NULL, NULL, NULL, 1),
	(123, 2, '2006-04-04 11:37:45', '2006-04-04 11:37:49', 48, 40, NULL, NULL, NULL, 1),
	(124, 2, '2006-04-04 11:38:07', '2006-04-04 11:38:11', 48, 40, NULL, NULL, NULL, 1),
	(125, 2, '2006-04-04 11:38:27', '2006-04-04 11:38:32', 41, 10, NULL, NULL, NULL, 1),
	(126, 2, '2006-04-04 11:38:48', '2006-04-04 11:38:53', 43, 5, NULL, NULL, NULL, 1),
	(127, 2, '2006-04-04 11:39:12', '2006-04-04 11:39:29', 40, 40, NULL, NULL, NULL, 1),
	(128, 2, '2006-04-04 11:39:50', '2006-04-04 11:39:53', 8, 20, NULL, NULL, NULL, 1),
	(129, 2, '2006-04-04 11:40:13', '2006-04-04 11:40:16', 80, 15, NULL, NULL, NULL, 1),
	(130, 2, '2006-04-04 11:40:32', '2006-04-04 11:40:38', 74, 20, NULL, NULL, NULL, 1),
	(131, 2, '2006-04-04 11:41:39', '2006-04-04 11:41:45', 72, 40, NULL, NULL, NULL, 1),
	(132, 2, '2006-04-04 11:42:17', '2006-04-04 11:42:26', 3, 50, NULL, NULL, NULL, 1),
	(133, 2, '2006-04-04 11:42:24', '2006-04-04 11:42:26', 8, 3, NULL, NULL, NULL, 1),
	(134, 2, '2006-04-04 11:42:48', '2006-04-04 11:43:08', 20, 40, NULL, NULL, NULL, 1),
	(135, 2, '2006-04-04 11:43:05', '2006-04-04 11:43:08', 52, 40, NULL, NULL, NULL, 1),
	(136, 3, '2006-04-25 17:04:05', '2006-04-25 17:04:57', 56, 110, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `northwind_inventory_transactions` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_inventory_transaction_types
DROP TABLE IF EXISTS `northwind_inventory_transaction_types`;
CREATE TABLE IF NOT EXISTS `northwind_inventory_transaction_types` (
  `id` tinyint(4) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_inventory_transaction_types: ~4 rows (approximately)
/*!40000 ALTER TABLE `northwind_inventory_transaction_types` DISABLE KEYS */;
INSERT INTO `northwind_inventory_transaction_types` (`id`, `type_name`, `recordstatus`) VALUES
	(1, 'Purchased', 1),
	(2, 'Sold', 1),
	(3, 'On Hold', 1),
	(4, 'Waste', 1);
/*!40000 ALTER TABLE `northwind_inventory_transaction_types` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_invoices
DROP TABLE IF EXISTS `northwind_invoices`;
CREATE TABLE IF NOT EXISTS `northwind_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `tax` decimal(19,4) DEFAULT '0.0000',
  `shipping` decimal(19,4) DEFAULT '0.0000',
  `amount_due` decimal(19,4) DEFAULT '0.0000',
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `fk_invoices_orders1_idx` (`order_id`),
  CONSTRAINT `fk_invoices_orders1` FOREIGN KEY (`order_id`) REFERENCES `northwind_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_invoices: ~35 rows (approximately)
/*!40000 ALTER TABLE `northwind_invoices` DISABLE KEYS */;
INSERT INTO `northwind_invoices` (`id`, `order_id`, `invoice_date`, `due_date`, `tax`, `shipping`, `amount_due`, `recordstatus`) VALUES
	(5, 31, '2006-03-22 16:08:59', NULL, 0.0000, 0.0000, 0.0000, 1),
	(6, 32, '2006-03-22 16:10:27', NULL, 0.0000, 0.0000, 0.0000, 1),
	(7, 40, '2006-03-24 10:41:41', NULL, 0.0000, 0.0000, 0.0000, 1),
	(8, 39, '2006-03-24 10:55:46', NULL, 0.0000, 0.0000, 0.0000, 1),
	(9, 38, '2006-03-24 10:56:57', NULL, 0.0000, 0.0000, 0.0000, 1),
	(10, 37, '2006-03-24 10:57:38', NULL, 0.0000, 0.0000, 0.0000, 1),
	(11, 36, '2006-03-24 10:58:40', NULL, 0.0000, 0.0000, 0.0000, 1),
	(12, 35, '2006-03-24 10:59:41', NULL, 0.0000, 0.0000, 0.0000, 1),
	(13, 34, '2006-03-24 11:00:55', NULL, 0.0000, 0.0000, 0.0000, 1),
	(14, 33, '2006-03-24 11:02:02', NULL, 0.0000, 0.0000, 0.0000, 1),
	(15, 30, '2006-03-24 11:03:00', NULL, 0.0000, 0.0000, 0.0000, 1),
	(16, 56, '2006-04-03 13:50:15', NULL, 0.0000, 0.0000, 0.0000, 1),
	(17, 55, '2006-04-04 11:05:04', NULL, 0.0000, 0.0000, 0.0000, 1),
	(18, 51, '2006-04-04 11:06:13', NULL, 0.0000, 0.0000, 0.0000, 1),
	(19, 50, '2006-04-04 11:06:56', NULL, 0.0000, 0.0000, 0.0000, 1),
	(20, 48, '2006-04-04 11:07:37', NULL, 0.0000, 0.0000, 0.0000, 1),
	(21, 47, '2006-04-04 11:08:14', NULL, 0.0000, 0.0000, 0.0000, 1),
	(22, 46, '2006-04-04 11:08:49', NULL, 0.0000, 0.0000, 0.0000, 1),
	(23, 45, '2006-04-04 11:09:24', NULL, 0.0000, 0.0000, 0.0000, 1),
	(24, 79, '2006-04-04 11:35:54', NULL, 0.0000, 0.0000, 0.0000, 1),
	(25, 78, '2006-04-04 11:36:21', NULL, 0.0000, 0.0000, 0.0000, 1),
	(26, 77, '2006-04-04 11:36:47', NULL, 0.0000, 0.0000, 0.0000, 1),
	(27, 76, '2006-04-04 11:37:09', NULL, 0.0000, 0.0000, 0.0000, 1),
	(28, 75, '2006-04-04 11:37:49', NULL, 0.0000, 0.0000, 0.0000, 1),
	(29, 74, '2006-04-04 11:38:11', NULL, 0.0000, 0.0000, 0.0000, 1),
	(30, 73, '2006-04-04 11:38:32', NULL, 0.0000, 0.0000, 0.0000, 1),
	(31, 72, '2006-04-04 11:38:53', NULL, 0.0000, 0.0000, 0.0000, 1),
	(32, 71, '2006-04-04 11:39:29', NULL, 0.0000, 0.0000, 0.0000, 1),
	(33, 70, '2006-04-04 11:39:53', NULL, 0.0000, 0.0000, 0.0000, 1),
	(34, 69, '2006-04-04 11:40:16', NULL, 0.0000, 0.0000, 0.0000, 1),
	(35, 67, '2006-04-04 11:40:38', NULL, 0.0000, 0.0000, 0.0000, 1),
	(36, 42, '2006-04-04 11:41:14', NULL, 0.0000, 0.0000, 0.0000, 1),
	(37, 60, '2006-04-04 11:41:45', NULL, 0.0000, 0.0000, 0.0000, 1),
	(38, 63, '2006-04-04 11:42:26', NULL, 0.0000, 0.0000, 0.0000, 1),
	(39, 58, '2006-04-04 11:43:08', NULL, 0.0000, 0.0000, 0.0000, 1);
/*!40000 ALTER TABLE `northwind_invoices` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_orders
DROP TABLE IF EXISTS `northwind_orders`;
CREATE TABLE IF NOT EXISTS `northwind_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_address` longtext,
  `ship_city` varchar(50) DEFAULT NULL,
  `ship_state_province` varchar(50) DEFAULT NULL,
  `ship_zip_postal_code` varchar(50) DEFAULT NULL,
  `ship_country_region` varchar(50) DEFAULT NULL,
  `shipping_fee` decimal(19,4) DEFAULT '0.0000',
  `taxes` decimal(19,4) DEFAULT '0.0000',
  `payment_type` varchar(50) DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `notes` longtext,
  `tax_rate` double DEFAULT '0',
  `tax_status_id` tinyint(4) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT '0',
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `customer_id_2` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `employee_id_2` (`employee_id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `shipper_id` (`shipper_id`),
  KEY `shipper_id_2` (`shipper_id`),
  KEY `id_3` (`id`),
  KEY `tax_status` (`tax_status_id`),
  KEY `ship_zip_postal_code` (`ship_zip_postal_code`),
  KEY `fk_orders_orders_status1` (`status_id`),
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `northwind_customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_employees1` FOREIGN KEY (`employee_id`) REFERENCES `northwind_employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_orders_status1` FOREIGN KEY (`status_id`) REFERENCES `northwind_orders_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_orders_tax_status1` FOREIGN KEY (`tax_status_id`) REFERENCES `northwind_orders_tax_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_shippers1` FOREIGN KEY (`shipper_id`) REFERENCES `northwind_shippers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_orders: ~48 rows (approximately)
/*!40000 ALTER TABLE `northwind_orders` DISABLE KEYS */;
INSERT INTO `northwind_orders` (`id`, `employee_id`, `customer_id`, `order_date`, `shipped_date`, `shipper_id`, `ship_name`, `ship_address`, `ship_city`, `ship_state_province`, `ship_zip_postal_code`, `ship_country_region`, `shipping_fee`, `taxes`, `payment_type`, `paid_date`, `notes`, `tax_rate`, `tax_status_id`, `status_id`, `recordstatus`) VALUES
	(30, 9, 27, '2006-01-15 00:00:00', '2006-01-22 00:00:00', 2, 'Karen Toh', '789 27th Street', 'Las Vegas', 'NV', '99999', 'USA', 200.0000, 0.0000, 'Check', '2006-01-15 00:00:00', NULL, 0, NULL, 3, 1),
	(31, 3, 4, '2006-01-20 00:00:00', '2006-01-22 00:00:00', 1, 'Christina Lee', '123 4th Street', 'New York', 'NY', '99999', 'USA', 5.0000, 0.0000, 'Credit Card', '2006-01-20 00:00:00', NULL, 0, NULL, 3, 1),
	(32, 4, 12, '2006-01-22 00:00:00', '2006-01-22 00:00:00', 2, 'John Edwards', '123 12th Street', 'Las Vegas', 'NV', '99999', 'USA', 5.0000, 0.0000, 'Credit Card', '2006-01-22 00:00:00', NULL, 0, NULL, 3, 1),
	(33, 6, 8, '2006-01-30 00:00:00', '2006-01-31 00:00:00', 3, 'Elizabeth Andersen', '123 8th Street', 'Portland', 'OR', '99999', 'USA', 50.0000, 0.0000, 'Credit Card', '2006-01-30 00:00:00', NULL, 0, NULL, 3, 1),
	(34, 9, 4, '2006-02-06 00:00:00', '2006-02-07 00:00:00', 3, 'Christina Lee', '123 4th Street', 'New York', 'NY', '99999', 'USA', 4.0000, 0.0000, 'Check', '2006-02-06 00:00:00', NULL, 0, NULL, 3, 1),
	(35, 3, 29, '2006-02-10 00:00:00', '2006-02-12 00:00:00', 2, 'Soo Jung Lee', '789 29th Street', 'Denver', 'CO', '99999', 'USA', 7.0000, 0.0000, 'Check', '2006-02-10 00:00:00', NULL, 0, NULL, 3, 1),
	(36, 4, 3, '2006-02-23 00:00:00', '2006-02-25 00:00:00', 2, 'Thomas Axen', '123 3rd Street', 'Los Angelas', 'CA', '99999', 'USA', 7.0000, 0.0000, 'Cash', '2006-02-23 00:00:00', NULL, 0, NULL, 3, 1),
	(37, 8, 6, '2006-03-06 00:00:00', '2006-03-09 00:00:00', 2, 'Francisco Pérez-Olaeta', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', 12.0000, 0.0000, 'Credit Card', '2006-03-06 00:00:00', NULL, 0, NULL, 3, 1),
	(38, 9, 28, '2006-03-10 00:00:00', '2006-03-11 00:00:00', 3, 'Amritansh Raghav', '789 28th Street', 'Memphis', 'TN', '99999', 'USA', 10.0000, 0.0000, 'Check', '2006-03-10 00:00:00', NULL, 0, NULL, 3, 1),
	(39, 3, 8, '2006-03-22 00:00:00', '2006-03-24 00:00:00', 3, 'Elizabeth Andersen', '123 8th Street', 'Portland', 'OR', '99999', 'USA', 5.0000, 0.0000, 'Check', '2006-03-22 00:00:00', NULL, 0, NULL, 3, 1),
	(40, 4, 10, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, 'Roland Wacker', '123 10th Street', 'Chicago', 'IL', '99999', 'USA', 9.0000, 0.0000, 'Credit Card', '2006-03-24 00:00:00', NULL, 0, NULL, 3, 1),
	(41, 1, 7, '2006-03-24 00:00:00', NULL, NULL, 'Ming-Yang Xie', '123 7th Street', 'Boise', 'ID', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(42, 1, 10, '2006-03-24 00:00:00', '2006-04-07 00:00:00', 1, 'Roland Wacker', '123 10th Street', 'Chicago', 'IL', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 2, 1),
	(43, 1, 11, '2006-03-24 00:00:00', NULL, 3, 'Peter Krschne', '123 11th Street', 'Miami', 'FL', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(44, 1, 1, '2006-03-24 00:00:00', NULL, NULL, 'Anna Bedecs', '123 1st Street', 'Seattle', 'WA', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(45, 1, 28, '2006-04-07 00:00:00', '2006-04-07 00:00:00', 3, 'Amritansh Raghav', '789 28th Street', 'Memphis', 'TN', '99999', 'USA', 40.0000, 0.0000, 'Credit Card', '2006-04-07 00:00:00', NULL, 0, NULL, 3, 1),
	(46, 7, 9, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 1, 'Sven Mortensen', '123 9th Street', 'Salt Lake City', 'UT', '99999', 'USA', 100.0000, 0.0000, 'Check', '2006-04-05 00:00:00', NULL, 0, NULL, 3, 1),
	(47, 6, 6, '2006-04-08 00:00:00', '2006-04-08 00:00:00', 2, 'Francisco Pérez-Olaeta', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', 300.0000, 0.0000, 'Credit Card', '2006-04-08 00:00:00', NULL, 0, NULL, 3, 1),
	(48, 4, 8, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 2, 'Elizabeth Andersen', '123 8th Street', 'Portland', 'OR', '99999', 'USA', 50.0000, 0.0000, 'Check', '2006-04-05 00:00:00', NULL, 0, NULL, 3, 1),
	(50, 9, 25, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 1, 'John Rodman', '789 25th Street', 'Chicago', 'IL', '99999', 'USA', 5.0000, 0.0000, 'Cash', '2006-04-05 00:00:00', NULL, 0, NULL, 3, 1),
	(51, 9, 26, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 3, 'Run Liu', '789 26th Street', 'Miami', 'FL', '99999', 'USA', 60.0000, 0.0000, 'Credit Card', '2006-04-05 00:00:00', NULL, 0, NULL, 3, 1),
	(55, 1, 29, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 2, 'Soo Jung Lee', '789 29th Street', 'Denver', 'CO', '99999', 'USA', 200.0000, 0.0000, 'Check', '2006-04-05 00:00:00', NULL, 0, NULL, 3, 1),
	(56, 2, 6, '2006-04-03 00:00:00', '2006-04-03 00:00:00', 3, 'Francisco Pérez-Olaeta', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', 0.0000, 0.0000, 'Check', '2006-04-03 00:00:00', NULL, 0, NULL, 3, 1),
	(57, 9, 27, '2006-04-22 00:00:00', '2006-04-22 00:00:00', 2, 'Karen Toh', '789 27th Street', 'Las Vegas', 'NV', '99999', 'USA', 200.0000, 0.0000, 'Check', '2006-04-22 00:00:00', NULL, 0, NULL, 0, 1),
	(58, 3, 4, '2006-04-22 00:00:00', '2006-04-22 00:00:00', 1, 'Christina Lee', '123 4th Street', 'New York', 'NY', '99999', 'USA', 5.0000, 0.0000, 'Credit Card', '2006-04-22 00:00:00', NULL, 0, NULL, 3, 1),
	(59, 4, 12, '2006-04-22 00:00:00', '2006-04-22 00:00:00', 2, 'John Edwards', '123 12th Street', 'Las Vegas', 'NV', '99999', 'USA', 5.0000, 0.0000, 'Credit Card', '2006-04-22 00:00:00', NULL, 0, NULL, 0, 1),
	(60, 6, 8, '2006-04-30 00:00:00', '2006-04-30 00:00:00', 3, 'Elizabeth Andersen', '123 8th Street', 'Portland', 'OR', '99999', 'USA', 50.0000, 0.0000, 'Credit Card', '2006-04-30 00:00:00', NULL, 0, NULL, 3, 1),
	(61, 9, 4, '2006-04-07 00:00:00', '2006-04-07 00:00:00', 3, 'Christina Lee', '123 4th Street', 'New York', 'NY', '99999', 'USA', 4.0000, 0.0000, 'Check', '2006-04-07 00:00:00', NULL, 0, NULL, 0, 1),
	(62, 3, 29, '2006-04-12 00:00:00', '2006-04-12 00:00:00', 2, 'Soo Jung Lee', '789 29th Street', 'Denver', 'CO', '99999', 'USA', 7.0000, 0.0000, 'Check', '2006-04-12 00:00:00', NULL, 0, NULL, 0, 1),
	(63, 4, 3, '2006-04-25 00:00:00', '2006-04-25 00:00:00', 2, 'Thomas Axen', '123 3rd Street', 'Los Angelas', 'CA', '99999', 'USA', 7.0000, 0.0000, 'Cash', '2006-04-25 00:00:00', NULL, 0, NULL, 3, 1),
	(64, 8, 6, '2006-05-09 00:00:00', '2006-05-09 00:00:00', 2, 'Francisco Pérez-Olaeta', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', 12.0000, 0.0000, 'Credit Card', '2006-05-09 00:00:00', NULL, 0, NULL, 0, 1),
	(65, 9, 28, '2006-05-11 00:00:00', '2006-05-11 00:00:00', 3, 'Amritansh Raghav', '789 28th Street', 'Memphis', 'TN', '99999', 'USA', 10.0000, 0.0000, 'Check', '2006-05-11 00:00:00', NULL, 0, NULL, 0, 1),
	(66, 3, 8, '2006-05-24 00:00:00', '2006-05-24 00:00:00', 3, 'Elizabeth Andersen', '123 8th Street', 'Portland', 'OR', '99999', 'USA', 5.0000, 0.0000, 'Check', '2006-05-24 00:00:00', NULL, 0, NULL, 0, 1),
	(67, 4, 10, '2006-05-24 00:00:00', '2006-05-24 00:00:00', 2, 'Roland Wacker', '123 10th Street', 'Chicago', 'IL', '99999', 'USA', 9.0000, 0.0000, 'Credit Card', '2006-05-24 00:00:00', NULL, 0, NULL, 3, 1),
	(68, 1, 7, '2006-05-24 00:00:00', NULL, NULL, 'Ming-Yang Xie', '123 7th Street', 'Boise', 'ID', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(69, 1, 10, '2006-05-24 00:00:00', NULL, 1, 'Roland Wacker', '123 10th Street', 'Chicago', 'IL', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(70, 1, 11, '2006-05-24 00:00:00', NULL, 3, 'Peter Krschne', '123 11th Street', 'Miami', 'FL', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(71, 1, 1, '2006-05-24 00:00:00', NULL, 3, 'Anna Bedecs', '123 1st Street', 'Seattle', 'WA', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(72, 1, 28, '2006-06-07 00:00:00', '2006-06-07 00:00:00', 3, 'Amritansh Raghav', '789 28th Street', 'Memphis', 'TN', '99999', 'USA', 40.0000, 0.0000, 'Credit Card', '2006-06-07 00:00:00', NULL, 0, NULL, 3, 1),
	(73, 7, 9, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 1, 'Sven Mortensen', '123 9th Street', 'Salt Lake City', 'UT', '99999', 'USA', 100.0000, 0.0000, 'Check', '2006-06-05 00:00:00', NULL, 0, NULL, 3, 1),
	(74, 6, 6, '2006-06-08 00:00:00', '2006-06-08 00:00:00', 2, 'Francisco Pérez-Olaeta', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', 300.0000, 0.0000, 'Credit Card', '2006-06-08 00:00:00', NULL, 0, NULL, 3, 1),
	(75, 4, 8, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 2, 'Elizabeth Andersen', '123 8th Street', 'Portland', 'OR', '99999', 'USA', 50.0000, 0.0000, 'Check', '2006-06-05 00:00:00', NULL, 0, NULL, 3, 1),
	(76, 9, 25, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 1, 'John Rodman', '789 25th Street', 'Chicago', 'IL', '99999', 'USA', 5.0000, 0.0000, 'Cash', '2006-06-05 00:00:00', NULL, 0, NULL, 3, 1),
	(77, 9, 26, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 3, 'Run Liu', '789 26th Street', 'Miami', 'FL', '99999', 'USA', 60.0000, 0.0000, 'Credit Card', '2006-06-05 00:00:00', NULL, 0, NULL, 3, 1),
	(78, 1, 29, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 2, 'Soo Jung Lee', '789 29th Street', 'Denver', 'CO', '99999', 'USA', 200.0000, 0.0000, 'Check', '2006-06-05 00:00:00', NULL, 0, NULL, 3, 1),
	(79, 2, 6, '2006-06-23 00:00:00', '2006-06-23 00:00:00', 3, 'Francisco Pérez-Olaeta', '123 6th Street', 'Milwaukee', 'WI', '99999', 'USA', 0.0000, 0.0000, 'Check', '2006-06-23 00:00:00', NULL, 0, NULL, 3, 1),
	(80, 2, 4, '2006-04-25 17:03:55', NULL, NULL, 'Christina Lee', '123 4th Street', 'New York', 'NY', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1),
	(81, 2, 3, '2006-04-25 17:26:53', NULL, NULL, 'Thomas Axen', '123 3rd Street', 'Los Angelas', 'CA', '99999', 'USA', 0.0000, 0.0000, NULL, NULL, NULL, 0, NULL, 0, 1);
/*!40000 ALTER TABLE `northwind_orders` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_orders_status
DROP TABLE IF EXISTS `northwind_orders_status`;
CREATE TABLE IF NOT EXISTS `northwind_orders_status` (
  `id` tinyint(4) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_orders_status: ~4 rows (approximately)
/*!40000 ALTER TABLE `northwind_orders_status` DISABLE KEYS */;
INSERT INTO `northwind_orders_status` (`id`, `status_name`, `recordstatus`) VALUES
	(0, 'New', 1),
	(1, 'Invoiced', 1),
	(2, 'Shipped', 1),
	(3, 'Closed', 1);
/*!40000 ALTER TABLE `northwind_orders_status` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_orders_tax_status
DROP TABLE IF EXISTS `northwind_orders_tax_status`;
CREATE TABLE IF NOT EXISTS `northwind_orders_tax_status` (
  `id` tinyint(4) NOT NULL,
  `tax_status_name` varchar(50) NOT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_orders_tax_status: ~2 rows (approximately)
/*!40000 ALTER TABLE `northwind_orders_tax_status` DISABLE KEYS */;
INSERT INTO `northwind_orders_tax_status` (`id`, `tax_status_name`, `recordstatus`) VALUES
	(0, 'Tax Exempt', 1),
	(1, 'Taxable', 1);
/*!40000 ALTER TABLE `northwind_orders_tax_status` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_order_details
DROP TABLE IF EXISTS `northwind_order_details`;
CREATE TABLE IF NOT EXISTS `northwind_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `unit_price` decimal(19,4) DEFAULT '0.0000',
  `discount` double NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT NULL,
  `date_allocated` datetime DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`),
  KEY `product_id` (`product_id`),
  KEY `product_id_2` (`product_id`),
  KEY `purchase_order_id` (`purchase_order_id`),
  KEY `id_5` (`id`),
  KEY `fk_order_details_orders1_idx` (`order_id`),
  KEY `fk_order_details_order_details_status1_idx` (`status_id`),
  CONSTRAINT `fk_order_details_order_details_status1` FOREIGN KEY (`status_id`) REFERENCES `northwind_order_details_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_details_orders1` FOREIGN KEY (`order_id`) REFERENCES `northwind_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_details_products1` FOREIGN KEY (`product_id`) REFERENCES `northwind_products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_order_details: ~58 rows (approximately)
/*!40000 ALTER TABLE `northwind_order_details` DISABLE KEYS */;
INSERT INTO `northwind_order_details` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `discount`, `status_id`, `date_allocated`, `purchase_order_id`, `inventory_id`, `recordstatus`) VALUES
	(27, 30, 34, 100.0000, 14.0000, 0, 2, NULL, 96, 83, 1),
	(28, 30, 80, 30.0000, 3.5000, 0, 2, NULL, NULL, 63, 1),
	(29, 31, 7, 10.0000, 30.0000, 0, 2, NULL, NULL, 64, 1),
	(30, 31, 51, 10.0000, 53.0000, 0, 2, NULL, NULL, 65, 1),
	(31, 31, 80, 10.0000, 3.5000, 0, 2, NULL, NULL, 66, 1),
	(32, 32, 1, 15.0000, 18.0000, 0, 2, NULL, NULL, 67, 1),
	(33, 32, 43, 20.0000, 46.0000, 0, 2, NULL, NULL, 68, 1),
	(34, 33, 19, 30.0000, 9.2000, 0, 2, NULL, 97, 81, 1),
	(35, 34, 19, 20.0000, 9.2000, 0, 2, NULL, NULL, 69, 1),
	(36, 35, 48, 10.0000, 12.7500, 0, 2, NULL, NULL, 70, 1),
	(37, 36, 41, 200.0000, 9.6500, 0, 2, NULL, 98, 79, 1),
	(38, 37, 8, 17.0000, 40.0000, 0, 2, NULL, NULL, 71, 1),
	(39, 38, 43, 300.0000, 46.0000, 0, 2, NULL, 99, 77, 1),
	(40, 39, 48, 100.0000, 12.7500, 0, 2, NULL, 100, 75, 1),
	(41, 40, 81, 200.0000, 2.9900, 0, 2, NULL, 101, 73, 1),
	(42, 41, 43, 300.0000, 46.0000, 0, 1, NULL, 102, 104, 1),
	(43, 42, 6, 10.0000, 25.0000, 0, 2, NULL, NULL, 84, 1),
	(44, 42, 4, 10.0000, 22.0000, 0, 2, NULL, NULL, 85, 1),
	(45, 42, 19, 10.0000, 9.2000, 0, 2, NULL, 103, 110, 1),
	(46, 43, 80, 20.0000, 3.5000, 0, 1, NULL, NULL, 86, 1),
	(47, 43, 81, 50.0000, 2.9900, 0, 1, NULL, NULL, 87, 1),
	(48, 44, 1, 25.0000, 18.0000, 0, 1, NULL, NULL, 88, 1),
	(49, 44, 43, 25.0000, 46.0000, 0, 1, NULL, NULL, 89, 1),
	(50, 44, 81, 25.0000, 2.9900, 0, 1, NULL, NULL, 90, 1),
	(51, 45, 41, 50.0000, 9.6500, 0, 2, NULL, 104, 116, 1),
	(52, 45, 40, 50.0000, 18.4000, 0, 2, NULL, NULL, 91, 1),
	(53, 46, 57, 100.0000, 19.5000, 0, 2, NULL, 105, 101, 1),
	(54, 46, 72, 50.0000, 34.8000, 0, 2, NULL, 106, 114, 1),
	(55, 47, 34, 300.0000, 14.0000, 0, 2, NULL, 107, 108, 1),
	(56, 48, 8, 25.0000, 40.0000, 0, 2, NULL, 108, 106, 1),
	(57, 48, 19, 25.0000, 9.2000, 0, 2, NULL, 109, 112, 1),
	(59, 50, 21, 20.0000, 10.0000, 0, 2, NULL, NULL, 92, 1),
	(60, 51, 5, 25.0000, 21.3500, 0, 2, NULL, NULL, 93, 1),
	(61, 51, 41, 30.0000, 9.6500, 0, 2, NULL, NULL, 94, 1),
	(62, 51, 40, 30.0000, 18.4000, 0, 2, NULL, NULL, 95, 1),
	(66, 56, 48, 10.0000, 12.7500, 0, 2, NULL, 111, 99, 1),
	(67, 55, 34, 87.0000, 14.0000, 0, 2, NULL, NULL, 117, 1),
	(68, 79, 7, 30.0000, 30.0000, 0, 2, NULL, NULL, 119, 1),
	(69, 79, 51, 30.0000, 53.0000, 0, 2, NULL, NULL, 118, 1),
	(70, 78, 17, 40.0000, 39.0000, 0, 2, NULL, NULL, 120, 1),
	(71, 77, 6, 90.0000, 25.0000, 0, 2, NULL, NULL, 121, 1),
	(72, 76, 4, 30.0000, 22.0000, 0, 2, NULL, NULL, 122, 1),
	(73, 75, 48, 40.0000, 12.7500, 0, 2, NULL, NULL, 123, 1),
	(74, 74, 48, 40.0000, 12.7500, 0, 2, NULL, NULL, 124, 1),
	(75, 73, 41, 10.0000, 9.6500, 0, 2, NULL, NULL, 125, 1),
	(76, 72, 43, 5.0000, 46.0000, 0, 2, NULL, NULL, 126, 1),
	(77, 71, 40, 40.0000, 18.4000, 0, 2, NULL, NULL, 127, 1),
	(78, 70, 8, 20.0000, 40.0000, 0, 2, NULL, NULL, 128, 1),
	(79, 69, 80, 15.0000, 3.5000, 0, 2, NULL, NULL, 129, 1),
	(80, 67, 74, 20.0000, 10.0000, 0, 2, NULL, NULL, 130, 1),
	(81, 60, 72, 40.0000, 34.8000, 0, 2, NULL, NULL, 131, 1),
	(82, 63, 3, 50.0000, 10.0000, 0, 2, NULL, NULL, 132, 1),
	(83, 63, 8, 3.0000, 40.0000, 0, 2, NULL, NULL, 133, 1),
	(84, 58, 20, 40.0000, 81.0000, 0, 2, NULL, NULL, 134, 1),
	(85, 58, 52, 40.0000, 7.0000, 0, 2, NULL, NULL, 135, 1),
	(86, 80, 56, 10.0000, 38.0000, 0, 1, NULL, NULL, 136, 1),
	(90, 81, 81, 0.0000, 2.9900, 0, 5, NULL, NULL, NULL, 1),
	(91, 81, 56, 0.0000, 38.0000, 0, 0, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `northwind_order_details` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_order_details_status
DROP TABLE IF EXISTS `northwind_order_details_status`;
CREATE TABLE IF NOT EXISTS `northwind_order_details_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_order_details_status: ~6 rows (approximately)
/*!40000 ALTER TABLE `northwind_order_details_status` DISABLE KEYS */;
INSERT INTO `northwind_order_details_status` (`id`, `status_name`, `recordstatus`) VALUES
	(0, 'None', 1),
	(1, 'Allocated', 1),
	(2, 'Invoiced', 1),
	(3, 'Shipped', 1),
	(4, 'On Order', 1),
	(5, 'No Stock', 1);
/*!40000 ALTER TABLE `northwind_order_details_status` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_privileges
DROP TABLE IF EXISTS `northwind_privileges`;
CREATE TABLE IF NOT EXISTS `northwind_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(50) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_privileges: ~1 rows (approximately)
/*!40000 ALTER TABLE `northwind_privileges` DISABLE KEYS */;
INSERT INTO `northwind_privileges` (`id`, `privilege_name`, `recordstatus`) VALUES
	(2, 'Purchase Approvals', 1);
/*!40000 ALTER TABLE `northwind_privileges` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_products
DROP TABLE IF EXISTS `northwind_products`;
CREATE TABLE IF NOT EXISTS `northwind_products` (
  `supplier_ids` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(25) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `description` longtext,
  `standard_cost` decimal(19,4) DEFAULT '0.0000',
  `list_price` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `reorder_level` int(11) DEFAULT NULL,
  `target_level` int(11) DEFAULT NULL,
  `quantity_per_unit` varchar(50) DEFAULT NULL,
  `discontinued` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_reorder_quantity` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `attachments` longblob,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_code` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_products: ~45 rows (approximately)
/*!40000 ALTER TABLE `northwind_products` DISABLE KEYS */;
INSERT INTO `northwind_products` (`supplier_ids`, `id`, `product_code`, `product_name`, `description`, `standard_cost`, `list_price`, `reorder_level`, `target_level`, `quantity_per_unit`, `discontinued`, `minimum_reorder_quantity`, `category`, `attachments`, `recordstatus`) VALUES
	('4', 1, 'NWTB-1', 'Northwind Traders Chai', NULL, 13.5000, 18.0000, 10, 40, '10 boxes x 20 bags', 0, 10, 'Beverages', _binary '', 1),
	('10', 3, 'NWTCO-3', 'Northwind Traders Syrup', NULL, 7.5000, 10.0000, 25, 100, '12 - 550 ml bottles', 0, 25, 'Condiments', _binary '', 1),
	('10', 4, 'NWTCO-4', 'Northwind Traders Cajun Seasoning', NULL, 16.5000, 22.0000, 10, 40, '48 - 6 oz jars', 0, 10, 'Condiments', _binary '', 1),
	('10', 5, 'NWTO-5', 'Northwind Traders Olive Oil', NULL, 16.0125, 21.3500, 10, 40, '36 boxes', 0, 10, 'Oil', _binary '', 1),
	('2;6', 6, 'NWTJP-6', 'Northwind Traders Boysenberry Spread', NULL, 18.7500, 25.0000, 25, 100, '12 - 8 oz jars', 0, 25, 'Jams, Preserves', _binary '', 1),
	('2', 7, 'NWTDFN-7', 'Northwind Traders Dried Pears', NULL, 22.5000, 30.0000, 10, 40, '12 - 1 lb pkgs.', 0, 10, 'Dried Fruit & Nuts', _binary '', 1),
	('8', 8, 'NWTS-8', 'Northwind Traders Curry Sauce', NULL, 30.0000, 40.0000, 10, 40, '12 - 12 oz jars', 0, 10, 'Sauces', _binary '', 1),
	('2;6', 14, 'NWTDFN-14', 'Northwind Traders Walnuts', NULL, 17.4375, 23.2500, 10, 40, '40 - 100 g pkgs.', 0, 10, 'Dried Fruit & Nuts', _binary '', 1),
	('6', 17, 'NWTCFV-17', 'Northwind Traders Fruit Cocktail', NULL, 29.2500, 39.0000, 10, 40, '15.25 OZ', 0, 10, 'Canned Fruit & Vegetables', _binary '', 1),
	('1', 19, 'NWTBGM-19', 'Northwind Traders Chocolate Biscuits Mix', NULL, 6.9000, 9.2000, 5, 20, '10 boxes x 12 pieces', 0, 5, 'Baked Goods & Mixes', _binary '', 1),
	('2;6', 20, 'NWTJP-6', 'Northwind Traders Marmalade', NULL, 60.7500, 81.0000, 10, 40, '30 gift boxes', 0, 10, 'Jams, Preserves', _binary '', 1),
	('1', 21, 'NWTBGM-21', 'Northwind Traders Scones', NULL, 7.5000, 10.0000, 5, 20, '24 pkgs. x 4 pieces', 0, 5, 'Baked Goods & Mixes', _binary '', 1),
	('4', 34, 'NWTB-34', 'Northwind Traders Beer', NULL, 10.5000, 14.0000, 15, 60, '24 - 12 oz bottles', 0, 15, 'Beverages', _binary '', 1),
	('7', 40, 'NWTCM-40', 'Northwind Traders Crab Meat', NULL, 13.8000, 18.4000, 30, 120, '24 - 4 oz tins', 0, 30, 'Canned Meat', _binary '', 1),
	('6', 41, 'NWTSO-41', 'Northwind Traders Clam Chowder', NULL, 7.2375, 9.6500, 10, 40, '12 - 12 oz cans', 0, 10, 'Soups', _binary '', 1),
	('3;4', 43, 'NWTB-43', 'Northwind Traders Coffee', NULL, 34.5000, 46.0000, 25, 100, '16 - 500 g tins', 0, 25, 'Beverages', _binary '', 1),
	('10', 48, 'NWTCA-48', 'Northwind Traders Chocolate', NULL, 9.5625, 12.7500, 25, 100, '10 pkgs', 0, 25, 'Candy', _binary '', 1),
	('2', 51, 'NWTDFN-51', 'Northwind Traders Dried Apples', NULL, 39.7500, 53.0000, 10, 40, '50 - 300 g pkgs.', 0, 10, 'Dried Fruit & Nuts', _binary '', 1),
	('1', 52, 'NWTG-52', 'Northwind Traders Long Grain Rice', NULL, 5.2500, 7.0000, 25, 100, '16 - 2 kg boxes', 0, 25, 'Grains', _binary '', 1),
	('1', 56, 'NWTP-56', 'Northwind Traders Gnocchi', NULL, 28.5000, 38.0000, 30, 120, '24 - 250 g pkgs.', 0, 30, 'Pasta', _binary '', 1),
	('1', 57, 'NWTP-57', 'Northwind Traders Ravioli', NULL, 14.6250, 19.5000, 20, 80, '24 - 250 g pkgs.', 0, 20, 'Pasta', _binary '', 1),
	('8', 65, 'NWTS-65', 'Northwind Traders Hot Pepper Sauce', NULL, 15.7875, 21.0500, 10, 40, '32 - 8 oz bottles', 0, 10, 'Sauces', _binary '', 1),
	('8', 66, 'NWTS-66', 'Northwind Traders Tomato Sauce', NULL, 12.7500, 17.0000, 20, 80, '24 - 8 oz jars', 0, 20, 'Sauces', _binary '', 1),
	('5', 72, 'NWTD-72', 'Northwind Traders Mozzarella', NULL, 26.1000, 34.8000, 10, 40, '24 - 200 g pkgs.', 0, 10, 'Dairy products', _binary '', 1),
	('2;6', 74, 'NWTDFN-74', 'Northwind Traders Almonds', NULL, 7.5000, 10.0000, 5, 20, '5 kg pkg.', 0, 5, 'Dried Fruit & Nuts', _binary '', 1),
	('10', 77, 'NWTCO-77', 'Northwind Traders Mustard', NULL, 9.7500, 13.0000, 15, 60, '12 boxes', 0, 15, 'Condiments', _binary '', 1),
	('2', 80, 'NWTDFN-80', 'Northwind Traders Dried Plums', NULL, 3.0000, 3.5000, 50, 75, '1 lb bag', 0, 25, 'Dried Fruit & Nuts', _binary '', 1),
	('3', 81, 'NWTB-81', 'Northwind Traders Green Tea', NULL, 2.0000, 2.9900, 100, 125, '20 bags per box', 0, 25, 'Beverages', _binary '', 1),
	('1', 82, 'NWTC-82', 'Northwind Traders Granola', NULL, 2.0000, 4.0000, 20, 100, NULL, 0, NULL, 'Cereal', _binary '', 1),
	('9', 83, 'NWTCS-83', 'Northwind Traders Potato Chips', NULL, 0.5000, 1.8000, 30, 200, NULL, 0, NULL, 'Chips, Snacks', _binary '', 1),
	('1', 85, 'NWTBGM-85', 'Northwind Traders Brownie Mix', NULL, 9.0000, 12.4900, 10, 20, '3 boxes', 0, 5, 'Baked Goods & Mixes', _binary '', 1),
	('1', 86, 'NWTBGM-86', 'Northwind Traders Cake Mix', NULL, 10.5000, 15.9900, 10, 20, '4 boxes', 0, 5, 'Baked Goods & Mixes', _binary '', 1),
	('7', 87, 'NWTB-87', 'Northwind Traders Tea', NULL, 2.0000, 4.0000, 20, 50, '100 count per box', 0, NULL, 'Beverages', _binary '', 1),
	('6', 88, 'NWTCFV-88', 'Northwind Traders Pears', NULL, 1.0000, 1.3000, 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('6', 89, 'NWTCFV-89', 'Northwind Traders Peaches', NULL, 1.0000, 1.5000, 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('6', 90, 'NWTCFV-90', 'Northwind Traders Pineapple', NULL, 1.0000, 1.8000, 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('6', 91, 'NWTCFV-91', 'Northwind Traders Cherry Pie Filling', NULL, 1.0000, 2.0000, 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('6', 92, 'NWTCFV-92', 'Northwind Traders Green Beans', NULL, 1.0000, 1.2000, 10, 40, '14.5 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('6', 93, 'NWTCFV-93', 'Northwind Traders Corn', NULL, 1.0000, 1.2000, 10, 40, '14.5 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('6', 94, 'NWTCFV-94', 'Northwind Traders Peas', NULL, 1.0000, 1.5000, 10, 40, '14.5 OZ', 0, NULL, 'Canned Fruit & Vegetables', _binary '', 1),
	('7', 95, 'NWTCM-95', 'Northwind Traders Tuna Fish', NULL, 0.5000, 2.0000, 30, 50, '5 oz', 0, NULL, 'Canned Meat', _binary '', 1),
	('7', 96, 'NWTCM-96', 'Northwind Traders Smoked Salmon', NULL, 2.0000, 4.0000, 30, 50, '5 oz', 0, NULL, 'Canned Meat', _binary '', 1),
	('1', 97, 'NWTC-82', 'Northwind Traders Hot Cereal', NULL, 3.0000, 5.0000, 50, 200, NULL, 0, NULL, 'Cereal', _binary '', 1),
	('6', 98, 'NWTSO-98', 'Northwind Traders Vegetable Soup', NULL, 1.0000, 1.8900, 100, 200, NULL, 0, NULL, 'Soups', _binary '', 1),
	('6', 99, 'NWTSO-99', 'Northwind Traders Chicken Soup', NULL, 1.0000, 1.9500, 100, 200, NULL, 0, NULL, 'Soups', _binary '', 1);
/*!40000 ALTER TABLE `northwind_products` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_purchase_orders
DROP TABLE IF EXISTS `northwind_purchase_orders`;
CREATE TABLE IF NOT EXISTS `northwind_purchase_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT '0',
  `expected_date` datetime DEFAULT NULL,
  `shipping_fee` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `taxes` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,4) DEFAULT '0.0000',
  `payment_method` varchar(50) DEFAULT NULL,
  `notes` longtext,
  `approved_by` int(11) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `submitted_by` int(11) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `created_by` (`created_by`),
  KEY `status_id` (`status_id`),
  KEY `id_2` (`id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `supplier_id_2` (`supplier_id`),
  CONSTRAINT `fk_purchase_orders_employees1` FOREIGN KEY (`created_by`) REFERENCES `northwind_employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_orders_purchase_order_status1` FOREIGN KEY (`status_id`) REFERENCES `northwind_purchase_order_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_orders_suppliers1` FOREIGN KEY (`supplier_id`) REFERENCES `northwind_suppliers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_purchase_orders: ~28 rows (approximately)
/*!40000 ALTER TABLE `northwind_purchase_orders` DISABLE KEYS */;
INSERT INTO `northwind_purchase_orders` (`id`, `supplier_id`, `created_by`, `submitted_date`, `creation_date`, `status_id`, `expected_date`, `shipping_fee`, `taxes`, `payment_date`, `payment_amount`, `payment_method`, `notes`, `approved_by`, `approved_date`, `submitted_by`, `recordstatus`) VALUES
	(90, 1, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2, 1),
	(91, 3, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2, 1),
	(92, 2, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2, 1),
	(93, 5, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2, 1),
	(94, 6, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2, 1),
	(95, 4, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2, 1),
	(96, 1, 5, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #30', 2, '2006-01-22 00:00:00', 5, 1),
	(97, 2, 7, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #33', 2, '2006-01-22 00:00:00', 7, 1),
	(98, 2, 4, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #36', 2, '2006-01-22 00:00:00', 4, 1),
	(99, 1, 3, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #38', 2, '2006-01-22 00:00:00', 3, 1),
	(100, 2, 9, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #39', 2, '2006-01-22 00:00:00', 9, 1),
	(101, 1, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #40', 2, '2006-01-22 00:00:00', 2, 1),
	(102, 1, 1, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #41', 2, '2006-04-04 00:00:00', 1, 1),
	(103, 2, 1, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #42', 2, '2006-04-04 00:00:00', 1, 1),
	(104, 2, 1, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #45', 2, '2006-04-04 00:00:00', 1, 1),
	(105, 5, 7, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, 'Check', 'Purchase generated based on Order #46', 2, '2006-04-04 00:00:00', 7, 1),
	(106, 6, 7, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #46', 2, '2006-04-04 00:00:00', 7, 1),
	(107, 1, 6, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #47', 2, '2006-04-04 00:00:00', 6, 1),
	(108, 2, 4, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #48', 2, '2006-04-04 00:00:00', 4, 1),
	(109, 2, 4, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #48', 2, '2006-04-04 00:00:00', 4, 1),
	(110, 1, 3, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #49', 2, '2006-04-04 00:00:00', 3, 1),
	(111, 1, 2, '2006-03-31 00:00:00', '2006-03-31 00:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Purchase generated based on Order #56', 2, '2006-04-04 00:00:00', 2, 1),
	(140, 6, NULL, '2006-04-25 00:00:00', '2006-04-25 16:40:51', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-04-25 16:41:33', 2, 1),
	(141, 8, NULL, '2006-04-25 00:00:00', '2006-04-25 17:10:35', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-04-25 17:10:55', 2, 1),
	(142, 8, NULL, '2006-04-25 00:00:00', '2006-04-25 17:18:29', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, 'Check', NULL, 2, '2006-04-25 17:18:51', 2, 1),
	(146, 2, 2, '2006-04-26 18:26:37', '2006-04-26 18:26:37', 1, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, 1),
	(147, 7, 2, '2006-04-26 18:33:28', '2006-04-26 18:33:28', 1, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, 1),
	(148, 5, 2, '2006-04-26 18:33:52', '2006-04-26 18:33:52', 1, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, 1);
/*!40000 ALTER TABLE `northwind_purchase_orders` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_purchase_order_details
DROP TABLE IF EXISTS `northwind_purchase_order_details`;
CREATE TABLE IF NOT EXISTS `northwind_purchase_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` decimal(18,4) NOT NULL,
  `unit_cost` decimal(19,4) NOT NULL,
  `date_received` datetime DEFAULT NULL,
  `posted_to_inventory` tinyint(1) NOT NULL DEFAULT '0',
  `inventory_id` int(11) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `inventory_id_2` (`inventory_id`),
  KEY `purchase_order_id` (`purchase_order_id`),
  KEY `product_id` (`product_id`),
  KEY `product_id_2` (`product_id`),
  KEY `purchase_order_id_2` (`purchase_order_id`),
  CONSTRAINT `fk_purchase_order_details_inventory_transactions1` FOREIGN KEY (`inventory_id`) REFERENCES `northwind_inventory_transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_order_details_products1` FOREIGN KEY (`product_id`) REFERENCES `northwind_products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_order_details_purchase_orders1` FOREIGN KEY (`purchase_order_id`) REFERENCES `northwind_purchase_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_purchase_order_details: ~55 rows (approximately)
/*!40000 ALTER TABLE `northwind_purchase_order_details` DISABLE KEYS */;
INSERT INTO `northwind_purchase_order_details` (`id`, `purchase_order_id`, `product_id`, `quantity`, `unit_cost`, `date_received`, `posted_to_inventory`, `inventory_id`, `recordstatus`) VALUES
	(238, 90, 1, 40.0000, 14.0000, '2006-01-22 00:00:00', 1, 59, 1),
	(239, 91, 3, 100.0000, 8.0000, '2006-01-22 00:00:00', 1, 54, 1),
	(240, 91, 4, 40.0000, 16.0000, '2006-01-22 00:00:00', 1, 55, 1),
	(241, 91, 5, 40.0000, 16.0000, '2006-01-22 00:00:00', 1, 56, 1),
	(242, 92, 6, 100.0000, 19.0000, '2006-01-22 00:00:00', 1, 40, 1),
	(243, 92, 7, 40.0000, 22.0000, '2006-01-22 00:00:00', 1, 41, 1),
	(244, 92, 8, 40.0000, 30.0000, '2006-01-22 00:00:00', 1, 42, 1),
	(245, 92, 14, 40.0000, 17.0000, '2006-01-22 00:00:00', 1, 43, 1),
	(246, 92, 17, 40.0000, 29.0000, '2006-01-22 00:00:00', 1, 44, 1),
	(247, 92, 19, 20.0000, 7.0000, '2006-01-22 00:00:00', 1, 45, 1),
	(248, 92, 20, 40.0000, 61.0000, '2006-01-22 00:00:00', 1, 46, 1),
	(249, 92, 21, 20.0000, 8.0000, '2006-01-22 00:00:00', 1, 47, 1),
	(250, 90, 34, 60.0000, 10.0000, '2006-01-22 00:00:00', 1, 60, 1),
	(251, 92, 40, 120.0000, 14.0000, '2006-01-22 00:00:00', 1, 48, 1),
	(252, 92, 41, 40.0000, 7.0000, '2006-01-22 00:00:00', 1, 49, 1),
	(253, 90, 43, 100.0000, 34.0000, '2006-01-22 00:00:00', 1, 61, 1),
	(254, 92, 48, 100.0000, 10.0000, '2006-01-22 00:00:00', 1, 50, 1),
	(255, 92, 51, 40.0000, 40.0000, '2006-01-22 00:00:00', 1, 51, 1),
	(256, 93, 52, 100.0000, 5.0000, '2006-01-22 00:00:00', 1, 37, 1),
	(257, 93, 56, 120.0000, 28.0000, '2006-01-22 00:00:00', 1, 38, 1),
	(258, 93, 57, 80.0000, 15.0000, '2006-01-22 00:00:00', 1, 39, 1),
	(259, 91, 65, 40.0000, 16.0000, '2006-01-22 00:00:00', 1, 57, 1),
	(260, 91, 66, 80.0000, 13.0000, '2006-01-22 00:00:00', 1, 58, 1),
	(261, 94, 72, 40.0000, 26.0000, '2006-01-22 00:00:00', 1, 36, 1),
	(262, 92, 74, 20.0000, 8.0000, '2006-01-22 00:00:00', 1, 52, 1),
	(263, 92, 77, 60.0000, 10.0000, '2006-01-22 00:00:00', 1, 53, 1),
	(264, 95, 80, 75.0000, 3.0000, '2006-01-22 00:00:00', 1, 35, 1),
	(265, 90, 81, 125.0000, 2.0000, '2006-01-22 00:00:00', 1, 62, 1),
	(266, 96, 34, 100.0000, 10.0000, '2006-01-22 00:00:00', 1, 82, 1),
	(267, 97, 19, 30.0000, 7.0000, '2006-01-22 00:00:00', 1, 80, 1),
	(268, 98, 41, 200.0000, 7.0000, '2006-01-22 00:00:00', 1, 78, 1),
	(269, 99, 43, 300.0000, 34.0000, '2006-01-22 00:00:00', 1, 76, 1),
	(270, 100, 48, 100.0000, 10.0000, '2006-01-22 00:00:00', 1, 74, 1),
	(271, 101, 81, 200.0000, 2.0000, '2006-01-22 00:00:00', 1, 72, 1),
	(272, 102, 43, 300.0000, 34.0000, NULL, 0, NULL, 1),
	(273, 103, 19, 10.0000, 7.0000, '2006-04-17 00:00:00', 1, 111, 1),
	(274, 104, 41, 50.0000, 7.0000, '2006-04-06 00:00:00', 1, 115, 1),
	(275, 105, 57, 100.0000, 15.0000, '2006-04-05 00:00:00', 1, 100, 1),
	(276, 106, 72, 50.0000, 26.0000, '2006-04-05 00:00:00', 1, 113, 1),
	(277, 107, 34, 300.0000, 10.0000, '2006-04-05 00:00:00', 1, 107, 1),
	(278, 108, 8, 25.0000, 30.0000, '2006-04-05 00:00:00', 1, 105, 1),
	(279, 109, 19, 25.0000, 7.0000, '2006-04-05 00:00:00', 1, 109, 1),
	(280, 110, 43, 250.0000, 34.0000, '2006-04-10 00:00:00', 1, 103, 1),
	(281, 90, 1, 40.0000, 14.0000, NULL, 0, NULL, 1),
	(282, 92, 19, 20.0000, 7.0000, NULL, 0, NULL, 1),
	(283, 111, 34, 50.0000, 10.0000, '2006-04-04 00:00:00', 1, 102, 1),
	(285, 91, 3, 50.0000, 8.0000, NULL, 0, NULL, 1),
	(286, 91, 4, 40.0000, 16.0000, NULL, 0, NULL, 1),
	(288, 140, 85, 10.0000, 9.0000, NULL, 0, NULL, 1),
	(289, 141, 6, 10.0000, 18.7500, NULL, 0, NULL, 1),
	(290, 142, 1, 1.0000, 13.5000, NULL, 0, NULL, 1),
	(292, 146, 20, 40.0000, 60.0000, NULL, 0, NULL, 1),
	(293, 146, 51, 40.0000, 39.0000, NULL, 0, NULL, 1),
	(294, 147, 40, 120.0000, 13.0000, NULL, 0, NULL, 1),
	(295, 148, 72, 40.0000, 26.0000, NULL, 0, NULL, 1);
/*!40000 ALTER TABLE `northwind_purchase_order_details` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_purchase_order_status
DROP TABLE IF EXISTS `northwind_purchase_order_status`;
CREATE TABLE IF NOT EXISTS `northwind_purchase_order_status` (
  `id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_purchase_order_status: ~4 rows (approximately)
/*!40000 ALTER TABLE `northwind_purchase_order_status` DISABLE KEYS */;
INSERT INTO `northwind_purchase_order_status` (`id`, `status`, `recordstatus`) VALUES
	(0, 'New', 1),
	(1, 'Submitted', 1),
	(2, 'Approved', 1),
	(3, 'Closed', 1);
/*!40000 ALTER TABLE `northwind_purchase_order_status` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_sales_reports
DROP TABLE IF EXISTS `northwind_sales_reports`;
CREATE TABLE IF NOT EXISTS `northwind_sales_reports` (
  `group_by` varchar(50) NOT NULL,
  `display` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `filter_row_source` longtext,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`group_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_sales_reports: ~5 rows (approximately)
/*!40000 ALTER TABLE `northwind_sales_reports` DISABLE KEYS */;
INSERT INTO `northwind_sales_reports` (`group_by`, `display`, `title`, `filter_row_source`, `default`, `recordstatus`) VALUES
	('Category', 'Category', 'Sales By Category', 'SELECT DISTINCT [Category] FROM [products] ORDER BY [Category];', 0, 1),
	('country_region', 'Country/Region', 'Sales By Country', 'SELECT DISTINCT [country_region] FROM [customers Extended] ORDER BY [country_region];', 0, 1),
	('Customer ID', 'Customer', 'Sales By Customer', 'SELECT DISTINCT [Company] FROM [customers Extended] ORDER BY [Company];', 0, 1),
	('employee_id', 'Employee', 'Sales By Employee', 'SELECT DISTINCT [Employee Name] FROM [employees Extended] ORDER BY [Employee Name];', 0, 1),
	('Product ID', 'Product', 'Sales by Product', 'SELECT DISTINCT [Product Name] FROM [products] ORDER BY [Product Name];', 1, 1);
/*!40000 ALTER TABLE `northwind_sales_reports` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_shippers
DROP TABLE IF EXISTS `northwind_shippers`;
CREATE TABLE IF NOT EXISTS `northwind_shippers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext,
  `notes` longtext,
  `attachments` longblob,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `zip_postal_code` (`zip_postal_code`),
  KEY `state_province` (`state_province`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_shippers: ~3 rows (approximately)
/*!40000 ALTER TABLE `northwind_shippers` DISABLE KEYS */;
INSERT INTO `northwind_shippers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `attachments`, `recordstatus`) VALUES
	(1, 'Shipping Company A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 Any Street', 'Memphis', 'TN', '99999', 'USA', NULL, NULL, _binary '', 1),
	(2, 'Shipping Company B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 Any Street', 'Memphis', 'TN', '99999', 'USA', NULL, NULL, _binary '', 1),
	(3, 'Shipping Company C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 Any Street', 'Memphis', 'TN', '99999', 'USA', NULL, NULL, _binary '', 1);
/*!40000 ALTER TABLE `northwind_shippers` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_strings
DROP TABLE IF EXISTS `northwind_strings`;
CREATE TABLE IF NOT EXISTS `northwind_strings` (
  `string_id` int(11) NOT NULL AUTO_INCREMENT,
  `string_data` varchar(255) DEFAULT NULL,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`string_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_strings: ~62 rows (approximately)
/*!40000 ALTER TABLE `northwind_strings` DISABLE KEYS */;
INSERT INTO `northwind_strings` (`string_id`, `string_data`, `recordstatus`) VALUES
	(2, 'Northwind Traders', 1),
	(3, 'Cannot remove posted inventory!', 1),
	(4, 'Back ordered product filled for Order #|', 1),
	(5, 'Discounted price below cost!', 1),
	(6, 'Insufficient inventory.', 1),
	(7, 'Insufficient inventory. Do you want to create a purchase order?', 1),
	(8, 'Purchase orders were successfully created for | products', 1),
	(9, 'There are no products below their respective reorder levels', 1),
	(10, 'Must specify customer name!', 1),
	(11, 'Restocking will generate purchase orders for all products below desired inventory levels.  Do you want to continue?', 1),
	(12, 'Cannot create purchase order.  No suppliers listed for specified product', 1),
	(13, 'Discounted price is below cost!', 1),
	(14, 'Do you want to continue?', 1),
	(15, 'Order is already invoiced. Do you want to print the invoice?', 1),
	(16, 'Order does not contain any line items', 1),
	(17, 'Cannot create invoice!  Inventory has not been allocated for each specified product.', 1),
	(18, 'Sorry, there are no sales in the specified time period', 1),
	(19, 'Product successfully restocked.', 1),
	(21, 'Product does not need restocking! Product is already at desired inventory level.', 1),
	(22, 'Product restocking failed!', 1),
	(23, 'Invalid login specified!', 1),
	(24, 'Must first select reported!', 1),
	(25, 'Changing supplier will remove purchase line items, continue?', 1),
	(26, 'Purchase orders were successfully submitted for | products.  Do you want to view the restocking report?', 1),
	(27, 'There was an error attempting to restock inventory levels.', 1),
	(28, '| product(s) were successfully restocked.  Do you want to view the restocking report?', 1),
	(29, 'You cannot remove purchase line items already posted to inventory!', 1),
	(30, 'There was an error removing one or more purchase line items.', 1),
	(31, 'You cannot modify quantity for purchased product already received or posted to inventory.', 1),
	(32, 'You cannot modify price for purchased product already received or posted to inventory.', 1),
	(33, 'Product has been successfully posted to inventory.', 1),
	(34, 'Sorry, product cannot be successfully posted to inventory.', 1),
	(35, 'There are orders with this product on back order.  Would you like to fill them now?', 1),
	(36, 'Cannot post product to inventory without specifying received date!', 1),
	(37, 'Do you want to post received product to inventory?', 1),
	(38, 'Initialize purchase, orders, and inventory data?', 1),
	(39, 'Must first specify employee name!', 1),
	(40, 'Specified user must be logged in to approve purchase!', 1),
	(41, 'Purchase order must contain completed line items before it can be approved', 1),
	(42, 'Sorry, you do not have permission to approve purchases.', 1),
	(43, 'Purchase successfully approved', 1),
	(44, 'Purchase cannot be approved', 1),
	(45, 'Purchase successfully submitted for approval', 1),
	(46, 'Purchase cannot be submitted for approval', 1),
	(47, 'Sorry, purchase order does not contain line items', 1),
	(48, 'Do you want to cancel this order?', 1),
	(49, 'Canceling an order will permanently delete the order.  Are you sure you want to cancel?', 1),
	(100, 'Your order was successfully canceled.', 1),
	(101, 'Cannot cancel an order that has items received and posted to inventory.', 1),
	(102, 'There was an error trying to cancel this order.', 1),
	(103, 'The invoice for this order has not yet been created.', 1),
	(104, 'Shipping information is not complete.  Please specify all shipping information and try again.', 1),
	(105, 'Cannot mark as shipped.  Order must first be invoiced!', 1),
	(106, 'Cannot cancel an order that has already shipped!', 1),
	(107, 'Must first specify salesperson!', 1),
	(108, 'Order is now marked closed.', 1),
	(109, 'Order must first be marked shipped before closing.', 1),
	(110, 'Must first specify payment information!', 1),
	(111, 'There was an error attempting to restock inventory levels.  | product(s) were successfully restocked.', 1),
	(112, 'You must supply a Unit Cost.', 1),
	(113, 'Fill back ordered product, Order #|', 1),
	(114, 'Purchase generated based on Order #|', 1);
/*!40000 ALTER TABLE `northwind_strings` ENABLE KEYS */;


-- Dumping structure for table allicense.northwind_suppliers
DROP TABLE IF EXISTS `northwind_suppliers`;
CREATE TABLE IF NOT EXISTS `northwind_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext,
  `notes` longtext,
  `attachments` longblob,
  `recordstatus` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `zip_postal_code` (`zip_postal_code`),
  KEY `state_province` (`state_province`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.northwind_suppliers: ~10 rows (approximately)
/*!40000 ALTER TABLE `northwind_suppliers` DISABLE KEYS */;
INSERT INTO `northwind_suppliers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `attachments`, `recordstatus`) VALUES
	(1, 'Supplier A', 'Andersen', 'Elizabeth A.', NULL, 'Sales Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(2, 'Supplier B', 'Weiler', 'Cornelia', NULL, 'Sales Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(3, 'Supplier C', 'Kelley', 'Madeleine', NULL, 'Sales Representative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(4, 'Supplier D', 'Sato', 'Naoki', NULL, 'Marketing Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(5, 'Supplier E', 'Hernandez-Echevarria', 'Amaya', NULL, 'Sales Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(6, 'Supplier F', 'Hayakawa', 'Satomi', NULL, 'Marketing Assistant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(7, 'Supplier G', 'Glasson', 'Stuart', NULL, 'Marketing Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(8, 'Supplier H', 'Dunton', 'Bryn Paul', NULL, 'Sales Representative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(9, 'Supplier I', 'Sandberg', 'Mikael', NULL, 'Sales Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1),
	(10, 'Supplier J', 'Sousa', 'Luis', NULL, 'Sales Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '', 1);
/*!40000 ALTER TABLE `northwind_suppliers` ENABLE KEYS */;


-- Dumping structure for table allicense.omniarticles
DROP TABLE IF EXISTS `omniarticles`;
CREATE TABLE IF NOT EXISTS `omniarticles` (
  `recid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` mediumtext NOT NULL,
  `project` varchar(50) DEFAULT NULL,
  `recStatus` int(11) DEFAULT '0',
  `recLock` int(11) DEFAULT '0',
  `viewLock` int(11) DEFAULT '0',
  PRIMARY KEY (`recid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.omniarticles: 7 rows
/*!40000 ALTER TABLE `omniarticles` DISABLE KEYS */;
INSERT INTO `omniarticles` (`recid`, `publicationDate`, `title`, `summary`, `content`, `project`, `recStatus`, `recLock`, `viewLock`) VALUES
	(18, '2016-04-21', 'White House Lockdown Prompted By Robbery Suspect Who Jumped Fence', 'White House Lockdown Prompted By Robbery Suspect Who Jumped Fence', 'A man who hopped a fence near the White House grounds Tuesday, prompting a security lockdown, was fleeing after stealing a woman\'s purse, officials said.', NULL, 0, 0, 0),
	(26, '2016-04-28', 'test', 'test', 'test<br><br><br>\r\ntest<br><br><br>\r\ntest', NULL, 0, 0, 0),
	(31, '2016-04-12', 'Danger Zone', 'Can\'t AND/OR Won\'t', 'Are we just going to ignore how amazing that shot was?', 'Northwind Traders', 0, 0, 0),
	(32, '2016-04-28', 'NERF BAT', 'Hunters and Demon Hunters', 'GET REKT KIDS', 'Anoka Tech', 0, 0, 0),
	(34, '2016-04-27', 'blaj', 'blha', 'Jerry is the OOOKER DOOKER', 'Northwind Traders', 0, 0, 0),
	(35, '2016-04-27', 'uhh', 'duh', 'UHHHHH Phrasing?', 'Northwind Traders', 0, 0, 0),
	(36, '2016-04-27', 'DEAR ALEX', 'EXPLANATION', '<p>Dear Professor Alex,</p>\r\n\r\n<p>We have attempted to have the login interface fully operational prior to the dead line of 4/27/2016 at 11:59pm... This has not gone in our favor. We will be referring to your massive knowledge bank tomorrow during the 10:00am class in room 156.</p>\r\n\r\n<p>Thank you for your patience.</p>\r\n\r\n<p>Kyle, Jerry, and the marvelous Jack Green</p>\r\n\r\n<p style="float:right">Edited by kyleblackburn.com ©</p>', '', 0, 0, 0);
/*!40000 ALTER TABLE `omniarticles` ENABLE KEYS */;


-- Dumping structure for table allicense.orderitems
DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `itemPrice` decimal(10,2) NOT NULL,
  `discountAmount` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`itemID`),
  KEY `orderID` (`orderID`),
  KEY `productID` (`productID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.orderitems: 4 rows
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` (`itemID`, `orderID`, `productID`, `itemPrice`, `discountAmount`, `quantity`) VALUES
	(1, 1, 2, 399.00, 39.90, 1),
	(2, 2, 4, 699.00, 69.90, 1),
	(3, 3, 3, 499.00, 49.90, 1),
	(4, 3, 6, 549.99, 0.00, 1);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;


-- Dumping structure for table allicense.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `shipAmount` decimal(10,2) NOT NULL,
  `taxAmount` decimal(10,2) NOT NULL,
  `shipDate` datetime DEFAULT NULL,
  `shipAddressID` int(11) NOT NULL,
  `cardType` int(11) NOT NULL,
  `cardNumber` char(16) NOT NULL,
  `cardExpires` char(7) NOT NULL,
  `billingAddressID` int(11) NOT NULL,
  PRIMARY KEY (`orderID`),
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.orders: 3 rows
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `shipAmount`, `taxAmount`, `shipDate`, `shipAddressID`, `cardType`, `cardNumber`, `cardExpires`, `billingAddressID`) VALUES
	(1, 1, '2014-05-30 09:40:28', 5.00, 32.32, '2014-06-01 09:43:13', 1, 2, '4111111111111111', '04/2019', 2),
	(2, 2, '2014-06-01 11:23:20', 5.00, 0.00, NULL, 3, 2, '4111111111111111', '08/2018', 4),
	(3, 1, '2014-06-03 09:44:58', 10.00, 89.92, NULL, 1, 2, '4111111111111111', '04/2019', 2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table allicense.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `listPrice` decimal(10,2) NOT NULL,
  `discountPercent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dateAdded` datetime NOT NULL,
  PRIMARY KEY (`productID`),
  UNIQUE KEY `productCode` (`productCode`),
  KEY `categoryID` (`categoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Dumping data for table allicense.products: 27 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`productID`, `categoryID`, `productCode`, `productName`, `description`, `listPrice`, `discountPercent`, `dateAdded`) VALUES
	(12, 1, 'G2', 'Guitar X1', '', 1000.00, 0.00, '2016-05-05 00:00:00'),
	(13, 2, 'B2', 'Bass', '', 230.00, 0.00, '2016-01-01 00:00:00'),
	(14, 2, 'bass', 'yamaha', '', 890.00, 0.00, '2016-04-28 03:29:44'),
	(15, 2, '999999', '999999', '', 999999.00, 0.00, '2016-04-28 03:34:25'),
	(16, 1, '111111', '111111', '', 111111.00, 0.00, '2016-04-28 03:38:42'),
	(18, 1, 'P481', 'yamaha', '', 920.99, 0.00, '2016-04-28 16:00:04'),
	(19, 1, 'STIEN', '9STEIN', '', 2400.99, 0.00, '2016-04-28 16:27:12'),
	(29, 1, 'G90', 'Guitar 2', '', 200.00, 0.00, '2016-04-28 18:22:46'),
	(21, 1, 'G24', 'GuitarHero', '', 300.00, 0.00, '2016-05-05 00:00:00'),
	(26, 3, 'dr55', 'drumm', '', 234.00, 0.00, '2016-04-28 18:20:13'),
	(30, 2, 'BA5', 'lala', '', 542.00, 0.00, '2016-04-28 18:23:48'),
	(2, 1, 'les_paul', 'Gibson Les Fun', 'This Les Paul guitar offers a carved top and humbucking pickups. It has a simple yet elegant design. Cutting-yet-rich tone—the hallmark of the Les Paul—pours out of the 490R and 498T Alnico II magnet humbucker pickups, which are mounted on a carved maple top with a mahogany back. The faded finish models are equipped with BurstBucker Pro pickups and a mahogany top. This guitar includes a Gibson hardshell case (Faded and satin finish models come with a gig bag) and a limited lifetime warranty.\r\n\r\nFeatures:\r\n\r\n* Carved maple top and mahogany back (Mahogany top on faded finish models)\r\n* Mahogany neck, \'59 Rounded Les Paul\r\n* Rosewood fingerboard (Ebony on Alpine white)\r\n* Tune-O-Matic bridge with stopbar\r\n* Chrome or gold hardware\r\n* 490R and 498T Alnico 2 magnet humbucker pickups (BurstBucker Pro on faded finish models)\r\n* 2 volume and 2 tone knobs, 3-way switch', 1199.00, 30.00, '2013-12-05 16:33:13'),
	(25, 3, 'DR23', 'DrumThis', '', 500.00, 0.00, '2016-04-28 16:41:27'),
	(27, 3, 'DR123', 'DANGER ZONE', '', 1337.00, 0.00, '2016-04-28 18:20:29'),
	(7, 2, 'precision', 'Fender Precision', 'The Fender Precision bass guitar delivers the sound, look, and feel today\'s bass players demand. This bass features that classic P-Bass old-school design. Each Precision bass boasts contemporary features and refinements that make it an excellent value. Featuring an alder body and a split single-coil pickup, this classic electric bass guitar lives up to its Fender legacy.\r\n\r\nFeatures:\r\n\r\n* Body: Alder\r\n* Neck: Maple, modern C shape, tinted satin urethane finish\r\n* Fingerboard: Rosewood or maple (depending on color)\r\n* 9-1/2" Radius (241 mm)\r\n* Frets: 20 Medium-jumbo frets\r\n* Pickups: 1 Standard Precision Bass split single-coil pickup (Mid)\r\n* Controls: Volume, Tone\r\n* Bridge: Standard vintage style with single groove saddles\r\n* Machine heads: Standard\r\n* Hardware: Chrome\r\n* Pickguard: 3-Ply Parchment\r\n* Scale Length: 34" (864 mm)\r\n* Width at Nut: 1-5/8" (41.3 mm)\r\n* Unique features: Knurled chrome P Bass knobs, Fender transition logo', 799.99, 30.00, '2014-06-01 11:29:35'),
	(8, 2, 'hofner', 'Hofner Icon', 'With authentic details inspired by the original, the Hofner Icon makes the legendary violin bass available to the rest of us. Don\'t get the idea that this a just a "nowhere man" look-alike. This quality instrument features a real spruce top and beautiful flamed maple back and sides. The semi-hollow body and set neck will give you the warm, round tone you expect from the violin bass.\r\n\r\nFeatures:\r\n\r\n* Authentic details inspired by the original\r\n* Spruce top\r\n* Flamed maple back and sides\r\n* Set neck\r\n* Rosewood fretboard\r\n* 30" scale\r\n* 22 frets\r\n* Dot inlay', 599.99, 25.00, '2014-07-30 14:18:33'),
	(31, 1, '7rjyt', 'fghdfg', '', 555.00, 0.00, '2016-04-28 18:24:25'),
	(32, 1, 'GR124', 'Billy', '', 123.00, 0.00, '2016-04-28 18:25:43'),
	(33, 1, 'WIg', 'Wizards', '', 5.00, 0.00, '2016-04-28 18:26:11'),
	(38, 2, 'fend', 'Fender Precision II', '', 999.99, 0.00, '2016-04-28 18:45:35'),
	(37, 1, 'magic', 'thegathering', '', 666.00, 0.00, '2016-04-28 18:28:23'),
	(41, 3, 'sdfdsf', 'dasdad', '', 3.00, 0.00, '2016-04-28 18:48:47'),
	(42, 1, 'Fender', 'Fender Stratocaster', '', 1000.00, 0.00, '2016-04-28 18:49:11'),
	(43, 3, 'CR1', 'Cr-guitar', '', 100.00, 0.00, '2016-05-05 00:00:00'),
	(44, 3, 'D4', 'sfsdfsdf', '', 2500.00, 0.00, '2016-01-01 00:00:00'),
	(45, 3, 'FFWW', 'Unknow', '', 1000.00, 0.00, '2016-04-28 18:53:56'),
	(46, 1, 'G21', 'GuitarZ', '', 450.99, 0.00, '2016-04-28 18:55:23');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
