# ************************************************************
# Sequel Ace SQL dump
# Version 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.5.5-10.10.2-MariaDB-1:10.10.2+maria~ubu2204)
# Database: wordpress
# Generation Time: 2023-02-22 16:52:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_actionscheduler_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`)
VALUES
	(6,'action_scheduler/migration_hook','complete','2023-02-16 20:12:59','2023-02-16 21:12:59','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676578379;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676578379;}',1,1,'2023-02-16 20:13:30','2023-02-16 21:13:30',0,NULL),
	(7,'woocommerce_cleanup_draft_orders','complete','2023-02-16 20:12:12','2023-02-16 21:12:12','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1676578332;s:18:\"\0*\0first_timestamp\";i:1676578332;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1676578332;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2023-02-16 20:13:30','2023-02-16 21:13:30',0,NULL),
	(8,'woocommerce_cleanup_draft_orders','complete','2023-02-17 20:13:30','2023-02-17 21:13:30','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1676664810;s:18:\"\0*\0first_timestamp\";i:1676578332;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1676664810;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2023-02-19 11:21:42','2023-02-19 12:21:42',0,NULL),
	(9,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:39','2023-02-16 21:41:39','[12,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580099;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580099;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(10,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:40','2023-02-16 21:41:40','[13,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580100;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580100;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(11,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:41','2023-02-16 21:41:41','[14,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580101;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(12,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:41','2023-02-16 21:41:41','[15,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580101;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(13,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:41','2023-02-16 21:41:41','[16,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580101;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(14,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:41','2023-02-16 21:41:41','[17,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580101;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(15,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:41','2023-02-16 21:41:41','[18,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580101;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(16,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[19,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(17,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[20,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(18,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[21,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(19,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[22,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(20,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[23,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(21,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[24,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(22,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[25,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(23,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[26,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:13','2023-02-16 21:42:13',0,NULL),
	(24,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[27,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(25,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[28,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(26,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[29,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(27,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[30,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(28,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:42','2023-02-16 21:41:42','[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580102;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580102;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(29,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:43','2023-02-16 21:41:43','[32,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580103;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(30,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:43','2023-02-16 21:41:43','[33,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580103;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(31,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:43','2023-02-16 21:41:43','[34,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580103;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(32,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:43','2023-02-16 21:41:43','[35,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580103;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(33,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:43','2023-02-16 21:41:43','[36,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580103;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(34,'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications','failed','2023-02-16 20:41:44','2023-02-16 20:41:44','[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',0,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(35,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:41:54','2023-02-16 21:41:54','[20,3]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580114;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580114;}',2,1,'2023-02-16 20:42:14','2023-02-16 21:42:14',0,NULL),
	(36,'adjust_download_permissions','complete','2023-02-16 20:42:01','2023-02-16 21:42:01','[34]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580121;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580121;}',0,1,'2023-02-16 20:42:15','2023-02-16 21:42:15',0,NULL),
	(37,'adjust_download_permissions','complete','2023-02-16 20:42:03','2023-02-16 21:42:03','[12]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580123;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580123;}',0,1,'2023-02-16 20:42:15','2023-02-16 21:42:15',0,NULL),
	(38,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:42:03','2023-02-16 21:42:03','[12,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580123;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580123;}',2,1,'2023-02-16 20:42:15','2023-02-16 21:42:15',0,NULL),
	(39,'adjust_download_permissions','complete','2023-02-16 20:42:03','2023-02-16 21:42:03','[13]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580123;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580123;}',0,1,'2023-02-16 20:42:15','2023-02-16 21:42:15',0,NULL),
	(40,'woocommerce_run_product_attribute_lookup_update_callback','complete','2023-02-16 20:42:03','2023-02-16 21:42:03','[13,2]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676580123;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676580123;}',2,1,'2023-02-16 20:42:15','2023-02-16 21:42:15',0,NULL),
	(41,'woocommerce_cleanup_draft_orders','complete','2023-02-20 11:21:42','2023-02-20 12:21:42','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1676892102;s:18:\"\0*\0first_timestamp\";i:1676578332;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1676892102;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2023-02-20 11:47:07','2023-02-20 12:47:07',0,NULL),
	(42,'wc-admin_import_customers','complete','2023-02-19 12:18:40','2023-02-19 13:18:40','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676809120;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676809120;}',3,1,'2023-02-19 12:19:17','2023-02-19 13:19:17',0,NULL),
	(43,'woocommerce_cleanup_draft_orders','complete','2023-02-21 11:47:07','2023-02-21 12:47:07','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1676980027;s:18:\"\0*\0first_timestamp\";i:1676578332;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1676980027;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2023-02-22 16:34:54','2023-02-22 17:34:54',0,NULL),
	(44,'wc-admin_import_orders','complete','2023-02-20 12:09:20','2023-02-20 13:09:20','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676894960;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676894960;}',3,1,'2023-02-20 12:09:32','2023-02-20 13:09:32',0,NULL),
	(45,'wc-admin_import_orders','complete','2023-02-20 12:12:18','2023-02-20 13:12:18','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676895138;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676895138;}',3,1,'2023-02-20 12:12:41','2023-02-20 13:12:41',0,NULL),
	(46,'wc-admin_import_orders','complete','2023-02-20 12:13:10','2023-02-20 13:13:10','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676895190;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676895190;}',3,1,'2023-02-20 12:13:26','2023-02-20 13:13:26',0,NULL),
	(47,'wc-admin_import_orders','complete','2023-02-20 12:15:20','2023-02-20 13:15:20','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676895320;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676895320;}',3,1,'2023-02-20 12:15:48','2023-02-20 13:15:48',0,NULL),
	(48,'wc-admin_import_orders','complete','2023-02-20 12:16:26','2023-02-20 13:16:26','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676895386;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676895386;}',3,1,'2023-02-20 12:16:34','2023-02-20 13:16:34',0,NULL),
	(49,'wc-admin_import_orders','complete','2023-02-20 12:18:40','2023-02-20 13:18:40','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676895520;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676895520;}',3,1,'2023-02-20 12:18:43','2023-02-20 13:18:43',0,NULL),
	(50,'wc-admin_import_orders','complete','2023-02-20 14:02:16','2023-02-20 15:02:16','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676901736;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676901736;}',3,1,'2023-02-20 14:04:18','2023-02-20 15:04:18',0,NULL),
	(51,'wc-admin_import_orders','complete','2023-02-20 14:12:55','2023-02-20 15:12:55','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676902375;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676902375;}',3,1,'2023-02-20 14:13:14','2023-02-20 15:13:14',0,NULL),
	(52,'wc-admin_import_customers','complete','2023-02-20 14:16:01','2023-02-20 15:16:01','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676902561;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676902561;}',3,1,'2023-02-20 14:16:11','2023-02-20 15:16:11',0,NULL),
	(53,'wc-admin_import_orders','complete','2023-02-20 14:24:07','2023-02-20 15:24:07','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676903047;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676903047;}',3,1,'2023-02-20 14:24:12','2023-02-20 15:24:12',0,NULL),
	(54,'wc-admin_import_orders','complete','2023-02-20 14:24:50','2023-02-20 15:24:50','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676903090;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676903090;}',3,1,'2023-02-20 14:25:18','2023-02-20 15:25:18',0,NULL),
	(55,'wc-admin_import_customers','complete','2023-02-20 14:33:37','2023-02-20 15:33:37','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676903617;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676903617;}',3,1,'2023-02-20 14:34:50','2023-02-20 15:34:50',0,NULL),
	(56,'wc-admin_import_orders','complete','2023-02-20 14:33:38','2023-02-20 15:33:38','[60]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676903618;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676903618;}',3,1,'2023-02-20 14:34:53','2023-02-20 15:34:53',0,NULL),
	(57,'wc-admin_import_orders','complete','2023-02-20 14:35:04','2023-02-20 15:35:04','[60]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676903704;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676903704;}',3,1,'2023-02-20 14:35:24','2023-02-20 15:35:24',0,NULL),
	(58,'wc-admin_import_customers','complete','2023-02-20 14:35:06','2023-02-20 15:35:06','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1676903706;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1676903706;}',3,1,'2023-02-20 14:35:58','2023-02-20 15:35:58',0,NULL),
	(59,'woocommerce_cleanup_draft_orders','pending','2023-02-23 16:34:54','2023-02-23 17:34:54','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1677170094;s:18:\"\0*\0first_timestamp\";i:1676578332;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1677170094;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
	(60,'wc-admin_import_orders','complete','2023-02-22 16:35:00','2023-02-22 17:35:00','[59]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1677083700;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1677083700;}',3,1,'2023-02-22 16:35:38','2023-02-22 17:35:38',0,NULL);

/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_actionscheduler_claims
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_actionscheduler_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`)
VALUES
	(1,'action-scheduler-migration'),
	(2,'woocommerce-db-updates'),
	(3,'wc-admin-data');

/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_actionscheduler_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`)
VALUES
	(1,6,'action created','2023-02-16 20:11:59','2023-02-16 21:11:59'),
	(2,7,'action created','2023-02-16 20:12:12','2023-02-16 21:12:12'),
	(3,7,'action started via Async Request','2023-02-16 20:13:30','2023-02-16 21:13:30'),
	(4,7,'action complete via Async Request','2023-02-16 20:13:30','2023-02-16 21:13:30'),
	(5,8,'action created','2023-02-16 20:13:30','2023-02-16 21:13:30'),
	(6,6,'action started via Async Request','2023-02-16 20:13:30','2023-02-16 21:13:30'),
	(7,6,'action complete via Async Request','2023-02-16 20:13:30','2023-02-16 21:13:30'),
	(8,9,'azione creata','2023-02-16 20:41:38','2023-02-16 21:41:38'),
	(9,10,'azione creata','2023-02-16 20:41:39','2023-02-16 21:41:39'),
	(10,11,'azione creata','2023-02-16 20:41:40','2023-02-16 21:41:40'),
	(11,12,'azione creata','2023-02-16 20:41:40','2023-02-16 21:41:40'),
	(12,13,'azione creata','2023-02-16 20:41:40','2023-02-16 21:41:40'),
	(13,14,'azione creata','2023-02-16 20:41:40','2023-02-16 21:41:40'),
	(14,15,'azione creata','2023-02-16 20:41:40','2023-02-16 21:41:40'),
	(15,16,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(16,17,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(17,18,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(18,19,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(19,20,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(20,21,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(21,22,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(22,23,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(23,24,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(24,25,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(25,26,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(26,27,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(27,28,'azione creata','2023-02-16 20:41:41','2023-02-16 21:41:41'),
	(28,29,'azione creata','2023-02-16 20:41:42','2023-02-16 21:41:42'),
	(29,30,'azione creata','2023-02-16 20:41:42','2023-02-16 21:41:42'),
	(30,31,'azione creata','2023-02-16 20:41:42','2023-02-16 21:41:42'),
	(31,32,'azione creata','2023-02-16 20:41:42','2023-02-16 21:41:42'),
	(32,33,'azione creata','2023-02-16 20:41:42','2023-02-16 21:41:42'),
	(33,34,'azione creata','2023-02-16 20:41:44','2023-02-16 21:41:44'),
	(34,35,'azione creata','2023-02-16 20:41:53','2023-02-16 21:41:53'),
	(35,36,'azione creata','2023-02-16 20:42:00','2023-02-16 21:42:00'),
	(36,37,'azione creata','2023-02-16 20:42:02','2023-02-16 21:42:02'),
	(37,38,'azione creata','2023-02-16 20:42:02','2023-02-16 21:42:02'),
	(38,39,'azione creata','2023-02-16 20:42:02','2023-02-16 21:42:02'),
	(39,40,'azione creata','2023-02-16 20:42:02','2023-02-16 21:42:02'),
	(40,9,'azione avviata via WP Cron','2023-02-16 20:42:12','2023-02-16 21:42:12'),
	(41,9,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(42,10,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(43,10,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(44,11,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(45,11,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(46,12,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(47,12,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(48,13,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(49,13,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(50,14,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(51,14,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(52,15,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(53,15,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(54,16,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(55,16,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(56,17,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(57,17,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(58,18,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(59,18,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(60,19,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(61,19,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(62,20,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(63,20,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(64,21,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(65,21,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(66,22,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(67,22,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(68,23,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(69,23,'azione completata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(70,24,'azione avviata via WP Cron','2023-02-16 20:42:13','2023-02-16 21:42:13'),
	(71,24,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(72,25,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(73,25,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(74,26,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(75,26,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(76,27,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(77,27,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(78,28,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(79,28,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(80,29,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(81,29,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(82,30,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(83,30,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(84,31,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(85,31,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(86,32,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(87,32,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(88,33,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(89,33,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(90,34,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(91,34,'azione non riuscita via WP Cron: L\'azione pianificata per woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications non verrà eseguita poiché non sono registrate richiamate.','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(92,35,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(93,35,'azione completata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(94,36,'azione avviata via WP Cron','2023-02-16 20:42:14','2023-02-16 21:42:14'),
	(95,36,'azione completata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(96,37,'azione avviata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(97,37,'azione completata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(98,38,'azione avviata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(99,38,'azione completata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(100,39,'azione avviata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(101,39,'azione completata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(102,40,'azione avviata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(103,40,'azione completata via WP Cron','2023-02-16 20:42:15','2023-02-16 21:42:15'),
	(104,8,'azione avviata via WP Cron','2023-02-19 11:21:42','2023-02-19 12:21:42'),
	(105,8,'azione completata via WP Cron','2023-02-19 11:21:42','2023-02-19 12:21:42'),
	(106,41,'azione creata','2023-02-19 11:21:42','2023-02-19 12:21:42'),
	(107,42,'azione creata','2023-02-19 12:18:35','2023-02-19 13:18:35'),
	(108,42,'azione avviata via WP Cron','2023-02-19 12:19:17','2023-02-19 13:19:17'),
	(109,42,'azione completata via WP Cron','2023-02-19 12:19:17','2023-02-19 13:19:17'),
	(110,41,'azione avviata via WP Cron','2023-02-20 11:47:07','2023-02-20 12:47:07'),
	(111,41,'azione completata via WP Cron','2023-02-20 11:47:07','2023-02-20 12:47:07'),
	(112,43,'azione creata','2023-02-20 11:47:07','2023-02-20 12:47:07'),
	(113,44,'azione creata','2023-02-20 12:09:15','2023-02-20 13:09:15'),
	(114,44,'azione avviata via WP Cron','2023-02-20 12:09:31','2023-02-20 13:09:31'),
	(115,44,'azione completata via WP Cron','2023-02-20 12:09:32','2023-02-20 13:09:32'),
	(116,45,'azione creata','2023-02-20 12:12:13','2023-02-20 13:12:13'),
	(117,45,'azione avviata via WP Cron','2023-02-20 12:12:40','2023-02-20 13:12:40'),
	(118,45,'azione completata via WP Cron','2023-02-20 12:12:41','2023-02-20 13:12:41'),
	(119,46,'azione creata','2023-02-20 12:13:06','2023-02-20 13:13:06'),
	(120,46,'azione avviata via WP Cron','2023-02-20 12:13:26','2023-02-20 13:13:26'),
	(121,46,'azione completata via WP Cron','2023-02-20 12:13:26','2023-02-20 13:13:26'),
	(122,47,'azione creata','2023-02-20 12:15:15','2023-02-20 13:15:15'),
	(123,47,'azione avviata via WP Cron','2023-02-20 12:15:48','2023-02-20 13:15:48'),
	(124,47,'azione completata via WP Cron','2023-02-20 12:15:48','2023-02-20 13:15:48'),
	(125,48,'azione creata','2023-02-20 12:16:21','2023-02-20 13:16:21'),
	(126,48,'azione avviata via WP Cron','2023-02-20 12:16:33','2023-02-20 13:16:33'),
	(127,48,'azione completata via WP Cron','2023-02-20 12:16:34','2023-02-20 13:16:34'),
	(128,49,'azione creata','2023-02-20 12:18:35','2023-02-20 13:18:35'),
	(129,49,'azione avviata via WP Cron','2023-02-20 12:18:43','2023-02-20 13:18:43'),
	(130,49,'azione completata via WP Cron','2023-02-20 12:18:43','2023-02-20 13:18:43'),
	(131,50,'azione creata','2023-02-20 14:02:11','2023-02-20 15:02:11'),
	(132,50,'azione avviata via WP Cron','2023-02-20 14:04:18','2023-02-20 15:04:18'),
	(133,50,'azione completata via WP Cron','2023-02-20 14:04:18','2023-02-20 15:04:18'),
	(134,51,'azione creata','2023-02-20 14:12:50','2023-02-20 15:12:50'),
	(135,51,'azione avviata via WP Cron','2023-02-20 14:13:14','2023-02-20 15:13:14'),
	(136,51,'azione completata via WP Cron','2023-02-20 14:13:14','2023-02-20 15:13:14'),
	(137,52,'azione creata','2023-02-20 14:15:56','2023-02-20 15:15:56'),
	(138,52,'azione avviata via WP Cron','2023-02-20 14:16:11','2023-02-20 15:16:11'),
	(139,52,'azione completata via WP Cron','2023-02-20 14:16:11','2023-02-20 15:16:11'),
	(140,53,'azione creata','2023-02-20 14:24:03','2023-02-20 15:24:03'),
	(141,53,'azione avviata via WP Cron','2023-02-20 14:24:11','2023-02-20 15:24:11'),
	(142,53,'azione completata via WP Cron','2023-02-20 14:24:12','2023-02-20 15:24:12'),
	(143,54,'azione creata','2023-02-20 14:24:45','2023-02-20 15:24:45'),
	(144,54,'azione avviata via WP Cron','2023-02-20 14:25:17','2023-02-20 15:25:17'),
	(145,54,'azione completata via WP Cron','2023-02-20 14:25:18','2023-02-20 15:25:18'),
	(146,55,'azione creata','2023-02-20 14:33:32','2023-02-20 15:33:32'),
	(147,56,'azione creata','2023-02-20 14:33:33','2023-02-20 15:33:33'),
	(148,55,'azione avviata via WP Cron','2023-02-20 14:34:50','2023-02-20 15:34:50'),
	(149,55,'azione completata via WP Cron','2023-02-20 14:34:50','2023-02-20 15:34:50'),
	(150,56,'azione avviata via Async Request','2023-02-20 14:34:53','2023-02-20 15:34:53'),
	(151,56,'azione completata via Async Request','2023-02-20 14:34:53','2023-02-20 15:34:53'),
	(152,57,'azione creata','2023-02-20 14:34:59','2023-02-20 15:34:59'),
	(153,58,'azione creata','2023-02-20 14:35:01','2023-02-20 15:35:01'),
	(154,57,'azione avviata via WP Cron','2023-02-20 14:35:24','2023-02-20 15:35:24'),
	(155,57,'azione completata via WP Cron','2023-02-20 14:35:24','2023-02-20 15:35:24'),
	(156,58,'azione avviata via Async Request','2023-02-20 14:35:58','2023-02-20 15:35:58'),
	(157,58,'azione completata via Async Request','2023-02-20 14:35:58','2023-02-20 15:35:58'),
	(158,43,'azione avviata via WP Cron','2023-02-22 16:34:54','2023-02-22 17:34:54'),
	(159,43,'azione completata via WP Cron','2023-02-22 16:34:54','2023-02-22 17:34:54'),
	(160,59,'azione creata','2023-02-22 16:34:54','2023-02-22 17:34:54'),
	(161,60,'azione creata','2023-02-22 16:34:55','2023-02-22 17:34:55'),
	(162,60,'azione avviata via Async Request','2023-02-22 16:35:38','2023-02-22 17:35:38'),
	(163,60,'azione completata via Async Request','2023-02-22 16:35:38','2023-02-22 17:35:38');

/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Un commentatore di WordPress','wapuu@wordpress.example','https://it.wordpress.org/','','2023-02-16 21:07:06','2023-02-16 20:07:06','Ciao, questo è un commento.\nPer iniziare a moderare, modificare ed eliminare commenti, vai alla schermata dei commenti nella bacheca.\nGli avatar di chi lascia un commento sono forniti da <a href=\"https://it.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0),
	(2,59,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-20 15:02:11','2023-02-20 14:02:11','Ordine non pagato annullato - tempo limite raggiunto. Lo stato dell\'ordine è cambiato da In attesa di pagamento a Annullato.',0,'1','WooCommerce','order_note',0,0),
	(3,59,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-20 15:12:50','2023-02-20 14:12:50','Lo stato dell\'ordine è cambiato da Annullato a In lavorazione.',0,'1','WooCommerce','order_note',0,0),
	(4,59,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-20 15:12:52','2023-02-20 14:12:52','Lo stato dell\'ordine è cambiato da In lavorazione a Completato.',0,'1','WooCommerce','order_note',0,0),
	(5,59,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-20 15:24:03','2023-02-20 14:24:03','Lo stato dell\'ordine è cambiato da Completato a Fallito.',0,'1','WooCommerce','order_note',0,0),
	(6,59,'admin','admin@ecommerce.test','','','2023-02-20 15:24:45','2023-02-20 14:24:45','Lo stato dell\'ordine è cambiato da Fallito a In attesa di pagamento.',0,'1','WooCommerce','order_note',0,0),
	(7,60,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-20 15:34:59','2023-02-20 14:34:59','Lo stato dell\'ordine è cambiato da In attesa di pagamento a In lavorazione.',0,'1','WooCommerce','order_note',0,0),
	(8,60,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-20 15:35:01','2023-02-20 14:35:01','Lo stato dell\'ordine è cambiato da In lavorazione a Completato.',0,'1','WooCommerce','order_note',0,0),
	(9,59,'WooCommerce','woocommerce@ecommerce.test','','','2023-02-22 17:34:55','2023-02-22 16:34:55','Ordine non pagato annullato - tempo limite raggiunto. Lo stato dell\'ordine è cambiato da In attesa di pagamento a Annullato.',0,'1','WooCommerce','order_note',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://ecommerce.test/wp','yes'),
	(2,'home','http://ecommerce.test/wp','yes'),
	(3,'blogname','E-commerce Demo','yes'),
	(4,'blogdescription','','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','admin@dartmoon.io','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','0','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','j F Y','yes'),
	(24,'time_format','G:i','yes'),
	(25,'links_updated_date_format','j F Y G:i','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%postname%/','yes'),
	(29,'rewrite_rules','a:160:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:2:{i:0;s:53:\"woocommerce-demo-payment/woocommerce-demo-payment.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','storefront','yes'),
	(41,'stylesheet','storefront','yes'),
	(42,'comment_registration','0','yes'),
	(43,'html_type','text/html','yes'),
	(44,'use_trackback','0','yes'),
	(45,'default_role','subscriber','yes'),
	(46,'db_version','53496','yes'),
	(47,'uploads_use_yearmonth_folders','1','yes'),
	(48,'upload_path','','yes'),
	(49,'blog_public','0','yes'),
	(50,'default_link_category','2','yes'),
	(51,'show_on_front','posts','yes'),
	(52,'tag_base','','yes'),
	(53,'show_avatars','1','yes'),
	(54,'avatar_rating','G','yes'),
	(55,'upload_url_path','','yes'),
	(56,'thumbnail_size_w','150','yes'),
	(57,'thumbnail_size_h','150','yes'),
	(58,'thumbnail_crop','1','yes'),
	(59,'medium_size_w','300','yes'),
	(60,'medium_size_h','300','yes'),
	(61,'avatar_default','mystery','yes'),
	(62,'large_size_w','1024','yes'),
	(63,'large_size_h','1024','yes'),
	(64,'image_default_link_type','none','yes'),
	(65,'image_default_size','','yes'),
	(66,'image_default_align','','yes'),
	(67,'close_comments_for_old_posts','0','yes'),
	(68,'close_comments_days_old','14','yes'),
	(69,'thread_comments','1','yes'),
	(70,'thread_comments_depth','5','yes'),
	(71,'page_comments','0','yes'),
	(72,'comments_per_page','50','yes'),
	(73,'default_comments_page','newest','yes'),
	(74,'comment_order','asc','yes'),
	(75,'sticky_posts','a:0:{}','yes'),
	(76,'widget_categories','a:0:{}','yes'),
	(77,'widget_text','a:0:{}','yes'),
	(78,'widget_rss','a:0:{}','yes'),
	(79,'uninstall_plugins','a:0:{}','no'),
	(80,'timezone_string','Europe/Rome','yes'),
	(81,'page_for_posts','0','yes'),
	(82,'page_on_front','0','yes'),
	(83,'default_post_format','0','yes'),
	(84,'link_manager_enabled','0','yes'),
	(85,'finished_splitting_shared_terms','1','yes'),
	(86,'site_icon','0','yes'),
	(87,'medium_large_size_w','768','yes'),
	(88,'medium_large_size_h','0','yes'),
	(89,'wp_page_for_privacy_policy','3','yes'),
	(90,'show_comments_cookies_opt_in','1','yes'),
	(91,'admin_email_lifespan','1692130026','yes'),
	(92,'disallowed_keys','','no'),
	(93,'comment_previously_approved','1','yes'),
	(94,'auto_plugin_theme_update_emails','a:0:{}','no'),
	(95,'auto_update_core_dev','enabled','yes'),
	(96,'auto_update_core_minor','enabled','yes'),
	(97,'auto_update_core_major','enabled','yes'),
	(98,'wp_force_deactivated_plugins','a:0:{}','yes'),
	(99,'initial_db_version','53496','yes'),
	(100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),
	(101,'fresh_site','0','yes'),
	(102,'WPLANG','it_IT','yes'),
	(103,'user_count','1','no'),
	(104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articoli recenti</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commenti recenti</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivi</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:149:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
	(106,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:1:{s:55:\"bedrock-disallow-indexing/bedrock-disallow-indexing.php\";a:14:{s:4:\"Name\";s:17:\"Disallow Indexing\";s:9:\"PluginURI\";s:25:\"https://roots.io/bedrock/\";s:7:\"Version\";s:5:\"2.0.0\";s:11:\"Description\";s:62:\"Disallow indexing of your site on non-production environments.\";s:6:\"Author\";s:5:\"Roots\";s:9:\"AuthorURI\";s:17:\"https://roots.io/\";s:10:\"TextDomain\";s:5:\"roots\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:17:\"Disallow Indexing\";s:10:\"AuthorName\";s:5:\"Roots\";}}s:5:\"count\";i:1;}','no'),
	(107,'cron','a:16:{i:1677083752;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1677085628;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1677085916;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1677085943;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1677087294;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1677096428;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677096526;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677096528;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677096713;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677096723;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677106800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677107513;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677118313;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1677269228;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1677874373;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes'),
	(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(123,'recovery_keys','a:0:{}','yes'),
	(124,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Richiesta HTTPS fallita.\";}}','yes'),
	(126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1676579762;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes'),
	(133,'_site_transient_timeout_browser_894dc60a4e148f4652615ed246d3e298','1677182927','no'),
	(134,'_site_transient_browser_894dc60a4e148f4652615ed246d3e298','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"109.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(135,'_site_transient_timeout_php_check_8fdcbe8de4e7bb2dab36d40de47a833c','1677182928','no'),
	(136,'_site_transient_php_check_8fdcbe8de4e7bb2dab36d40de47a833c','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
	(150,'can_compress_scripts','0','no'),
	(153,'finished_updating_comment_type','1','yes'),
	(154,'_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447','1677183097','no'),
	(155,'_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
	(158,'recently_activated','a:0:{}','yes'),
	(159,'action_scheduler_hybrid_store_demarkation','5','yes'),
	(160,'schema-ActionScheduler_StoreSchema','6.0.1676578312','yes'),
	(161,'schema-ActionScheduler_LoggerSchema','3.0.1676578312','yes'),
	(164,'woocommerce_schema_version','430','yes'),
	(165,'woocommerce_store_address','Via Prova, 123','yes'),
	(166,'woocommerce_store_address_2','','yes'),
	(167,'woocommerce_store_city','Padova','yes'),
	(168,'woocommerce_default_country','IT:VE','yes'),
	(169,'woocommerce_store_postcode','35100','yes'),
	(170,'woocommerce_allowed_countries','all','yes'),
	(171,'woocommerce_all_except_countries','a:0:{}','yes'),
	(172,'woocommerce_specific_allowed_countries','a:0:{}','yes'),
	(173,'woocommerce_ship_to_countries','','yes'),
	(174,'woocommerce_specific_ship_to_countries','a:0:{}','yes'),
	(175,'woocommerce_default_customer_address','base','yes'),
	(176,'woocommerce_calc_taxes','no','yes'),
	(177,'woocommerce_enable_coupons','yes','yes'),
	(178,'woocommerce_calc_discounts_sequentially','no','no'),
	(179,'woocommerce_currency','EUR','yes'),
	(180,'woocommerce_currency_pos','right_space','yes'),
	(181,'woocommerce_price_thousand_sep','.','yes'),
	(182,'woocommerce_price_decimal_sep',',','yes'),
	(183,'woocommerce_price_num_decimals','2','yes'),
	(184,'woocommerce_shop_page_id','6','yes'),
	(185,'woocommerce_cart_redirect_after_add','no','yes'),
	(186,'woocommerce_enable_ajax_add_to_cart','yes','yes'),
	(187,'woocommerce_placeholder_image','5','yes'),
	(188,'woocommerce_weight_unit','kg','yes'),
	(189,'woocommerce_dimension_unit','cm','yes'),
	(190,'woocommerce_enable_reviews','yes','yes'),
	(191,'woocommerce_review_rating_verification_label','yes','no'),
	(192,'woocommerce_review_rating_verification_required','no','no'),
	(193,'woocommerce_enable_review_rating','yes','yes'),
	(194,'woocommerce_review_rating_required','yes','no'),
	(195,'woocommerce_manage_stock','yes','yes'),
	(196,'woocommerce_hold_stock_minutes','60','no'),
	(197,'woocommerce_notify_low_stock','yes','no'),
	(198,'woocommerce_notify_no_stock','yes','no'),
	(199,'woocommerce_stock_email_recipient','admin@dartmoon.io','no'),
	(200,'woocommerce_notify_low_stock_amount','2','no'),
	(201,'woocommerce_notify_no_stock_amount','0','yes'),
	(202,'woocommerce_hide_out_of_stock_items','no','yes'),
	(203,'woocommerce_stock_format','','yes'),
	(204,'woocommerce_file_download_method','force','no'),
	(205,'woocommerce_downloads_redirect_fallback_allowed','no','no'),
	(206,'woocommerce_downloads_require_login','no','no'),
	(207,'woocommerce_downloads_grant_access_after_payment','yes','no'),
	(208,'woocommerce_downloads_deliver_inline','','no'),
	(209,'woocommerce_downloads_add_hash_to_filename','yes','yes'),
	(210,'woocommerce_attribute_lookup_enabled','no','yes'),
	(211,'woocommerce_attribute_lookup_direct_updates','no','yes'),
	(212,'woocommerce_prices_include_tax','no','yes'),
	(213,'woocommerce_tax_based_on','shipping','yes'),
	(214,'woocommerce_shipping_tax_class','inherit','yes'),
	(215,'woocommerce_tax_round_at_subtotal','no','yes'),
	(216,'woocommerce_tax_classes','','yes'),
	(217,'woocommerce_tax_display_shop','excl','yes'),
	(218,'woocommerce_tax_display_cart','excl','yes'),
	(219,'woocommerce_price_display_suffix','','yes'),
	(220,'woocommerce_tax_total_display','itemized','no'),
	(221,'woocommerce_enable_shipping_calc','yes','no'),
	(222,'woocommerce_shipping_cost_requires_address','no','yes'),
	(223,'woocommerce_ship_to_destination','billing','no'),
	(224,'woocommerce_shipping_debug_mode','no','yes'),
	(225,'woocommerce_enable_guest_checkout','yes','no'),
	(226,'woocommerce_enable_checkout_login_reminder','no','no'),
	(227,'woocommerce_enable_signup_and_login_from_checkout','no','no'),
	(228,'woocommerce_enable_myaccount_registration','no','no'),
	(229,'woocommerce_registration_generate_username','yes','no'),
	(230,'woocommerce_registration_generate_password','yes','no'),
	(231,'woocommerce_erasure_request_removes_order_data','no','no'),
	(232,'woocommerce_erasure_request_removes_download_data','no','no'),
	(233,'woocommerce_allow_bulk_remove_personal_data','no','no'),
	(234,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes'),
	(235,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes'),
	(236,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),
	(237,'woocommerce_trash_pending_orders','','no'),
	(238,'woocommerce_trash_failed_orders','','no'),
	(239,'woocommerce_trash_cancelled_orders','','no'),
	(240,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),
	(241,'woocommerce_email_from_name','E-commerce Demo','no'),
	(242,'woocommerce_email_from_address','admin@dartmoon.io','no'),
	(243,'woocommerce_email_header_image','','no'),
	(244,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no'),
	(245,'woocommerce_email_base_color','#7f54b3','no'),
	(246,'woocommerce_email_background_color','#f7f7f7','no'),
	(247,'woocommerce_email_body_background_color','#ffffff','no'),
	(248,'woocommerce_email_text_color','#3c3c3c','no'),
	(249,'woocommerce_merchant_email_notifications','no','no'),
	(250,'woocommerce_cart_page_id','7','no'),
	(251,'woocommerce_checkout_page_id','8','no'),
	(252,'woocommerce_myaccount_page_id','9','no'),
	(253,'woocommerce_terms_page_id','','no'),
	(254,'woocommerce_force_ssl_checkout','no','yes'),
	(255,'woocommerce_unforce_ssl_checkout','no','yes'),
	(256,'woocommerce_checkout_pay_endpoint','order-pay','yes'),
	(257,'woocommerce_checkout_order_received_endpoint','order-received','yes'),
	(258,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),
	(259,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),
	(260,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),
	(261,'woocommerce_myaccount_orders_endpoint','orders','yes'),
	(262,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),
	(263,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),
	(264,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),
	(265,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),
	(266,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),
	(267,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),
	(268,'woocommerce_logout_endpoint','customer-logout','yes'),
	(269,'woocommerce_api_enabled','no','yes'),
	(270,'woocommerce_allow_tracking','no','no'),
	(271,'woocommerce_show_marketplace_suggestions','yes','no'),
	(272,'woocommerce_analytics_enabled','yes','yes'),
	(273,'woocommerce_navigation_enabled','no','yes'),
	(274,'woocommerce_new_product_management_enabled','no','yes'),
	(275,'woocommerce_feature_custom_order_tables_enabled','no','yes'),
	(276,'woocommerce_single_image_width','600','yes'),
	(277,'woocommerce_thumbnail_image_width','300','yes'),
	(278,'woocommerce_checkout_highlight_required_fields','yes','yes'),
	(279,'woocommerce_demo_store','no','no'),
	(280,'wc_downloads_approved_directories_mode','enabled','yes'),
	(281,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),
	(282,'current_theme_supports_woocommerce','yes','yes'),
	(283,'woocommerce_queue_flush_rewrite_rules','no','yes'),
	(286,'default_product_cat','15','yes'),
	(288,'woocommerce_refund_returns_page_id','10','yes'),
	(291,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:17:\"admin@dartmoon.io\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:17:\"admin@dartmoon.io\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','yes'),
	(292,'woocommerce_version','7.4.0','yes'),
	(293,'woocommerce_db_version','7.4.0','yes'),
	(294,'woocommerce_admin_install_timestamp','1676578314','yes'),
	(295,'woocommerce_inbox_variant_assignment','1','yes'),
	(299,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','yes'),
	(300,'action_scheduler_lock_async-request-runner','1677083781','yes'),
	(301,'woocommerce_admin_notices','a:0:{}','yes'),
	(302,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"DEGtfBLI4J99HSkuyLgptbSldczWTbEU\";}','yes'),
	(303,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes'),
	(304,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(305,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(306,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(307,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(308,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(309,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(310,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(311,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(312,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(313,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(314,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(315,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(322,'_transient_timeout_woocommerce_admin_remote_free_extensions_specs','1677183121','no'),
	(323,'_transient_woocommerce_admin_remote_free_extensions_specs','a:1:{s:5:\"it_IT\";a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:32:\"Ottieni le funzionalità di base\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:170:\"Accetta carte di credito e altri metodi di pagamento popolari con <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:130:\"Stampa le etichette di spedizione con <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:129:\"Ottieni l\'imposta sulle vendite automatica con <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:115:\"Incrementa velocità e sicurezza con <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:27:\"Fai crescere il tuo negozio\";s:7:\"plugins\";a:6:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:128:\"Migliora il livello del tuo marketing email con <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:23:\"Codisto for WooCommerce\";s:11:\"description\";s:210:\"Sell on Amazon, eBay, Walmart and more directly from WooCommerce with  <a href=\"https://woocommerce.com/pt-br/products/amazon-ebay-integration/?quid=c247a85321c9e93e7c3c6f1eb072e6e5\" target=\"_blank\">Codisto</a>\";s:9:\"image_url\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/codistoconnect.png\";s:10:\"manage_url\";s:31:\"admin.php?page=codisto-settings\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:14:\"codistoconnect\";}i:2;O:8:\"stdClass\":7:{s:4:\"name\";s:27:\"Elenchi Google e Google Ads\";s:11:\"description\";s:133:\"Aumenta le vendite con <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listings and Ads</a>\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google.svg\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest per WooCommerce\";s:11:\"description\";s:86:\"Mostra i tuoi prodotti agli utenti di Pinterest che cercano idee e cose da acquistare.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}i:4;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook per WooCommerce\";s:11:\"description\";s:142:\"Elenca i prodotti e crea annunci su Facebook e Instagram con <a href=\"https://woocommerce.com/products/facebook/\">Facebook per WooCommerce</a>\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:24:\"facebook-for-woocommerce\";}i:5;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"TikTok per WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:188:\"Crea campagne pubblicitarie e raggiungi oltre un miliardo di utenti globali con <a href=\"https://woocommerce.com/products/tiktok-for-woocommerce\" target=\"_blank\">TikTok per WooCommerce</a>\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:23:\"tiktok-for-business:alt\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:24:\"Raggiungi i tuoi clienti\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:114:\"Crea e invia email di follow-up degli acquisti, newsletter e campagne promozionali direttamente dalla tua bacheca.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.svg\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"MailChimp\";s:11:\"description\";s:81:\"Invia campagne mirate, recupera carrelli abbandonati e molto altro con Mailchimp.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp.svg\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"Creative Mail per WooCommerce\";s:11:\"description\";s:104:\"Crea campagne on-brand nel negozio, promozioni email veloci e retargeting dei clienti con Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:27:\"Fai crescere il tuo negozio\";s:7:\"plugins\";a:5:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"Elenchi Google e Google Ads\";s:11:\"description\";s:184:\"Raggiungi più acquirenti e incrementa le vendite del tuo negozio. Integra con Google per avere un elenco dei tuoi prodotti gratuitamente e lanciare campagne pubblicitarie a pagamento.\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google.svg\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:22:\"TikTok per WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:146:\"Incrementa le vendite online promuovendo i tuoi prodotti su TikTok per raggiungere più di un miliardo di utenti attivi al mese in tutto il mondo.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest per WooCommerce\";s:11:\"description\";s:155:\"Mostra i tuoi prodotti agli utenti di Pinterest che cercano idee e cose da acquistare. Inizia con Pinterest e rendi sfogliabile l\'intero catalogo prodotti.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"pinterest-for-woocommerce:alt\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook per WooCommerce\";s:11:\"description\";s:57:\"Elenca i prodotti e crea annunci su Facebook e Instagram.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:28:\"facebook-for-woocommerce:alt\";}i:4;O:8:\"stdClass\":6:{s:4:\"name\";s:23:\"Codisto for WooCommerce\";s:11:\"description\";s:65:\"Sell on Amazon, eBay, Walmart and more directly from WooCommerce.\";s:9:\"image_url\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/codistoconnect.png\";s:10:\"manage_url\";s:31:\"admin.php?page=codisto-settings\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:18:\"codistoconnect:alt\";}}}}}','no'),
	(325,'_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs','1677688506','no'),
	(326,'_transient_woocommerce_admin_remote_inbox_notifications_specs','a:1:{s:5:\"it_IT\";a:31:{s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:14:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:251:\"WooCommerce Shipping & Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:17:25\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:17:\"wc-admin-wisepad3\";O:8:\"stdClass\":8:{s:4:\"slug\";s:17:\"wc-admin-wisepad3\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:74:\"Take your business on the go in Canada with WooCommerce In-Person Payments\";s:7:\"content\";s:275:\"Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"wc-admin-wisepad3\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Grow my business offline\";}}s:3:\"url\";s:126:\"https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-06-15 10:00:28\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}}}s:47:\"woocommerce-payments-august-2022-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"Action required: Please update WooCommerce Payments\";s:7:\"content\";s:213:\"An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:44:17\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"3.9\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"4.5.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.1\";}}}s:46:\"woocommerce-payments-august-2022-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-payments-august-2022-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"WooCommerce Payments has been automatically updated\";s:7:\"content\";s:265:\"You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:41:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.1\";}}}}}s:52:\"google_listings_ads_custom_attribute_mapping_q4_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:52:\"google_listings_ads_custom_attribute_mapping_q4_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:80:\"Our latest improvement to the Google Listings & Ads extension: Attribute Mapping\";s:7:\"content\";s:230:\"You spoke, we listened. This new feature enables you to easily upload your products, customize your product attributes in one place, and target shoppers with more relevant ads. Extend how far your ad dollars go with each campaign.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:52:\"google_listings_ads_custom_attribute_mapping_q4_2022\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:182:\"https://woocommerce.com/document/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_custom_attribute_mapping_q4_2022#attribute-mapping\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-11-30 21:14:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}s:48:\"needs-update-eway-payment-gateway-rin-2022-12-20\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"needs-update-eway-payment-gateway-rin-2022-12-20\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Security vulnerability patched in WooCommerce Eway Gateway\";s:7:\"content\";s:323:\"In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:62:\"needs-update-eway-payment-gateway-rin-action-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:16:\"/update-core.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:63:\"needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-03 23:45:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.1.26\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"3.5.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"3.1.0\";}}}s:43:\"updated-eway-payment-gateway-rin-2022-12-20\";O:8:\"stdClass\":8:{s:4:\"slug\";s:43:\"updated-eway-payment-gateway-rin-2022-12-20\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Eway Gateway has been automatically updated\";s:7:\"content\";s:280:\"Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:57:\"updated-eway-payment-gateway-rin-action-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"See all updates\";}}s:3:\"url\";s:16:\"/update-core.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:58:\"updated-eway-payment-gateway-rin-dismiss-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-03 23:45:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"needs-update-eway-payment-gateway-rin-2022-12-20\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:5:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.1.26\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}}}}}s:31:\"ecomm-wc-navigation-survey-2023\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"ecomm-wc-navigation-survey-2023\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:39:\"Navigating WooCommerce on WordPress.com\";s:7:\"content\";s:166:\"We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:58:\"https://automattic.survey.fm/new-ecommerce-plan-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-01-16 09:53:44\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:180;}}}}}','no'),
	(327,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}','no'),
	(329,'wc_blocks_db_schema_version','260','yes'),
	(338,'_transient_woocommerce_reports-transient-version','1677083738','yes'),
	(339,'_transient_timeout_orders-all-statuses','1677508555','no'),
	(340,'_transient_orders-all-statuses','a:2:{s:7:\"version\";s:10:\"1676903724\";s:5:\"value\";a:2:{i:0;s:10:\"wc-pending\";i:1;s:12:\"wc-completed\";}}','no'),
	(344,'_transient_timeout_woocommerce_admin_payment_method_promotion_specs','1677183175','no'),
	(345,'_transient_woocommerce_admin_payment_method_promotion_specs','a:1:{s:5:\"it_IT\";a:1:{s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}}','no'),
	(349,'woocommerce_task_list_tracked_completed_tasks','a:5:{i:0;s:8:\"purchase\";i:1;s:13:\"store_details\";i:2;s:8:\"shipping\";i:3;s:8:\"products\";i:4;s:8:\"payments\";}','yes'),
	(350,'action_scheduler_migration_status','complete','yes'),
	(367,'woocommerce_onboarding_profile','a:11:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:17:\"admin@dartmoon.io\";s:20:\"is_store_country_set\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:5:\"other\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:12:\"setup_client\";b:0;s:5:\"theme\";s:10:\"storefront\";s:9:\"completed\";b:1;}','yes'),
	(369,'woocommerce_task_list_dismissed_tasks','a:0:{}','yes'),
	(379,'current_theme','Storefront','yes'),
	(380,'theme_switched','','yes'),
	(381,'theme_mods_storefront','a:2:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),
	(382,'woocommerce_catalog_rows','4','yes'),
	(383,'woocommerce_catalog_columns','3','yes'),
	(384,'woocommerce_maybe_regenerate_images_hash','27acde77266b4d2a3491118955cb3f66','yes'),
	(387,'storefront_nux_fresh_site','0','yes'),
	(392,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"it_IT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1677083697;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-21 14:05:13\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/it_IT.zip\";s:10:\"autoupdate\";b:1;}}}','no'),
	(393,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1677083702;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"7.4.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.7.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.gif?rev=2869506\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.gif?rev=2869506\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}}}','no'),
	(394,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1677083704;s:7:\"checked\";a:2:{s:10:\"storefront\";s:5:\"4.2.0\";s:17:\"twentytwentythree\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:2:{s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"4.2.0\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.4.2.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.6.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),
	(395,'_transient_shipping-transient-version','1676579785','yes'),
	(396,'woocommerce_admin_created_default_shipping_zones','yes','yes'),
	(397,'_transient_woocommerce_shipping_task_zone_count_transient','1','yes'),
	(398,'woocommerce_task_list_prompt_shown','1','yes'),
	(399,'_transient_timeout_wc_report_orders_stats_9493cc4cb0e9ef9f3d459a4ca30a34eb','1677184677','no'),
	(400,'_transient_wc_report_orders_stats_9493cc4cb0e9ef9f3d459a4ca30a34eb','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-14 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-15 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(401,'_transient_timeout_wc_report_orders_stats_b7f6310fb2b923f07fdac8f41a1e2920','1677184677','no'),
	(402,'_transient_wc_report_orders_stats_b7f6310fb2b923f07fdac8f41a1e2920','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-14 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-15 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(403,'_transient_timeout_wc_report_orders_stats_797ea2425695723c10768455980d5399','1677184678','no'),
	(404,'_transient_wc_report_orders_stats_797ea2425695723c10768455980d5399','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-15 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-16 21:36:27\";s:12:\"date_end_gmt\";s:19:\"2023-02-16 20:36:27\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(405,'_transient_timeout_wc_report_orders_stats_e0ce322b597ae68f2b58b6e8a42477c2','1677184678','no'),
	(406,'_transient_wc_report_orders_stats_e0ce322b597ae68f2b58b6e8a42477c2','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-15 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-16 21:36:27\";s:12:\"date_end_gmt\";s:19:\"2023-02-16 20:36:27\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(407,'woocommerce_task_list_hidden_lists','a:1:{i:0;s:5:\"setup\";}','yes'),
	(408,'woocommerce_default_homepage_layout','two_columns','yes'),
	(412,'_transient_product_query-transient-version','1676580129','yes'),
	(413,'_transient_product-transient-version','1676580129','yes'),
	(419,'product_cat_children','a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}','yes'),
	(421,'_transient_wc_attribute_taxonomies','a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}','yes'),
	(427,'pa_size_children','a:0:{}','yes'),
	(429,'pa_color_children','a:0:{}','yes'),
	(441,'_transient_timeout_wc_term_counts','1679486974','no'),
	(442,'_transient_wc_term_counts','a:7:{i:17;s:1:\"5\";i:18;s:1:\"3\";i:19;s:1:\"5\";i:20;s:1:\"2\";i:16;s:2:\"14\";i:21;s:1:\"1\";i:15;s:1:\"0\";}','no'),
	(443,'_transient_timeout_wc_product_children_12','1679172133','no'),
	(444,'_transient_wc_product_children_12','a:2:{s:3:\"all\";a:3:{i:0;i:26;i:1;i:27;i:2;i:28;}s:7:\"visible\";a:3:{i:0;i:26;i:1;i:27;i:2;i:28;}}','no'),
	(445,'_transient_timeout_wc_product_children_13','1679172133','no'),
	(446,'_transient_wc_product_children_13','a:2:{s:3:\"all\";a:4:{i:0;i:36;i:1;i:29;i:2;i:30;i:3;i:31;}s:7:\"visible\";a:4:{i:0;i:36;i:1;i:29;i:2;i:30;i:3;i:31;}}','no'),
	(447,'_transient_timeout_wc_var_prices_13','1679172157','no'),
	(448,'_transient_wc_var_prices_13','{\"version\":\"1676580129\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"36\":\"45.00\",\"29\":\"42.00\",\"30\":\"45.00\",\"31\":\"45.00\"},\"regular_price\":{\"36\":\"45.00\",\"29\":\"45.00\",\"30\":\"45.00\",\"31\":\"45.00\"},\"sale_price\":{\"36\":\"45.00\",\"29\":\"42.00\",\"30\":\"45.00\",\"31\":\"45.00\"}}}','no'),
	(449,'_transient_timeout_wc_var_prices_12','1679172157','no'),
	(450,'_transient_wc_var_prices_12','{\"version\":\"1676580129\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"26\":\"20.00\",\"27\":\"20.00\",\"28\":\"15.00\"},\"regular_price\":{\"26\":\"20.00\",\"27\":\"20.00\",\"28\":\"15.00\"},\"sale_price\":{\"26\":\"20.00\",\"27\":\"20.00\",\"28\":\"15.00\"}}}','no'),
	(453,'_transient_timeout_woocommerce_admin_payment_gateway_suggestions_specs','1677185045','no'),
	(454,'_transient_woocommerce_admin_payment_gateway_suggestions_specs','a:1:{s:5:\"it_IT\";a:20:{s:7:\"payfast\";O:8:\"stdClass\":9:{s:2:\"id\";s:7:\"payfast\";s:5:\"title\";s:7:\"PayFast\";s:7:\"content\";s:384:\"L\'estensione PayFast per WooCommerce consente di accettare i pagamenti con carta di credito e trasferimento elettronico dei fondi tramite uno dei gateway di pagamento più diffusi del Sudafrica. Nessuna tariffa di impostazione o costo di abbonamento mensile. Selezionando questa estensione, il tuo negozio verrà configurato per l\'utilizzo di Rand sudafricani come valuta selezionata.\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/payfast.png\";s:11:\"image_72x72\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payfast.png\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-payfast-gateway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}}s:6:\"stripe\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"stripe\";s:5:\"title\";s:6:\"Stripe\";s:7:\"content\";s:137:\"Accetta le carte di credito e di debito in oltre 135 valute, i metodi come Alipay e la procedura di pagamento con un tocco con Apple Pay.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/stripe.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/stripe.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/stripe.svg\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:40:{i:0;s:2:\"AU\";i:1;s:2:\"AT\";i:2;s:2:\"BE\";i:3;s:2:\"BG\";i:4;s:2:\"BR\";i:5;s:2:\"CA\";i:6;s:2:\"CY\";i:7;s:2:\"CZ\";i:8;s:2:\"DK\";i:9;s:2:\"EE\";i:10;s:2:\"FI\";i:11;s:2:\"FR\";i:12;s:2:\"DE\";i:13;s:2:\"GR\";i:14;s:2:\"HK\";i:15;s:2:\"IN\";i:16;s:2:\"IE\";i:17;s:2:\"IT\";i:18;s:2:\"JP\";i:19;s:2:\"LV\";i:20;s:2:\"LT\";i:21;s:2:\"LU\";i:22;s:2:\"MY\";i:23;s:2:\"MT\";i:24;s:2:\"MX\";i:25;s:2:\"NL\";i:26;s:2:\"NZ\";i:27;s:2:\"NO\";i:28;s:2:\"PL\";i:29;s:2:\"PT\";i:30;s:2:\"RO\";i:31;s:2:\"SG\";i:32;s:2:\"SK\";i:33;s:2:\"SI\";i:34;s:2:\"ES\";i:35;s:2:\"SE\";i:36;s:2:\"CH\";i:37;s:2:\"GB\";i:38;s:2:\"US\";i:39;s:2:\"PR\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:3;}s:8:\"paystack\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"paystack\";s:5:\"title\";s:8:\"Paystack\";s:7:\"content\";s:154:\"Paystack aiuta venditori residenti in Africa ad accettare pagamenti una tantum e ricorrenti online con un gateway di pagamento moderno, sicuro e protetto.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack.png\";s:12:\"square_image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack-square.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paystack.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-paystack\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}}s:3:\"kco\";O:8:\"stdClass\":9:{s:2:\"id\";s:3:\"kco\";s:5:\"title\";s:29:\"Procedura di pagamento Klarna\";s:7:\"content\";s:153:\"Scegli il pagamento che desideri, paga ora, paga dopo o rateizza il pagamento. Senza numeri della carta di credito, senza password, senza preoccupazioni.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-checkout-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"SE\";i:1;s:2:\"FI\";i:2;s:2:\"NO\";}s:19:\"category_additional\";a:0:{}}s:15:\"klarna_payments\";O:8:\"stdClass\":9:{s:2:\"id\";s:15:\"klarna_payments\";s:5:\"title\";s:16:\"Pagamenti Klarna\";s:7:\"content\";s:153:\"Scegli il pagamento che desideri, paga ora, paga dopo o rateizza il pagamento. Senza numeri della carta di credito, senza password, senza preoccupazioni.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:21:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SP\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:21:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"DK\";i:3;s:2:\"DE\";i:4;s:2:\"AT\";i:5;s:2:\"NL\";i:6;s:2:\"CH\";i:7;s:2:\"BE\";i:8;s:2:\"SP\";i:9;s:2:\"PL\";i:10;s:2:\"FR\";i:11;s:2:\"IT\";i:12;s:2:\"GB\";i:13;s:2:\"ES\";i:14;s:2:\"FI\";i:15;s:2:\"NO\";i:16;s:2:\"SE\";i:17;s:2:\"ES\";i:18;s:2:\"FI\";i:19;s:2:\"NO\";i:20;s:2:\"SE\";}}s:30:\"mollie_wc_gateway_banktransfer\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"mollie_wc_gateway_banktransfer\";s:5:\"title\";s:6:\"Mollie\";s:7:\"content\";s:157:\"Pagamenti facili da Mollie: offri metodi di pagamento a livello globale e locale, a cui si ha accesso in pochi minuti e che sono supportati nella tua lingua.\";s:5:\"image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie.svg\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mollie.png\";s:12:\"square_image\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie-square.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"mollie-payments-for-woocommerce\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:11:{i:0;s:2:\"FR\";i:1;s:2:\"DE\";i:2;s:2:\"GB\";i:3;s:2:\"AT\";i:4;s:2:\"CH\";i:5;s:2:\"ES\";i:6;s:2:\"IT\";i:7;s:2:\"PL\";i:8;s:2:\"FI\";i:9;s:2:\"NL\";i:10;s:2:\"BE\";}s:19:\"category_additional\";a:0:{}}s:23:\"woo-mercado-pago-custom\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"woo-mercado-pago-custom\";s:5:\"title\";s:57:\"Pagamento professionale e personalizzato con Mercado Pago\";s:7:\"content\";s:229:\"Accetta carte di credito e di debito, pagamenti offline (contanti o bonifico bancario) o pagamenti collegati in denaro su Mercado Pago. Pagamenti protetti e sicuri con lo strumento di elaborazione principale nella regione LATAM. \";s:5:\"image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mercadopago.png\";s:11:\"image_72x72\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mercadopago.png\";s:7:\"plugins\";a:1:{i:0;s:23:\"woocommerce-mercadopago\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}}}}s:23:\"recommendation_priority\";i:2;s:16:\"is_local_partner\";b:1;s:14:\"category_other\";a:7:{i:0;s:2:\"AR\";i:1;s:2:\"BR\";i:2;s:2:\"CL\";i:3;s:2:\"CO\";i:4;s:2:\"MX\";i:5;s:2:\"PE\";i:6;s:2:\"UY\";}s:19:\"category_additional\";a:0:{}}s:12:\"ppcp-gateway\";O:8:\"stdClass\":10:{s:2:\"id\";s:12:\"ppcp-gateway\";s:5:\"title\";s:20:\"Pagamenti con PayPal\";s:7:\"content\";s:93:\"Pagamenti sicuri e protetti utilizzando le carte di credito o gli account PayPal dei clienti.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/paypal.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paypal.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paypal.svg\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:2:\"!=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:51:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AT\";i:3;s:2:\"BE\";i:4;s:2:\"BG\";i:5;s:2:\"HR\";i:6;s:2:\"CH\";i:7;s:2:\"CY\";i:8;s:2:\"CZ\";i:9;s:2:\"DK\";i:10;s:2:\"EE\";i:11;s:2:\"ES\";i:12;s:2:\"FI\";i:13;s:2:\"FR\";i:14;s:2:\"DE\";i:15;s:2:\"GB\";i:16;s:2:\"GR\";i:17;s:2:\"HU\";i:18;s:2:\"IE\";i:19;s:2:\"IT\";i:20;s:2:\"LV\";i:21;s:2:\"LT\";i:22;s:2:\"LU\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SK\";i:30;s:2:\"SL\";i:31;s:2:\"SE\";i:32;s:2:\"MX\";i:33;s:2:\"BR\";i:34;s:2:\"AR\";i:35;s:2:\"CL\";i:36;s:2:\"CO\";i:37;s:2:\"EC\";i:38;s:2:\"PE\";i:39;s:2:\"UY\";i:40;s:2:\"VE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"ZA\";i:49;s:2:\"NG\";i:50;s:2:\"GH\";}s:19:\"category_additional\";a:52:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AT\";i:3;s:2:\"BE\";i:4;s:2:\"BG\";i:5;s:2:\"HR\";i:6;s:2:\"CH\";i:7;s:2:\"CY\";i:8;s:2:\"CZ\";i:9;s:2:\"DK\";i:10;s:2:\"EE\";i:11;s:2:\"ES\";i:12;s:2:\"FI\";i:13;s:2:\"FR\";i:14;s:2:\"DE\";i:15;s:2:\"GB\";i:16;s:2:\"GR\";i:17;s:2:\"HU\";i:18;s:2:\"IE\";i:19;s:2:\"IT\";i:20;s:2:\"LV\";i:21;s:2:\"LT\";i:22;s:2:\"LU\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SK\";i:30;s:2:\"SL\";i:31;s:2:\"SE\";i:32;s:2:\"MX\";i:33;s:2:\"BR\";i:34;s:2:\"AR\";i:35;s:2:\"CL\";i:36;s:2:\"CO\";i:37;s:2:\"EC\";i:38;s:2:\"PE\";i:39;s:2:\"UY\";i:40;s:2:\"VE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"IN\";i:49;s:2:\"ZA\";i:50;s:2:\"NG\";i:51;s:2:\"GH\";}}s:3:\"cod\";O:8:\"stdClass\":7:{s:2:\"id\";s:3:\"cod\";s:5:\"title\";s:23:\"Pagamento alla consegna\";s:7:\"content\";s:50:\"Ricevi i pagamenti tramite contanti alla consegna.\";s:5:\"image\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/cod.svg\";s:11:\"image_72x72\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/cod.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;}s:4:\"bacs\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"bacs\";s:5:\"title\";s:17:\"Bonifico bancario\";s:7:\"content\";s:45:\"Ricevi i pagamenti tramite bonifico bancario.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/bacs.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/bacs.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;}s:20:\"woocommerce_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:95:\"Gestisci le transazioni senza uscire dalla bacheca di WordPress. Solo con WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:291:\"Con WooCommerce Payments, puoi accettare con sicurezza le maggiori carte di credito, Apple Pay e pagamenti in oltre 100 valute. Tieni traccia del flusso di cassa e gestisci le entrate ricorrenti direttamente dalla bacheca del tuo negozio, senza alcun costo di impostazione o tariffe mensili.\";s:10:\"is_visible\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:1:\"<\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}}}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:1:\"<\";}}}}s:23:\"recommendation_priority\";i:1;}s:47:\"woocommerce_payments:without-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:47:\"woocommerce_payments:without-in-person-payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:95:\"Gestisci le transazioni senza uscire dalla bacheca di WordPress. Solo con WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:291:\"Con WooCommerce Payments, puoi accettare con sicurezza le maggiori carte di credito, Apple Pay e pagamenti in oltre 100 valute. Tieni traccia del flusso di cassa e gestisci le entrate ricorrenti direttamente dalla bacheca del tuo negozio, senza alcun costo di impostazione o tariffe mensili.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:17:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:44:\"woocommerce_payments:with-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:44:\"woocommerce_payments:with-in-person-payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:95:\"Gestisci le transazioni senza uscire dalla bacheca di WordPress. Solo con WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:247:\"Con WooCommerce Payments, puoi accettare in modo sicuro le principali carte, Apple Pay e pagamenti in oltre 100 valute, senza costi di configurazione o canoni mensili, e ora puoi accettare pagamenti di persona con l\'app Woo per dispositivi mobili.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:8:\"razorpay\";O:8:\"stdClass\":9:{s:2:\"id\";s:8:\"razorpay\";s:5:\"title\";s:8:\"Razorpay\";s:7:\"content\";s:142:\"L\'estensione ufficiale Razorpay per WooCommerce ti consente di accettare carte di credito, di debito, netbanking, portafoglio e pagamenti UPI.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/razorpay.svg\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/razorpay.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-razorpay\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}}s:7:\"payubiz\";O:8:\"stdClass\":9:{s:2:\"id\";s:7:\"payubiz\";s:5:\"title\";s:20:\"PayU per WooCommerce\";s:7:\"content\";s:185:\"Abilita il plugin esclusivo di PayU per WooCommerce per iniziare ad accettare pagamenti in oltre 100 metodi disponibili in India, tra cui carte di credito, carte di debito, UPI e altro!\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payu.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payu.png\";s:7:\"plugins\";a:1:{i:0;s:10:\"payu-india\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}}s:4:\"eway\";O:8:\"stdClass\":10:{s:2:\"id\";s:4:\"eway\";s:5:\"title\";s:4:\"Eway\";s:7:\"content\";s:203:\"L\'estensione Eway per WooCommerce ti consente di ricevere i pagamenti con carta di credito direttamente sul tuo negozio senza reindirizzare i clienti a un sito di terze parti per effettuare il pagamento.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway.png\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/eway.png\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway-square.png\";s:7:\"plugins\";a:1:{i:0;s:24:\"woocommerce-gateway-eway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:2:{i:0;s:2:\"AU\";i:1;s:2:\"NZ\";}s:19:\"category_additional\";a:0:{}}s:18:\"square_credit_card\";O:8:\"stdClass\":9:{s:2:\"id\";s:18:\"square_credit_card\";s:5:\"title\";s:8:\"Quadrato\";s:7:\"content\";s:220:\"Accetta in modo sicuro le carte di credito e di debito con una tariffa bassa, senza commissioni a sorpresa (tariffe personalizzate disponibili). Vendi online e nel negozio e traccia le vendite e l\'inventario in un posto.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/square-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/square.png\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:1:\"1\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:9:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:12:\"brick-mortar\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:18:\"brick-mortar-other\";}}}}}}}s:14:\"category_other\";a:9:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"JP\";i:3;s:2:\"GB\";i:4;s:2:\"AU\";i:5;s:2:\"IE\";i:6;s:2:\"FR\";i:7;s:2:\"ES\";i:8;s:2:\"FI\";}s:19:\"category_additional\";a:0:{}}s:8:\"afterpay\";O:8:\"stdClass\":9:{s:2:\"id\";s:8:\"afterpay\";s:5:\"title\";s:8:\"Afterpay\";s:7:\"content\";s:129:\"Afterpay consente ai clienti di ricevere immediatamente i prodotti e pagare gli acquisti in quattro rate, sempre senza interessi.\";s:5:\"image\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}s:24:\"amazon_payments_advanced\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"amazon_payments_advanced\";s:5:\"title\";s:10:\"Amazon Pay\";s:7:\"content\";s:107:\"Attiva un pagamento rapido e familiare per centinaia di milioni di clienti Amazon attivi in tutto il mondo.\";s:5:\"image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:11:\"image_72x72\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-amazon-payments-advanced\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:19:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"GB\";i:3;s:2:\"JP\";i:4;s:2:\"AT\";i:5;s:2:\"BE\";i:6;s:2:\"CY\";i:7;s:2:\"DK\";i:8;s:2:\"ES\";i:9;s:2:\"FR\";i:10;s:2:\"DE\";i:11;s:2:\"HU\";i:12;s:2:\"IE\";i:13;s:2:\"IT\";i:14;s:2:\"LU\";i:15;s:2:\"NL\";i:16;s:2:\"PT\";i:17;s:2:\"SL\";i:18;s:2:\"SE\";}}s:6:\"affirm\";O:8:\"stdClass\":10:{s:2:\"id\";s:6:\"affirm\";s:5:\"title\";s:6:\"Affirm\";s:7:\"content\";s:201:\"I programmi su misura Acquista ora paga dopo di Affirm rimuovono il prezzo come barriera, trasformando i browser in acquirenti, aumentando il valore medio degli ordini ed espandendo la base di clienti.\";s:5:\"image\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:7:\"plugins\";a:0:{}s:13:\"external_link\";s:59:\"https://woocommerce.com/products/woocommerce-gateway-affirm\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}}}','no'),
	(455,'woocommerce_pre_install_woocommerce_payments_promotion_settings','a:1:{s:12:\"is_dismissed\";s:3:\"yes\";}','yes'),
	(474,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":3,\"critical\":3}','yes'),
	(479,'_transient_timeout_wc_shipping_method_count_legacy','1679398887','no'),
	(480,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1676579785\";s:5:\"value\";i:1;}','no'),
	(493,'_transient_timeout_wc_report_orders_stats_7cb23f0fb217359bd30e5fe6dc2f020e','1677413924','no'),
	(494,'_transient_wc_report_orders_stats_7cb23f0fb217359bd30e5fe6dc2f020e','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(495,'_transient_timeout_wc_report_orders_stats_394e717a1811fb77aa50edd28db49d00','1677413924','no'),
	(496,'_transient_wc_report_orders_stats_394e717a1811fb77aa50edd28db49d00','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(497,'_transient_timeout_wc_report_products_stats_1e8884e4ac96b628a5edf7870de85482','1677413924','no'),
	(498,'_transient_wc_report_products_stats_1e8884e4ac96b628a5edf7870de85482','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(499,'_transient_timeout_wc_report_variations_stats_32402e02d1d77bee17dbca11f30ca041','1677413924','no'),
	(500,'_transient_wc_report_variations_stats_32402e02d1d77bee17dbca11f30ca041','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:3:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(501,'_transient_timeout_wc_report_orders_stats_7ce2a1478fe157b26643822f2df8f47b','1677413924','no'),
	(502,'_transient_wc_report_orders_stats_7ce2a1478fe157b26643822f2df8f47b','a:2:{s:7:\"version\";s:10:\"1676579483\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:19:{i:0;a:6:{s:8:\"interval\";s:10:\"2023-02-01\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2023-02-02\";s:10:\"date_start\";s:19:\"2023-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-01 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2023-02-03\";s:10:\"date_start\";s:19:\"2023-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-02 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2023-02-04\";s:10:\"date_start\";s:19:\"2023-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-03 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2023-02-05\";s:10:\"date_start\";s:19:\"2023-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-04 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2023-02-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2023-02-07\";s:10:\"date_start\";s:19:\"2023-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-06 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2023-02-08\";s:10:\"date_start\";s:19:\"2023-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-07 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2023-02-09\";s:10:\"date_start\";s:19:\"2023-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-08 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2023-02-10\";s:10:\"date_start\";s:19:\"2023-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-09 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2023-02-11\";s:10:\"date_start\";s:19:\"2023-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-10 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-11 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2023-02-12\";s:10:\"date_start\";s:19:\"2023-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-11 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2023-02-13\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-13 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2023-02-14\";s:10:\"date_start\";s:19:\"2023-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-13 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-14 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2023-02-15\";s:10:\"date_start\";s:19:\"2023-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-14 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-15 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2023-02-16\";s:10:\"date_start\";s:19:\"2023-02-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-15 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-16 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2023-02-17\";s:10:\"date_start\";s:19:\"2023-02-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-16 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-17 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2023-02-18\";s:10:\"date_start\";s:19:\"2023-02-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-17 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-18 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2023-02-19\";s:10:\"date_start\";s:19:\"2023-02-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-18 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:19;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(503,'_transient_timeout_wc_low_stock_count','1679401124','no'),
	(504,'_transient_wc_low_stock_count','0','no'),
	(505,'_transient_timeout_wc_outofstock_count','1679401124','no'),
	(506,'_transient_wc_outofstock_count','0','no'),
	(635,'_transient_orders-transient-version','1677083695','yes'),
	(637,'_transient_timeout_wc_featured_products','1679486974','no'),
	(638,'_transient_wc_featured_products','a:4:{i:0;i:21;i:1;i:18;i:2;i:19;i:3;i:12;}','no'),
	(639,'_transient_timeout_wc_product_loop_48411be95870d46f9fddbf3c0e4b8d51','1679486974','no'),
	(640,'_transient_wc_product_loop_48411be95870d46f9fddbf3c0e4b8d51','a:2:{s:7:\"version\";s:10:\"1676580129\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:21;i:1;i:19;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}','no'),
	(641,'_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f','1679486974','no'),
	(642,'_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f','a:2:{s:7:\"version\";s:10:\"1676580129\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:34;i:1;i:17;i:2;i:35;i:3;i:18;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}','no'),
	(644,'woocommerce_admin_last_orders_milestone','1','yes'),
	(668,'_transient_timeout_wc_report_orders_stats_6ed93c31e46a39ba2e9cb740d617da1e','1677507382','no'),
	(669,'_transient_wc_report_orders_stats_6ed93c31e46a39ba2e9cb740d617da1e','a:2:{s:7:\"version\";s:10:\"1676902394\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:18;s:11:\"total_sales\";d:18;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:18;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:18;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-08\";s:10:\"date_start\";s:19:\"2023-02-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-19 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-20 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:18;s:11:\"total_sales\";d:18;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:18;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:18;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(670,'_transient_timeout_wc_report_orders_stats_f362d8ee2bb829014e4765e0d36cbf96','1677507382','no'),
	(671,'_transient_wc_report_orders_stats_f362d8ee2bb829014e4765e0d36cbf96','a:2:{s:7:\"version\";s:10:\"1676902394\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:18;s:11:\"total_sales\";d:18;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:18;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:18;s:15:\"total_customers\";i:1;s:8:\"products\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-08\";s:10:\"date_start\";s:19:\"2023-02-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-19 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-20 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:18;s:11:\"total_sales\";d:18;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:18;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:18;s:15:\"total_customers\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(672,'_transient_timeout_wc_report_products_stats_8bb453155419cb837b300a98b3466819','1677507382','no'),
	(673,'_transient_wc_report_products_stats_8bb453155419cb837b300a98b3466819','a:2:{s:7:\"version\";s:10:\"1676902394\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:18;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-08\";s:10:\"date_start\";s:19:\"2023-02-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-19 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-20 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:1;s:11:\"net_revenue\";d:18;s:12:\"orders_count\";i:1;s:14:\"products_count\";i:1;s:16:\"variations_count\";i:1;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(674,'_transient_timeout_wc_report_variations_stats_d9a1e0f8616fe29efaef062948b5f58c','1677507382','no'),
	(675,'_transient_wc_report_variations_stats_d9a1e0f8616fe29efaef062948b5f58c','a:2:{s:7:\"version\";s:10:\"1676902394\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:4:{i:0;a:6:{s:8:\"interval\";s:7:\"2023-08\";s:10:\"date_start\";s:19:\"2023-02-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-19 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-20 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2023-07\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2023-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2023-05\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(676,'_transient_timeout_wc_report_orders_stats_da5a5e20bb666f5286595e27e76b3345','1677507382','no'),
	(677,'_transient_wc_report_orders_stats_da5a5e20bb666f5286595e27e76b3345','a:2:{s:7:\"version\";s:10:\"1676902394\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:18;s:8:\"products\";i:1;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:20:{i:0;a:6:{s:8:\"interval\";s:10:\"2023-02-01\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2023-02-02\";s:10:\"date_start\";s:19:\"2023-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-01 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2023-02-03\";s:10:\"date_start\";s:19:\"2023-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-02 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2023-02-04\";s:10:\"date_start\";s:19:\"2023-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-03 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2023-02-05\";s:10:\"date_start\";s:19:\"2023-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-04 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2023-02-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2023-02-07\";s:10:\"date_start\";s:19:\"2023-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-06 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2023-02-08\";s:10:\"date_start\";s:19:\"2023-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-07 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2023-02-09\";s:10:\"date_start\";s:19:\"2023-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-08 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2023-02-10\";s:10:\"date_start\";s:19:\"2023-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-09 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2023-02-11\";s:10:\"date_start\";s:19:\"2023-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-10 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-11 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2023-02-12\";s:10:\"date_start\";s:19:\"2023-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-11 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2023-02-13\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-13 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2023-02-14\";s:10:\"date_start\";s:19:\"2023-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-13 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-14 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2023-02-15\";s:10:\"date_start\";s:19:\"2023-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-14 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-15 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2023-02-16\";s:10:\"date_start\";s:19:\"2023-02-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-15 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-16 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2023-02-17\";s:10:\"date_start\";s:19:\"2023-02-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-16 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-17 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2023-02-18\";s:10:\"date_start\";s:19:\"2023-02-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-17 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-18 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2023-02-19\";s:10:\"date_start\";s:19:\"2023-02-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-18 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2023-02-20\";s:10:\"date_start\";s:19:\"2023-02-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-19 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-20 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:18;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:20;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(678,'_transient_timeout_wc_report_products_stats_a4f41e09411d5389b1ea7bf33e41ce05','1677507382','no'),
	(679,'_transient_wc_report_products_stats_a4f41e09411d5389b1ea7bf33e41ce05','a:2:{s:7:\"version\";s:10:\"1676902394\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:20:{i:0;a:6:{s:8:\"interval\";s:10:\"2023-02-01\";s:10:\"date_start\";s:19:\"2023-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-01-31 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2023-02-02\";s:10:\"date_start\";s:19:\"2023-02-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-01 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2023-02-03\";s:10:\"date_start\";s:19:\"2023-02-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-02 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2023-02-04\";s:10:\"date_start\";s:19:\"2023-02-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-03 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2023-02-05\";s:10:\"date_start\";s:19:\"2023-02-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-04 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2023-02-06\";s:10:\"date_start\";s:19:\"2023-02-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-05 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2023-02-07\";s:10:\"date_start\";s:19:\"2023-02-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-06 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2023-02-08\";s:10:\"date_start\";s:19:\"2023-02-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-07 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2023-02-09\";s:10:\"date_start\";s:19:\"2023-02-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-08 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2023-02-10\";s:10:\"date_start\";s:19:\"2023-02-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-09 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2023-02-11\";s:10:\"date_start\";s:19:\"2023-02-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-10 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-11 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2023-02-12\";s:10:\"date_start\";s:19:\"2023-02-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-11 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-12 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2023-02-13\";s:10:\"date_start\";s:19:\"2023-02-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-12 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-13 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2023-02-14\";s:10:\"date_start\";s:19:\"2023-02-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-13 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-14 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2023-02-15\";s:10:\"date_start\";s:19:\"2023-02-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-14 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-15 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2023-02-16\";s:10:\"date_start\";s:19:\"2023-02-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-15 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-16 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2023-02-17\";s:10:\"date_start\";s:19:\"2023-02-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-16 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-17 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2023-02-18\";s:10:\"date_start\";s:19:\"2023-02-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-17 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-18 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2023-02-19\";s:10:\"date_start\";s:19:\"2023-02-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-18 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-19 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2023-02-20\";s:10:\"date_start\";s:19:\"2023-02-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2023-02-19 23:00:00\";s:8:\"date_end\";s:19:\"2023-02-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2023-02-20 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":2:{s:10:\"items_sold\";i:1;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:20;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no'),
	(729,'_transient_timeout__woocommerce_helper_subscriptions','1677084602','no'),
	(730,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),
	(731,'_site_transient_timeout_theme_roots','1677085502','no'),
	(732,'_site_transient_theme_roots','a:2:{s:10:\"storefront\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}','no'),
	(733,'_transient_timeout__woocommerce_helper_updates','1677126903','no'),
	(734,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1677083703;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,3,'_wp_page_template','default'),
	(3,5,'_wp_attached_file','woocommerce-placeholder.png'),
	(4,5,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(7,12,'_sku','woo-vneck-tee'),
	(8,12,'total_sales','0'),
	(9,12,'_tax_status','taxable'),
	(10,12,'_tax_class',''),
	(11,12,'_manage_stock','no'),
	(12,12,'_backorders','no'),
	(13,12,'_sold_individually','no'),
	(14,12,'_virtual','no'),
	(15,12,'_downloadable','no'),
	(16,12,'_download_limit','0'),
	(17,12,'_download_expiry','0'),
	(18,12,'_stock',NULL),
	(19,12,'_stock_status','instock'),
	(20,12,'_wc_average_rating','0'),
	(21,12,'_wc_review_count','0'),
	(22,12,'_product_version','7.4.0'),
	(24,13,'_sku','woo-hoodie'),
	(25,13,'total_sales','0'),
	(26,13,'_tax_status','taxable'),
	(27,13,'_tax_class',''),
	(28,13,'_manage_stock','no'),
	(29,13,'_backorders','no'),
	(30,13,'_sold_individually','no'),
	(31,13,'_virtual','no'),
	(32,13,'_downloadable','no'),
	(33,13,'_download_limit','0'),
	(34,13,'_download_expiry','0'),
	(35,13,'_stock',NULL),
	(36,13,'_stock_status','instock'),
	(37,13,'_wc_average_rating','0'),
	(38,13,'_wc_review_count','0'),
	(39,13,'_product_version','7.4.0'),
	(41,14,'_sku','woo-hoodie-with-logo'),
	(42,14,'total_sales','0'),
	(43,14,'_tax_status','taxable'),
	(44,14,'_tax_class',''),
	(45,14,'_manage_stock','no'),
	(46,14,'_backorders','no'),
	(47,14,'_sold_individually','no'),
	(48,14,'_virtual','no'),
	(49,14,'_downloadable','no'),
	(50,14,'_download_limit','0'),
	(51,14,'_download_expiry','0'),
	(52,14,'_stock',NULL),
	(53,14,'_stock_status','instock'),
	(54,14,'_wc_average_rating','0'),
	(55,14,'_wc_review_count','0'),
	(56,14,'_product_version','7.4.0'),
	(58,15,'_sku','woo-tshirt'),
	(59,15,'total_sales','0'),
	(60,15,'_tax_status','taxable'),
	(61,15,'_tax_class',''),
	(62,15,'_manage_stock','no'),
	(63,15,'_backorders','no'),
	(64,15,'_sold_individually','no'),
	(65,15,'_virtual','no'),
	(66,15,'_downloadable','no'),
	(67,15,'_download_limit','0'),
	(68,15,'_download_expiry','0'),
	(69,15,'_stock',NULL),
	(70,15,'_stock_status','instock'),
	(71,15,'_wc_average_rating','0'),
	(72,15,'_wc_review_count','0'),
	(73,15,'_product_version','7.4.0'),
	(75,16,'_sku','woo-beanie'),
	(76,16,'total_sales','2'),
	(77,16,'_tax_status','taxable'),
	(78,16,'_tax_class',''),
	(79,16,'_manage_stock','no'),
	(80,16,'_backorders','no'),
	(81,16,'_sold_individually','no'),
	(82,16,'_virtual','no'),
	(83,16,'_downloadable','no'),
	(84,16,'_download_limit','0'),
	(85,16,'_download_expiry','0'),
	(86,16,'_stock',NULL),
	(87,16,'_stock_status','instock'),
	(88,16,'_wc_average_rating','0'),
	(89,16,'_wc_review_count','0'),
	(90,16,'_product_version','7.4.0'),
	(92,17,'_sku','woo-belt'),
	(93,17,'total_sales','0'),
	(94,17,'_tax_status','taxable'),
	(95,17,'_tax_class',''),
	(96,17,'_manage_stock','no'),
	(97,17,'_backorders','no'),
	(98,17,'_sold_individually','no'),
	(99,17,'_virtual','no'),
	(100,17,'_downloadable','no'),
	(101,17,'_download_limit','0'),
	(102,17,'_download_expiry','0'),
	(103,17,'_stock',NULL),
	(104,17,'_stock_status','instock'),
	(105,17,'_wc_average_rating','0'),
	(106,17,'_wc_review_count','0'),
	(107,17,'_product_version','7.4.0'),
	(109,18,'_sku','woo-cap'),
	(110,18,'total_sales','0'),
	(111,18,'_tax_status','taxable'),
	(112,18,'_tax_class',''),
	(113,18,'_manage_stock','no'),
	(114,18,'_backorders','no'),
	(115,18,'_sold_individually','no'),
	(116,18,'_virtual','no'),
	(117,18,'_downloadable','no'),
	(118,18,'_download_limit','0'),
	(119,18,'_download_expiry','0'),
	(120,18,'_stock',NULL),
	(121,18,'_stock_status','instock'),
	(122,18,'_wc_average_rating','0'),
	(123,18,'_wc_review_count','0'),
	(124,18,'_product_version','7.4.0'),
	(126,19,'_sku','woo-sunglasses'),
	(127,19,'total_sales','0'),
	(128,19,'_tax_status','taxable'),
	(129,19,'_tax_class',''),
	(130,19,'_manage_stock','no'),
	(131,19,'_backorders','no'),
	(132,19,'_sold_individually','no'),
	(133,19,'_virtual','no'),
	(134,19,'_downloadable','no'),
	(135,19,'_download_limit','0'),
	(136,19,'_download_expiry','0'),
	(137,19,'_stock',NULL),
	(138,19,'_stock_status','instock'),
	(139,19,'_wc_average_rating','0'),
	(140,19,'_wc_review_count','0'),
	(141,19,'_product_version','7.4.0'),
	(143,20,'_sku','woo-hoodie-with-pocket'),
	(144,20,'total_sales','0'),
	(145,20,'_tax_status','taxable'),
	(146,20,'_tax_class',''),
	(147,20,'_manage_stock','no'),
	(148,20,'_backorders','no'),
	(149,20,'_sold_individually','no'),
	(150,20,'_virtual','no'),
	(151,20,'_downloadable','no'),
	(152,20,'_download_limit','0'),
	(153,20,'_download_expiry','0'),
	(154,20,'_stock',NULL),
	(155,20,'_stock_status','instock'),
	(156,20,'_wc_average_rating','0'),
	(157,20,'_wc_review_count','0'),
	(158,20,'_product_version','7.4.0'),
	(160,21,'_sku','woo-hoodie-with-zipper'),
	(161,21,'total_sales','0'),
	(162,21,'_tax_status','taxable'),
	(163,21,'_tax_class',''),
	(164,21,'_manage_stock','no'),
	(165,21,'_backorders','no'),
	(166,21,'_sold_individually','no'),
	(167,21,'_virtual','no'),
	(168,21,'_downloadable','no'),
	(169,21,'_download_limit','0'),
	(170,21,'_download_expiry','0'),
	(171,21,'_stock',NULL),
	(172,21,'_stock_status','instock'),
	(173,21,'_wc_average_rating','0'),
	(174,21,'_wc_review_count','0'),
	(175,21,'_product_version','7.4.0'),
	(177,22,'_sku','woo-long-sleeve-tee'),
	(178,22,'total_sales','0'),
	(179,22,'_tax_status','taxable'),
	(180,22,'_tax_class',''),
	(181,22,'_manage_stock','no'),
	(182,22,'_backorders','no'),
	(183,22,'_sold_individually','no'),
	(184,22,'_virtual','no'),
	(185,22,'_downloadable','no'),
	(186,22,'_download_limit','0'),
	(187,22,'_download_expiry','0'),
	(188,22,'_stock',NULL),
	(189,22,'_stock_status','instock'),
	(190,22,'_wc_average_rating','0'),
	(191,22,'_wc_review_count','0'),
	(192,22,'_product_version','7.4.0'),
	(194,23,'_sku','woo-polo'),
	(195,23,'total_sales','0'),
	(196,23,'_tax_status','taxable'),
	(197,23,'_tax_class',''),
	(198,23,'_manage_stock','no'),
	(199,23,'_backorders','no'),
	(200,23,'_sold_individually','no'),
	(201,23,'_virtual','no'),
	(202,23,'_downloadable','no'),
	(203,23,'_download_limit','0'),
	(204,23,'_download_expiry','0'),
	(205,23,'_stock',NULL),
	(206,23,'_stock_status','instock'),
	(207,23,'_wc_average_rating','0'),
	(208,23,'_wc_review_count','0'),
	(209,23,'_product_version','7.4.0'),
	(211,24,'_sku','woo-album'),
	(212,24,'total_sales','1'),
	(213,24,'_tax_status','taxable'),
	(214,24,'_tax_class',''),
	(215,24,'_manage_stock','no'),
	(216,24,'_backorders','no'),
	(217,24,'_sold_individually','no'),
	(218,24,'_virtual','yes'),
	(219,24,'_downloadable','yes'),
	(220,24,'_download_limit','1'),
	(221,24,'_download_expiry','1'),
	(222,24,'_stock',NULL),
	(223,24,'_stock_status','instock'),
	(224,24,'_wc_average_rating','0'),
	(225,24,'_wc_review_count','0'),
	(226,24,'_product_version','7.4.0'),
	(228,25,'_sku','woo-single'),
	(229,25,'total_sales','0'),
	(230,25,'_tax_status','taxable'),
	(231,25,'_tax_class',''),
	(232,25,'_manage_stock','no'),
	(233,25,'_backorders','no'),
	(234,25,'_sold_individually','no'),
	(235,25,'_virtual','yes'),
	(236,25,'_downloadable','yes'),
	(237,25,'_download_limit','1'),
	(238,25,'_download_expiry','1'),
	(239,25,'_stock',NULL),
	(240,25,'_stock_status','instock'),
	(241,25,'_wc_average_rating','0'),
	(242,25,'_wc_review_count','0'),
	(243,25,'_product_version','7.4.0'),
	(245,26,'_sku','woo-vneck-tee-red'),
	(246,26,'total_sales','0'),
	(247,26,'_tax_status','taxable'),
	(248,26,'_tax_class',''),
	(249,26,'_manage_stock','no'),
	(250,26,'_backorders','no'),
	(251,26,'_sold_individually','no'),
	(252,26,'_virtual','no'),
	(253,26,'_downloadable','no'),
	(254,26,'_download_limit','0'),
	(255,26,'_download_expiry','0'),
	(256,26,'_stock',NULL),
	(257,26,'_stock_status','instock'),
	(258,26,'_wc_average_rating','0'),
	(259,26,'_wc_review_count','0'),
	(260,26,'_product_version','7.4.0'),
	(262,27,'_sku','woo-vneck-tee-green'),
	(263,27,'total_sales','0'),
	(264,27,'_tax_status','taxable'),
	(265,27,'_tax_class',''),
	(266,27,'_manage_stock','no'),
	(267,27,'_backorders','no'),
	(268,27,'_sold_individually','no'),
	(269,27,'_virtual','no'),
	(270,27,'_downloadable','no'),
	(271,27,'_download_limit','0'),
	(272,27,'_download_expiry','0'),
	(273,27,'_stock',NULL),
	(274,27,'_stock_status','instock'),
	(275,27,'_wc_average_rating','0'),
	(276,27,'_wc_review_count','0'),
	(277,27,'_product_version','7.4.0'),
	(279,28,'_sku','woo-vneck-tee-blue'),
	(280,28,'total_sales','0'),
	(281,28,'_tax_status','taxable'),
	(282,28,'_tax_class',''),
	(283,28,'_manage_stock','no'),
	(284,28,'_backorders','no'),
	(285,28,'_sold_individually','no'),
	(286,28,'_virtual','no'),
	(287,28,'_downloadable','no'),
	(288,28,'_download_limit','0'),
	(289,28,'_download_expiry','0'),
	(290,28,'_stock',NULL),
	(291,28,'_stock_status','instock'),
	(292,28,'_wc_average_rating','0'),
	(293,28,'_wc_review_count','0'),
	(294,28,'_product_version','7.4.0'),
	(296,29,'_sku','woo-hoodie-red'),
	(297,29,'total_sales','0'),
	(298,29,'_tax_status','taxable'),
	(299,29,'_tax_class',''),
	(300,29,'_manage_stock','no'),
	(301,29,'_backorders','no'),
	(302,29,'_sold_individually','no'),
	(303,29,'_virtual','no'),
	(304,29,'_downloadable','no'),
	(305,29,'_download_limit','0'),
	(306,29,'_download_expiry','0'),
	(307,29,'_stock',NULL),
	(308,29,'_stock_status','instock'),
	(309,29,'_wc_average_rating','0'),
	(310,29,'_wc_review_count','0'),
	(311,29,'_product_version','7.4.0'),
	(313,30,'_sku','woo-hoodie-green'),
	(314,30,'total_sales','0'),
	(315,30,'_tax_status','taxable'),
	(316,30,'_tax_class',''),
	(317,30,'_manage_stock','no'),
	(318,30,'_backorders','no'),
	(319,30,'_sold_individually','no'),
	(320,30,'_virtual','no'),
	(321,30,'_downloadable','no'),
	(322,30,'_download_limit','0'),
	(323,30,'_download_expiry','0'),
	(324,30,'_stock',NULL),
	(325,30,'_stock_status','instock'),
	(326,30,'_wc_average_rating','0'),
	(327,30,'_wc_review_count','0'),
	(328,30,'_product_version','7.4.0'),
	(330,31,'_sku','woo-hoodie-blue'),
	(331,31,'total_sales','0'),
	(332,31,'_tax_status','taxable'),
	(333,31,'_tax_class',''),
	(334,31,'_manage_stock','no'),
	(335,31,'_backorders','no'),
	(336,31,'_sold_individually','no'),
	(337,31,'_virtual','no'),
	(338,31,'_downloadable','no'),
	(339,31,'_download_limit','0'),
	(340,31,'_download_expiry','0'),
	(341,31,'_stock',NULL),
	(342,31,'_stock_status','instock'),
	(343,31,'_wc_average_rating','0'),
	(344,31,'_wc_review_count','0'),
	(345,31,'_product_version','7.4.0'),
	(347,32,'_sku','Woo-tshirt-logo'),
	(348,32,'total_sales','0'),
	(349,32,'_tax_status','taxable'),
	(350,32,'_tax_class',''),
	(351,32,'_manage_stock','no'),
	(352,32,'_backorders','no'),
	(353,32,'_sold_individually','no'),
	(354,32,'_virtual','no'),
	(355,32,'_downloadable','no'),
	(356,32,'_download_limit','0'),
	(357,32,'_download_expiry','0'),
	(358,32,'_stock',NULL),
	(359,32,'_stock_status','instock'),
	(360,32,'_wc_average_rating','0'),
	(361,32,'_wc_review_count','0'),
	(362,32,'_product_version','7.4.0'),
	(364,33,'_sku','Woo-beanie-logo'),
	(365,33,'total_sales','0'),
	(366,33,'_tax_status','taxable'),
	(367,33,'_tax_class',''),
	(368,33,'_manage_stock','no'),
	(369,33,'_backorders','no'),
	(370,33,'_sold_individually','no'),
	(371,33,'_virtual','no'),
	(372,33,'_downloadable','no'),
	(373,33,'_download_limit','0'),
	(374,33,'_download_expiry','0'),
	(375,33,'_stock',NULL),
	(376,33,'_stock_status','instock'),
	(377,33,'_wc_average_rating','0'),
	(378,33,'_wc_review_count','0'),
	(379,33,'_product_version','7.4.0'),
	(381,34,'_sku','logo-collection'),
	(382,34,'total_sales','0'),
	(383,34,'_tax_status','taxable'),
	(384,34,'_tax_class',''),
	(385,34,'_manage_stock','no'),
	(386,34,'_backorders','no'),
	(387,34,'_sold_individually','no'),
	(388,34,'_virtual','no'),
	(389,34,'_downloadable','no'),
	(390,34,'_download_limit','0'),
	(391,34,'_download_expiry','0'),
	(392,34,'_stock',NULL),
	(393,34,'_stock_status','instock'),
	(394,34,'_wc_average_rating','0'),
	(395,34,'_wc_review_count','0'),
	(396,34,'_product_version','7.4.0'),
	(398,35,'_sku','wp-pennant'),
	(399,35,'total_sales','0'),
	(400,35,'_tax_status','taxable'),
	(401,35,'_tax_class',''),
	(402,35,'_manage_stock','no'),
	(403,35,'_backorders','no'),
	(404,35,'_sold_individually','no'),
	(405,35,'_virtual','no'),
	(406,35,'_downloadable','no'),
	(407,35,'_download_limit','0'),
	(408,35,'_download_expiry','0'),
	(409,35,'_stock',NULL),
	(410,35,'_stock_status','instock'),
	(411,35,'_wc_average_rating','0'),
	(412,35,'_wc_review_count','0'),
	(413,35,'_product_version','7.4.0'),
	(415,36,'_sku','woo-hoodie-blue-logo'),
	(416,36,'total_sales','0'),
	(417,36,'_tax_status','taxable'),
	(418,36,'_tax_class',''),
	(419,36,'_manage_stock','no'),
	(420,36,'_backorders','no'),
	(421,36,'_sold_individually','no'),
	(422,36,'_virtual','no'),
	(423,36,'_downloadable','no'),
	(424,36,'_download_limit','0'),
	(425,36,'_download_expiry','0'),
	(426,36,'_stock',NULL),
	(427,36,'_stock_status','instock'),
	(428,36,'_wc_average_rating','0'),
	(429,36,'_wc_review_count','0'),
	(430,36,'_product_version','7.4.0'),
	(432,37,'_wp_attached_file','2023/02/vneck-tee-2.jpg'),
	(433,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2023/02/vneck-tee-2.jpg\";s:8:\"filesize\";i:49497;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(434,37,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
	(435,38,'_wp_attached_file','2023/02/vnech-tee-green-1.jpg'),
	(436,38,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2023/02/vnech-tee-green-1.jpg\";s:8:\"filesize\";i:102362;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(437,38,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
	(438,39,'_wp_attached_file','2023/02/vnech-tee-blue-1.jpg'),
	(439,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2023/02/vnech-tee-blue-1.jpg\";s:8:\"filesize\";i:120226;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(440,39,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
	(441,12,'_wpcom_is_markdown','1'),
	(442,12,'_wp_old_slug','import-placeholder-for-44'),
	(443,12,'_product_image_gallery','38,39'),
	(444,12,'_thumbnail_id','37'),
	(445,12,'_product_attributes','a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
	(446,40,'_wp_attached_file','2023/02/hoodie-2.jpg'),
	(447,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2023/02/hoodie-2.jpg\";s:8:\"filesize\";i:46079;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(448,40,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
	(449,41,'_wp_attached_file','2023/02/hoodie-blue-1.jpg'),
	(450,41,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2023/02/hoodie-blue-1.jpg\";s:8:\"filesize\";i:101298;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(451,41,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
	(452,42,'_wp_attached_file','2023/02/hoodie-green-1.jpg'),
	(453,42,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2023/02/hoodie-green-1.jpg\";s:8:\"filesize\";i:98498;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(454,42,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
	(455,43,'_wp_attached_file','2023/02/hoodie-with-logo-2.jpg'),
	(456,43,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2023/02/hoodie-with-logo-2.jpg\";s:8:\"filesize\";i:46969;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(457,43,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
	(458,13,'_wpcom_is_markdown','1'),
	(459,13,'_wp_old_slug','import-placeholder-for-45'),
	(460,13,'_product_image_gallery','41,42,43'),
	(461,13,'_thumbnail_id','40'),
	(462,13,'_product_attributes','a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
	(463,14,'_wpcom_is_markdown','1'),
	(464,14,'_wp_old_slug','import-placeholder-for-46'),
	(465,14,'_regular_price','45'),
	(466,14,'_thumbnail_id','43'),
	(467,14,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(468,14,'_price','45'),
	(469,44,'_wp_attached_file','2023/02/tshirt-2.jpg'),
	(470,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2023/02/tshirt-2.jpg\";s:8:\"filesize\";i:41155;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(471,44,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
	(472,15,'_wpcom_is_markdown','1'),
	(473,15,'_wp_old_slug','import-placeholder-for-47'),
	(474,15,'_regular_price','18'),
	(475,15,'_thumbnail_id','44'),
	(476,15,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(477,15,'_price','18'),
	(478,45,'_wp_attached_file','2023/02/beanie-2.jpg'),
	(479,45,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2023/02/beanie-2.jpg\";s:8:\"filesize\";i:31568;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(480,45,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
	(481,16,'_wpcom_is_markdown','1'),
	(482,16,'_wp_old_slug','import-placeholder-for-48'),
	(483,16,'_regular_price','20'),
	(484,16,'_sale_price','18'),
	(485,16,'_thumbnail_id','45'),
	(486,16,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(487,16,'_price','18'),
	(488,46,'_wp_attached_file','2023/02/belt-2.jpg'),
	(489,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2023/02/belt-2.jpg\";s:8:\"filesize\";i:37339;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(490,46,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
	(491,17,'_wpcom_is_markdown','1'),
	(492,17,'_wp_old_slug','import-placeholder-for-58'),
	(493,17,'_regular_price','65'),
	(494,17,'_sale_price','55'),
	(495,17,'_thumbnail_id','46'),
	(496,17,'_price','55'),
	(497,47,'_wp_attached_file','2023/02/cap-2.jpg'),
	(498,47,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2023/02/cap-2.jpg\";s:8:\"filesize\";i:37675;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(499,47,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
	(500,18,'_wpcom_is_markdown','1'),
	(501,18,'_wp_old_slug','import-placeholder-for-60'),
	(502,18,'_regular_price','18'),
	(503,18,'_sale_price','16'),
	(504,18,'_thumbnail_id','47'),
	(505,18,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(506,18,'_price','16'),
	(507,48,'_wp_attached_file','2023/02/sunglasses-2.jpg'),
	(508,48,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2023/02/sunglasses-2.jpg\";s:8:\"filesize\";i:24691;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(509,48,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
	(510,19,'_wpcom_is_markdown','1'),
	(511,19,'_wp_old_slug','import-placeholder-for-62'),
	(512,19,'_regular_price','90'),
	(513,19,'_thumbnail_id','48'),
	(514,19,'_price','90'),
	(515,49,'_wp_attached_file','2023/02/hoodie-with-pocket-2.jpg'),
	(516,49,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2023/02/hoodie-with-pocket-2.jpg\";s:8:\"filesize\";i:43268;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(517,49,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
	(518,20,'_wpcom_is_markdown','1'),
	(519,20,'_wp_old_slug','import-placeholder-for-64'),
	(520,20,'_regular_price','45'),
	(521,20,'_sale_price','35'),
	(522,20,'_thumbnail_id','49'),
	(523,20,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(524,20,'_price','35'),
	(525,50,'_wp_attached_file','2023/02/hoodie-with-zipper-2.jpg'),
	(526,50,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2023/02/hoodie-with-zipper-2.jpg\";s:8:\"filesize\";i:56609;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(527,50,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
	(528,21,'_wpcom_is_markdown','1'),
	(529,21,'_wp_old_slug','import-placeholder-for-66'),
	(530,21,'_regular_price','45'),
	(531,21,'_thumbnail_id','50'),
	(532,21,'_price','45'),
	(533,51,'_wp_attached_file','2023/02/long-sleeve-tee-2.jpg'),
	(534,51,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2023/02/long-sleeve-tee-2.jpg\";s:8:\"filesize\";i:51118;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(535,51,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
	(536,22,'_wpcom_is_markdown','1'),
	(537,22,'_wp_old_slug','import-placeholder-for-68'),
	(538,22,'_regular_price','25'),
	(539,22,'_thumbnail_id','51'),
	(540,22,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(541,22,'_price','25'),
	(542,52,'_wp_attached_file','2023/02/polo-2.jpg'),
	(543,52,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2023/02/polo-2.jpg\";s:8:\"filesize\";i:44409;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(544,52,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
	(545,23,'_wpcom_is_markdown','1'),
	(546,23,'_wp_old_slug','import-placeholder-for-70'),
	(547,23,'_regular_price','20'),
	(548,23,'_thumbnail_id','52'),
	(549,23,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(550,23,'_price','20'),
	(551,53,'_wp_attached_file','2023/02/album-1.jpg'),
	(552,53,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2023/02/album-1.jpg\";s:8:\"filesize\";i:120010;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(553,53,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2022/05/album-1.jpg'),
	(554,24,'_wpcom_is_markdown','1'),
	(555,24,'_wp_old_slug','import-placeholder-for-73'),
	(556,24,'_regular_price','15'),
	(557,24,'_thumbnail_id','53'),
	(558,24,'_downloadable_files','a:2:{s:36:\"71d7ffad-5235-4f69-b549-299a58223516\";a:4:{s:2:\"id\";s:36:\"71d7ffad-5235-4f69-b549-299a58223516\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";s:7:\"enabled\";b:1;}s:36:\"4e544a51-d4a7-486b-85b8-6a9acb75f1ce\";a:4:{s:2:\"id\";s:36:\"4e544a51-d4a7-486b-85b8-6a9acb75f1ce\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";s:7:\"enabled\";b:1;}}'),
	(559,24,'_price','15'),
	(560,54,'_wp_attached_file','2023/02/single-1.jpg'),
	(561,54,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2023/02/single-1.jpg\";s:8:\"filesize\";i:124720;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(562,54,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
	(563,25,'_wpcom_is_markdown','1'),
	(564,25,'_wp_old_slug','import-placeholder-for-75'),
	(565,25,'_regular_price','3'),
	(566,25,'_sale_price','2'),
	(567,25,'_thumbnail_id','54'),
	(568,25,'_downloadable_files','a:1:{s:36:\"ab4a94fd-a71e-401b-860d-53ced0c8622a\";a:4:{s:2:\"id\";s:36:\"ab4a94fd-a71e-401b-860d-53ced0c8622a\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";s:7:\"enabled\";b:1;}}'),
	(569,25,'_price','2'),
	(570,26,'_wpcom_is_markdown',''),
	(571,26,'_wp_old_slug','import-placeholder-for-76'),
	(572,26,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(573,26,'_regular_price','20'),
	(574,26,'_thumbnail_id','37'),
	(575,26,'attribute_pa_color','red'),
	(576,26,'attribute_pa_size',''),
	(577,26,'_price','20'),
	(578,27,'_wpcom_is_markdown',''),
	(579,27,'_wp_old_slug','import-placeholder-for-77'),
	(580,27,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(581,27,'_regular_price','20'),
	(582,27,'_thumbnail_id','38'),
	(583,27,'attribute_pa_color','green'),
	(584,27,'attribute_pa_size',''),
	(585,27,'_price','20'),
	(586,28,'_wpcom_is_markdown',''),
	(587,28,'_wp_old_slug','import-placeholder-for-78'),
	(588,28,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(589,28,'_regular_price','15'),
	(590,28,'_thumbnail_id','39'),
	(591,28,'attribute_pa_color','blue'),
	(592,28,'attribute_pa_size',''),
	(593,28,'_price','15'),
	(594,29,'_wpcom_is_markdown',''),
	(595,29,'_wp_old_slug','import-placeholder-for-79'),
	(596,29,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(597,29,'_regular_price','45'),
	(598,29,'_sale_price','42'),
	(599,29,'_thumbnail_id','40'),
	(600,29,'attribute_pa_color','red'),
	(601,29,'attribute_logo','No'),
	(602,29,'_price','42'),
	(603,30,'_wpcom_is_markdown',''),
	(604,30,'_wp_old_slug','import-placeholder-for-80'),
	(605,30,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(606,30,'_regular_price','45'),
	(607,30,'_thumbnail_id','42'),
	(608,30,'attribute_pa_color','green'),
	(609,30,'attribute_logo','No'),
	(610,30,'_price','45'),
	(611,31,'_wpcom_is_markdown',''),
	(612,31,'_wp_old_slug','import-placeholder-for-81'),
	(613,31,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(614,31,'_regular_price','45'),
	(615,31,'_thumbnail_id','41'),
	(616,31,'attribute_pa_color','blue'),
	(617,31,'attribute_logo','No'),
	(618,31,'_price','45'),
	(619,55,'_wp_attached_file','2023/02/t-shirt-with-logo-1.jpg'),
	(620,55,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2023/02/t-shirt-with-logo-1.jpg\";s:8:\"filesize\";i:67833;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(621,55,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
	(622,32,'_wpcom_is_markdown','1'),
	(623,32,'_wp_old_slug','import-placeholder-for-83'),
	(624,32,'_regular_price','18'),
	(625,32,'_thumbnail_id','55'),
	(626,32,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(627,32,'_price','18'),
	(628,56,'_wp_attached_file','2023/02/beanie-with-logo-1.jpg'),
	(629,56,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2023/02/beanie-with-logo-1.jpg\";s:8:\"filesize\";i:45371;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(630,56,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
	(631,33,'_wpcom_is_markdown','1'),
	(632,33,'_wp_old_slug','import-placeholder-for-85'),
	(633,33,'_regular_price','20'),
	(634,33,'_sale_price','18'),
	(635,33,'_thumbnail_id','56'),
	(636,33,'_product_attributes','a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
	(637,33,'_price','18'),
	(638,57,'_wp_attached_file','2023/02/logo-1.jpg'),
	(639,57,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2023/02/logo-1.jpg\";s:8:\"filesize\";i:139907;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(640,57,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
	(641,34,'_wpcom_is_markdown','1'),
	(642,34,'_wp_old_slug','import-placeholder-for-87'),
	(643,34,'_children','a:3:{i:0;i:14;i:1;i:15;i:2;i:16;}'),
	(644,34,'_product_image_gallery','56,55,43'),
	(645,34,'_thumbnail_id','57'),
	(646,34,'_price','18'),
	(647,34,'_price','45'),
	(648,58,'_wp_attached_file','2023/02/pennant-1.jpg'),
	(649,58,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/02/pennant-1.jpg\";s:8:\"filesize\";i:56755;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(650,58,'_wc_attachment_source','https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
	(651,35,'_wpcom_is_markdown','1'),
	(652,35,'_wp_old_slug','import-placeholder-for-89'),
	(653,35,'_regular_price','11.05'),
	(654,35,'_thumbnail_id','58'),
	(655,35,'_product_url','https://mercantile.wordpress.org/product/wordpress-pennant/'),
	(656,35,'_button_text','Buy on the WordPress swag store!'),
	(657,35,'_price','11.05'),
	(658,12,'_price','15'),
	(659,12,'_price','20'),
	(662,36,'_wpcom_is_markdown',''),
	(663,36,'_wp_old_slug','import-placeholder-for-90'),
	(664,36,'_variation_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
	(665,36,'_regular_price','45'),
	(666,36,'_thumbnail_id','43'),
	(667,36,'attribute_pa_color','blue'),
	(668,36,'attribute_logo','Yes'),
	(669,36,'_price','45'),
	(670,13,'_price','42'),
	(671,13,'_price','45'),
	(672,59,'_order_key','wc_order_HMPTvkjtZQmsD'),
	(673,59,'_customer_user','0'),
	(674,59,'_payment_method','demo'),
	(675,59,'_payment_method_title','Pagamento con Carte di Credito'),
	(676,59,'_customer_ip_address','172.26.0.1'),
	(677,59,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
	(678,59,'_created_via','checkout'),
	(679,59,'_cart_hash','436bca4f00dc07495d2ab5596ba66778'),
	(680,59,'_download_permissions_granted','yes'),
	(681,59,'_recorded_sales','yes'),
	(682,59,'_recorded_coupon_usage_counts','no'),
	(683,59,'_new_order_email_sent','true'),
	(684,59,'_order_stock_reduced','no'),
	(685,59,'_billing_first_name','Alessandro'),
	(686,59,'_billing_last_name','Pasqualini'),
	(687,59,'_billing_address_1','Via prova, 123'),
	(688,59,'_billing_city','Padova'),
	(689,59,'_billing_state','PD'),
	(690,59,'_billing_postcode','35100'),
	(691,59,'_billing_country','IT'),
	(692,59,'_billing_email','alessandro@dartmoon.io'),
	(693,59,'_billing_phone','1234567890'),
	(694,59,'_shipping_first_name','Alessandro'),
	(695,59,'_shipping_last_name','Pasqualini'),
	(696,59,'_shipping_address_1','Via prova, 123'),
	(697,59,'_shipping_city','Padova'),
	(698,59,'_shipping_state','PD'),
	(699,59,'_shipping_postcode','35100'),
	(700,59,'_shipping_country','IT'),
	(701,59,'_order_currency','EUR'),
	(702,59,'_cart_discount','0'),
	(703,59,'_cart_discount_tax','0'),
	(704,59,'_order_shipping','0'),
	(705,59,'_order_shipping_tax','0'),
	(706,59,'_order_tax','0'),
	(707,59,'_order_total','18.00'),
	(708,59,'_order_version','7.4.0'),
	(709,59,'_prices_include_tax','no'),
	(710,59,'_billing_address_index','Alessandro Pasqualini  Via prova, 123  Padova PD 35100 IT alessandro@dartmoon.io 1234567890'),
	(711,59,'_shipping_address_index','Alessandro Pasqualini  Via prova, 123  Padova PD 35100 IT '),
	(717,59,'is_vat_exempt','no'),
	(718,59,'payment_token','e6e813c8-b3f2-4ad2-bb4d-952e3c6d8b97'),
	(719,59,'_transaction_id','e6e813c8-b3f2-4ad2-bb4d-952e3c6d8b97'),
	(720,59,'_date_paid','1676902370'),
	(721,59,'_paid_date','2023-02-20 15:12:50'),
	(722,59,'_date_completed','1676902372'),
	(723,59,'_completed_date','2023-02-20 15:12:52'),
	(724,59,'_edit_lock','1676903507:1'),
	(725,59,'_edit_last','1'),
	(726,60,'_order_key','wc_order_x9dfI1EXCGYhk'),
	(727,60,'_customer_user','1'),
	(728,60,'_payment_method','demo'),
	(729,60,'_payment_method_title','Pagamento con Carte di Credito'),
	(730,60,'_customer_ip_address','172.26.0.1'),
	(731,60,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'),
	(732,60,'_created_via','checkout'),
	(733,60,'_cart_hash','9c6d8b97f65bb5969036ea533f0c218f'),
	(734,60,'_download_permissions_granted','yes'),
	(735,60,'_recorded_sales','yes'),
	(736,60,'_recorded_coupon_usage_counts','yes'),
	(737,60,'_new_order_email_sent','true'),
	(738,60,'_order_stock_reduced','yes'),
	(739,60,'_billing_first_name','Alessandro'),
	(740,60,'_billing_last_name','Pasqualini'),
	(741,60,'_billing_address_1','Via prova, 123'),
	(742,60,'_billing_city','Padova'),
	(743,60,'_billing_state','PD'),
	(744,60,'_billing_postcode','35100'),
	(745,60,'_billing_country','IT'),
	(746,60,'_billing_email','admin@dartmoon.io'),
	(747,60,'_billing_phone','1234567890'),
	(748,60,'_shipping_first_name','Alessandro'),
	(749,60,'_shipping_last_name','Pasqualini'),
	(750,60,'_shipping_address_1','Via prova, 123'),
	(751,60,'_shipping_city','Padova'),
	(752,60,'_shipping_state','PD'),
	(753,60,'_shipping_postcode','35100'),
	(754,60,'_shipping_country','IT'),
	(755,60,'_order_currency','EUR'),
	(756,60,'_cart_discount','0'),
	(757,60,'_cart_discount_tax','0'),
	(758,60,'_order_shipping','0'),
	(759,60,'_order_shipping_tax','0'),
	(760,60,'_order_tax','0'),
	(761,60,'_order_total','33.00'),
	(762,60,'_order_version','7.4.0'),
	(763,60,'_prices_include_tax','no'),
	(764,60,'_billing_address_index','Alessandro Pasqualini  Via prova, 123  Padova PD 35100 IT admin@dartmoon.io 1234567890'),
	(765,60,'_shipping_address_index','Alessandro Pasqualini  Via prova, 123  Padova PD 35100 IT '),
	(766,60,'is_vat_exempt','no'),
	(767,60,'payment_token','61ac697b-d4e6-4424-bc08-ebc1714a5e04'),
	(768,60,'_transaction_id','61ac697b-d4e6-4424-bc08-ebc1714a5e04'),
	(769,60,'_date_paid','1676903699'),
	(770,60,'_paid_date','2023-02-20 15:34:59'),
	(771,60,'_date_completed','1676903701'),
	(772,60,'_completed_date','2023-02-20 15:35:01');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2023-02-16 21:07:06','2023-02-16 20:07:06','<!-- wp:paragraph -->\n<p>Ti diamo il benvenuto in WordPress. Questo è il tuo primo articolo. Modificalo o eliminalo e quindi inizia a scrivere!</p>\n<!-- /wp:paragraph -->','Ciao mondo!','','publish','open','open','','ciao-mondo','','','2023-02-16 21:07:06','2023-02-16 20:07:06','',0,'http://ecommerce.test/?p=1',0,'post','',1),
	(2,1,'2023-02-16 21:07:06','2023-02-16 20:07:06','<!-- wp:paragraph -->\n<p>Questa è una pagina di esempio. Differisce da un articolo di un blog perché rimane sempre allo stesso posto e (in molti temi) appare nel menu di navigazione. Molte persone iniziano con una pagina di Informazioni che li presentano ai visitatori del sito. Potrebbe apparire una presentazione del tipo:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ciao! Sono un fattorino ciclista di giorno, aspirante attore di notte e questo è il mio sito web. Vivo a Los Angeles, ho un grande cane di nome Jack e mi piace la piña colada. (E prendere la pioggia)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o qualcosa di simile:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La Società XYZ Aggeggi è stata fondata nel 1971 e da allora fornisce al pubblico aggeggi di ottima qualità. Situata a Fantasilandia, XYZ impiega oltre 2.000 persone e realizza ogni sorta di aggeggio fantastico per la comunità di Fantasilandia.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Come nuovo utente di WordPress, dovresti andare nella tua <a href=\"http://ecommerce.test/wp/wp-admin/\">Bacheca</a> per eliminare questa pagina, e crearne delle nuove per i tuoi contenuti. Divertiti!</p>\n<!-- /wp:paragraph -->','Pagina di esempio','','publish','closed','open','','pagina-di-esempio','','','2023-02-16 21:07:06','2023-02-16 20:07:06','',0,'http://ecommerce.test/?page_id=2',0,'page','',0),
	(3,1,'2023-02-16 21:07:06','2023-02-16 20:07:06','<!-- wp:heading --><h2>Chi siamo</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>L\'indirizzo del nostro sito web è: http://ecommerce.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commenti</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Quando i visitatori lasciano commenti sul sito, raccogliamo i dati mostrati nel modulo dei commenti oltre all\'indirizzo IP del visitatore e la stringa dello user agent del browser per facilitare il rilevamento dello spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una stringa anonimizzata creata a partire dal tuo indirizzo email (altrimenti detta hash) può essere fornita al servizio Gravatar per vedere se lo stai usando. La privacy policy del servizio Gravatar è disponibile qui: https://automattic.com/privacy/. Dopo l\'approvazione del tuo commento, la tua immagine del profilo è visibile al pubblico nel contesto del tuo commento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se carichi immagini sul sito web, dovresti evitare di caricare immagini che includono i dati di posizione incorporati (EXIF GPS). I visitatori del sito web possono scaricare ed estrarre qualsiasi dato sulla posizione dalle immagini sul sito web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookie</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se lasci un commento sul nostro sito, puoi scegliere di salvare il tuo nome, indirizzo email e sito web nei cookie. Sono usati per la tua comodità in modo che tu non debba inserire nuovamente i tuoi dati quando lasci un altro commento. Questi cookie dureranno per un anno.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se visiti la pagina di login, verrà impostato un cookie temporaneo per determinare se il tuo browser accetta i cookie. Questo cookie non contiene dati personali e viene eliminato quando chiudi il browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando effettui l\'accesso, verranno impostati diversi cookie per salvare le tue informazioni di accesso e le tue opzioni di visualizzazione dello schermo. I cookie di accesso durano due giorni mentre i cookie per le opzioni dello schermo durano un anno. Se selezioni &quot;Ricordami&quot;, il tuo accesso persisterà per due settimane. Se esci dal tuo account, i cookie di accesso verranno rimossi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se modifichi o pubblichi un articolo, un cookie aggiuntivo verrà salvato nel tuo browser. Questo cookie non include dati personali, ma indica semplicemente l\'ID dell\'articolo appena modificato. Scade dopo 1 giorno.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenuto incorporato da altri siti web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Gli articoli su questo sito possono includere contenuti incorporati (ad esempio video, immagini, articoli, ecc.). I contenuti incorporati da altri siti web si comportano esattamente allo stesso modo come se il visitatore avesse visitato l\'altro sito web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Questi siti web possono raccogliere dati su di te, usare cookie, integrare ulteriori tracciamenti di terze parti e monitorare l\'interazione con essi, incluso il tracciamento della tua interazione con il contenuto incorporato se hai un account e sei connesso a quei siti web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con chi condividiamo i tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se richiedi una reimpostazione della password, il tuo indirizzo IP verrà incluso nell\'email di reimpostazione.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Per quanto tempo conserviamo i tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se lasci un commento, il commento e i relativi metadati vengono conservati a tempo indeterminato. È così che possiamo riconoscere e approvare automaticamente eventuali commenti successivi invece di tenerli in una coda di moderazione.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Per gli utenti che si registrano sul nostro sito web (se presenti), memorizziamo anche le informazioni personali che forniscono nel loro profilo utente. Tutti gli utenti possono vedere, modificare o eliminare le loro informazioni personali in qualsiasi momento (eccetto il loro nome utente che non possono cambiare). Gli amministratori del sito web possono anche vedere e modificare queste informazioni.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quali diritti hai sui tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se hai un account su questo sito, o hai lasciato commenti, puoi richiedere di ricevere un file esportato dal sito con i dati personali che abbiamo su di te, compresi i dati che ci hai fornito. Puoi anche richiedere che cancelliamo tutti i dati personali che ti riguardano. Questo non include i dati che siamo obbligati a conservare per scopi amministrativi, legali o di sicurezza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dove i tuoi dati sono inviati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>I commenti dei visitatori possono essere controllati attraverso un servizio di rilevamento automatico dello spam.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-02-16 21:07:06','2023-02-16 20:07:06','',0,'http://ecommerce.test/?page_id=3',0,'page','',0),
	(4,1,'2023-02-16 21:08:48','0000-00-00 00:00:00','','Bozza automatica','','auto-draft','open','open','','','','','2023-02-16 21:08:48','0000-00-00 00:00:00','',0,'http://ecommerce.test/?p=4',0,'post','',0),
	(5,1,'2023-02-16 21:11:53','2023-02-16 20:11:53','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2023-02-16 21:11:53','2023-02-16 20:11:53','',0,'http://ecommerce.test/app/uploads/2023/02/woocommerce-placeholder.png',0,'attachment','image/png',0),
	(6,1,'2023-02-16 21:11:53','2023-02-16 20:11:53','','Shop','','publish','closed','closed','','shop','','','2023-02-16 21:11:53','2023-02-16 20:11:53','',0,'http://ecommerce.test/index.php/shop/',0,'page','',0),
	(7,1,'2023-02-16 21:11:53','2023-02-16 20:11:53','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','publish','closed','closed','','cart','','','2023-02-16 21:11:53','2023-02-16 20:11:53','',0,'http://ecommerce.test/index.php/cart/',0,'page','',0),
	(8,1,'2023-02-16 21:11:53','2023-02-16 20:11:53','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2023-02-16 21:11:53','2023-02-16 20:11:53','',0,'http://ecommerce.test/index.php/checkout/',0,'page','',0),
	(9,1,'2023-02-16 21:11:53','2023-02-16 20:11:53','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2023-02-16 21:11:53','2023-02-16 20:11:53','',0,'http://ecommerce.test/index.php/my-account/',0,'page','',0),
	(10,1,'2023-02-16 21:11:53','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Refund and Returns Policy','','draft','closed','closed','','refund_returns','','','2023-02-16 21:11:53','0000-00-00 00:00:00','',0,'http://ecommerce.test/?page_id=10',0,'page','',0),
	(12,1,'2023-02-16 21:41:37','2023-02-16 20:41:37','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','V-Neck T-Shirt','This is a variable product.','publish','open','closed','','v-neck-t-shirt','','','2023-02-16 21:42:02','2023-02-16 20:42:02','',0,'http://ecommerce.test/?post_type=product&#038;p=12',0,'product','',0),
	(13,1,'2023-02-16 21:41:38','2023-02-16 20:41:38','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie','This is a variable product.','publish','open','closed','','hoodie','','','2023-02-16 21:42:09','2023-02-16 20:42:09','',0,'http://ecommerce.test/?post_type=product&#038;p=13',0,'product','',0),
	(14,1,'2023-02-16 21:41:39','2023-02-16 20:41:39','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie with Logo','This is a simple product.','publish','open','closed','','hoodie-with-logo','','','2023-02-16 21:41:49','2023-02-16 20:41:49','',0,'http://ecommerce.test/?post_type=product&#038;p=14',0,'product','',0),
	(15,1,'2023-02-16 21:41:40','2023-02-16 20:41:40','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','T-Shirt','This is a simple product.','publish','open','closed','','t-shirt','','','2023-02-16 21:41:51','2023-02-16 20:41:51','',0,'http://ecommerce.test/?post_type=product&#038;p=15',0,'product','',0),
	(16,1,'2023-02-16 21:41:40','2023-02-16 20:41:40','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Beanie','This is a simple product.','publish','open','closed','','beanie','','','2023-02-16 21:41:51','2023-02-16 20:41:51','',0,'http://ecommerce.test/?post_type=product&#038;p=16',0,'product','',0),
	(17,1,'2023-02-16 21:41:40','2023-02-16 20:41:40','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Belt','This is a simple product.','publish','open','closed','','belt','','','2023-02-16 21:41:52','2023-02-16 20:41:52','',0,'http://ecommerce.test/?post_type=product&#038;p=17',0,'product','',0),
	(18,1,'2023-02-16 21:41:40','2023-02-16 20:41:40','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Cap','This is a simple product.','publish','open','closed','','cap','','','2023-02-16 21:41:52','2023-02-16 20:41:52','',0,'http://ecommerce.test/?post_type=product&#038;p=18',0,'product','',0),
	(19,1,'2023-02-16 21:41:40','2023-02-16 20:41:40','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Sunglasses','This is a simple product.','publish','open','closed','','sunglasses','','','2023-02-16 21:41:53','2023-02-16 20:41:53','',0,'http://ecommerce.test/?post_type=product&#038;p=19',0,'product','',0),
	(20,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie with Pocket','This is a simple product.','publish','open','closed','','hoodie-with-pocket','','','2023-02-16 21:41:53','2023-02-16 20:41:53','',0,'http://ecommerce.test/?post_type=product&#038;p=20',0,'product','',0),
	(21,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Hoodie with Zipper','This is a simple product.','publish','open','closed','','hoodie-with-zipper','','','2023-02-16 21:41:54','2023-02-16 20:41:54','',0,'http://ecommerce.test/?post_type=product&#038;p=21',0,'product','',0),
	(22,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Long Sleeve Tee','This is a simple product.','publish','open','closed','','long-sleeve-tee','','','2023-02-16 21:41:54','2023-02-16 20:41:54','',0,'http://ecommerce.test/?post_type=product&#038;p=22',0,'product','',0),
	(23,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Polo','This is a simple product.','publish','open','closed','','polo','','','2023-02-16 21:41:55','2023-02-16 20:41:55','',0,'http://ecommerce.test/?post_type=product&#038;p=23',0,'product','',0),
	(24,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.','Album','This is a simple, virtual product.','publish','open','closed','','album','','','2023-02-16 21:41:56','2023-02-16 20:41:56','',0,'http://ecommerce.test/?post_type=product&#038;p=24',0,'product','',0),
	(25,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.','Single','This is a simple, virtual product.','publish','open','closed','','single','','','2023-02-16 21:41:57','2023-02-16 20:41:57','',0,'http://ecommerce.test/?post_type=product&#038;p=25',0,'product','',0),
	(26,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','','V-Neck T-Shirt - Red','Color: Red','publish','closed','closed','','v-neck-t-shirt-red','','','2023-02-16 21:41:57','2023-02-16 20:41:57','',12,'http://ecommerce.test/?post_type=product&#038;p=26',0,'product_variation','',0),
	(27,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','','V-Neck T-Shirt - Green','Color: Green','publish','closed','closed','','v-neck-t-shirt-green','','','2023-02-16 21:41:57','2023-02-16 20:41:57','',12,'http://ecommerce.test/?post_type=product&#038;p=27',0,'product_variation','',0),
	(28,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','','V-Neck T-Shirt - Blue','Color: Blue','publish','closed','closed','','v-neck-t-shirt-blue','','','2023-02-16 21:41:57','2023-02-16 20:41:57','',12,'http://ecommerce.test/?post_type=product&#038;p=28',0,'product_variation','',0),
	(29,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','','Hoodie - Red, No','Color: Red, Logo: No','publish','closed','closed','','hoodie-red-no','','','2023-02-16 21:41:58','2023-02-16 20:41:58','',13,'http://ecommerce.test/?post_type=product&#038;p=29',1,'product_variation','',0),
	(30,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','','Hoodie - Green, No','Color: Green, Logo: No','publish','closed','closed','','hoodie-green-no','','','2023-02-16 21:41:58','2023-02-16 20:41:58','',13,'http://ecommerce.test/?post_type=product&#038;p=30',2,'product_variation','',0),
	(31,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','','Hoodie - Blue, No','Color: Blue, Logo: No','publish','closed','closed','','hoodie-blue-no','','','2023-02-16 21:41:58','2023-02-16 20:41:58','',13,'http://ecommerce.test/?post_type=product&#038;p=31',3,'product_variation','',0),
	(32,1,'2023-02-16 21:41:41','2023-02-16 20:41:41','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','T-Shirt with Logo','This is a simple product.','publish','open','closed','','t-shirt-with-logo','','','2023-02-16 21:41:58','2023-02-16 20:41:58','',0,'http://ecommerce.test/?post_type=product&#038;p=32',0,'product','',0),
	(33,1,'2023-02-16 21:41:42','2023-02-16 20:41:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Beanie with Logo','This is a simple product.','publish','open','closed','','beanie-with-logo','','','2023-02-16 21:41:59','2023-02-16 20:41:59','',0,'http://ecommerce.test/?post_type=product&#038;p=33',0,'product','',0),
	(34,1,'2023-02-16 21:41:42','2023-02-16 20:41:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','Logo Collection','This is a grouped product.','publish','open','closed','','logo-collection','','','2023-02-16 21:42:00','2023-02-16 20:42:00','',0,'http://ecommerce.test/?post_type=product&#038;p=34',0,'product','',0),
	(35,1,'2023-02-16 21:41:42','2023-02-16 20:41:42','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.','WordPress Pennant','This is an external product.','publish','open','closed','','wordpress-pennant','','','2023-02-16 21:42:02','2023-02-16 20:42:02','',0,'http://ecommerce.test/?post_type=product&#038;p=35',0,'product','',0),
	(36,1,'2023-02-16 21:41:42','2023-02-16 20:41:42','','Hoodie - Blue, Yes','Color: Blue, Logo: Yes','publish','closed','closed','','hoodie-blue-yes','','','2023-02-16 21:42:09','2023-02-16 20:42:09','',13,'http://ecommerce.test/?post_type=product&#038;p=36',0,'product_variation','',0),
	(37,1,'2023-02-16 21:41:43','2023-02-16 20:41:43','','vneck-tee-2.jpg','','inherit','open','closed','','vneck-tee-2-jpg','','','2023-02-16 21:41:43','2023-02-16 20:41:43','',12,'http://ecommerce.test/app/uploads/2023/02/vneck-tee-2.jpg',0,'attachment','image/jpeg',0),
	(38,1,'2023-02-16 21:41:44','2023-02-16 20:41:44','','vnech-tee-green-1.jpg','','inherit','open','closed','','vnech-tee-green-1-jpg','','','2023-02-16 21:41:44','2023-02-16 20:41:44','',12,'http://ecommerce.test/app/uploads/2023/02/vnech-tee-green-1.jpg',0,'attachment','image/jpeg',0),
	(39,1,'2023-02-16 21:41:44','2023-02-16 20:41:44','','vnech-tee-blue-1.jpg','','inherit','open','closed','','vnech-tee-blue-1-jpg','','','2023-02-16 21:41:44','2023-02-16 20:41:44','',12,'http://ecommerce.test/app/uploads/2023/02/vnech-tee-blue-1.jpg',0,'attachment','image/jpeg',0),
	(40,1,'2023-02-16 21:41:45','2023-02-16 20:41:45','','hoodie-2.jpg','','inherit','open','closed','','hoodie-2-jpg','','','2023-02-16 21:41:45','2023-02-16 20:41:45','',13,'http://ecommerce.test/app/uploads/2023/02/hoodie-2.jpg',0,'attachment','image/jpeg',0),
	(41,1,'2023-02-16 21:41:45','2023-02-16 20:41:45','','hoodie-blue-1.jpg','','inherit','open','closed','','hoodie-blue-1-jpg','','','2023-02-16 21:41:45','2023-02-16 20:41:45','',13,'http://ecommerce.test/app/uploads/2023/02/hoodie-blue-1.jpg',0,'attachment','image/jpeg',0),
	(42,1,'2023-02-16 21:41:48','2023-02-16 20:41:48','','hoodie-green-1.jpg','','inherit','open','closed','','hoodie-green-1-jpg','','','2023-02-16 21:41:48','2023-02-16 20:41:48','',13,'http://ecommerce.test/app/uploads/2023/02/hoodie-green-1.jpg',0,'attachment','image/jpeg',0),
	(43,1,'2023-02-16 21:41:49','2023-02-16 20:41:49','','hoodie-with-logo-2.jpg','','inherit','open','closed','','hoodie-with-logo-2-jpg','','','2023-02-16 21:41:49','2023-02-16 20:41:49','',13,'http://ecommerce.test/app/uploads/2023/02/hoodie-with-logo-2.jpg',0,'attachment','image/jpeg',0),
	(44,1,'2023-02-16 21:41:51','2023-02-16 20:41:51','','tshirt-2.jpg','','inherit','open','closed','','tshirt-2-jpg','','','2023-02-16 21:41:51','2023-02-16 20:41:51','',15,'http://ecommerce.test/app/uploads/2023/02/tshirt-2.jpg',0,'attachment','image/jpeg',0),
	(45,1,'2023-02-16 21:41:51','2023-02-16 20:41:51','','beanie-2.jpg','','inherit','open','closed','','beanie-2-jpg','','','2023-02-16 21:41:51','2023-02-16 20:41:51','',16,'http://ecommerce.test/app/uploads/2023/02/beanie-2.jpg',0,'attachment','image/jpeg',0),
	(46,1,'2023-02-16 21:41:52','2023-02-16 20:41:52','','belt-2.jpg','','inherit','open','closed','','belt-2-jpg','','','2023-02-16 21:41:52','2023-02-16 20:41:52','',17,'http://ecommerce.test/app/uploads/2023/02/belt-2.jpg',0,'attachment','image/jpeg',0),
	(47,1,'2023-02-16 21:41:52','2023-02-16 20:41:52','','cap-2.jpg','','inherit','open','closed','','cap-2-jpg','','','2023-02-16 21:41:52','2023-02-16 20:41:52','',18,'http://ecommerce.test/app/uploads/2023/02/cap-2.jpg',0,'attachment','image/jpeg',0),
	(48,1,'2023-02-16 21:41:53','2023-02-16 20:41:53','','sunglasses-2.jpg','','inherit','open','closed','','sunglasses-2-jpg','','','2023-02-16 21:41:53','2023-02-16 20:41:53','',19,'http://ecommerce.test/app/uploads/2023/02/sunglasses-2.jpg',0,'attachment','image/jpeg',0),
	(49,1,'2023-02-16 21:41:53','2023-02-16 20:41:53','','hoodie-with-pocket-2.jpg','','inherit','open','closed','','hoodie-with-pocket-2-jpg','','','2023-02-16 21:41:53','2023-02-16 20:41:53','',20,'http://ecommerce.test/app/uploads/2023/02/hoodie-with-pocket-2.jpg',0,'attachment','image/jpeg',0),
	(50,1,'2023-02-16 21:41:54','2023-02-16 20:41:54','','hoodie-with-zipper-2.jpg','','inherit','open','closed','','hoodie-with-zipper-2-jpg','','','2023-02-16 21:41:54','2023-02-16 20:41:54','',21,'http://ecommerce.test/app/uploads/2023/02/hoodie-with-zipper-2.jpg',0,'attachment','image/jpeg',0),
	(51,1,'2023-02-16 21:41:54','2023-02-16 20:41:54','','long-sleeve-tee-2.jpg','','inherit','open','closed','','long-sleeve-tee-2-jpg','','','2023-02-16 21:41:54','2023-02-16 20:41:54','',22,'http://ecommerce.test/app/uploads/2023/02/long-sleeve-tee-2.jpg',0,'attachment','image/jpeg',0),
	(52,1,'2023-02-16 21:41:55','2023-02-16 20:41:55','','polo-2.jpg','','inherit','open','closed','','polo-2-jpg','','','2023-02-16 21:41:55','2023-02-16 20:41:55','',23,'http://ecommerce.test/app/uploads/2023/02/polo-2.jpg',0,'attachment','image/jpeg',0),
	(53,1,'2023-02-16 21:41:56','2023-02-16 20:41:56','','album-1.jpg','','inherit','open','closed','','album-1-jpg','','','2023-02-16 21:41:56','2023-02-16 20:41:56','',24,'http://ecommerce.test/app/uploads/2023/02/album-1.jpg',0,'attachment','image/jpeg',0),
	(54,1,'2023-02-16 21:41:57','2023-02-16 20:41:57','','single-1.jpg','','inherit','open','closed','','single-1-jpg','','','2023-02-16 21:41:57','2023-02-16 20:41:57','',25,'http://ecommerce.test/app/uploads/2023/02/single-1.jpg',0,'attachment','image/jpeg',0),
	(55,1,'2023-02-16 21:41:58','2023-02-16 20:41:58','','t-shirt-with-logo-1.jpg','','inherit','open','closed','','t-shirt-with-logo-1-jpg','','','2023-02-16 21:41:58','2023-02-16 20:41:58','',32,'http://ecommerce.test/app/uploads/2023/02/t-shirt-with-logo-1.jpg',0,'attachment','image/jpeg',0),
	(56,1,'2023-02-16 21:41:59','2023-02-16 20:41:59','','beanie-with-logo-1.jpg','','inherit','open','closed','','beanie-with-logo-1-jpg','','','2023-02-16 21:41:59','2023-02-16 20:41:59','',33,'http://ecommerce.test/app/uploads/2023/02/beanie-with-logo-1.jpg',0,'attachment','image/jpeg',0),
	(57,1,'2023-02-16 21:42:00','2023-02-16 20:42:00','','logo-1.jpg','','inherit','open','closed','','logo-1-jpg','','','2023-02-16 21:42:00','2023-02-16 20:42:00','',34,'http://ecommerce.test/app/uploads/2023/02/logo-1.jpg',0,'attachment','image/jpeg',0),
	(58,1,'2023-02-16 21:42:02','2023-02-16 20:42:02','','pennant-1.jpg','','inherit','open','closed','','pennant-1-jpg','','','2023-02-16 21:42:02','2023-02-16 20:42:02','',35,'http://ecommerce.test/app/uploads/2023/02/pennant-1.jpg',0,'attachment','image/jpeg',0),
	(59,1,'2023-02-20 13:09:13','2023-02-20 12:09:13','','Order &ndash; Febbraio 20, 2023 @ 01:09 PM','','wc-cancelled','closed','closed','wc_order_HMPTvkjtZQmsD','ordine-20-feb-2023-1209-pm','','','2023-02-22 17:34:54','2023-02-22 16:34:54','',0,'http://ecommerce.test/?post_type=shop_order&#038;p=59',0,'shop_order','',6),
	(60,1,'2023-02-20 15:33:32','2023-02-20 14:33:32','','Order &ndash; Febbraio 20, 2023 @ 03:33 PM','','wc-completed','open','closed','wc_order_x9dfI1EXCGYhk','ordine-20-feb-2023-0233-pm','','','2023-02-20 15:35:01','2023-02-20 14:35:01','',0,'http://ecommerce.test/?post_type=shop_order&#038;p=60',0,'shop_order','',2);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(12,4,0),
	(12,8,0),
	(12,17,0),
	(12,22,0),
	(12,23,0),
	(12,24,0),
	(12,25,0),
	(12,26,0),
	(12,27,0),
	(13,4,0),
	(13,18,0),
	(13,22,0),
	(13,23,0),
	(13,24,0),
	(14,2,0),
	(14,18,0),
	(14,22,0),
	(15,2,0),
	(15,17,0),
	(15,28,0),
	(16,2,0),
	(16,19,0),
	(16,24,0),
	(17,2,0),
	(17,19,0),
	(18,2,0),
	(18,8,0),
	(18,19,0),
	(18,29,0),
	(19,2,0),
	(19,8,0),
	(19,19,0),
	(20,2,0),
	(20,6,0),
	(20,7,0),
	(20,8,0),
	(20,18,0),
	(20,28,0),
	(21,2,0),
	(21,8,0),
	(21,18,0),
	(22,2,0),
	(22,17,0),
	(22,23,0),
	(23,2,0),
	(23,17,0),
	(23,22,0),
	(24,2,0),
	(24,20,0),
	(25,2,0),
	(25,20,0),
	(26,15,0),
	(27,15,0),
	(28,15,0),
	(29,15,0),
	(30,15,0),
	(31,15,0),
	(32,2,0),
	(32,17,0),
	(32,28,0),
	(33,2,0),
	(33,19,0),
	(33,24,0),
	(34,3,0),
	(34,16,0),
	(35,5,0),
	(35,21,0),
	(36,15,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'product_type','',0,14),
	(3,3,'product_type','',0,1),
	(4,4,'product_type','',0,2),
	(5,5,'product_type','',0,1),
	(6,6,'product_visibility','',0,1),
	(7,7,'product_visibility','',0,1),
	(8,8,'product_visibility','',0,5),
	(9,9,'product_visibility','',0,0),
	(10,10,'product_visibility','',0,0),
	(11,11,'product_visibility','',0,0),
	(12,12,'product_visibility','',0,0),
	(13,13,'product_visibility','',0,0),
	(14,14,'product_visibility','',0,0),
	(15,15,'product_cat','',0,0),
	(16,16,'product_cat','',0,1),
	(17,17,'product_cat','',16,5),
	(18,18,'product_cat','',16,4),
	(19,19,'product_cat','',16,5),
	(20,20,'product_cat','',0,2),
	(21,21,'product_cat','',0,1),
	(22,22,'pa_color','',0,4),
	(23,23,'pa_color','',0,3),
	(24,24,'pa_color','',0,4),
	(25,25,'pa_size','',0,1),
	(26,26,'pa_size','',0,1),
	(27,27,'pa_size','',0,1),
	(28,28,'pa_color','',0,3),
	(29,29,'pa_color','',0,1);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`)
VALUES
	(1,15,'product_count_product_cat','0'),
	(2,16,'order','0'),
	(3,17,'order','0'),
	(4,18,'order','0'),
	(5,19,'order','0'),
	(6,20,'order','0'),
	(7,21,'order','0'),
	(8,17,'product_count_product_cat','5'),
	(9,16,'product_count_product_cat','14'),
	(10,22,'order','0'),
	(11,23,'order','0'),
	(12,24,'order','0'),
	(13,25,'order','0'),
	(14,26,'order','0'),
	(15,27,'order','0'),
	(16,18,'product_count_product_cat','3'),
	(17,28,'order','0'),
	(18,19,'product_count_product_cat','5'),
	(19,29,'order','0'),
	(20,20,'product_count_product_cat','2'),
	(21,21,'product_count_product_cat','1');

/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Senza categoria','senza-categoria',0),
	(2,'simple','simple',0),
	(3,'grouped','grouped',0),
	(4,'variable','variable',0),
	(5,'external','external',0),
	(6,'exclude-from-search','exclude-from-search',0),
	(7,'exclude-from-catalog','exclude-from-catalog',0),
	(8,'featured','featured',0),
	(9,'outofstock','outofstock',0),
	(10,'rated-1','rated-1',0),
	(11,'rated-2','rated-2',0),
	(12,'rated-3','rated-3',0),
	(13,'rated-4','rated-4',0),
	(14,'rated-5','rated-5',0),
	(15,'Uncategorized','uncategorized',0),
	(16,'Clothing','clothing',0),
	(17,'Tshirts','tshirts',0),
	(18,'Hoodies','hoodies',0),
	(19,'Accessories','accessories',0),
	(20,'Music','music',0),
	(21,'Decor','decor',0),
	(22,'Blue','blue',0),
	(23,'Green','green',0),
	(24,'Red','red',0),
	(25,'Large','large',0),
	(26,'Medium','medium',0),
	(27,'Small','small',0),
	(28,'Gray','gray',0),
	(29,'Yellow','yellow',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name','Alessandro'),
	(3,1,'last_name','Pasqualini'),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'show_welcome_panel','1'),
	(16,1,'session_tokens','a:2:{s:64:\"4fc6240de51f06e5ebed480c0fb6218d1a63b4b21b3f8f84f8a92af165e3e3cf\";a:4:{s:10:\"expiration\";i:1676981915;s:2:\"ip\";s:10:\"172.23.0.3\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1676809115;}s:64:\"5e24cd4338bcc9c54e32d1fbbe1ad488ed6aa2139059874bf015feea24fad22f\";a:4:{s:10:\"expiration\";i:1677075356;s:2:\"ip\";s:10:\"172.26.0.3\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1676902556;}}'),
	(17,1,'wp_dashboard_quick_press_last_post_id','4'),
	(18,1,'community-events-location','a:1:{s:2:\"ip\";s:10:\"172.26.0.0\";}'),
	(19,1,'_woocommerce_tracks_anon_id','woo:X/NOyBpVUvmEgPNQyng0l7sx'),
	(20,1,'wc_last_active','1676851200'),
	(21,1,'dismissed_no_secure_connection_notice','1'),
	(22,1,'wp_woocommerce_product_import_mapping','a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
	(23,1,'wp_product_import_error_log','a:0:{}'),
	(27,1,'meta-box-order_product','a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
	(28,1,'last_update','1676903701'),
	(29,1,'billing_first_name','Alessandro'),
	(30,1,'billing_last_name','Pasqualini'),
	(31,1,'billing_address_1','Via prova, 123'),
	(32,1,'billing_city','Padova'),
	(33,1,'billing_state','PD'),
	(34,1,'billing_postcode','35100'),
	(35,1,'billing_country','IT'),
	(36,1,'billing_email','admin@dartmoon.io'),
	(37,1,'billing_phone','1234567890'),
	(38,1,'shipping_first_name','Alessandro'),
	(39,1,'shipping_last_name','Pasqualini'),
	(40,1,'shipping_address_1','Via prova, 123'),
	(41,1,'shipping_city','Padova'),
	(42,1,'shipping_state','PD'),
	(43,1,'shipping_postcode','35100'),
	(44,1,'shipping_country','IT'),
	(45,1,'shipping_method','a:1:{i:0;s:15:\"free_shipping:1\";}'),
	(46,1,'paying_customer','1');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$2y$10$wQr78ADu7FBc/DuwIY434.gmaG5Zj2ZYrIfSpUwCFz1V0R6GljkJK','admin','admin@ecommerce.test','http://ecommerce.test/wp','2023-02-16 20:07:06','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_admin_note_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`)
VALUES
	(1,1,'notify-refund-returns-page','Edit page','http://ecommerce.test/wp/wp-admin/post.php?post=10&action=edit','actioned','',NULL,NULL),
	(41,33,'connect','Connect','?page=wc-addons&section=helper','unactioned','',NULL,NULL),
	(81,34,'customize-store-with-storefront','Andiamo!','http://ecommerce.test/wp/wp-admin/themes.php?page=storefront-welcome','actioned','',NULL,NULL),
	(82,35,'visit-the-theme-marketplace','Visita il marketplace dei temi','https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL),
	(83,36,'day-after-first-product','Per saperne di più','https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL),
	(84,37,'learn-more','Per saperne di più','https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL),
	(85,38,'learn-more','Per saperne di più','https://woocommerce.com/mobile/?utm_medium=product','actioned','',NULL,NULL),
	(203,39,'learn-more','Per saperne di più','https://woocommerce.com/document/managing-orders/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL),
	(204,2,'browse_extensions','Browse extensions','http://ecommerce.test/wp/wp-admin/admin.php?page=wc-addons','unactioned','',NULL,NULL),
	(205,3,'wayflyer_bnpl_q4_2021','Level up with funding','https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021','actioned','',NULL,NULL),
	(206,4,'wc_shipping_mobile_app_usps_q4_2021','Get WooCommerce Shipping','https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021','actioned','',NULL,NULL),
	(207,5,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox','unactioned','',NULL,NULL),
	(208,6,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','actioned','',NULL,NULL),
	(209,7,'optimizing-the-checkout-flow','Learn more','https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow','actioned','',NULL,NULL),
	(210,8,'qualitative-feedback-from-new-users','Share feedback','https://automattic.survey.fm/wc-pay-new','actioned','',NULL,NULL),
	(211,9,'share-feedback','Share feedback','http://automattic.survey.fm/paypal-feedback','unactioned','',NULL,NULL),
	(212,10,'get-started','Get started','https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started','actioned','',NULL,NULL),
	(213,11,'update-wc-subscriptions-3-0-15','View latest version','http://ecommerce.test/wp/wp-admin/&page=wc-addons&section=helper','actioned','',NULL,NULL),
	(214,12,'update-wc-core-5-4-0','How to update WooCommerce','https://docs.woocommerce.com/document/how-to-update-woocommerce/','actioned','',NULL,NULL),
	(215,15,'ppxo-pps-install-paypal-payments-1','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL),
	(216,16,'ppxo-pps-install-paypal-payments-2','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL),
	(217,17,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
	(218,17,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(219,18,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
	(220,18,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(221,19,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
	(222,19,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(223,20,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL),
	(224,20,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(225,21,'share-feedback','Share feedback','https://automattic.survey.fm/store-management','unactioned','',NULL,NULL),
	(226,22,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL),
	(227,22,'woocommerce-core-paypal-march-2022-dismiss','Dismiss','','actioned','',NULL,NULL),
	(228,23,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL),
	(229,23,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(230,24,'pinterest_03_2022_update','Update Instructions','https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3','actioned','',NULL,NULL),
	(231,25,'store_setup_survey_survey_q2_2022_share_your_thoughts','Tell us how it’s going','https://automattic.survey.fm/store-setup-survey-2022','actioned','',NULL,NULL),
	(232,26,'wc-admin-wisepad3','Grow my business offline','https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3','actioned','',NULL,NULL),
	(233,27,'learn-more','Find out more','https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/','unactioned','',NULL,NULL),
	(234,27,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(235,28,'learn-more','Find out more','https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/','unactioned','',NULL,NULL),
	(236,28,'dismiss','Dismiss','','actioned','',NULL,NULL),
	(237,29,'google_listings_ads_custom_attribute_mapping_q4_2022','Learn more','https://woocommerce.com/document/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_custom_attribute_mapping_q4_2022#attribute-mapping','actioned','',NULL,NULL),
	(238,30,'needs-update-eway-payment-gateway-rin-action-button-2022-12-20','See available updates','http://ecommerce.test/wp/wp-admin/update-core.php','unactioned','',NULL,NULL),
	(239,30,'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20','Dismiss','#','actioned','',NULL,NULL),
	(240,31,'updated-eway-payment-gateway-rin-action-button-2022-12-20','See all updates','http://ecommerce.test/wp/wp-admin/update-core.php','unactioned','',NULL,NULL),
	(241,31,'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20','Dismiss','#','actioned','',NULL,NULL),
	(242,32,'share-navigation-survey-feedback','Share feedback','https://automattic.survey.fm/new-ecommerce-plan-navigation','actioned','',NULL,NULL);

/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_admin_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_admin_notes`;

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`)
VALUES
	(1,'wc-refund-returns-page','info','en_US','Setup a Refund and Returns Policy page to boost your store\'s credibility.','We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.','{}','unactioned','woocommerce-core','2023-02-16 20:12:02',NULL,0,'plain','',0,0,'info'),
	(2,'new_in_app_marketplace_2021','info','en_US','Customize your store with extensions','Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.','{}','unactioned','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(3,'wayflyer_bnpl_q4_2021','marketing','en_US','Grow your business with funding through Wayflyer','Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(4,'wc_shipping_mobile_app_usps_q4_2021','marketing','en_US','Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(5,'woocommerce-services','info','en_US','WooCommerce Shipping & Tax','WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(6,'your-first-product','info','en_US','Your first product','That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','unactioned','woocommerce.com','2023-02-19 11:40:08',NULL,0,'plain','',0,0,'info'),
	(7,'wc-admin-optimizing-the-checkout-flow','info','en_US','Optimizing the checkout flow','It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.','{}','unactioned','woocommerce.com','2023-02-22 16:35:06',NULL,0,'plain','',0,0,'info'),
	(8,'wc-payments-qualitative-feedback','info','en_US','WooCommerce Payments setup - let us know what you think','Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(9,'share-your-feedback-on-paypal','info','en_US','Share your feedback on PayPal','Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(10,'google_listings_and_ads_install','marketing','en_US','Drive traffic and sales with Google','Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(11,'wc-subscriptions-security-update-3-0-15','info','en_US','WooCommerce Subscriptions security update!','We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(12,'woocommerce-core-update-5-4-0','info','en_US','Update to WooCommerce 5.4.1 now','WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(13,'wcpay-promo-2020-11','marketing','en_US','wcpay-promo-2020-11','wcpay-promo-2020-11','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(14,'wcpay-promo-2020-12','marketing','en_US','wcpay-promo-2020-12','wcpay-promo-2020-12','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(15,'ppxo-pps-upgrade-paypal-payments-1','info','en_US','Get the latest PayPal extension for WooCommerce','Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(16,'ppxo-pps-upgrade-paypal-payments-2','info','en_US','Upgrade your PayPal experience!','Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(17,'woocommerce-core-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(18,'woocommerce-blocks-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2023-02-16 20:12:10',NULL,0,'plain','',0,0,'info'),
	(19,'woocommerce-core-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(20,'woocommerce-blocks-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(21,'habit-moment-survey','marketing','en_US','We’re all ears! Share your experience so far with WooCommerce','We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(22,'woocommerce-core-paypal-march-2022-updated','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(23,'woocommerce-core-paypal-march-2022-updated-nopp','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(24,'pinterest_03_2022_update','marketing','en_US','Your Pinterest for WooCommerce plugin is out of date!','Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(25,'store_setup_survey_survey_q2_2022','survey','en_US','How is your store setup going?','Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(26,'wc-admin-wisepad3','marketing','en_US','Take your business on the go in Canada with WooCommerce In-Person Payments','Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(27,'woocommerce-payments-august-2022-need-to-update','update','en_US','Action required: Please update WooCommerce Payments','An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(28,'woocommerce-payments-august-2022-store-patched','update','en_US','WooCommerce Payments has been automatically updated','You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(29,'google_listings_ads_custom_attribute_mapping_q4_2022','marketing','en_US','Our latest improvement to the Google Listings & Ads extension: Attribute Mapping','You spoke, we listened. This new feature enables you to easily upload your products, customize your product attributes in one place, and target shoppers with more relevant ads. Extend how far your ad dollars go with each campaign.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(30,'needs-update-eway-payment-gateway-rin-2022-12-20','update','en_US','Security vulnerability patched in WooCommerce Eway Gateway','In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(31,'updated-eway-payment-gateway-rin-2022-12-20','update','en_US','WooCommerce Eway Gateway has been automatically updated','Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(32,'ecomm-wc-navigation-survey-2023','info','en_US','Navigating WooCommerce on WordPress.com','We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.','{}','pending','woocommerce.com','2023-02-16 20:12:11',NULL,0,'plain','',0,0,'info'),
	(33,'wc-admin-wc-helper-connection','info','en_US','Connect to WooCommerce.com','Connect to get important product notifications and updates.','{}','unactioned','woocommerce-admin','2023-02-16 20:12:12',NULL,0,'plain','',0,0,'info'),
	(34,'storefront-customize','info','en_US','Progetta il tuo negozio con Storefront ','Visita la pagina delle impostazioni di Storefront per iniziare la configurazione e la personalizzazione del tuo negozio.','{}','unactioned','storefront','2023-02-16 20:36:24',NULL,0,'plain','',0,0,'info'),
	(35,'wc-admin-choosing-a-theme','marketing','en_US','Stai scegliendo un tema?','Dai un\'occhiata ai temi compatibili con WooCommerce e scegline uno che richiami il tuo marchio e soddisfi le esigenze della tua attività.','{}','unactioned','woocommerce-admin','2023-02-19 11:40:06',NULL,0,'plain','',0,0,'info'),
	(36,'wc-admin-customizing-product-catalog','info','en_US','Come personalizzare il tuo catalogo prodotti','Desideri che il tuo catalogo dei prodotti e le immagini abbiano un bell\'aspetto e siano in linea con il tuo marchio. Questa guida ti fornirà tutti i suggerimenti di cui hai bisogno per rendere i tuoi prodotti fantastici nel tuo negozio.','{}','unactioned','woocommerce-admin','2023-02-19 11:40:06',NULL,0,'plain','',0,0,'info'),
	(37,'wc-admin-launch-checklist','info','en_US','Pronto a lanciare il tuo negozio?','Per essere sicuro di non provare mai un senso di irrequietezza \"cosa ho dimenticato\", abbiamo riunito in una checklist gli elementi essenziali prelancio.','{}','unactioned','woocommerce-admin','2023-02-19 11:40:06',NULL,0,'plain','',0,0,'info'),
	(38,'wc-admin-mobile-app','info','en_US','Installa l\'app Woo','Installa l\'app per dispositivi mobili WooCommerce per gestire gli ordini, riceve le notifiche delle vendite e visualizzare le metriche chiave, ovunque tu sia.','{}','unactioned','woocommerce-admin','2023-02-19 11:40:06',NULL,0,'plain','',0,0,'info'),
	(39,'wc-admin-orders-milestone','info','en_US','Primo ordine ricevuto','Congratulazioni per aver ottenuto il tuo primo ordine! Ora è il momento giusto per scoprire come gestire i tuoi ordini.','{\"current_milestone\":1}','unactioned','woocommerce-admin','2023-02-20 12:12:41',NULL,0,'plain','',0,0,'info');

/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_category_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_category_lookup`;

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`)
VALUES
	(15,15),
	(16,16),
	(16,17),
	(16,18),
	(16,19),
	(17,17),
	(18,18),
	(19,19),
	(20,20),
	(21,21);

/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_customer_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`)
VALUES
	(1,NULL,'','Alessandro','Pasqualini','alessandro@dartmoon.io','2023-02-20 12:09:13',NULL,'IT','35100','Padova','PD'),
	(2,1,'admin','Alessandro','Pasqualini','admin@dartmoon.io','2023-02-20 14:33:32','2023-02-16 20:07:06','IT','35100','Padova','PD');

/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_download_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_download_log`;

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_wc_order_coupon_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_wc_order_product_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`)
VALUES
	(11,59,16,0,1,'2023-02-20 13:09:13',1,18,18,0,0,0,0),
	(13,60,16,0,2,'2023-02-20 15:33:32',1,18,18,0,0,0,0),
	(14,60,24,0,2,'2023-02-20 15:33:32',1,15,15,0,0,0,0);

/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_order_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_stats`;

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`)
VALUES
	(59,0,'2023-02-20 13:09:13','2023-02-20 12:09:13',1,18,0,0,18,0,'wc-cancelled',1),
	(60,0,'2023-02-20 15:33:32','2023-02-20 14:33:32',2,33,0,0,33,0,'wc-completed',2);

/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_order_tax_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_wc_product_attributes_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_product_attributes_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_product_attributes_lookup` (`product_id`, `product_or_parent_id`, `taxonomy`, `term_id`, `is_variation_attribute`, `in_stock`)
VALUES
	(28,12,'pa_color',22,1,1),
	(27,12,'pa_color',23,1,1),
	(26,12,'pa_color',24,1,1),
	(26,12,'pa_size',25,1,1),
	(27,12,'pa_size',25,1,1),
	(28,12,'pa_size',25,1,1),
	(26,12,'pa_size',26,1,1),
	(27,12,'pa_size',26,1,1),
	(28,12,'pa_size',26,1,1),
	(26,12,'pa_size',27,1,1),
	(27,12,'pa_size',27,1,1),
	(28,12,'pa_size',27,1,1),
	(31,13,'pa_color',22,1,1),
	(36,13,'pa_color',22,1,1),
	(30,13,'pa_color',23,1,1),
	(29,13,'pa_color',24,1,1),
	(14,14,'pa_color',22,0,1),
	(15,15,'pa_color',28,0,1),
	(16,16,'pa_color',24,0,1),
	(18,18,'pa_color',29,0,1),
	(22,22,'pa_color',23,0,1),
	(23,23,'pa_color',22,0,1),
	(32,32,'pa_color',28,0,1),
	(33,33,'pa_color',24,0,1);

/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_product_download_directories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_product_download_directories` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_download_directories` DISABLE KEYS */;

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`)
VALUES
	(1,'file:///var/www/html/web/app/uploads/woocommerce_uploads/',1),
	(2,'http://ecommerce.test/app/uploads/woocommerce_uploads/',1),
	(3,'https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/',1);

/*!40000 ALTER TABLE `wp_wc_product_download_directories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_product_meta_lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`)
VALUES
	(12,'woo-vneck-tee',0,0,15.0000,20.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(13,'woo-hoodie',0,0,42.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(14,'woo-hoodie-with-logo',0,0,45.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(15,'woo-tshirt',0,0,18.0000,18.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(16,'woo-beanie',0,0,18.0000,18.0000,1,NULL,'instock',0,0.00,2,'taxable',''),
	(17,'woo-belt',0,0,55.0000,55.0000,1,NULL,'instock',0,0.00,0,'taxable',''),
	(18,'woo-cap',0,0,16.0000,16.0000,1,NULL,'instock',0,0.00,0,'taxable',''),
	(19,'woo-sunglasses',0,0,90.0000,90.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(20,'woo-hoodie-with-pocket',0,0,35.0000,35.0000,1,NULL,'instock',0,0.00,0,'taxable',''),
	(21,'woo-hoodie-with-zipper',0,0,45.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(22,'woo-long-sleeve-tee',0,0,25.0000,25.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(23,'woo-polo',0,0,20.0000,20.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(24,'woo-album',1,1,15.0000,15.0000,0,NULL,'instock',0,0.00,1,'taxable',''),
	(25,'woo-single',1,1,2.0000,2.0000,1,NULL,'instock',0,0.00,0,'taxable',''),
	(26,'woo-vneck-tee-red',0,0,20.0000,20.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(27,'woo-vneck-tee-green',0,0,20.0000,20.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(28,'woo-vneck-tee-blue',0,0,15.0000,15.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(29,'woo-hoodie-red',0,0,42.0000,42.0000,1,NULL,'instock',0,0.00,0,'taxable',''),
	(30,'woo-hoodie-green',0,0,45.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(31,'woo-hoodie-blue',0,0,45.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(32,'Woo-tshirt-logo',0,0,18.0000,18.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(33,'Woo-beanie-logo',0,0,18.0000,18.0000,1,NULL,'instock',0,0.00,0,'taxable',''),
	(34,'logo-collection',0,0,18.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable',''),
	(35,'wp-pennant',0,0,11.0500,11.0500,0,NULL,'instock',0,0.00,0,'taxable',''),
	(36,'woo-hoodie-blue-logo',0,0,45.0000,45.0000,0,NULL,'instock',0,0.00,0,'taxable','');

/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_rate_limits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_rate_limits`;

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_wc_reserved_stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_wc_tax_rate_classes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`)
VALUES
	(1,'Reduced rate','reduced-rate'),
	(2,'Zero rate','zero-rate');

/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_wc_webhooks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_wc_webhooks`;

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_api_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_attribute_taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`)
VALUES
	(1,'color','Color','select','menu_order',0),
	(2,'size','Size','select','menu_order',0);

/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_downloadable_product_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_downloadable_product_permissions` (`permission_id`, `download_id`, `product_id`, `order_id`, `order_key`, `user_email`, `user_id`, `downloads_remaining`, `access_granted`, `access_expires`, `download_count`)
VALUES
	(1,'71d7ffad-5235-4f69-b549-299a58223516',24,60,'wc_order_x9dfI1EXCGYhk','admin@dartmoon.io',1,'1','2023-02-20 00:00:00','2023-02-21 00:00:00',0),
	(2,'4e544a51-d4a7-486b-85b8-6a9acb75f1ce',24,60,'wc_order_x9dfI1EXCGYhk','admin@dartmoon.io',1,'1','2023-02-20 00:00:00','2023-02-21 00:00:00',0);

/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_log`;

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_order_itemmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`)
VALUES
	(76,11,'_product_id','16'),
	(77,11,'_variation_id','0'),
	(78,11,'_qty','1'),
	(79,11,'_tax_class',''),
	(80,11,'_line_subtotal','18'),
	(81,11,'_line_subtotal_tax','0'),
	(82,11,'_line_total','18'),
	(83,11,'_line_tax','0'),
	(84,11,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
	(85,12,'method_id','free_shipping'),
	(86,12,'instance_id','1'),
	(87,12,'cost','0.00'),
	(88,12,'total_tax','0'),
	(89,12,'taxes','a:1:{s:5:\"total\";a:0:{}}'),
	(90,12,'Prodotti','Beanie &times; 1'),
	(91,13,'_product_id','16'),
	(92,13,'_variation_id','0'),
	(93,13,'_qty','1'),
	(94,13,'_tax_class',''),
	(95,13,'_line_subtotal','18'),
	(96,13,'_line_subtotal_tax','0'),
	(97,13,'_line_total','18'),
	(98,13,'_line_tax','0'),
	(99,13,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
	(100,14,'_product_id','24'),
	(101,14,'_variation_id','0'),
	(102,14,'_qty','1'),
	(103,14,'_tax_class',''),
	(104,14,'_line_subtotal','15'),
	(105,14,'_line_subtotal_tax','0'),
	(106,14,'_line_total','15'),
	(107,14,'_line_tax','0'),
	(108,14,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
	(109,15,'method_id','free_shipping'),
	(110,15,'instance_id','1'),
	(111,15,'cost','0.00'),
	(112,15,'total_tax','0'),
	(113,15,'taxes','a:1:{s:5:\"total\";a:0:{}}'),
	(114,15,'Prodotti','Beanie &times; 1');

/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`)
VALUES
	(11,'Beanie','line_item',59),
	(12,'Spedizione gratuita','shipping',59),
	(13,'Beanie','line_item',60),
	(14,'Album','line_item',60),
	(15,'Spedizione gratuita','shipping',60);

/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_payment_tokenmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_payment_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_shipping_zone_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`)
VALUES
	(1,1,'IT','country');

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_shipping_zone_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`)
VALUES
	(1,1,'free_shipping',1,1);

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_shipping_zones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`)
VALUES
	(1,'Italia',0);

/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_woocommerce_tax_rate_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_woocommerce_tax_rates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
