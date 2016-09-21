
CREATE TABLE IF NOT EXISTS `fedalawp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1 ;



CREATE TABLE IF NOT EXISTS `fedalawp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_bin NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_bin NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `fedalawp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `fedalawp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_bin NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=519 ;


CREATE TABLE IF NOT EXISTS `fedalawp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=564 ;

CREATE TABLE IF NOT EXISTS `fedalawp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_bin NOT NULL,
  `post_title` text COLLATE utf8mb4_bin NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_bin NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_bin NOT NULL,
  `pinged` text COLLATE utf8mb4_bin NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_bin NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=167 ;


CREATE TABLE IF NOT EXISTS `fedalawp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `fedalawp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=34 ;


CREATE TABLE IF NOT EXISTS `fedalawp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE IF NOT EXISTS `fedalawp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=34 ;


CREATE TABLE IF NOT EXISTS `fedalawp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=24 ;


CREATE TABLE IF NOT EXISTS `fedalawp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=2 ;

INSERT INTO fedalawp_options VALUES(1,'siteurl','http://localhost/wordpress-fedala','yes');
INSERT INTO fedalawp_options VALUES(2,'home','http://localhost/wordpress-fedala','yes');
INSERT INTO fedalawp_options VALUES(3,'blogname','Fedala','yes');
INSERT INTO fedalawp_options VALUES(4,'blogdescription','Un site utilisant WordPress','yes');
INSERT INTO fedalawp_options VALUES(5,'users_can_register',0,'yes');
INSERT INTO fedalawp_options VALUES(6,'admin_email','root@127.0.0.1','yes');
INSERT INTO fedalawp_options VALUES(7,'start_of_week',1,'yes');
INSERT INTO fedalawp_options VALUES(8,'use_balanceTags',0,'yes');
INSERT INTO fedalawp_options VALUES(9,'use_smilies',1,'yes');
INSERT INTO fedalawp_options VALUES(10,'require_name_email',1,'yes');
INSERT INTO fedalawp_options VALUES(11,'comments_notify',1,'yes');
INSERT INTO fedalawp_options VALUES(12,'posts_per_rss',10,'yes');
INSERT INTO fedalawp_options VALUES(13,'rss_use_excerpt',0,'yes');
INSERT INTO fedalawp_options VALUES(14,'mailserver_url','mail.example.com','yes');
INSERT INTO fedalawp_options VALUES(15,'mailserver_login','login@example.com','yes');
INSERT INTO fedalawp_options VALUES(16,'mailserver_pass','password','yes');
INSERT INTO fedalawp_options VALUES(17,'mailserver_port',110,'yes');
INSERT INTO fedalawp_options VALUES(18,'default_category',1,'yes');
INSERT INTO fedalawp_options VALUES(19,'default_comment_status','open','yes');
INSERT INTO fedalawp_options VALUES(20,'default_ping_status','open','yes');
INSERT INTO fedalawp_options VALUES(21,'default_pingback_flag',1,'yes');
INSERT INTO fedalawp_options VALUES(22,'posts_per_page',10,'yes');
INSERT INTO fedalawp_options VALUES(23,'date_format','j F Y','yes');
INSERT INTO fedalawp_options VALUES(24,'time_format','G \h i \m\i\n','yes');
INSERT INTO fedalawp_options VALUES(25,'links_updated_date_format','j F Y G \h i \m\i\n','yes');
INSERT INTO fedalawp_options VALUES(26,'comment_moderation',0,'yes');
INSERT INTO fedalawp_options VALUES(27,'moderation_notify',1,'yes');
INSERT INTO fedalawp_options VALUES(28,'permalink_structure','','yes');
INSERT INTO fedalawp_options VALUES(29,'rewrite_rules','','yes');
INSERT INTO fedalawp_options VALUES(30,'hack_file',0,'yes');
INSERT INTO fedalawp_options VALUES(31,'blog_charset','UTF-8','yes');
INSERT INTO fedalawp_options VALUES(32,'moderation_keys','','no');
INSERT INTO fedalawp_options VALUES(33,'active_plugins','a:4:{i:0;s:35:"add-from-server/add-from-server.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";i:3;s:27:"text-slider/text-slider.php";}','yes');
INSERT INTO fedalawp_options VALUES(34,'category_base','','yes');
INSERT INTO fedalawp_options VALUES(35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO fedalawp_options VALUES(36,'comment_max_links',2,'yes');
INSERT INTO fedalawp_options VALUES(37,'gmt_offset',0,'yes');
INSERT INTO fedalawp_options VALUES(38,'default_email_category',1,'yes');
INSERT INTO fedalawp_options VALUES(39,'recently_edited','','no');
INSERT INTO fedalawp_options VALUES(40,'template','prestro','yes');
INSERT INTO fedalawp_options VALUES(41,'stylesheet','prestro','yes');
INSERT INTO fedalawp_options VALUES(42,'comment_whitelist',1,'yes');
INSERT INTO fedalawp_options VALUES(43,'blacklist_keys','','no');
INSERT INTO fedalawp_options VALUES(44,'comment_registration',0,'yes');
INSERT INTO fedalawp_options VALUES(45,'html_type','text/html','yes');
INSERT INTO fedalawp_options VALUES(46,'use_trackback',0,'yes');
INSERT INTO fedalawp_options VALUES(47,'default_role','subscriber','yes');
INSERT INTO fedalawp_options VALUES(48,'db_version',37965,'yes');
INSERT INTO fedalawp_options VALUES(49,'uploads_use_yearmonth_folders',1,'yes');
INSERT INTO fedalawp_options VALUES(50,'upload_path','','yes');
INSERT INTO fedalawp_options VALUES(51,'blog_public',1,'yes');
INSERT INTO fedalawp_options VALUES(52,'default_link_category',2,'yes');
INSERT INTO fedalawp_options VALUES(53,'show_on_front','page','yes');
INSERT INTO fedalawp_options VALUES(54,'tag_base','','yes');
INSERT INTO fedalawp_options VALUES(55,'show_avatars',1,'yes');
INSERT INTO fedalawp_options VALUES(56,'avatar_rating','G','yes');
INSERT INTO fedalawp_options VALUES(57,'upload_url_path','','yes');
INSERT INTO fedalawp_options VALUES(58,'thumbnail_size_w',150,'yes');
INSERT INTO fedalawp_options VALUES(59,'thumbnail_size_h',150,'yes');
INSERT INTO fedalawp_options VALUES(60,'thumbnail_crop',1,'yes');
INSERT INTO fedalawp_options VALUES(61,'medium_size_w',300,'yes');
INSERT INTO fedalawp_options VALUES(62,'medium_size_h',300,'yes');
INSERT INTO fedalawp_options VALUES(63,'avatar_default','mystery','yes');
INSERT INTO fedalawp_options VALUES(64,'large_size_w',1024,'yes');
INSERT INTO fedalawp_options VALUES(65,'large_size_h',1024,'yes');
INSERT INTO fedalawp_options VALUES(66,'image_default_link_type','none','yes');
INSERT INTO fedalawp_options VALUES(67,'image_default_size','','yes');
INSERT INTO fedalawp_options VALUES(68,'image_default_align','','yes');
INSERT INTO fedalawp_options VALUES(69,'close_comments_for_old_posts',0,'yes');
INSERT INTO fedalawp_options VALUES(70,'close_comments_days_old',14,'yes');
INSERT INTO fedalawp_options VALUES(71,'thread_comments',1,'yes');
INSERT INTO fedalawp_options VALUES(72,'thread_comments_depth',5,'yes');
INSERT INTO fedalawp_options VALUES(73,'page_comments',0,'yes');
INSERT INTO fedalawp_options VALUES(74,'comments_per_page',50,'yes');
INSERT INTO fedalawp_options VALUES(75,'default_comments_page','newest','yes');
INSERT INTO fedalawp_options VALUES(76,'comment_order','asc','yes');
INSERT INTO fedalawp_options VALUES(77,'sticky_posts','a:0:{}','yes');
INSERT INTO fedalawp_options VALUES(78,'widget_categories','a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(79,'widget_text','a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(80,'widget_rss','a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(81,'uninstall_plugins','a:0:{}','no');
INSERT INTO fedalawp_options VALUES(82,'timezone_string','Europe/Paris','yes');
INSERT INTO fedalawp_options VALUES(83,'page_for_posts',0,'yes');
INSERT INTO fedalawp_options VALUES(84,'page_on_front',6,'yes');
INSERT INTO fedalawp_options VALUES(85,'default_post_format',0,'yes');
INSERT INTO fedalawp_options VALUES(86,'link_manager_enabled',0,'yes');
INSERT INTO fedalawp_options VALUES(87,'finished_splitting_shared_terms',1,'yes');
INSERT INTO fedalawp_options VALUES(88,'site_icon',0,'yes');
INSERT INTO fedalawp_options VALUES(89,'medium_large_size_w',768,'yes');
INSERT INTO fedalawp_options VALUES(90,'medium_large_size_h',0,'yes');
INSERT INTO fedalawp_options VALUES(91,'initial_db_version',37965,'yes');
INSERT INTO fedalawp_options VALUES(92,'fedalawp_user_roles','a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:76:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"publish_products";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:21:"edit_private_products";b:1;s:15:"delete_products";b:1;s:22:"delete_others_products";b:1;s:21:"read_private_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:23:"edit_published_products";b:1;s:25:"manage_product_categories";b:1;s:23:"edit_product_categories";b:1;s:25:"delete_product_categories";b:1;s:25:"assign_product_categories";b:1;s:23:"manage_product_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}','yes');
INSERT INTO fedalawp_options VALUES(93,'widget_search','a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(96,'widget_archives','a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(97,'widget_meta','a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(98,'sidebars_widgets','a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"contact-widget";N;s:15:"footer-widget-1";N;s:15:"footer-widget-2";N;s:15:"footer-widget-3";N;s:15:"footer-widget-4";N;s:13:"array_version";i:3;}','yes');
INSERT INTO fedalawp_options VALUES(99,'widget_pages','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(100,'widget_calendar','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(101,'widget_tag_cloud','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(102,'widget_nav_menu','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(103,'cron','a:4:{i:1474069478;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1474112732;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1474113166;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}','yes');
INSERT INTO fedalawp_options VALUES(110,'_site_transient_timeout_theme_roots',1474028438,'no');
INSERT INTO fedalawp_options VALUES(111,'_site_transient_theme_roots','a:1:{s:7:"prestro";s:7:"/themes";}','no');
INSERT INTO fedalawp_options VALUES(113,'_site_transient_update_core','O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1474026306;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-16 10:09:39";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:10:"autoupdate";b:1;}}}','no');
INSERT INTO fedalawp_options VALUES(114,'_site_transient_update_themes','O:8:"stdClass":4:{s:12:"last_checked";i:1474026537;s:7:"checked";a:4:{s:7:"prestro";s:5:"1.1.1";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}','no');
INSERT INTO fedalawp_options VALUES(115,'_site_transient_update_plugins','O:8:"stdClass":5:{s:12:"last_checked";i:1474036846;s:7:"checked";a:6:{s:35:"add-from-server/add-from-server.php";s:5:"3.3.2";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.5";s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";s:6:"2.5.20";s:41:"sqlite-integration/sqlite-integration.php";s:5:"1.8.1";s:27:"text-slider/text-slider.php";s:5:"1.0.0";s:45:"wp-content-copy-protector/preventer-index.php";s:7:"1.5.0.5";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.5";s:7:"updated";s:19:"2016-08-09 12:25:19";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.5/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:6:{s:35:"add-from-server/add-from-server.php";O:8:"stdClass":6:{s:2:"id";s:4:"2613";s:4:"slug";s:15:"add-from-server";s:6:"plugin";s:35:"add-from-server/add-from-server.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:46:"https://wordpress.org/plugins/add-from-server/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/add-from-server.3.3.2.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.zip";}s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";O:8:"stdClass":6:{s:2:"id";s:5:"47397";s:4:"slug";s:25:"ecommerce-product-catalog";s:6:"plugin";s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";s:11:"new_version";s:6:"2.5.20";s:3:"url";s:56:"https://wordpress.org/plugins/ecommerce-product-catalog/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/ecommerce-product-catalog.zip";}s:41:"sqlite-integration/sqlite-integration.php";O:8:"stdClass":6:{s:2:"id";s:5:"42039";s:4:"slug";s:18:"sqlite-integration";s:6:"plugin";s:41:"sqlite-integration/sqlite-integration.php";s:11:"new_version";s:5:"1.8.1";s:3:"url";s:49:"https://wordpress.org/plugins/sqlite-integration/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/sqlite-integration.1.8.1.zip";}s:27:"text-slider/text-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"50035";s:4:"slug";s:11:"text-slider";s:6:"plugin";s:27:"text-slider/text-slider.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:42:"https://wordpress.org/plugins/text-slider/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/text-slider.zip";}s:45:"wp-content-copy-protector/preventer-index.php";O:8:"stdClass":6:{s:2:"id";s:5:"47133";s:4:"slug";s:25:"wp-content-copy-protector";s:6:"plugin";s:45:"wp-content-copy-protector/preventer-index.php";s:11:"new_version";s:7:"1.5.0.5";s:3:"url";s:56:"https://wordpress.org/plugins/wp-content-copy-protector/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/wp-content-copy-protector.zip";}}}','no');
INSERT INTO fedalawp_options VALUES(116,'_site_transient_timeout_browser_cad6a976fb71c45b22c81157d1534d3b',1474631133,'no');
INSERT INTO fedalawp_options VALUES(117,'_site_transient_browser_cad6a976fb71c45b22c81157d1534d3b','a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"48.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}','no');
INSERT INTO fedalawp_options VALUES(119,'can_compress_scripts',1,'no');
INSERT INTO fedalawp_options VALUES(120,'_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c',1474069536,'no');
INSERT INTO fedalawp_options VALUES(121,'_transient_feed_66a70e9599b658d5cc038e8074597e7c','a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Sep 2016 11:32:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"
		
		
		
		
		
				
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"Un nouveau site pour WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:44:"https://wpfr.net/nouveau-site-wpfr/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Sep 2016 07:59:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1566674";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1747:"<p>Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui porté
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/nouveau-site-wpfr/">Un nouveau site pour WordPress Francophone</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5e8SDCecxmc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/nouveau-site-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"https://wpfr.net/nouveau-site-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"
		
		
		
		
		
				
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/gVGKhQeZUVA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/nouvelles-wpfr/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2016 13:09:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562931";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1676:"<p>Le 21 décembre dernier nous avions le plaisir de vous faire partager des informations à propos du renouveau de l&#8217;association WordPress Francophone. Ces derniers mois ont été l&#8217;occasion de tout remettre à plat et nous souhaitions vous donner des nouvelles sur les différents chantiers en cours. C&#8217;est également le moment de faire appel à la
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/nouvelles-wpfr/">Des nouvelles de WPFR</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/gVGKhQeZUVA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:37:"https://wpfr.net/nouvelles-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:32:"https://wpfr.net/nouvelles-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"
		
		
		
		
		
				
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/F12flxi-44w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/volontaires-chantiers-site-forum/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:07:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562923";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1658:"<p>Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions ! Les participants ont reçu les indications pour nous rejoindre sur le slack de
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/volontaires-chantiers-site-forum/">En route vers le nouveau site !</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/F12flxi-44w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpfr.net/volontaires-chantiers-site-forum/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/volontaires-chantiers-site-forum/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"
		
		
		
		
		
				
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"Rencontre avec Jenny Beaumont à propos des WordCamp Europe 2016 et 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/2XGXo5--k90/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Jun 2016 13:05:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562840";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1733:"<p>Bonjour Jenny, rappelles-nous qui tu es en quelques mots et plus précisément quelle est ton implication au sein de la communauté WordPress ? Je travaille dans et autour du web depuis 1998, époque qui coincide avec mon arrivée en France (des États-unis). J’avais commencé par monter une agence de création de sites avec deux collègues,
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/">Rencontre avec Jenny Beaumont à propos des WordCamp Europe 2016 et 2017</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/2XGXo5--k90" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"
		
		
		
		
		
				
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Un logo pour l’association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/cEo2U8QD2SE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/logo-lassociation-wpfr/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2016 12:52:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562643";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1717:"<p>Bonjour à tous ! C&#8217;est l&#8217;heure des vacances pour certains et le moment de vous donner des nouvelles de l&#8217;évolution des chantiers de l&#8217;association. Le mois dernier nous avions constitué des groupes de travail pour s&#8217;attaquer à la refonte du site. Lors des premiers échanges, nous avons relevé que l&#8217;association WPFR n&#8217;avait pas de logo
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/logo-lassociation-wpfr/">Un logo pour l&rsquo;association WPFR</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/cEo2U8QD2SE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/logo-lassociation-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/logo-lassociation-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				
		
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress, Yahoo et les autres …";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/yJpv_mr9BZQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wordpress-yahoo-et-les-autres/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2005 13:00:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=59";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1700:"<p>Yahoo qui propose désormais un service d&#8217;hébergement, s&#8217;est associé à WordPress pour compléter son offre. En effet Yahoo propose WordPress comme outils de Blog. N&#8217;ayant pas pu tester ce service je vous renvoie sur les pages qui lui sont consacrées. Sur le site officiel de WordPress. sur le site de Yahoo Small Business. Par ailleurs
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/wordpress-yahoo-et-les-autres/">WordPress, Yahoo et les autres &#8230;</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/yJpv_mr9BZQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Damino";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/wordpress-yahoo-et-les-autres/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wordpress-yahoo-et-les-autres/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"
		
		
		
		
		
				

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"WP2 naitra dans un monde moins Libre ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/z7HUvGWmQxI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2005 11:26:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2005/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1697:"<p>La blogosphère bruisse d&#8217;une rumeur persistante : WP2 va sortir dans quelques jours (la semaine à venir). Je sais que le très actif BenKenobi (retrouvez le sur le forum) à déjà pas mal fait le tour de la question que cette deuxième version en détaillant les nouvelles fonctionnalités. Nous écrira t-il quelquechose de plus épais
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/">WP2 naitra dans un monde moins Libre ?</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/z7HUvGWmQxI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				
		
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"WordPress chez les Helvètes, et en Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/6aodNwnlWuE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Nov 2005 14:13:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=47";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1740:"<p>Ce n&#8217;est pas sans une émotion toute lacrymale que j&#8217;écris ce petit billet, pour vous annoncer deux excellentes nouvelles. Tout d&#8217;abord, la blogosphère wordpressienne francophone (à lire très vite) s&#8217;est agrandie récemment, sous la forme de WordPress.ch, qui a reçu sa première fessée, et donc poussé son premier et rassurant cri de nouveau né, pas
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/">WordPress chez les Helvètes, et en Beta 2</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/6aodNwnlWuE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Xavier Borderie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"14";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"
		
		
		
		
		
				

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress 2 BETA 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/0QLk4sv5hgg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/wordpress-2-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Nov 2005 08:42:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:52:"http://www.wordpress-fr.net/2005/wordpress-2-beta-1/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1393:"<p>La version BETA 1 de WordPress 2 vient d&#8217;être lâchée dans la nature Essayez la et dites nous ce que vous en pensez. Si vous avez un compte WP.com vous n&#8217;allez pas être dépaysé. Via Lunacy Unleashed</p>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/wordpress-2-beta-1/">WordPress 2 BETA 1</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/0QLk4sv5hgg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpfr.net/wordpress-2-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:36:"https://wpfr.net/wordpress-2-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"
		
		
		
		
		
				
		

		
		
		
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Damned (un truc&amp;astuce en passant)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/-y9nIySAPJA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:33:"https://wpfr.net/damned/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Nov 2005 15:45:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"Thèmes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.wordpress-fr.net/2005/damned/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1621:"<p>Un de mes neveux (10 ans) : Qu&#8217;est ce que tu fais ? Moi : Tu te souviens hier quand je t&#8217;ai expliqué comment marchait wordpress, les plugins, les thèmes etc..? Lui : oui Moi : Hé bien là je cherche un plugin efficace qui, une fois activé, coupe l&#8217;accès au blog avec un message
<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>
<p>Cet article <a rel="nofollow" href="https://wpfr.net/damned/">Damned (un truc&#038;astuce en passant)</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">
<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ" border="0"></img></a>
</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/-y9nIySAPJA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wpfr.net/damned/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:24:"https://wpfr.net/damned/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"','no');
INSERT INTO fedalawp_options VALUES(122,'_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c',1474069536,'no');
INSERT INTO fedalawp_options VALUES(123,'_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c',1474026336,'no');
INSERT INTO fedalawp_options VALUES(124,'_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109',1474069545,'no');
INSERT INTO fedalawp_options VALUES(125,'_transient_feed_b9388c83948825c1edaef0d856b7b109','a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"
	
";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Sep 2016 11:15:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Secure your website with the Wordfence security plugin for WordPress.  Wordfence provides free enterprise-class WordPress security, protecting your we";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"','no');
INSERT INTO fedalawp_options VALUES(126,'_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109',1474069545,'no');
INSERT INTO fedalawp_options VALUES(127,'_transient_feed_mod_b9388c83948825c1edaef0d856b7b109',1474026345,'no');
INSERT INTO fedalawp_options VALUES(128,'_transient_timeout_plugin_slugs',1474123251,'no');
INSERT INTO fedalawp_options VALUES(129,'_transient_plugin_slugs','a:6:{i:0;s:35:"add-from-server/add-from-server.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";i:3;s:41:"sqlite-integration/sqlite-integration.php";i:4;s:27:"text-slider/text-slider.php";i:5;s:45:"wp-content-copy-protector/preventer-index.php";}','no');
INSERT INTO fedalawp_options VALUES(130,'_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af',1474069545,'no');
INSERT INTO fedalawp_options VALUES(131,'_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af','<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/''>Un nouveau site pour WordPress Francophone</a> <span class="rss-date">15 septembre 2016</span><div class="rssSummary">Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui porté [&hellip;]</div></li></ul></div><div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> This XML document is invalid, likely due to invalid characters. XML error: Undeclared entity error at line 107, column 93</p></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Extensions populaires :</span> Google Analytics Dashboard for WP&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=882949eeb3&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Installer Google Analytics Dashboard for WP">(Installer)</a></li></ul></div>','no');
INSERT INTO fedalawp_options VALUES(132,'theme_mods_twentysixteen','a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1474026553;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}','yes');
INSERT INTO fedalawp_options VALUES(133,'current_theme','prestro-bis','yes');
INSERT INTO fedalawp_options VALUES(134,'theme_mods_prestro','a:4:{i:0;b:0;s:8:"logo-img";s:0:"";s:15:"welcome_setting";i:6;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}','yes');
INSERT INTO fedalawp_options VALUES(135,'theme_switched','','yes');
INSERT INTO fedalawp_options VALUES(136,'widget_prestro_tabbed_widget','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(139,'nav_menu_options','a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}','yes');
INSERT INTO fedalawp_options VALUES(140,'recently_activated','a:1:{s:40:"ultimate-product-catalogue/UPCP_Main.php";i:1474027709;}','yes');
INSERT INTO fedalawp_options VALUES(141,'wpcf7','a:2:{s:7:"version";s:3:"4.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1474034412;s:7:"version";s:3:"4.5";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}','yes');
INSERT INTO fedalawp_options VALUES(142,'UPCP_Currency_Symbol_Location','Before','yes');
INSERT INTO fedalawp_options VALUES(143,'UPCP_Price_Filter','No','yes');
INSERT INTO fedalawp_options VALUES(144,'UPCP_Sale_Mode','Individual','yes');
INSERT INTO fedalawp_options VALUES(145,'UPCP_Product_Sort','Price_Name','yes');
INSERT INTO fedalawp_options VALUES(146,'UPCP_Product_Search','name','yes');
INSERT INTO fedalawp_options VALUES(147,'UPCP_Custom_Product_Page','No','yes');
INSERT INTO fedalawp_options VALUES(148,'UPCP_Sidebar_Order','Normal','yes');
INSERT INTO fedalawp_options VALUES(149,'UPCP_Apply_Contents_Filter','Yes','yes');
INSERT INTO fedalawp_options VALUES(150,'UPCP_Maintain_Filtering','Yes','yes');
INSERT INTO fedalawp_options VALUES(151,'UPCP_Thumbnail_Support','No','yes');
INSERT INTO fedalawp_options VALUES(152,'UPCP_Show_Category_Descriptions','No','yes');
INSERT INTO fedalawp_options VALUES(153,'UPCP_Show_Catalogue_Information','None','yes');
INSERT INTO fedalawp_options VALUES(154,'UPCP_Display_Category_Image','No','yes');
INSERT INTO fedalawp_options VALUES(155,'UPCP_Display_SubCategory_Image','No','yes');
INSERT INTO fedalawp_options VALUES(156,'UPCP_Overview_Mode','None','yes');
INSERT INTO fedalawp_options VALUES(157,'UPCP_Inner_Filter','No','yes');
INSERT INTO fedalawp_options VALUES(158,'UPCP_Product_Comparison','No','yes');
INSERT INTO fedalawp_options VALUES(159,'UPCP_Product_Inquiry_Form','No','yes');
INSERT INTO fedalawp_options VALUES(160,'UPCP_Product_Inquiry_Cart','No','yes');
INSERT INTO fedalawp_options VALUES(161,'UPCP_Product_Reviews','No','yes');
INSERT INTO fedalawp_options VALUES(162,'UPCP_Catalog_Display_Reviews','No','yes');
INSERT INTO fedalawp_options VALUES(163,'UPCP_Lightbox','No','yes');
INSERT INTO fedalawp_options VALUES(164,'UPCP_Lightbox_Mode','No','yes');
INSERT INTO fedalawp_options VALUES(165,'UPCP_Products_Per_Page',1000000,'yes');
INSERT INTO fedalawp_options VALUES(166,'UPCP_Pagination_Location','Top','yes');
INSERT INTO fedalawp_options VALUES(167,'UPCP_CF_Conversion','No','yes');
INSERT INTO fedalawp_options VALUES(168,'UPCP_Access_Role','administrator','yes');
INSERT INTO fedalawp_options VALUES(169,'UPCP_PP_Grid_Width',90,'yes');
INSERT INTO fedalawp_options VALUES(170,'UPCP_PP_Grid_Height',35,'yes');
INSERT INTO fedalawp_options VALUES(171,'UPCP_Top_Bottom_Padding',10,'yes');
INSERT INTO fedalawp_options VALUES(172,'UPCP_Left_Right_Padding',10,'yes');
INSERT INTO fedalawp_options VALUES(173,'UPCP_SEO_Option','None','yes');
INSERT INTO fedalawp_options VALUES(174,'UPCP_SEO_Integration','Add','yes');
INSERT INTO fedalawp_options VALUES(175,'UPCP_SEO_Title','[page-title] | [product-name]','yes');
INSERT INTO fedalawp_options VALUES(176,'UPCP_Update_Breadcrumbs','No','yes');
INSERT INTO fedalawp_options VALUES(177,'UPCP_Details_Icon_Type','Default','yes');
INSERT INTO fedalawp_options VALUES(178,'UPCP_Pagination_Background','None','yes');
INSERT INTO fedalawp_options VALUES(179,'UPCP_Pagination_Border','none','yes');
INSERT INTO fedalawp_options VALUES(180,'UPCP_Pagination_Shadow','shadow-none','yes');
INSERT INTO fedalawp_options VALUES(181,'UPCP_Pagination_Gradient','gradient-none','yes');
INSERT INTO fedalawp_options VALUES(182,'UPCP_Pagination_Font','none','yes');
INSERT INTO fedalawp_options VALUES(183,'UPCP_Sidebar_Title_Collapse','no','yes');
INSERT INTO fedalawp_options VALUES(184,'UPCP_Sidebar_Start_Collapsed','no','yes');
INSERT INTO fedalawp_options VALUES(185,'UPCP_Sidebar_Title_Hover','none','yes');
INSERT INTO fedalawp_options VALUES(186,'UPCP_Sidebar_Checkbox_Style','none','yes');
INSERT INTO fedalawp_options VALUES(187,'UPCP_DB_Version','3.10.0a','yes');
INSERT INTO fedalawp_options VALUES(188,'UPCP_Full_Version','No','yes');
INSERT INTO fedalawp_options VALUES(189,'UPCP_Color_Scheme','Blue','yes');
INSERT INTO fedalawp_options VALUES(190,'UPCP_Product_Links','Same','yes');
INSERT INTO fedalawp_options VALUES(191,'UPCP_Tag_Logic','AND','yes');
INSERT INTO fedalawp_options VALUES(192,'UPCP_Read_More','Yes','yes');
INSERT INTO fedalawp_options VALUES(193,'UPCP_Pretty_Links','No','yes');
INSERT INTO fedalawp_options VALUES(194,'UPCP_Mobile_SS','No','yes');
INSERT INTO fedalawp_options VALUES(195,'UPCP_Install_Flag','Yes','yes');
INSERT INTO fedalawp_options VALUES(196,'UPCP_First_Install_Version',3.6,'yes');
INSERT INTO fedalawp_options VALUES(197,'UPCP_Desc_Chars',240,'yes');
INSERT INTO fedalawp_options VALUES(198,'UPCP_Case_Insensitive_Search','Yes','yes');
INSERT INTO fedalawp_options VALUES(199,'UPCP_Run_Tutorial','Yes','yes');
INSERT INTO fedalawp_options VALUES(200,'plugin_error','','yes');
INSERT INTO fedalawp_options VALUES(201,'widget_upcp_product_list_widget','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(202,'widget_upcp_random_products_widget','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(203,'widget_upcp_recent_products_widget','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(204,'widget_upcp_search_bar_widget','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(205,'text_slider_choices','a:1:{s:5:"fonts";a:15:{i:0;s:4:"None";i:1;s:32:"Arial,Arial,Helvetica,sans-serif";i:2;s:45:"''Arial Black'',''Arial Black'',Gadget,sans-serif";i:3;s:39:"''Comic Sans MS'',''Comic Sans MS'',cursive";i:4;s:45:"''Courier New'',''Courier New'',Courier,monospace";i:5;s:21:"Georgia,Georgia,serif";i:6;s:26:"Impact,Charcoal,sans-serif";i:7;s:33:"''Lucida Console'',Monaco,monospace";i:8;s:48:"''Lucida Sans Unicode'',''Lucida Grande'',sans-serif";i:9;s:49:"''Palatino Linotype'',''Book Antiqua'',Palatino,serif";i:10;s:24:"Tahoma,Geneva,sans-serif";i:11;s:29:"''Times New Roman'',Times,serif";i:12;s:35:"''Trebuchet MS'',Helvetica,sans-serif";i:13;s:25:"Verdana,Geneva,sans-serif";i:14;s:29:"''Gill Sans'',Geneva,sans-serif";}}','yes');
INSERT INTO fedalawp_options VALUES(206,'text_slider_admin_notices','a:0:{}','yes');
INSERT INTO fedalawp_options VALUES(207,'text_slider_settings','a:1:{i:0;a:18:{s:9:"multi_key";s:1:"0";s:11:"text_slides";a:2:{i:0;a:2:{s:9:"main_text";s:21:"Ici un témoignage…";s:8:"sub_text";s:9:"anonyme01";}i:1;a:2:{s:9:"main_text";s:28:"Là un autre témoignage !";s:8:"sub_text";s:9:"anonyme02";}}s:5:"delay";s:1:"9";s:8:"duration";s:1:"1";s:14:"defined_height";s:0:"";s:10:"custom_css";s:0:"";s:19:"maintext_fontfamily";s:32:"Arial,Arial,Helvetica,sans-serif";s:17:"maintext_fontsize";s:2:"90";s:19:"maintext_fontweight";s:3:"400";s:14:"maintext_color";s:7:"#ffffff";s:18:"subtext_fontfamily";s:29:"''Times New Roman'',Times,serif";s:16:"subtext_fontsize";s:2:"60";s:18:"subtext_fontweight";s:3:"400";s:13:"subtext_color";s:7:"#eeeeee";s:12:"use_font_css";i:0;s:10:"icon_color";s:7:"#eeeeee";s:16:"icon_hover_color";s:7:"#eeeeee";s:13:"icon_fontsize";s:2:"86";}}','yes');
INSERT INTO fedalawp_options VALUES(208,'_transient_timeout_settings_errors',1474036917,'no');
INSERT INTO fedalawp_options VALUES(209,'_transient_settings_errors','a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}','no');
INSERT INTO fedalawp_options VALUES(210,'frmsvr_last_folder','/home/pcapprenant12/fedala/wordpress/wp-content/add-from-server','yes');
INSERT INTO fedalawp_options VALUES(211,'first_activation_version','2.5.20','yes');
INSERT INTO fedalawp_options VALUES(212,'ecommerce_product_catalog_ver','2.5.20','yes');
INSERT INTO fedalawp_options VALUES(213,'product_archive_page_id',49,'yes');
INSERT INTO fedalawp_options VALUES(214,'_site_transient_timeout_implecode_hide_plugin_review_info',1474641650,'no');
INSERT INTO fedalawp_options VALUES(215,'_site_transient_implecode_hide_plugin_review_info',1,'no');
INSERT INTO fedalawp_options VALUES(216,'implecode_hide_plugin_review_info_count',2,'yes');
INSERT INTO fedalawp_options VALUES(217,'archive_multiple_settings','a:16:{s:16:"integration_type";s:8:"advanced";s:15:"container_width";s:3:"100";s:12:"container_bg";s:0:"";s:17:"container_padding";s:1:"0";s:15:"default_sidebar";s:4:"none";s:16:"catalog_singular";s:7:"Product";s:14:"catalog_plural";s:8:"Products";s:22:"archive_products_limit";s:2:"10";s:20:"product_listing_cats";s:2:"on";s:13:"product_order";s:6:"newest";s:17:"category_top_cats";s:2:"on";s:12:"cat_template";s:8:"template";s:7:"related";s:8:"products";s:9:"seo_title";s:0:"";s:13:"seo_title_sep";s:1:"1";s:17:"breadcrumbs_title";s:0:"";}','yes');
INSERT INTO fedalawp_options VALUES(218,'al_permalink_options_update','none','yes');
INSERT INTO fedalawp_options VALUES(219,'widget_product_categories','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(220,'widget_product_search','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(221,'widget_product_category_filter','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(222,'widget_product_sort_filter','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(223,'widget_related_products_widget','a:1:{s:12:"_multiwidget";i:1;}','yes');
INSERT INTO fedalawp_options VALUES(224,'sample_product_id',50,'yes');
INSERT INTO fedalawp_options VALUES(226,'al_product-attributes_children','a:0:{}','yes');
INSERT INTO fedalawp_options VALUES(227,'product_currency_settings','a:6:{s:12:"price_enable";s:2:"on";s:13:"custom_symbol";s:3:"€";s:12:"price_format";s:5:"after";s:11:"price_space";s:3:"off";s:6:"th_sep";s:1:",";s:7:"dec_sep";s:1:".";}','yes');
INSERT INTO fedalawp_options VALUES(228,'multi_single_options','a:3:{s:22:"enable_product_gallery";i:1;s:8:"template";s:5:"boxed";s:38:"enable_product_gallery_only_when_exist";s:0:"";}','yes');
INSERT INTO fedalawp_options VALUES(229,'product_adder_theme_support_check','prestro','yes');
INSERT INTO fedalawp_options VALUES(230,'product_listing_url','','yes');
INSERT INTO fedalawp_options VALUES(231,'product_currency','EUR','yes');
INSERT INTO fedalawp_options VALUES(232,'product_archive',49,'yes');
INSERT INTO fedalawp_options VALUES(233,'enable_product_listing',1,'yes');
INSERT INTO fedalawp_options VALUES(234,'al_product_cat_image_3',37,'yes');
INSERT INTO fedalawp_options VALUES(237,'al_product_cat_image_4',40,'yes');
INSERT INTO fedalawp_options VALUES(238,'al_product-cat_children','a:0:{}','yes');

INSERT INTO fedalawp_postmeta VALUES(1,2,'_wp_page_template','default');
INSERT INTO fedalawp_postmeta VALUES(2,1,'_wp_trash_meta_status','publish');
INSERT INTO fedalawp_postmeta VALUES(3,1,'_wp_trash_meta_time',1474026606);
INSERT INTO fedalawp_postmeta VALUES(4,1,'_wp_desired_post_slug','bonjour-tout-le-monde');
INSERT INTO fedalawp_postmeta VALUES(5,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:"1";}');
INSERT INTO fedalawp_postmeta VALUES(6,2,'_wp_trash_meta_status','publish');
INSERT INTO fedalawp_postmeta VALUES(7,2,'_wp_trash_meta_time',1474026612);
INSERT INTO fedalawp_postmeta VALUES(8,2,'_wp_desired_post_slug','page-d-exemple');
INSERT INTO fedalawp_postmeta VALUES(9,6,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(10,6,'_edit_lock','1474026637:1');
INSERT INTO fedalawp_postmeta VALUES(11,6,'_wp_page_template','page-templates/acceuil.php');
INSERT INTO fedalawp_postmeta VALUES(12,8,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(13,8,'_edit_lock','1474037630:1');
INSERT INTO fedalawp_postmeta VALUES(14,8,'_wp_page_template','default');
INSERT INTO fedalawp_postmeta VALUES(15,10,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(16,10,'_edit_lock','1474026730:1');
INSERT INTO fedalawp_postmeta VALUES(17,10,'_wp_page_template','page-templates/traiteur.php');
INSERT INTO fedalawp_postmeta VALUES(18,12,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(19,12,'_edit_lock','1474028141:1');
INSERT INTO fedalawp_postmeta VALUES(20,12,'_wp_page_template','default');
INSERT INTO fedalawp_postmeta VALUES(21,14,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(22,14,'_edit_lock','1474028151:1');
INSERT INTO fedalawp_postmeta VALUES(23,14,'_wp_page_template','default');
INSERT INTO fedalawp_postmeta VALUES(24,16,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(25,16,'_edit_lock','1474028124:1');
INSERT INTO fedalawp_postmeta VALUES(26,16,'_wp_page_template','default');
INSERT INTO fedalawp_postmeta VALUES(27,18,'_menu_item_type','post_type');
INSERT INTO fedalawp_postmeta VALUES(28,18,'_menu_item_menu_item_parent',0);
INSERT INTO fedalawp_postmeta VALUES(29,18,'_menu_item_object_id',10);
INSERT INTO fedalawp_postmeta VALUES(30,18,'_menu_item_object','page');
INSERT INTO fedalawp_postmeta VALUES(31,18,'_menu_item_target','');
INSERT INTO fedalawp_postmeta VALUES(32,18,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO fedalawp_postmeta VALUES(33,18,'_menu_item_xfn','');
INSERT INTO fedalawp_postmeta VALUES(34,18,'_menu_item_url','');
INSERT INTO fedalawp_postmeta VALUES(36,19,'_menu_item_type','post_type');
INSERT INTO fedalawp_postmeta VALUES(37,19,'_menu_item_menu_item_parent',0);
INSERT INTO fedalawp_postmeta VALUES(38,19,'_menu_item_object_id',8);
INSERT INTO fedalawp_postmeta VALUES(39,19,'_menu_item_object','page');
INSERT INTO fedalawp_postmeta VALUES(40,19,'_menu_item_target','');
INSERT INTO fedalawp_postmeta VALUES(41,19,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO fedalawp_postmeta VALUES(42,19,'_menu_item_xfn','');
INSERT INTO fedalawp_postmeta VALUES(43,19,'_menu_item_url','');
INSERT INTO fedalawp_postmeta VALUES(45,20,'_menu_item_type','post_type');
INSERT INTO fedalawp_postmeta VALUES(46,20,'_menu_item_menu_item_parent',0);
INSERT INTO fedalawp_postmeta VALUES(47,20,'_menu_item_object_id',6);
INSERT INTO fedalawp_postmeta VALUES(48,20,'_menu_item_object','page');
INSERT INTO fedalawp_postmeta VALUES(49,20,'_menu_item_target','');
INSERT INTO fedalawp_postmeta VALUES(50,20,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO fedalawp_postmeta VALUES(51,20,'_menu_item_xfn','');
INSERT INTO fedalawp_postmeta VALUES(52,20,'_menu_item_url','');
INSERT INTO fedalawp_postmeta VALUES(54,21,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(55,21,'_edit_lock','1474027241:1');
INSERT INTO fedalawp_postmeta VALUES(56,21,'_wp_page_template','default');
INSERT INTO fedalawp_postmeta VALUES(57,23,'_form','<div class="container">
<div class="row">
<div class="col-md-6">
<label>Type d’événement :
[select* Evnement "Mariage" "Baptême" "Cocktail" "Départ en retraite"]</label>
<label> Date:
[date* date-65 min:2016-09-15 max:2100-09-01]</label>
<label> Votre adresse :
[text* text-514]</label>
<label>Nombre d’invités : 
[text text-616]
</label>
<label> Réception :[radio radio-395 default:1 "Assise" "Debout" "Autre"]
</label>
<label>Type de réception :
[checkbox* checkbox-111 use_label_element "Déjeuner" "Dîner" "Soirée" "Autre"]
</label>
<label>Prestations :[select* menu-275 "Vaisselle" "Mobilier" "Boissons" "Décoration" "Nappage" "Personnel de service"]
</label>
</div>
<div class="col-md-6">
<label> Votre nom
    [text* your-name] </label>
<label> votre email
    [email* your-email] </label>
<label>Téléphone :
[tel* tel-691]
</label>
<label> Sujet
    [text your-subject] </label>
<label>Votre  Message
    [textarea your-message] </label>
[submit "Envoyez"]
</div>
 
</div>
</div>');
INSERT INTO fedalawp_postmeta VALUES(58,23,'_mail','a:8:{s:7:"subject";s:23:"Fedala "[your-subject]"";s:6:"sender";s:25:"[your-name] <wordpress@_>";s:4:"body";s:177:"From: [your-name] <[your-email]>
Subject: [your-subject]

Message Body:
[your-message]

--
This e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)";s:9:"recipient";s:14:"root@127.0.0.1";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}');
INSERT INTO fedalawp_postmeta VALUES(59,23,'_mail_2','a:9:{s:6:"active";b:0;s:7:"subject";s:23:"Fedala "[your-subject]"";s:6:"sender";s:20:"Fedala <wordpress@_>";s:4:"body";s:119:"Message Body:
[your-message]

--
This e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:24:"Reply-To: root@127.0.0.1";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}');
INSERT INTO fedalawp_postmeta VALUES(60,23,'_messages','a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}');
INSERT INTO fedalawp_postmeta VALUES(61,23,'_additional_settings','');
INSERT INTO fedalawp_postmeta VALUES(62,23,'_locale','fr_FR');
INSERT INTO fedalawp_postmeta VALUES(63,23,'_config_errors','a:2:{s:9:"form.body";a:1:{i:0;a:2:{s:4:"code";i:105;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:88:"http://contactform7.com/configuration-errors/#form.body:error_multiple_controls_in_label";}}}s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:78:"http://contactform7.com/configuration-errors/#mail.sender:error_invalid_syntax";}}}}');
INSERT INTO fedalawp_postmeta VALUES(64,25,'_menu_item_type','post_type');
INSERT INTO fedalawp_postmeta VALUES(65,25,'_menu_item_menu_item_parent',0);
INSERT INTO fedalawp_postmeta VALUES(66,25,'_menu_item_object_id',21);
INSERT INTO fedalawp_postmeta VALUES(67,25,'_menu_item_object','page');
INSERT INTO fedalawp_postmeta VALUES(68,25,'_menu_item_target','');
INSERT INTO fedalawp_postmeta VALUES(69,25,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO fedalawp_postmeta VALUES(70,25,'_menu_item_xfn','');
INSERT INTO fedalawp_postmeta VALUES(71,25,'_menu_item_url','');
INSERT INTO fedalawp_postmeta VALUES(73,26,'_menu_item_type','custom');
INSERT INTO fedalawp_postmeta VALUES(74,26,'_menu_item_menu_item_parent',0);
INSERT INTO fedalawp_postmeta VALUES(75,26,'_menu_item_object_id',26);
INSERT INTO fedalawp_postmeta VALUES(76,26,'_menu_item_object','custom');
INSERT INTO fedalawp_postmeta VALUES(77,26,'_menu_item_target','');
INSERT INTO fedalawp_postmeta VALUES(78,26,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO fedalawp_postmeta VALUES(79,26,'_menu_item_xfn','');
INSERT INTO fedalawp_postmeta VALUES(80,26,'_menu_item_url','wp-login.php');
INSERT INTO fedalawp_postmeta VALUES(82,27,'_wp_attached_file','2016/09/accueil-deco.jpg');
INSERT INTO fedalawp_postmeta VALUES(83,27,'_wp_attachment_metadata','a:5:{s:5:"width";i:720;s:6:"height";i:960;s:4:"file";s:24:"2016/09/accueil-deco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"accueil-deco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"accueil-deco-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:24:"accueil-deco-720x410.jpg";s:5:"width";i:720;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:22:"accueil-deco-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(84,28,'_wp_attached_file','2016/09/accueil-parallax-1.jpg');
INSERT INTO fedalawp_postmeta VALUES(85,28,'_wp_attachment_metadata','a:5:{s:5:"width";i:1200;s:6:"height";i:393;s:4:"file";s:30:"2016/09/accueil-parallax-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"accueil-parallax-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"accueil-parallax-1-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"accueil-parallax-1-768x252.jpg";s:5:"width";i:768;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"accueil-parallax-1-1024x335.jpg";s:5:"width";i:1024;s:6:"height";i:335;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:30:"accueil-parallax-1-730x393.jpg";s:5:"width";i:730;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:28:"accueil-parallax-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(86,29,'_wp_attached_file','2016/09/accueil-parallax-2.jpg');
INSERT INTO fedalawp_postmeta VALUES(87,29,'_wp_attachment_metadata','a:5:{s:5:"width";i:1200;s:6:"height";i:400;s:4:"file";s:30:"2016/09/accueil-parallax-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"accueil-parallax-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"accueil-parallax-2-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"accueil-parallax-2-768x256.jpg";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"accueil-parallax-2-1024x341.jpg";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:30:"accueil-parallax-2-730x400.jpg";s:5:"width";i:730;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:28:"accueil-parallax-2-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(88,30,'_wp_attached_file','2016/09/accueil-traiteur.jpg');
INSERT INTO fedalawp_postmeta VALUES(89,30,'_wp_attachment_metadata','a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:28:"2016/09/accueil-traiteur.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"accueil-traiteur-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"accueil-traiteur-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:28:"accueil-traiteur-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:26:"accueil-traiteur-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(90,31,'_wp_attached_file','2016/09/deco-assiette.jpg');
INSERT INTO fedalawp_postmeta VALUES(91,31,'_wp_attachment_metadata','a:5:{s:5:"width";i:460;s:6:"height";i:460;s:4:"file";s:25:"2016/09/deco-assiette.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"deco-assiette-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"deco-assiette-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:25:"deco-assiette-460x410.jpg";s:5:"width";i:460;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:23:"deco-assiette-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(92,32,'_wp_attached_file','2016/09/deco-chaisebleuvert.jpg');
INSERT INTO fedalawp_postmeta VALUES(93,32,'_wp_attachment_metadata','a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:31:"2016/09/deco-chaisebleuvert.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:29:"deco-chaisebleuvert-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(94,33,'_wp_attached_file','2016/09/deco-chandelierrose.jpg');
INSERT INTO fedalawp_postmeta VALUES(95,33,'_wp_attachment_metadata','a:5:{s:5:"width";i:243;s:6:"height";i:364;s:4:"file";s:31:"2016/09/deco-chandelierrose.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"deco-chandelierrose-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"deco-chandelierrose-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:29:"deco-chandelierrose-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:12:"Paulo Santos";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"Paulo Santos";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(96,34,'_wp_attached_file','2016/09/deco-chemintableblanc.jpg');
INSERT INTO fedalawp_postmeta VALUES(97,34,'_wp_attachment_metadata','a:5:{s:5:"width";i:573;s:6:"height";i:441;s:4:"file";s:33:"2016/09/deco-chemintableblanc.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"deco-chemintableblanc-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"deco-chemintableblanc-300x231.jpg";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:33:"deco-chemintableblanc-573x410.jpg";s:5:"width";i:573;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:31:"deco-chemintableblanc-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Picasa";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(98,35,'_wp_attached_file','2016/09/deco-chemintablebleu.jpg');
INSERT INTO fedalawp_postmeta VALUES(99,35,'_wp_attachment_metadata','a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:32:"2016/09/deco-chemintablebleu.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"deco-chemintablebleu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:30:"deco-chemintablebleu-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(100,36,'_wp_attached_file','2016/09/deco-chemintablemauve.jpg');
INSERT INTO fedalawp_postmeta VALUES(101,36,'_wp_attachment_metadata','a:5:{s:5:"width";i:355;s:6:"height";i:355;s:4:"file";s:33:"2016/09/deco-chemintablemauve.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"deco-chemintablemauve-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"deco-chemintablemauve-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:31:"deco-chemintablemauve-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(102,37,'_wp_attached_file','2016/09/deco-couverts.jpg');
INSERT INTO fedalawp_postmeta VALUES(103,37,'_wp_attachment_metadata','a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:25:"2016/09/deco-couverts.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"deco-couverts-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"deco-couverts-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:25:"deco-couverts-500x410.jpg";s:5:"width";i:500;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:23:"deco-couverts-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(104,38,'_wp_attached_file','2016/09/deco-couvertserviette.jpg');
INSERT INTO fedalawp_postmeta VALUES(105,38,'_wp_attachment_metadata','a:5:{s:5:"width";i:480;s:6:"height";i:720;s:4:"file";s:33:"2016/09/deco-couvertserviette.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"deco-couvertserviette-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"deco-couvertserviette-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:33:"deco-couvertserviette-480x410.jpg";s:5:"width";i:480;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:31:"deco-couvertserviette-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(106,39,'_wp_attached_file','2016/09/deco-noeudbleu.jpg');
INSERT INTO fedalawp_postmeta VALUES(107,39,'_wp_attachment_metadata','a:5:{s:5:"width";i:480;s:6:"height";i:480;s:4:"file";s:26:"2016/09/deco-noeudbleu.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"deco-noeudbleu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"deco-noeudbleu-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:26:"deco-noeudbleu-480x410.jpg";s:5:"width";i:480;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:24:"deco-noeudbleu-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(108,40,'_wp_attached_file','2016/09/deco-noeudrouge.jpg');
INSERT INTO fedalawp_postmeta VALUES(109,40,'_wp_attachment_metadata','a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:27:"2016/09/deco-noeudrouge.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"deco-noeudrouge-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"deco-noeudrouge-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:27:"deco-noeudrouge-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:25:"deco-noeudrouge-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(110,41,'_wp_attached_file','2016/09/deco-pergola.jpg');
INSERT INTO fedalawp_postmeta VALUES(111,41,'_wp_attachment_metadata','a:5:{s:5:"width";i:480;s:6:"height";i:480;s:4:"file";s:24:"2016/09/deco-pergola.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"deco-pergola-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"deco-pergola-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:24:"deco-pergola-480x410.jpg";s:5:"width";i:480;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:22:"deco-pergola-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(112,42,'_wp_attached_file','2016/09/deco-tabledoree.jpg');
INSERT INTO fedalawp_postmeta VALUES(113,42,'_wp_attachment_metadata','a:5:{s:5:"width";i:932;s:6:"height";i:600;s:4:"file";s:27:"2016/09/deco-tabledoree.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"deco-tabledoree-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"deco-tabledoree-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"deco-tabledoree-768x494.jpg";s:5:"width";i:768;s:6:"height";i:494;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:27:"deco-tabledoree-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:25:"deco-tabledoree-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(114,43,'_wp_attached_file','2016/09/deco-tablerose.jpg');
INSERT INTO fedalawp_postmeta VALUES(115,43,'_wp_attachment_metadata','a:5:{s:5:"width";i:214;s:6:"height";i:170;s:4:"file";s:26:"2016/09/deco-tablerose.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"deco-tablerose-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:24:"deco-tablerose-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(116,44,'_wp_attached_file','2016/09/deco-vaselong.jpg');
INSERT INTO fedalawp_postmeta VALUES(117,44,'_wp_attachment_metadata','a:5:{s:5:"width";i:960;s:6:"height";i:576;s:4:"file";s:25:"2016/09/deco-vaselong.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"deco-vaselong-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"deco-vaselong-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"deco-vaselong-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:25:"deco-vaselong-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:23:"deco-vaselong-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(118,45,'_wp_attached_file','2016/09/deco-verres.jpg');
INSERT INTO fedalawp_postmeta VALUES(119,45,'_wp_attachment_metadata','a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:23:"2016/09/deco-verres.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"deco-verres-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"deco-verres-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:23:"deco-verres-700x410.jpg";s:5:"width";i:700;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:21:"deco-verres-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(120,46,'_wp_attached_file','2016/09/traiteur-desserts.jpg');
INSERT INTO fedalawp_postmeta VALUES(121,46,'_wp_attachment_metadata','a:5:{s:5:"width";i:450;s:6:"height";i:800;s:4:"file";s:29:"2016/09/traiteur-desserts.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"traiteur-desserts-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"traiteur-desserts-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:29:"traiteur-desserts-450x410.jpg";s:5:"width";i:450;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:27:"traiteur-desserts-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(122,47,'_wp_attached_file','2016/09/traiteur-entrees.jpg');
INSERT INTO fedalawp_postmeta VALUES(123,47,'_wp_attachment_metadata','a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:28:"2016/09/traiteur-entrees.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"traiteur-entrees-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"traiteur-entrees-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:28:"traiteur-entrees-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:26:"traiteur-entrees-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(124,48,'_wp_attached_file','2016/09/traiteur-plats.jpg');
INSERT INTO fedalawp_postmeta VALUES(125,48,'_wp_attachment_metadata','a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:26:"2016/09/traiteur-plats.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"traiteur-plats-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"traiteur-plats-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:26:"traiteur-plats-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:24:"traiteur-plats-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO fedalawp_postmeta VALUES(126,16,'_thumbnail_id',46);
INSERT INTO fedalawp_postmeta VALUES(127,12,'_thumbnail_id',47);
INSERT INTO fedalawp_postmeta VALUES(128,14,'_thumbnail_id',48);
INSERT INTO fedalawp_postmeta VALUES(129,50,'_price',30);
INSERT INTO fedalawp_postmeta VALUES(130,50,'_sku','INT102');
INSERT INTO fedalawp_postmeta VALUES(131,50,'_attribute-label1','Couleur');
INSERT INTO fedalawp_postmeta VALUES(132,50,'_attribute-label2','Taille');
INSERT INTO fedalawp_postmeta VALUES(133,50,'_attribute-label3','Poids');
INSERT INTO fedalawp_postmeta VALUES(134,50,'_attribute1','Blanc');
INSERT INTO fedalawp_postmeta VALUES(135,50,'_attribute2','Grand');
INSERT INTO fedalawp_postmeta VALUES(136,50,'_attribute3',130);
INSERT INTO fedalawp_postmeta VALUES(137,50,'_attribute-unit1','');
INSERT INTO fedalawp_postmeta VALUES(138,50,'_attribute-unit2','');
INSERT INTO fedalawp_postmeta VALUES(139,50,'_attribute-unit3','lbs');
INSERT INTO fedalawp_postmeta VALUES(140,50,'_shipping-label1','UPS');
INSERT INTO fedalawp_postmeta VALUES(141,50,'_shipping1',15);
INSERT INTO fedalawp_postmeta VALUES(142,50,'excerpt','<p>Bienvenue sur la page de test du produit . Ceci est courte description. Il devrait apparaître sur la gauche de l''image du produit et au-dessous du nom du produit . Vous ne devriez pas voir rien entre le nom du produit et une courte description . Aucun auteur , date ou l''heure . Absolument rien. Si il ya quelque chose que vous ne voulez pas voir que vous avez probablement besoin Mode intégration avancée .</p><p><strong>S''il vous plaît, lisez attentivement cette page pour bien comprendre la différence entre les modes simple et avancé et comment la page du produit se présente.</strong></p>');
INSERT INTO fedalawp_postmeta VALUES(143,50,'content','<p>Cette section est la description longue du produit . Elle devrait apparaître sous la table d''attributs . Entre la description courte  et la table d''attributs , vous devriez voir le prix , SKU et les options d''expédition ( peuvent être désactivées ) . Les attributs peuvent également être désactivés .</p><h2>Theme Mode d''Integration de theme avancé</h2><p>With Advanced Mode you will be able to use eCommerce Product Catalog in 100%. The product listing page, category pages, product search and category widget will be enabled in advanced mode. You can enable the Advanced Mode 100% free. To see how please see <a target="_blank" href="https://implecode.com/wordpress/product-catalog/theme-integration-guide/#cam=sample-product-page&key=integration-mode-test">Theme Integration Guide</a></p><p>Le mode avancé fonctionne sur tous les thèmes WordPress par défaut et tous les thèmes ou l''intégration est faite correctement.</p><h2>Mode d''intégration simple de Thème</h2><p>The simple mode allows to use eCommerce Product Catalog most features. You can build the product listing pages and category pages by using a [[show_products]] shortcode. Simple mode uses your theme page layout so it can show unwanted elements on product page. If it does please switch to Advanced Mode and see if it works out of the box.</p><p>Passage en mode avancé donne également des fonctions supplémentaires : inscription automatique du produit , les pages de catégorie , la recherche de produits et la catégorie de widgets . Construire un catalogue de produits en mode avancé prendra beaucoup moins de temps car vous ne devrez  pas utiliser un shortcode pour tout.</p><h2>Comment passer en mode avancé?</h2><p>Click <a href="?test_advanced=1">here</a> to test the Automatic Advanced Mode. If the test goes well you can keep it enabled and enjoy full eCommerce Product Catalog functionality. If the page layout during the test will not be satisfying please see <a target="_blank" href="https://implecode.com/wordpress/product-catalog/theme-integration-guide/#cam=sample-product-page&key=integration-mode-test">Theme Integration Guide</a></p><p>Le guide d''intégration de thème va vous montrer un processus étape par étape. Si vous le terminez avec succès, l''intégration se fera. Il est recommandé d''utiliser guide d''intégration de thème, même si la page semble être bonne en mode simple ou en mode avancée automatique car elle assure l''intégrité à 100% du thème.</p><h2>Fin de la description du produit</h2><p>En dessous de la description du produit, vous ne devriez rien voir en dehors du retour aux URL produits et Mode Advancé test qui ne n''apparaîtra pas sur vos pages de produits. Lorsque vous utilisez le mode avancé,  des produits connexes apparaîtront.</p><p>Thank you for choosing eCommerce Product Catalog. If you have any questions or comments please use <a target="_blank" href="https://wordpress.org/support/plugin/ecommerce-product-catalog">plugin support forum</a>.</p>');
INSERT INTO fedalawp_postmeta VALUES(144,50,'_wp_trash_meta_status','publish');
INSERT INTO fedalawp_postmeta VALUES(145,50,'_wp_trash_meta_time',1474036928);
INSERT INTO fedalawp_postmeta VALUES(146,50,'_wp_desired_post_slug','page-dexemple-de-produit');
INSERT INTO fedalawp_postmeta VALUES(147,51,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(148,51,'_edit_lock','1474037330:1');
INSERT INTO fedalawp_postmeta VALUES(149,51,'_thumbnail_id',45);
INSERT INTO fedalawp_postmeta VALUES(150,51,'excerpt','Nos verres sont transparents.');
INSERT INTO fedalawp_postmeta VALUES(151,51,'content','Louez nos beaux verres transparents !');
INSERT INTO fedalawp_postmeta VALUES(152,51,'_price',5);
INSERT INTO fedalawp_postmeta VALUES(153,51,'_attribute-label1','');
INSERT INTO fedalawp_postmeta VALUES(154,51,'_attribute1','');
INSERT INTO fedalawp_postmeta VALUES(155,51,'_attribute-unit1','');
INSERT INTO fedalawp_postmeta VALUES(156,51,'_attribute-label2','');
INSERT INTO fedalawp_postmeta VALUES(157,51,'_attribute2','');
INSERT INTO fedalawp_postmeta VALUES(158,51,'_attribute-unit2','');
INSERT INTO fedalawp_postmeta VALUES(159,51,'_attribute-label3','');
INSERT INTO fedalawp_postmeta VALUES(160,51,'_attribute3','');
INSERT INTO fedalawp_postmeta VALUES(161,51,'_attribute-unit3','');
INSERT INTO fedalawp_postmeta VALUES(162,51,'_shipping1','');
INSERT INTO fedalawp_postmeta VALUES(163,51,'_shipping-label1','');
INSERT INTO fedalawp_postmeta VALUES(164,51,'_sku','');
INSERT INTO fedalawp_postmeta VALUES(165,52,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(166,52,'_edit_lock','1474037410:1');
INSERT INTO fedalawp_postmeta VALUES(167,52,'_thumbnail_id',37);
INSERT INTO fedalawp_postmeta VALUES(168,52,'excerpt','Nos couverts sont propres.');
INSERT INTO fedalawp_postmeta VALUES(169,52,'content','Louez nos beaux couverts propres !');
INSERT INTO fedalawp_postmeta VALUES(170,52,'_price','');
INSERT INTO fedalawp_postmeta VALUES(171,52,'_attribute-label1','');
INSERT INTO fedalawp_postmeta VALUES(172,52,'_attribute1','');
INSERT INTO fedalawp_postmeta VALUES(173,52,'_attribute-unit1','');
INSERT INTO fedalawp_postmeta VALUES(174,52,'_attribute-label2','');
INSERT INTO fedalawp_postmeta VALUES(175,52,'_attribute2','');
INSERT INTO fedalawp_postmeta VALUES(176,52,'_attribute-unit2','');
INSERT INTO fedalawp_postmeta VALUES(177,52,'_attribute-label3','');
INSERT INTO fedalawp_postmeta VALUES(178,52,'_attribute3','');
INSERT INTO fedalawp_postmeta VALUES(179,52,'_attribute-unit3','');
INSERT INTO fedalawp_postmeta VALUES(180,52,'_shipping1','');
INSERT INTO fedalawp_postmeta VALUES(181,52,'_shipping-label1','');
INSERT INTO fedalawp_postmeta VALUES(182,52,'_sku','');
INSERT INTO fedalawp_postmeta VALUES(183,53,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(184,53,'_edit_lock','1474037463:1');
INSERT INTO fedalawp_postmeta VALUES(185,53,'_thumbnail_id',31);
INSERT INTO fedalawp_postmeta VALUES(186,53,'excerpt','Nos assiettes sont blanches.');
INSERT INTO fedalawp_postmeta VALUES(187,53,'content','Louez nos belles assiettes propres !');
INSERT INTO fedalawp_postmeta VALUES(188,53,'_price',5);
INSERT INTO fedalawp_postmeta VALUES(189,53,'_attribute-label1','');
INSERT INTO fedalawp_postmeta VALUES(190,53,'_attribute1','');
INSERT INTO fedalawp_postmeta VALUES(191,53,'_attribute-unit1','');
INSERT INTO fedalawp_postmeta VALUES(192,53,'_attribute-label2','');
INSERT INTO fedalawp_postmeta VALUES(193,53,'_attribute2','');
INSERT INTO fedalawp_postmeta VALUES(194,53,'_attribute-unit2','');
INSERT INTO fedalawp_postmeta VALUES(195,53,'_attribute-label3','');
INSERT INTO fedalawp_postmeta VALUES(196,53,'_attribute3','');
INSERT INTO fedalawp_postmeta VALUES(197,53,'_attribute-unit3','');
INSERT INTO fedalawp_postmeta VALUES(198,53,'_shipping1','');
INSERT INTO fedalawp_postmeta VALUES(199,53,'_shipping-label1','');
INSERT INTO fedalawp_postmeta VALUES(200,53,'_sku','');
INSERT INTO fedalawp_postmeta VALUES(201,54,'_edit_last',1);
INSERT INTO fedalawp_postmeta VALUES(202,54,'_edit_lock','1474037585:1');
INSERT INTO fedalawp_postmeta VALUES(203,54,'_thumbnail_id',39);
INSERT INTO fedalawp_postmeta VALUES(204,54,'excerpt','Nos noeuds de chaises bleu sont colorés.');
INSERT INTO fedalawp_postmeta VALUES(205,54,'content','Louez nos beaux noeuds de chaises bleu colorés !');
INSERT INTO fedalawp_postmeta VALUES(206,54,'_price',5);
INSERT INTO fedalawp_postmeta VALUES(207,54,'_attribute-label1','');
INSERT INTO fedalawp_postmeta VALUES(208,54,'_attribute1','');
INSERT INTO fedalawp_postmeta VALUES(209,54,'_attribute-unit1','');
INSERT INTO fedalawp_postmeta VALUES(210,54,'_attribute-label2','');
INSERT INTO fedalawp_postmeta VALUES(211,54,'_attribute2','');
INSERT INTO fedalawp_postmeta VALUES(212,54,'_attribute-unit2','');
INSERT INTO fedalawp_postmeta VALUES(213,54,'_attribute-label3','');
INSERT INTO fedalawp_postmeta VALUES(214,54,'_attribute3','');
INSERT INTO fedalawp_postmeta VALUES(215,54,'_attribute-unit3','');
INSERT INTO fedalawp_postmeta VALUES(216,54,'_shipping1','');
INSERT INTO fedalawp_postmeta VALUES(217,54,'_shipping-label1','');
INSERT INTO fedalawp_postmeta VALUES(218,54,'_sku','');
INSERT INTO fedalawp_postmeta VALUES(219,49,'_wp_trash_meta_status','publish');
INSERT INTO fedalawp_postmeta VALUES(220,49,'_wp_trash_meta_time',1474037734);
INSERT INTO fedalawp_postmeta VALUES(221,49,'_wp_desired_post_slug','products');

INSERT INTO fedalawp_posts VALUES(1,1,'2016-09-16 13:44:26','2016-09-16 11:44:26','Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!','Bonjour tout le monde&nbsp;!','','trash','open','open','','bonjour-tout-le-monde__trashed','','','2016-09-16 13:50:06','2016-09-16 11:50:06','',0,'http://localhost/wordpress-fedala/?p=1',0,'post','',1);
INSERT INTO fedalawp_posts VALUES(2,1,'2016-09-16 13:44:26','2016-09-16 11:44:26','Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :

<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>

...ou bien quelque chose comme ça :

<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>

Étant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/wordpress-fedala/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !','Page d&rsquo;exemple','','trash','closed','open','','page-d-exemple__trashed','','','2016-09-16 13:50:12','2016-09-16 11:50:12','',0,'http://localhost/wordpress-fedala/?page_id=2',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(3,1,'2016-09-16 13:45:33','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2016-09-16 13:45:33','0000-00-00 00:00:00','',0,'http://localhost/wordpress-fedala/?p=3',0,'post','',0);
INSERT INTO fedalawp_posts VALUES(4,1,'2016-09-16 13:50:06','2016-09-16 11:50:06','Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!','Bonjour tout le monde&nbsp;!','','inherit','closed','closed','','1-revision-v1','','','2016-09-16 13:50:06','2016-09-16 11:50:06','',1,'http://localhost/wordpress-fedala/?p=4',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(5,1,'2016-09-16 13:50:12','2016-09-16 11:50:12','Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :

<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>

...ou bien quelque chose comme ça :

<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>

Étant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/wordpress-fedala/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !','Page d&rsquo;exemple','','inherit','closed','closed','','2-revision-v1','','','2016-09-16 13:50:12','2016-09-16 11:50:12','',2,'http://localhost/wordpress-fedala/?p=5',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(6,1,'2016-09-16 13:52:56','2016-09-16 11:52:56','','Accueil','','publish','closed','closed','','accueil','','','2016-09-16 13:52:56','2016-09-16 11:52:56','',0,'http://localhost/wordpress-fedala/?page_id=6',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(7,1,'2016-09-16 13:52:56','2016-09-16 11:52:56','','Accueil','','inherit','closed','closed','','6-revision-v1','','','2016-09-16 13:52:56','2016-09-16 11:52:56','',6,'http://localhost/wordpress-fedala/?p=7',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(8,1,'2016-09-16 13:54:19','2016-09-16 11:54:19','[show_categories]','Décoration','','publish','closed','closed','','decoration','','','2016-09-16 16:55:49','2016-09-16 14:55:49','',0,'http://localhost/wordpress-fedala/?page_id=8',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(9,1,'2016-09-16 13:54:19','2016-09-16 11:54:19','','Décoration','','inherit','closed','closed','','8-revision-v1','','','2016-09-16 13:54:19','2016-09-16 11:54:19','',8,'http://localhost/wordpress-fedala/?p=9',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(10,1,'2016-09-16 13:54:32','2016-09-16 11:54:32','','Traiteur','','publish','closed','closed','','traiteur','','','2016-09-16 13:54:32','2016-09-16 11:54:32','',0,'http://localhost/wordpress-fedala/?page_id=10',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(11,1,'2016-09-16 13:54:32','2016-09-16 11:54:32','','Traiteur','','inherit','closed','closed','','10-revision-v1','','','2016-09-16 13:54:32','2016-09-16 11:54:32','',10,'http://localhost/wordpress-fedala/?p=11',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(12,1,'2016-09-16 13:55:08','2016-09-16 11:55:08','entrée 01 - 5,00 €

entrée 02 - 5,00 €

entrée 03 - 5,00 €','Entrées','','publish','closed','closed','','entrees','','','2016-09-16 14:15:41','2016-09-16 12:15:41','',10,'http://localhost/wordpress-fedala/?page_id=12',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(13,1,'2016-09-16 13:55:08','2016-09-16 11:55:08','entrée 01 - 5,00 €

entrée 02 - 5,00 €

entrée 03 - 5,00 €','Entrées','','inherit','closed','closed','','12-revision-v1','','','2016-09-16 13:55:08','2016-09-16 11:55:08','',12,'http://localhost/wordpress-fedala/?p=13',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(14,1,'2016-09-16 13:55:30','2016-09-16 11:55:30','plat 01 - 5,00 €

plat 02 - 5,00 €

plat 03 - 5,00 €','Plats','','publish','closed','closed','','plats','','','2016-09-16 14:15:51','2016-09-16 12:15:51','',10,'http://localhost/wordpress-fedala/?page_id=14',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(15,1,'2016-09-16 13:55:30','2016-09-16 11:55:30','plat 01 - 5,00 €

plat 02 - 5,00 €

plat 03 - 5,00 €','Plats','','inherit','closed','closed','','14-revision-v1','','','2016-09-16 13:55:30','2016-09-16 11:55:30','',14,'http://localhost/wordpress-fedala/?p=15',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(16,1,'2016-09-16 13:55:49','2016-09-16 11:55:49','dessert 01 - 5,00 €

dessert 02 - 5,00 €

dessert 03 - 5,00 €','Desserts','','publish','closed','closed','','desserts','','','2016-09-16 14:15:23','2016-09-16 12:15:23','',10,'http://localhost/wordpress-fedala/?page_id=16',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(17,1,'2016-09-16 13:55:49','2016-09-16 11:55:49','dessert 01 - 5,00 €

dessert 02 - 5,00 €

dessert 03 - 5,00 €','Desserts','','inherit','closed','closed','','16-revision-v1','','','2016-09-16 13:55:49','2016-09-16 11:55:49','',16,'http://localhost/wordpress-fedala/?p=17',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(18,1,'2016-09-16 13:56:31','2016-09-16 11:56:31',' ','','','publish','closed','closed','',18,'','','2016-09-16 14:03:38','2016-09-16 12:03:38','',0,'http://localhost/wordpress-fedala/?p=18',3,'nav_menu_item','',0);
INSERT INTO fedalawp_posts VALUES(19,1,'2016-09-16 13:56:30','2016-09-16 11:56:30',' ','','','publish','closed','closed','',19,'','','2016-09-16 14:03:37','2016-09-16 12:03:37','',0,'http://localhost/wordpress-fedala/?p=19',2,'nav_menu_item','',0);
INSERT INTO fedalawp_posts VALUES(20,1,'2016-09-16 13:56:30','2016-09-16 11:56:30',' ','','','publish','closed','closed','',20,'','','2016-09-16 14:03:37','2016-09-16 12:03:37','',0,'http://localhost/wordpress-fedala/?p=20',1,'nav_menu_item','',0);
INSERT INTO fedalawp_posts VALUES(21,1,'2016-09-16 13:57:04','2016-09-16 11:57:04','[contact-form-7 id="23" title="Contact form 1"]','Contact','','publish','closed','closed','','contact','','','2016-09-16 14:02:27','2016-09-16 12:02:27','',0,'http://localhost/wordpress-fedala/?page_id=21',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(22,1,'2016-09-16 13:57:04','2016-09-16 11:57:04','','Contact','','inherit','closed','closed','','21-revision-v1','','','2016-09-16 13:57:04','2016-09-16 11:57:04','',21,'http://localhost/wordpress-fedala/?p=22',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(23,1,'2016-09-16 14:00:11','2016-09-16 12:00:11','<div class="container">
<div class="row">
<div class="col-md-6">
<label>Type d’événement :
[select* Evnement "Mariage" "Baptême" "Cocktail" "Départ en retraite"]</label>
<label> Date:
[date* date-65 min:2016-09-15 max:2100-09-01]</label>
<label> Votre adresse :
[text* text-514]</label>
<label>Nombre d’invités : 
[text text-616]
</label>
<label> Réception :[radio radio-395 default:1 "Assise" "Debout" "Autre"]
</label>
<label>Type de réception :
[checkbox* checkbox-111 use_label_element "Déjeuner" "Dîner" "Soirée" "Autre"]
</label>
<label>Prestations :[select* menu-275 "Vaisselle" "Mobilier" "Boissons" "Décoration" "Nappage" "Personnel de service"]
</label>
</div>
<div class="col-md-6">
<label> Votre nom
    [text* your-name] </label>
<label> votre email
    [email* your-email] </label>
<label>Téléphone :
[tel* tel-691]
</label>
<label> Sujet
    [text your-subject] </label>
<label>Votre  Message
    [textarea your-message] </label>
[submit "Envoyez"]
</div>
 
</div>
</div>
Fedala "[your-subject]"
[your-name] <wordpress@_>
From: [your-name] <[your-email]>
Subject: [your-subject]

Message Body:
[your-message]

--
This e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)
root@127.0.0.1
Reply-To: [your-email]




Fedala "[your-subject]"
Fedala <wordpress@_>
Message Body:
[your-message]

--
This e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)
[your-email]
Reply-To: root@127.0.0.1



Thank you for your message. It has been sent.
There was an error trying to send your message. Please try again later.
One or more fields have an error. Please check and try again.
There was an error trying to send your message. Please try again later.
You must accept the terms and conditions before sending your message.
The field is required.
The field is too long.
The field is too short.
The date format is incorrect.
The date is before the earliest one allowed.
The date is after the latest one allowed.
There was an unknown error uploading the file.
You are not allowed to upload files of this type.
The file is too big.
There was an error uploading the file.
The number format is invalid.
The number is smaller than the minimum allowed.
The number is larger than the maximum allowed.
The answer to the quiz is incorrect.
Your entered code is incorrect.
The e-mail address entered is invalid.
The URL is invalid.
The telephone number is invalid.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2016-09-16 14:02:12','2016-09-16 12:02:12','',0,'http://localhost/wordpress-fedala/?post_type=wpcf7_contact_form&#038;p=23',0,'wpcf7_contact_form','',0);
INSERT INTO fedalawp_posts VALUES(24,1,'2016-09-16 14:02:27','2016-09-16 12:02:27','[contact-form-7 id="23" title="Contact form 1"]','Contact','','inherit','closed','closed','','21-revision-v1','','','2016-09-16 14:02:27','2016-09-16 12:02:27','',21,'http://localhost/wordpress-fedala/?p=24',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(25,1,'2016-09-16 14:03:38','2016-09-16 12:03:38',' ','','','publish','closed','closed','',25,'','','2016-09-16 14:03:38','2016-09-16 12:03:38','',0,'http://localhost/wordpress-fedala/?p=25',4,'nav_menu_item','',0);
INSERT INTO fedalawp_posts VALUES(26,1,'2016-09-16 14:03:39','2016-09-16 12:03:39','','Connexion','','publish','closed','closed','','connexion','','','2016-09-16 14:03:39','2016-09-16 12:03:39','',0,'http://localhost/wordpress-fedala/?p=26',5,'nav_menu_item','',0);
INSERT INTO fedalawp_posts VALUES(27,1,'2016-09-16 12:14:08','2016-09-16 12:14:08','','accueil-deco','','inherit','open','closed','','accueil-deco','','','2016-09-16 12:14:08','2016-09-16 12:14:08','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-deco.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(28,1,'2016-09-16 12:14:08','2016-09-16 12:14:08','','accueil-parallax-1','','inherit','open','closed','','accueil-parallax-1','','','2016-09-16 12:14:08','2016-09-16 12:14:08','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-parallax-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(29,1,'2016-09-16 12:14:09','2016-09-16 12:14:09','','accueil-parallax-2','','inherit','open','closed','','accueil-parallax-2','','','2016-09-16 12:14:09','2016-09-16 12:14:09','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-parallax-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(30,1,'2016-09-16 12:14:09','2016-09-16 12:14:09','','accueil-traiteur','','inherit','open','closed','','accueil-traiteur','','','2016-09-16 12:14:09','2016-09-16 12:14:09','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-traiteur.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(31,1,'2016-09-16 12:14:10','2016-09-16 12:14:10','','deco-assiette','','inherit','open','closed','','deco-assiette','','','2016-09-16 12:14:10','2016-09-16 12:14:10','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-assiette.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(32,1,'2016-09-16 12:14:10','2016-09-16 12:14:10','','deco-chaisebleuvert','','inherit','open','closed','','deco-chaisebleuvert','','','2016-09-16 12:14:10','2016-09-16 12:14:10','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chaisebleuvert.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(33,1,'2016-09-16 12:14:11','2016-09-16 12:14:11','','deco-chandelierrose','','inherit','open','closed','','deco-chandelierrose','','','2016-09-16 12:14:11','2016-09-16 12:14:11','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chandelierrose.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(34,1,'2016-09-16 12:14:11','2016-09-16 12:14:11','','deco-chemintableblanc','','inherit','open','closed','','deco-chemintableblanc','','','2016-09-16 12:14:11','2016-09-16 12:14:11','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chemintableblanc.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(35,1,'2016-09-16 12:14:12','2016-09-16 12:14:12','','deco-chemintablebleu','','inherit','open','closed','','deco-chemintablebleu','','','2016-09-16 12:14:12','2016-09-16 12:14:12','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chemintablebleu.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(36,1,'2016-09-16 12:14:12','2016-09-16 12:14:12','','deco-chemintablemauve','','inherit','open','closed','','deco-chemintablemauve','','','2016-09-16 12:14:12','2016-09-16 12:14:12','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chemintablemauve.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(37,1,'2016-09-16 12:14:13','2016-09-16 12:14:13','','deco-couverts','','inherit','open','closed','','deco-couverts','','','2016-09-16 12:14:13','2016-09-16 12:14:13','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-couverts.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(38,1,'2016-09-16 12:14:13','2016-09-16 12:14:13','','deco-couvertserviette','','inherit','open','closed','','deco-couvertserviette','','','2016-09-16 12:14:13','2016-09-16 12:14:13','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-couvertserviette.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(39,1,'2016-09-16 12:14:14','2016-09-16 12:14:14','','deco-noeudbleu','','inherit','open','closed','','deco-noeudbleu','','','2016-09-16 12:14:14','2016-09-16 12:14:14','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-noeudbleu.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(40,1,'2016-09-16 12:14:14','2016-09-16 12:14:14','','deco-noeudrouge','','inherit','open','closed','','deco-noeudrouge','','','2016-09-16 12:14:14','2016-09-16 12:14:14','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-noeudrouge.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(41,1,'2016-09-16 12:14:14','2016-09-16 12:14:14','','deco-pergola','','inherit','open','closed','','deco-pergola','','','2016-09-16 12:14:14','2016-09-16 12:14:14','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-pergola.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(42,1,'2016-09-16 12:14:15','2016-09-16 12:14:15','','deco-tabledoree','','inherit','open','closed','','deco-tabledoree','','','2016-09-16 12:14:15','2016-09-16 12:14:15','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-tabledoree.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(43,1,'2016-09-16 12:14:15','2016-09-16 12:14:15','','deco-tablerose','','inherit','open','closed','','deco-tablerose','','','2016-09-16 12:14:15','2016-09-16 12:14:15','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-tablerose.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(44,1,'2016-09-16 12:14:16','2016-09-16 12:14:16','','deco-vaselong','','inherit','open','closed','','deco-vaselong','','','2016-09-16 12:14:16','2016-09-16 12:14:16','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-vaselong.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(45,1,'2016-09-16 12:14:16','2016-09-16 12:14:16','','deco-verres','','inherit','open','closed','','deco-verres','','','2016-09-16 12:14:16','2016-09-16 12:14:16','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-verres.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(46,1,'2016-09-16 12:14:17','2016-09-16 12:14:17','','traiteur-desserts','','inherit','open','closed','','traiteur-desserts','','','2016-09-16 12:14:17','2016-09-16 12:14:17','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/traiteur-desserts.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(47,1,'2016-09-16 12:14:17','2016-09-16 12:14:17','','traiteur-entrees','','inherit','open','closed','','traiteur-entrees','','','2016-09-16 12:14:17','2016-09-16 12:14:17','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/traiteur-entrees.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(48,1,'2016-09-16 12:14:18','2016-09-16 12:14:18','','traiteur-plats','','inherit','open','closed','','traiteur-plats','','','2016-09-16 12:14:18','2016-09-16 12:14:18','',0,'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/traiteur-plats.jpg',0,'attachment','image/jpeg',0);
INSERT INTO fedalawp_posts VALUES(49,1,'2016-09-16 16:40:49','2016-09-16 14:40:49','','Products','','trash','closed','closed','','products__trashed','','','2016-09-16 16:55:34','2016-09-16 14:55:34','',0,'http://localhost/wordpress-fedala/?page_id=49',0,'page','',0);
INSERT INTO fedalawp_posts VALUES(50,1,'2016-09-16 16:40:55','2016-09-16 14:40:55','','Page d’exemple de produit','','trash','closed','closed','','page-dexemple-de-produit__trashed','','','2016-09-16 16:42:08','2016-09-16 14:42:08','',0,'http://localhost/wordpress-fedala/?product=page-dexemple-de-produit',0,'al_product','',0);
INSERT INTO fedalawp_posts VALUES(51,1,'2016-09-16 16:42:49','2016-09-16 14:42:49','Louez nos beaux verres transparents !','Verres','Nos verres sont transparents.','publish','closed','closed','','verres','','','2016-09-16 16:51:11','2016-09-16 14:51:11','',0,'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=51',0,'al_product','',0);
INSERT INTO fedalawp_posts VALUES(52,1,'2016-09-16 16:52:08','2016-09-16 14:52:08','Louez nos beaux couverts propres !','Couverts','Nos couverts sont propres.','publish','closed','closed','','couverts','','','2016-09-16 16:52:31','2016-09-16 14:52:31','',0,'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=52',0,'al_product','',0);
INSERT INTO fedalawp_posts VALUES(53,1,'2016-09-16 16:53:23','2016-09-16 14:53:23','Louez nos belles assiettes propres !','Assiettes','Nos assiettes sont blanches.','publish','closed','closed','','assiettes','','','2016-09-16 16:53:23','2016-09-16 14:53:23','',0,'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=53',0,'al_product','',0);
INSERT INTO fedalawp_posts VALUES(54,1,'2016-09-16 16:55:25','2016-09-16 14:55:25','Louez nos beaux noeuds de chaises bleu colorés !','Noeud de chaise bleu','Nos noeuds de chaises bleu sont colorés.','publish','closed','closed','','noeud-de-chaise-bleu','','','2016-09-16 16:55:25','2016-09-16 14:55:25','',0,'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=54',0,'al_product','',0);
INSERT INTO fedalawp_posts VALUES(55,1,'2016-09-16 16:55:34','2016-09-16 14:55:34','','Products','','inherit','closed','closed','','49-revision-v1','','','2016-09-16 16:55:34','2016-09-16 14:55:34','',49,'http://localhost/wordpress-fedala/?p=55',0,'revision','',0);
INSERT INTO fedalawp_posts VALUES(56,1,'2016-09-16 16:55:49','2016-09-16 14:55:49','[show_categories]','Décoration','','inherit','closed','closed','','8-revision-v1','','','2016-09-16 16:55:49','2016-09-16 14:55:49','',8,'http://localhost/wordpress-fedala/?p=56',0,'revision','',0);
INSERT INTO fedalawp_term_relationships VALUES(1,1,0);
INSERT INTO fedalawp_term_relationships VALUES(20,2,0);
INSERT INTO fedalawp_term_relationships VALUES(19,2,0);
INSERT INTO fedalawp_term_relationships VALUES(18,2,0);
INSERT INTO fedalawp_term_relationships VALUES(25,2,0);
INSERT INTO fedalawp_term_relationships VALUES(26,2,0);
INSERT INTO fedalawp_term_relationships VALUES(51,3,0);
INSERT INTO fedalawp_term_relationships VALUES(52,3,0);
INSERT INTO fedalawp_term_relationships VALUES(53,3,0);
INSERT INTO fedalawp_term_relationships VALUES(54,4,0);
INSERT INTO fedalawp_term_taxonomy VALUES(1,1,'category','',0,0);
INSERT INTO fedalawp_term_taxonomy VALUES(2,2,'nav_menu','',0,5);
INSERT INTO fedalawp_term_taxonomy VALUES(3,3,'al_product-cat','Louez notre belle vaisselle !',0,3);
INSERT INTO fedalawp_term_taxonomy VALUES(4,4,'al_product-cat','Louez nos magnifiques articles de décoration !',0,1);
INSERT INTO fedalawp_terms VALUES(1,'Non classé','non-classe',0);
INSERT INTO fedalawp_terms VALUES(2,'navbar-top','navbar-top',0);
INSERT INTO fedalawp_terms VALUES(3,'Vaisselle','vaisselle',0);
INSERT INTO fedalawp_terms VALUES(4,'Décoration','decoration',0);
INSERT INTO fedalawp_usermeta VALUES(1,1,'nickname','fedala');
INSERT INTO fedalawp_usermeta VALUES(2,1,'first_name','');
INSERT INTO fedalawp_usermeta VALUES(3,1,'last_name','');
INSERT INTO fedalawp_usermeta VALUES(4,1,'description','');
INSERT INTO fedalawp_usermeta VALUES(5,1,'rich_editing','true');
INSERT INTO fedalawp_usermeta VALUES(6,1,'comment_shortcuts','false');
INSERT INTO fedalawp_usermeta VALUES(7,1,'admin_color','fresh');
INSERT INTO fedalawp_usermeta VALUES(8,1,'use_ssl',0);
INSERT INTO fedalawp_usermeta VALUES(9,1,'show_admin_bar_front','true');
INSERT INTO fedalawp_usermeta VALUES(10,1,'fedalawp_capabilities','a:1:{s:13:"administrator";b:1;}');
INSERT INTO fedalawp_usermeta VALUES(11,1,'fedalawp_user_level',10);
INSERT INTO fedalawp_usermeta VALUES(12,1,'dismissed_wp_pointers','');
INSERT INTO fedalawp_usermeta VALUES(13,1,'show_welcome_panel',1);
INSERT INTO fedalawp_usermeta VALUES(14,1,'session_tokens','a:2:{s:64:"21269efa57c1e08167851ed87c64ba9a2bdec15f1084fa0152811e1978d79afe";a:4:{s:10:"expiration";i:1475235932;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474026332;}s:64:"db7065529244d3a58b2af544b6fef90105ad1bd53803b21ca7fd560ebd003a16";a:4:{s:10:"expiration";i:1474209639;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474036839;}}');
INSERT INTO fedalawp_usermeta VALUES(15,1,'fedalawp_dashboard_quick_press_last_post_id',3);
INSERT INTO fedalawp_usermeta VALUES(16,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}');
INSERT INTO fedalawp_usermeta VALUES(17,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}');
INSERT INTO fedalawp_usermeta VALUES(18,1,'nav_menu_recently_edited',2);
INSERT INTO fedalawp_usermeta VALUES(19,1,'fedalawp_user-settings','libraryContent=browse');
INSERT INTO fedalawp_usermeta VALUES(20,1,'fedalawp_user-settings-time',1474028119);
INSERT INTO fedalawp_users VALUES(1,'fedala','$P$B3iUAWlCLNnvGcpD3BqtnzJFBhCfJe/','fedala','root@127.0.0.1','','2016-09-16 11:44:24','',0,'fedala');