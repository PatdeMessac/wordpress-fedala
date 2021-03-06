-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
<<<<<<< HEAD
-- Généré le :  Ven 23 Septembre 2016 à 13:43
-- Version du serveur :  5.7.13-0ubuntu0.16.04.2
=======
-- Généré le :  Ven 23 Septembre 2016 à 11:52
-- Version du serveur :  10.0.27-MariaDB-0ubuntu0.16.04.1
>>>>>>> d6aeab2c933058ccde32876caeb1b267aa35cf79
-- Version de PHP :  7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fedala`
--

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_commentmeta`
--

CREATE TABLE `fedalawp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_comments`
--

CREATE TABLE `fedalawp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_links`
--

CREATE TABLE `fedalawp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_options`
--

CREATE TABLE `fedalawp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_bin NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_options`
--

INSERT INTO `fedalawp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress-fedala', 'yes'),
(2, 'home', 'http://localhost/wordpress-fedala', 'yes'),
(3, 'blogname', 'Fedala', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'root@127.0.0.1', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G h i mi\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G h i mi\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:35:"add-from-server/add-from-server.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";i:3;s:27:"text-slider/text-slider.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'prestro', 'yes'),
(41, 'stylesheet', 'prestro', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'fedalawp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:76:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"publish_products";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:21:"edit_private_products";b:1;s:15:"delete_products";b:1;s:22:"delete_others_products";b:1;s:21:"read_private_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:23:"edit_published_products";b:1;s:25:"manage_product_categories";b:1;s:23:"edit_product_categories";b:1;s:25:"delete_product_categories";b:1;s:25:"assign_product_categories";b:1;s:23:"manage_product_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"contact-widget";N;s:15:"footer-widget-1";N;s:15:"footer-widget-2";N;s:15:"footer-widget-3";N;s:15:"footer-widget-4";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1474631078;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1474631132;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1474631566;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(116, '_site_transient_timeout_browser_cad6a976fb71c45b22c81157d1534d3b', '1474631133', 'no'),
(117, '_site_transient_browser_cad6a976fb71c45b22c81157d1534d3b', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"48.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(132, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1474026553;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(133, 'current_theme', 'prestro-bis', 'yes'),
(134, 'theme_mods_prestro', 'a:4:{i:0;b:0;s:8:"logo-img";s:0:"";s:15:"welcome_setting";i:6;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(135, 'theme_switched', '', 'yes'),
(136, 'widget_prestro_tabbed_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(140, 'recently_activated', 'a:1:{s:40:"ultimate-product-catalogue/UPCP_Main.php";i:1474027709;}', 'yes'),
(141, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1474034412;s:7:"version";s:3:"4.5";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(142, 'UPCP_Currency_Symbol_Location', 'Before', 'yes'),
(143, 'UPCP_Price_Filter', 'No', 'yes'),
(144, 'UPCP_Sale_Mode', 'Individual', 'yes'),
(145, 'UPCP_Product_Sort', 'Price_Name', 'yes'),
(146, 'UPCP_Product_Search', 'name', 'yes'),
(147, 'UPCP_Custom_Product_Page', 'No', 'yes'),
(148, 'UPCP_Sidebar_Order', 'Normal', 'yes'),
(149, 'UPCP_Apply_Contents_Filter', 'Yes', 'yes'),
(150, 'UPCP_Maintain_Filtering', 'Yes', 'yes'),
(151, 'UPCP_Thumbnail_Support', 'No', 'yes'),
(152, 'UPCP_Show_Category_Descriptions', 'No', 'yes'),
(153, 'UPCP_Show_Catalogue_Information', 'None', 'yes'),
(154, 'UPCP_Display_Category_Image', 'No', 'yes'),
(155, 'UPCP_Display_SubCategory_Image', 'No', 'yes'),
(156, 'UPCP_Overview_Mode', 'None', 'yes'),
(157, 'UPCP_Inner_Filter', 'No', 'yes'),
(158, 'UPCP_Product_Comparison', 'No', 'yes'),
(159, 'UPCP_Product_Inquiry_Form', 'No', 'yes'),
(160, 'UPCP_Product_Inquiry_Cart', 'No', 'yes'),
(161, 'UPCP_Product_Reviews', 'No', 'yes'),
(162, 'UPCP_Catalog_Display_Reviews', 'No', 'yes'),
(163, 'UPCP_Lightbox', 'No', 'yes'),
(164, 'UPCP_Lightbox_Mode', 'No', 'yes'),
(165, 'UPCP_Products_Per_Page', '1000000', 'yes'),
(166, 'UPCP_Pagination_Location', 'Top', 'yes'),
(167, 'UPCP_CF_Conversion', 'No', 'yes'),
(168, 'UPCP_Access_Role', 'administrator', 'yes'),
(169, 'UPCP_PP_Grid_Width', '90', 'yes'),
(170, 'UPCP_PP_Grid_Height', '35', 'yes'),
(171, 'UPCP_Top_Bottom_Padding', '10', 'yes'),
(172, 'UPCP_Left_Right_Padding', '10', 'yes'),
(173, 'UPCP_SEO_Option', 'None', 'yes'),
(174, 'UPCP_SEO_Integration', 'Add', 'yes'),
(175, 'UPCP_SEO_Title', '[page-title] | [product-name]', 'yes'),
(176, 'UPCP_Update_Breadcrumbs', 'No', 'yes'),
(177, 'UPCP_Details_Icon_Type', 'Default', 'yes'),
(178, 'UPCP_Pagination_Background', 'None', 'yes'),
(179, 'UPCP_Pagination_Border', 'none', 'yes'),
(180, 'UPCP_Pagination_Shadow', 'shadow-none', 'yes'),
(181, 'UPCP_Pagination_Gradient', 'gradient-none', 'yes'),
(182, 'UPCP_Pagination_Font', 'none', 'yes'),
(183, 'UPCP_Sidebar_Title_Collapse', 'no', 'yes'),
(184, 'UPCP_Sidebar_Start_Collapsed', 'no', 'yes'),
(185, 'UPCP_Sidebar_Title_Hover', 'none', 'yes'),
(186, 'UPCP_Sidebar_Checkbox_Style', 'none', 'yes'),
(187, 'UPCP_DB_Version', '3.10.0a', 'yes'),
(188, 'UPCP_Full_Version', 'No', 'yes'),
(189, 'UPCP_Color_Scheme', 'Blue', 'yes'),
(190, 'UPCP_Product_Links', 'Same', 'yes'),
(191, 'UPCP_Tag_Logic', 'AND', 'yes'),
(192, 'UPCP_Read_More', 'Yes', 'yes'),
(193, 'UPCP_Pretty_Links', 'No', 'yes'),
(194, 'UPCP_Mobile_SS', 'No', 'yes'),
(195, 'UPCP_Install_Flag', 'Yes', 'yes'),
(196, 'UPCP_First_Install_Version', '3.6', 'yes'),
(197, 'UPCP_Desc_Chars', '240', 'yes'),
(198, 'UPCP_Case_Insensitive_Search', 'Yes', 'yes'),
(199, 'UPCP_Run_Tutorial', 'Yes', 'yes'),
(200, 'plugin_error', '', 'yes'),
(201, 'widget_upcp_product_list_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(202, 'widget_upcp_random_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(203, 'widget_upcp_recent_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(204, 'widget_upcp_search_bar_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(205, 'text_slider_choices', 'a:1:{s:5:"fonts";a:15:{i:0;s:4:"None";i:1;s:32:"Arial,Arial,Helvetica,sans-serif";i:2;s:45:"\'Arial Black\',\'Arial Black\',Gadget,sans-serif";i:3;s:39:"\'Comic Sans MS\',\'Comic Sans MS\',cursive";i:4;s:45:"\'Courier New\',\'Courier New\',Courier,monospace";i:5;s:21:"Georgia,Georgia,serif";i:6;s:26:"Impact,Charcoal,sans-serif";i:7;s:33:"\'Lucida Console\',Monaco,monospace";i:8;s:48:"\'Lucida Sans Unicode\',\'Lucida Grande\',sans-serif";i:9;s:49:"\'Palatino Linotype\',\'Book Antiqua\',Palatino,serif";i:10;s:24:"Tahoma,Geneva,sans-serif";i:11;s:29:"\'Times New Roman\',Times,serif";i:12;s:35:"\'Trebuchet MS\',Helvetica,sans-serif";i:13;s:25:"Verdana,Geneva,sans-serif";i:14;s:29:"\'Gill Sans\',Geneva,sans-serif";}}', 'yes'),
(206, 'text_slider_admin_notices', 'a:0:{}', 'yes'),
(207, 'text_slider_settings', 'a:1:{i:0;a:18:{s:9:"multi_key";s:1:"0";s:11:"text_slides";a:2:{i:0;a:2:{s:9:"main_text";s:21:"Ici un témoignage…";s:8:"sub_text";s:9:"anonyme01";}i:1;a:2:{s:9:"main_text";s:28:"Là un autre témoignage !";s:8:"sub_text";s:9:"anonyme02";}}s:5:"delay";s:1:"9";s:8:"duration";s:1:"1";s:14:"defined_height";s:0:"";s:10:"custom_css";s:0:"";s:19:"maintext_fontfamily";s:32:"Arial,Arial,Helvetica,sans-serif";s:17:"maintext_fontsize";s:2:"90";s:19:"maintext_fontweight";s:3:"400";s:14:"maintext_color";s:7:"#ffffff";s:18:"subtext_fontfamily";s:29:"\'Times New Roman\',Times,serif";s:16:"subtext_fontsize";s:2:"60";s:18:"subtext_fontweight";s:3:"400";s:13:"subtext_color";s:7:"#eeeeee";s:12:"use_font_css";i:0;s:10:"icon_color";s:7:"#eeeeee";s:16:"icon_hover_color";s:7:"#eeeeee";s:13:"icon_fontsize";s:2:"86";}}', 'yes'),
(208, '_transient_timeout_settings_errors', '1474036917', 'no'),
(209, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(210, 'frmsvr_last_folder', '/home/pcapprenant12/fedala/wordpress/wp-content/add-from-server', 'yes'),
(211, 'first_activation_version', '2.5.20', 'yes'),
(212, 'ecommerce_product_catalog_ver', '2.5.20', 'yes'),
(213, 'product_archive_page_id', '49', 'yes'),
(214, '_site_transient_timeout_implecode_hide_plugin_review_info', '1474641650', 'no'),
(215, '_site_transient_implecode_hide_plugin_review_info', '1', 'no'),
(216, 'implecode_hide_plugin_review_info_count', '2', 'yes'),
(217, 'archive_multiple_settings', 'a:16:{s:16:"integration_type";s:8:"advanced";s:15:"container_width";s:3:"100";s:12:"container_bg";s:0:"";s:17:"container_padding";s:1:"0";s:15:"default_sidebar";s:4:"none";s:16:"catalog_singular";s:7:"Product";s:14:"catalog_plural";s:8:"Products";s:22:"archive_products_limit";s:2:"10";s:20:"product_listing_cats";s:2:"on";s:13:"product_order";s:6:"newest";s:17:"category_top_cats";s:2:"on";s:12:"cat_template";s:8:"template";s:7:"related";s:8:"products";s:9:"seo_title";s:0:"";s:13:"seo_title_sep";s:1:"1";s:17:"breadcrumbs_title";s:0:"";}', 'yes'),
(218, 'al_permalink_options_update', 'none', 'yes'),
(219, 'widget_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(220, 'widget_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(221, 'widget_product_category_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(222, 'widget_product_sort_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(223, 'widget_related_products_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(224, 'sample_product_id', '50', 'yes'),
(226, 'al_product-attributes_children', 'a:0:{}', 'yes'),
(227, 'product_currency_settings', 'a:6:{s:12:"price_enable";s:2:"on";s:13:"custom_symbol";s:3:"€";s:12:"price_format";s:5:"after";s:11:"price_space";s:3:"off";s:6:"th_sep";s:1:",";s:7:"dec_sep";s:1:".";}', 'yes'),
(228, 'multi_single_options', 'a:3:{s:22:"enable_product_gallery";i:1;s:8:"template";s:5:"boxed";s:38:"enable_product_gallery_only_when_exist";s:0:"";}', 'yes'),
(229, 'product_adder_theme_support_check', 'prestro', 'yes'),
(230, 'product_listing_url', '', 'yes'),
(231, 'product_currency', 'EUR', 'yes'),
(232, 'product_archive', '49', 'yes'),
(233, 'enable_product_listing', '1', 'yes'),
(234, 'al_product_cat_image_3', '37', 'yes'),
(237, 'al_product_cat_image_4', '40', 'yes'),
(546, 'category_children', 'a:0:{}', 'yes'),
(556, 'hide_empty_bar_message', '1', 'yes'),
(576, '_site_transient_timeout_theme_roots', '1474618172', 'no'),
(577, '_site_transient_theme_roots', 'a:1:{s:7:"prestro";s:7:"/themes";}', 'no'),
(578, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1474616378;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:07:58";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(579, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1474616384;s:7:"checked";a:1:{s:7:"prestro";s:5:"1.1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(580, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1474616381;s:8:"response";a:0:{}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.5";s:7:"updated";s:19:"2016-08-09 12:25:19";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.5/fr_FR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:13:"wordpress-seo";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"3.5";s:7:"updated";s:19:"2016-09-07 22:40:13";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/wordpress-seo/3.5/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:10:{s:35:"add-from-server/add-from-server.php";O:8:"stdClass":6:{s:2:"id";s:4:"2613";s:4:"slug";s:15:"add-from-server";s:6:"plugin";s:35:"add-from-server/add-from-server.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:46:"https://wordpress.org/plugins/add-from-server/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/add-from-server.3.3.2.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.zip";}s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";O:8:"stdClass":6:{s:2:"id";s:5:"47397";s:4:"slug";s:25:"ecommerce-product-catalog";s:6:"plugin";s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";s:11:"new_version";s:6:"2.5.20";s:3:"url";s:56:"https://wordpress.org/plugins/ecommerce-product-catalog/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/ecommerce-product-catalog.zip";}s:41:"sqlite-integration/sqlite-integration.php";O:8:"stdClass":6:{s:2:"id";s:5:"42039";s:4:"slug";s:18:"sqlite-integration";s:6:"plugin";s:41:"sqlite-integration/sqlite-integration.php";s:11:"new_version";s:5:"1.8.1";s:3:"url";s:49:"https://wordpress.org/plugins/sqlite-integration/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/sqlite-integration.1.8.1.zip";}s:27:"text-slider/text-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"50035";s:4:"slug";s:11:"text-slider";s:6:"plugin";s:27:"text-slider/text-slider.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:42:"https://wordpress.org/plugins/text-slider/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/text-slider.zip";}s:24:"users-ultra/xoousers.php";O:8:"stdClass":6:{s:2:"id";s:5:"49626";s:4:"slug";s:11:"users-ultra";s:6:"plugin";s:24:"users-ultra/xoousers.php";s:11:"new_version";s:6:"1.5.87";s:3:"url";s:42:"https://wordpress.org/plugins/users-ultra/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/users-ultra.zip";}s:45:"wp-content-copy-protector/preventer-index.php";O:8:"stdClass":6:{s:2:"id";s:5:"47133";s:4:"slug";s:25:"wp-content-copy-protector";s:6:"plugin";s:45:"wp-content-copy-protector/preventer-index.php";s:11:"new_version";s:7:"1.5.0.5";s:3:"url";s:56:"https://wordpress.org/plugins/wp-content-copy-protector/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/wp-content-copy-protector.zip";}s:35:"wp-pdf-generator/wp_objects_pdf.php";O:8:"stdClass":6:{s:2:"id";s:5:"57017";s:4:"slug";s:16:"wp-pdf-generator";s:6:"plugin";s:35:"wp-pdf-generator/wp_objects_pdf.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:47:"https://wordpress.org/plugins/wp-pdf-generator/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-pdf-generator.zip";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.8.zip";s:14:"upgrade_notice";s:38:"Removed malware URL in a code comment.";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.3.5.zip";}}}', 'no'),
(581, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1474659662', 'no');
INSERT INTO `fedalawp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(582, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Sep 2016 07:22:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"Un nouveau site pour WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:44:"https://wpfr.net/nouveau-site-wpfr/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Sep 2016 07:59:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1566674";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1747:"<p>Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui porté\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/nouveau-site-wpfr/">Un nouveau site pour WordPress Francophone</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5e8SDCecxmc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/nouveau-site-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"19";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"https://wpfr.net/nouveau-site-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/gVGKhQeZUVA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/nouvelles-wpfr/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2016 13:09:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562931";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1676:"<p>Le 21 décembre dernier nous avions le plaisir de vous faire partager des informations à propos du renouveau de l&#8217;association WordPress Francophone. Ces derniers mois ont été l&#8217;occasion de tout remettre à plat et nous souhaitions vous donner des nouvelles sur les différents chantiers en cours. C&#8217;est également le moment de faire appel à la\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/nouvelles-wpfr/">Des nouvelles de WPFR</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/gVGKhQeZUVA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:37:"https://wpfr.net/nouvelles-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:32:"https://wpfr.net/nouvelles-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/F12flxi-44w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/volontaires-chantiers-site-forum/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:07:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562923";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1658:"<p>Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions ! Les participants ont reçu les indications pour nous rejoindre sur le slack de\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/volontaires-chantiers-site-forum/">En route vers le nouveau site !</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/F12flxi-44w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpfr.net/volontaires-chantiers-site-forum/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/volontaires-chantiers-site-forum/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"Rencontre avec Jenny Beaumont à propos des WordCamp Europe 2016 et 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/2XGXo5--k90/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Jun 2016 13:05:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562840";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1733:"<p>Bonjour Jenny, rappelles-nous qui tu es en quelques mots et plus précisément quelle est ton implication au sein de la communauté WordPress ? Je travaille dans et autour du web depuis 1998, époque qui coincide avec mon arrivée en France (des États-unis). J’avais commencé par monter une agence de création de sites avec deux collègues,\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/">Rencontre avec Jenny Beaumont à propos des WordCamp Europe 2016 et 2017</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/2XGXo5--k90" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Un logo pour l’association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/cEo2U8QD2SE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/logo-lassociation-wpfr/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2016 12:52:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562643";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1717:"<p>Bonjour à tous ! C&#8217;est l&#8217;heure des vacances pour certains et le moment de vous donner des nouvelles de l&#8217;évolution des chantiers de l&#8217;association. Le mois dernier nous avions constitué des groupes de travail pour s&#8217;attaquer à la refonte du site. Lors des premiers échanges, nous avons relevé que l&#8217;association WPFR n&#8217;avait pas de logo\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/logo-lassociation-wpfr/">Un logo pour l&rsquo;association WPFR</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/cEo2U8QD2SE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/logo-lassociation-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/logo-lassociation-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress, Yahoo et les autres …";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/yJpv_mr9BZQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wordpress-yahoo-et-les-autres/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2005 13:00:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=59";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1700:"<p>Yahoo qui propose désormais un service d&#8217;hébergement, s&#8217;est associé à WordPress pour compléter son offre. En effet Yahoo propose WordPress comme outils de Blog. N&#8217;ayant pas pu tester ce service je vous renvoie sur les pages qui lui sont consacrées. Sur le site officiel de WordPress. sur le site de Yahoo Small Business. Par ailleurs\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/wordpress-yahoo-et-les-autres/">WordPress, Yahoo et les autres &#8230;</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/yJpv_mr9BZQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Damino";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/wordpress-yahoo-et-les-autres/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wordpress-yahoo-et-les-autres/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"WP2 naitra dans un monde moins Libre ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/z7HUvGWmQxI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2005 11:26:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2005/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1697:"<p>La blogosphère bruisse d&#8217;une rumeur persistante : WP2 va sortir dans quelques jours (la semaine à venir). Je sais que le très actif BenKenobi (retrouvez le sur le forum) à déjà pas mal fait le tour de la question que cette deuxième version en détaillant les nouvelles fonctionnalités. Nous écrira t-il quelquechose de plus épais\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/">WP2 naitra dans un monde moins Libre ?</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/z7HUvGWmQxI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"WordPress chez les Helvètes, et en Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/6aodNwnlWuE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Nov 2005 14:13:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=47";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1740:"<p>Ce n&#8217;est pas sans une émotion toute lacrymale que j&#8217;écris ce petit billet, pour vous annoncer deux excellentes nouvelles. Tout d&#8217;abord, la blogosphère wordpressienne francophone (à lire très vite) s&#8217;est agrandie récemment, sous la forme de WordPress.ch, qui a reçu sa première fessée, et donc poussé son premier et rassurant cri de nouveau né, pas\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/">WordPress chez les Helvètes, et en Beta 2</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/6aodNwnlWuE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Xavier Borderie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"14";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress 2 BETA 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/0QLk4sv5hgg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/wordpress-2-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Nov 2005 08:42:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:52:"http://www.wordpress-fr.net/2005/wordpress-2-beta-1/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1393:"<p>La version BETA 1 de WordPress 2 vient d&#8217;être lâchée dans la nature Essayez la et dites nous ce que vous en pensez. Si vous avez un compte WP.com vous n&#8217;allez pas être dépaysé. Via Lunacy Unleashed</p>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/wordpress-2-beta-1/">WordPress 2 BETA 1</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/0QLk4sv5hgg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpfr.net/wordpress-2-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:36:"https://wpfr.net/wordpress-2-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Damned (un truc&amp;astuce en passant)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/-y9nIySAPJA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:33:"https://wpfr.net/damned/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Nov 2005 15:45:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"Thèmes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.wordpress-fr.net/2005/damned/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1621:"<p>Un de mes neveux (10 ans) : Qu&#8217;est ce que tu fais ? Moi : Tu te souviens hier quand je t&#8217;ai expliqué comment marchait wordpress, les plugins, les thèmes etc..? Lui : oui Moi : Hé bien là je cherche un plugin efficace qui, une fois activé, coupe l&#8217;accès au blog avec un message\n<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div>\n<p>Cet article <a rel="nofollow" href="https://wpfr.net/damned/">Damned (un truc&#038;astuce en passant)</a> est apparu en premier sur <a rel="nofollow" href="https://wpfr.net">WPFR</a>.</p><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/-y9nIySAPJA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wpfr.net/damned/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:24:"https://wpfr.net/damned/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"ZuEMEVdhBh1v1ysJSKCMc8V2UAo";s:13:"last-modified";s:29:"Fri, 23 Sep 2016 07:32:40 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Fri, 23 Sep 2016 07:41:02 GMT";s:7:"expires";s:29:"Fri, 23 Sep 2016 07:41:02 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}}s:5:"build";s:14:"20160916122957";}', 'no'),
(583, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1474659662', 'no'),
(584, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1474616462', 'no'),
(585, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1474659666', 'no');
INSERT INTO `fedalawp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(586, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Sep 2016 07:33:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Secure your website with the Wordfence security plugin for WordPress.  Wordfence provides free enterprise-class WordPress security, protecting your we";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 23 Sep 2016 07:41:06 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Fri, 09 Mar 2007 23:17:57 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20160916122957";}', 'no'),
(587, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1474659666', 'no'),
(588, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1474616466', 'no'),
(589, '_transient_timeout_plugin_slugs', '1474702866', 'no'),
(590, '_transient_plugin_slugs', 'a:10:{i:0;s:35:"add-from-server/add-from-server.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:55:"ecommerce-product-catalog/ecommerce-product-catalog.php";i:3;s:41:"sqlite-integration/sqlite-integration.php";i:4;s:27:"text-slider/text-slider.php";i:5;s:24:"users-ultra/xoousers.php";i:6;s:45:"wp-content-copy-protector/preventer-index.php";i:7;s:35:"wp-pdf-generator/wp_objects_pdf.php";i:8;s:27:"wp-super-cache/wp-cache.php";i:9;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(591, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1474659666', 'no'),
(592, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/\'>Un nouveau site pour WordPress Francophone</a> <span class="rss-date">15 septembre 2016</span><div class="rssSummary">Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui porté [&hellip;]</div></li></ul></div><div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> A feed could not be found at http://feeds.feedburner.com/wordpress-fr/RaoY. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Extensions populaires :</span> Google Analytics Dashboard for WP&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=130f37d0e1&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Installer Google Analytics Dashboard for WP">(Installer)</a></li></ul></div>', 'no'),
(593, 'al_product_cat_image_5', '177', 'yes'),
(594, 'al_product-cat_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_postmeta`
--

CREATE TABLE `fedalawp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_postmeta`
--

INSERT INTO `fedalawp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1474026606'),
(4, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1474026612'),
(8, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1474026637:1'),
(11, 6, '_wp_page_template', 'page-templates/acceuil.php'),
(12, 8, '_edit_last', '1'),
(13, 8, '_edit_lock', '1474617366:1'),
(14, 8, '_wp_page_template', 'default'),
(15, 10, '_edit_last', '1'),
(16, 10, '_edit_lock', '1474625621:1'),
(17, 10, '_wp_page_template', 'page-templates/traiteur.php'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1474622935:1'),
(20, 12, '_wp_page_template', 'default'),
(21, 14, '_edit_last', '1'),
(22, 14, '_edit_lock', '1474623422:1'),
(23, 14, '_wp_page_template', 'default'),
(24, 16, '_edit_last', '1'),
(25, 16, '_edit_lock', '1474623767:1'),
(26, 16, '_wp_page_template', 'default'),
(27, 18, '_menu_item_type', 'post_type'),
(28, 18, '_menu_item_menu_item_parent', '0'),
(29, 18, '_menu_item_object_id', '10'),
(30, 18, '_menu_item_object', 'page'),
(31, 18, '_menu_item_target', ''),
(32, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 18, '_menu_item_xfn', ''),
(34, 18, '_menu_item_url', ''),
(36, 19, '_menu_item_type', 'post_type'),
(37, 19, '_menu_item_menu_item_parent', '0'),
(38, 19, '_menu_item_object_id', '8'),
(39, 19, '_menu_item_object', 'page'),
(40, 19, '_menu_item_target', ''),
(41, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 19, '_menu_item_xfn', ''),
(43, 19, '_menu_item_url', ''),
(45, 20, '_menu_item_type', 'post_type'),
(46, 20, '_menu_item_menu_item_parent', '0'),
(47, 20, '_menu_item_object_id', '6'),
(48, 20, '_menu_item_object', 'page'),
(49, 20, '_menu_item_target', ''),
(50, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 20, '_menu_item_xfn', ''),
(52, 20, '_menu_item_url', ''),
(54, 21, '_edit_last', '1'),
(55, 21, '_edit_lock', '1474468199:1'),
(56, 21, '_wp_page_template', 'default'),
(57, 23, '_form', '<div class="row" style=" background: #DDD">\n<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">\n<label>Type d’événement :\n[select* Evnement "Mariage" "Baptême" "Cocktail" "Départ en retraite"]</label>\n<label> Date:\n[date* date-65 min:2016-09-15 max:2100-09-01 placeholder "Exemple: aaaa-mm-jj"]</label>\n\n<label> Votre adresse :\n[text* text-514]</label>\n\n<label>Nombre d’invités : \n[number number-339 min:5 max:500]\n</label>\n<label> Réception :\n<label>[radio radio-395 default:1 "Assise"]</label><label>[radio radio-395 default:1 "Debout"]</label>\n\n</label>\n<label>Type de réception :\n<label>[checkbox* checkbox-111 use_label_element "Déjeuner"]</label>\n<label>[checkbox* checkbox-111 use_label_element "Dîner"]</label>\n<label>[checkbox* checkbox-111 use_label_element "Soirée"]</label>\n</label>\n<label>Prestations :\n<label>[checkbox* checkbox-111 use_label_element "Vaisselle"]</label> <label>[checkbox* checkbox-111 use_label_element  "Mobilier"]</label>\n\n<label>[checkbox* checkbox-111 use_label_element "Boissons"]</label> <label>[checkbox* checkbox-111 use_label_element "Décoration"]</label>\n\n<label>[checkbox* checkbox-111 use_label_element  "Nappage"]</label><label>[checkbox* checkbox-111 use_label_element "Personnel de service"]</label>\n\n</label>\n</div>\n<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">\n\n<label> Votre nom\n\n    [text* your-name] </label>\n\n<label> votre email:\n    [email* your-email] </label>\n\n<label>Téléphone :\n[tel* tel-691]\n</label>\n\n<label> Sujet:\n    [text your-subject] </label>\n\n<label>Votre  Message:\n\n    [textarea your-message] </label>\n\n[submit "Envoyez"]\n</div>\n \n</div>'),
(58, 23, '_mail', 'a:8:{s:7:"subject";s:23:"Fedala "[your-subject]"";s:6:"sender";s:40:"[your-name]<abdulrahman.rasho@gmail.com>";s:4:"body";s:177:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)";s:9:"recipient";s:27:"abdulrahman.rasho@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(59, 23, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:23:"Fedala "[your-subject]"";s:6:"sender";s:20:"Fedala <wordpress@_>";s:4:"body";s:119:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:24:"Reply-To: root@127.0.0.1";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(60, 23, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(61, 23, '_additional_settings', ''),
(62, 23, '_locale', 'fr_FR'),
(64, 25, '_menu_item_type', 'post_type'),
(65, 25, '_menu_item_menu_item_parent', '0'),
(66, 25, '_menu_item_object_id', '21'),
(67, 25, '_menu_item_object', 'page'),
(68, 25, '_menu_item_target', ''),
(69, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 25, '_menu_item_xfn', ''),
(71, 25, '_menu_item_url', ''),
(73, 26, '_menu_item_type', 'custom'),
(74, 26, '_menu_item_menu_item_parent', '0'),
(75, 26, '_menu_item_object_id', '26'),
(76, 26, '_menu_item_object', 'custom'),
(77, 26, '_menu_item_target', ''),
(78, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 26, '_menu_item_xfn', ''),
(80, 26, '_menu_item_url', 'wp-login.php'),
(82, 27, '_wp_attached_file', '2016/09/accueil-deco.jpg'),
(83, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:960;s:4:"file";s:24:"2016/09/accueil-deco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"accueil-deco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"accueil-deco-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:24:"accueil-deco-720x410.jpg";s:5:"width";i:720;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:22:"accueil-deco-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(84, 28, '_wp_attached_file', '2016/09/accueil-parallax-1.jpg'),
(85, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:393;s:4:"file";s:30:"2016/09/accueil-parallax-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"accueil-parallax-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"accueil-parallax-1-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"accueil-parallax-1-768x252.jpg";s:5:"width";i:768;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"accueil-parallax-1-1024x335.jpg";s:5:"width";i:1024;s:6:"height";i:335;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:30:"accueil-parallax-1-730x393.jpg";s:5:"width";i:730;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:28:"accueil-parallax-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(86, 29, '_wp_attached_file', '2016/09/accueil-parallax-2.jpg'),
(87, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:400;s:4:"file";s:30:"2016/09/accueil-parallax-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"accueil-parallax-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"accueil-parallax-2-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"accueil-parallax-2-768x256.jpg";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"accueil-parallax-2-1024x341.jpg";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:30:"accueil-parallax-2-730x400.jpg";s:5:"width";i:730;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:28:"accueil-parallax-2-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(88, 30, '_wp_attached_file', '2016/09/accueil-traiteur.jpg'),
(89, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:28:"2016/09/accueil-traiteur.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"accueil-traiteur-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"accueil-traiteur-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:28:"accueil-traiteur-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:26:"accueil-traiteur-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 31, '_wp_attached_file', '2016/09/deco-assiette.jpg'),
(91, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:460;s:6:"height";i:460;s:4:"file";s:25:"2016/09/deco-assiette.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"deco-assiette-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"deco-assiette-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:25:"deco-assiette-460x410.jpg";s:5:"width";i:460;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:23:"deco-assiette-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 32, '_wp_attached_file', '2016/09/deco-chaisebleuvert.jpg'),
(93, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:31:"2016/09/deco-chaisebleuvert.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:31:"deco-chaisebleuvert-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:29:"deco-chaisebleuvert-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 33, '_wp_attached_file', '2016/09/deco-chandelierrose.jpg'),
(95, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:243;s:6:"height";i:364;s:4:"file";s:31:"2016/09/deco-chandelierrose.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"deco-chandelierrose-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"deco-chandelierrose-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:29:"deco-chandelierrose-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:12:"Paulo Santos";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"Paulo Santos";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 34, '_wp_attached_file', '2016/09/deco-chemintableblanc.jpg'),
(97, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:573;s:6:"height";i:441;s:4:"file";s:33:"2016/09/deco-chemintableblanc.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"deco-chemintableblanc-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"deco-chemintableblanc-300x231.jpg";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:33:"deco-chemintableblanc-573x410.jpg";s:5:"width";i:573;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:31:"deco-chemintableblanc-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Picasa";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 35, '_wp_attached_file', '2016/09/deco-chemintablebleu.jpg'),
(99, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:32:"2016/09/deco-chemintablebleu.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"deco-chemintablebleu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:30:"deco-chemintablebleu-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 36, '_wp_attached_file', '2016/09/deco-chemintablemauve.jpg'),
(101, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:355;s:6:"height";i:355;s:4:"file";s:33:"2016/09/deco-chemintablemauve.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"deco-chemintablemauve-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"deco-chemintablemauve-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:31:"deco-chemintablemauve-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 37, '_wp_attached_file', '2016/09/deco-couverts.jpg'),
(103, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:25:"2016/09/deco-couverts.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"deco-couverts-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"deco-couverts-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:25:"deco-couverts-500x410.jpg";s:5:"width";i:500;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:23:"deco-couverts-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 38, '_wp_attached_file', '2016/09/deco-couvertserviette.jpg'),
(105, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:720;s:4:"file";s:33:"2016/09/deco-couvertserviette.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"deco-couvertserviette-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"deco-couvertserviette-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:33:"deco-couvertserviette-480x410.jpg";s:5:"width";i:480;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:31:"deco-couvertserviette-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 39, '_wp_attached_file', '2016/09/deco-noeudbleu.jpg'),
(107, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:480;s:4:"file";s:26:"2016/09/deco-noeudbleu.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"deco-noeudbleu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"deco-noeudbleu-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:26:"deco-noeudbleu-480x410.jpg";s:5:"width";i:480;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:24:"deco-noeudbleu-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 40, '_wp_attached_file', '2016/09/deco-noeudrouge.jpg'),
(109, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:27:"2016/09/deco-noeudrouge.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"deco-noeudrouge-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"deco-noeudrouge-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:27:"deco-noeudrouge-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:25:"deco-noeudrouge-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 41, '_wp_attached_file', '2016/09/deco-pergola.jpg'),
(111, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:480;s:4:"file";s:24:"2016/09/deco-pergola.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"deco-pergola-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"deco-pergola-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:24:"deco-pergola-480x410.jpg";s:5:"width";i:480;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:22:"deco-pergola-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 42, '_wp_attached_file', '2016/09/deco-tabledoree.jpg'),
(113, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:600;s:4:"file";s:27:"2016/09/deco-tabledoree.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"deco-tabledoree-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"deco-tabledoree-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"deco-tabledoree-768x494.jpg";s:5:"width";i:768;s:6:"height";i:494;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:27:"deco-tabledoree-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:25:"deco-tabledoree-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(114, 43, '_wp_attached_file', '2016/09/deco-tablerose.jpg'),
(115, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:170;s:4:"file";s:26:"2016/09/deco-tablerose.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"deco-tablerose-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:24:"deco-tablerose-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(116, 44, '_wp_attached_file', '2016/09/deco-vaselong.jpg'),
(117, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:576;s:4:"file";s:25:"2016/09/deco-vaselong.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"deco-vaselong-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"deco-vaselong-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"deco-vaselong-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:25:"deco-vaselong-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:23:"deco-vaselong-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 45, '_wp_attached_file', '2016/09/deco-verres.jpg'),
(119, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:23:"2016/09/deco-verres.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"deco-verres-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"deco-verres-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:23:"deco-verres-700x410.jpg";s:5:"width";i:700;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:21:"deco-verres-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(120, 46, '_wp_attached_file', '2016/09/traiteur-desserts.jpg'),
(121, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:800;s:4:"file";s:29:"2016/09/traiteur-desserts.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"traiteur-desserts-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"traiteur-desserts-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:29:"traiteur-desserts-450x410.jpg";s:5:"width";i:450;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:27:"traiteur-desserts-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(122, 47, '_wp_attached_file', '2016/09/traiteur-entrees.jpg'),
(123, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:28:"2016/09/traiteur-entrees.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"traiteur-entrees-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"traiteur-entrees-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:28:"traiteur-entrees-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:26:"traiteur-entrees-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 48, '_wp_attached_file', '2016/09/traiteur-plats.jpg'),
(125, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:26:"2016/09/traiteur-plats.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"traiteur-plats-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"traiteur-plats-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:26:"traiteur-plats-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:24:"traiteur-plats-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 16, '_thumbnail_id', '46'),
(127, 12, '_thumbnail_id', '47'),
(128, 14, '_thumbnail_id', '48'),
(129, 50, '_price', '30'),
(130, 50, '_sku', 'INT102'),
(131, 50, '_attribute-label1', 'Couleur'),
(132, 50, '_attribute-label2', 'Taille'),
(133, 50, '_attribute-label3', 'Poids'),
(134, 50, '_attribute1', 'Blanc'),
(135, 50, '_attribute2', 'Grand'),
(136, 50, '_attribute3', '130'),
(137, 50, '_attribute-unit1', ''),
(138, 50, '_attribute-unit2', ''),
(139, 50, '_attribute-unit3', 'lbs'),
(140, 50, '_shipping-label1', 'UPS'),
(141, 50, '_shipping1', '15'),
(142, 50, 'excerpt', '<p>Bienvenue sur la page de test du produit . Ceci est courte description. Il devrait apparaître sur la gauche de l\'image du produit et au-dessous du nom du produit . Vous ne devriez pas voir rien entre le nom du produit et une courte description . Aucun auteur , date ou l\'heure . Absolument rien. Si il ya quelque chose que vous ne voulez pas voir que vous avez probablement besoin Mode intégration avancée .</p><p><strong>S\'il vous plaît, lisez attentivement cette page pour bien comprendre la différence entre les modes simple et avancé et comment la page du produit se présente.</strong></p>'),
(143, 50, 'content', '<p>Cette section est la description longue du produit . Elle devrait apparaître sous la table d\'attributs . Entre la description courte  et la table d\'attributs , vous devriez voir le prix , SKU et les options d\'expédition ( peuvent être désactivées ) . Les attributs peuvent également être désactivés .</p><h2>Theme Mode d\'Integration de theme avancé</h2><p>With Advanced Mode you will be able to use eCommerce Product Catalog in 100%. The product listing page, category pages, product search and category widget will be enabled in advanced mode. You can enable the Advanced Mode 100% free. To see how please see <a target="_blank" href="https://implecode.com/wordpress/product-catalog/theme-integration-guide/#cam=sample-product-page&key=integration-mode-test">Theme Integration Guide</a></p><p>Le mode avancé fonctionne sur tous les thèmes WordPress par défaut et tous les thèmes ou l\'intégration est faite correctement.</p><h2>Mode d\'intégration simple de Thème</h2><p>The simple mode allows to use eCommerce Product Catalog most features. You can build the product listing pages and category pages by using a [[show_products]] shortcode. Simple mode uses your theme page layout so it can show unwanted elements on product page. If it does please switch to Advanced Mode and see if it works out of the box.</p><p>Passage en mode avancé donne également des fonctions supplémentaires : inscription automatique du produit , les pages de catégorie , la recherche de produits et la catégorie de widgets . Construire un catalogue de produits en mode avancé prendra beaucoup moins de temps car vous ne devrez  pas utiliser un shortcode pour tout.</p><h2>Comment passer en mode avancé?</h2><p>Click <a href="?test_advanced=1">here</a> to test the Automatic Advanced Mode. If the test goes well you can keep it enabled and enjoy full eCommerce Product Catalog functionality. If the page layout during the test will not be satisfying please see <a target="_blank" href="https://implecode.com/wordpress/product-catalog/theme-integration-guide/#cam=sample-product-page&key=integration-mode-test">Theme Integration Guide</a></p><p>Le guide d\'intégration de thème va vous montrer un processus étape par étape. Si vous le terminez avec succès, l\'intégration se fera. Il est recommandé d\'utiliser guide d\'intégration de thème, même si la page semble être bonne en mode simple ou en mode avancée automatique car elle assure l\'intégrité à 100% du thème.</p><h2>Fin de la description du produit</h2><p>En dessous de la description du produit, vous ne devriez rien voir en dehors du retour aux URL produits et Mode Advancé test qui ne n\'apparaîtra pas sur vos pages de produits. Lorsque vous utilisez le mode avancé,  des produits connexes apparaîtront.</p><p>Thank you for choosing eCommerce Product Catalog. If you have any questions or comments please use <a target="_blank" href="https://wordpress.org/support/plugin/ecommerce-product-catalog">plugin support forum</a>.</p>'),
(144, 50, '_wp_trash_meta_status', 'publish'),
(145, 50, '_wp_trash_meta_time', '1474036928'),
(146, 50, '_wp_desired_post_slug', 'page-dexemple-de-produit'),
(147, 51, '_edit_last', '1'),
(148, 51, '_edit_lock', '1474037330:1'),
(149, 51, '_thumbnail_id', '45'),
(150, 51, 'excerpt', 'Nos verres sont transparents.'),
(151, 51, 'content', 'Louez nos beaux verres transparents !'),
(152, 51, '_price', '5'),
(153, 51, '_attribute-label1', ''),
(154, 51, '_attribute1', ''),
(155, 51, '_attribute-unit1', ''),
(156, 51, '_attribute-label2', ''),
(157, 51, '_attribute2', ''),
(158, 51, '_attribute-unit2', ''),
(159, 51, '_attribute-label3', ''),
(160, 51, '_attribute3', ''),
(161, 51, '_attribute-unit3', ''),
(162, 51, '_shipping1', ''),
(163, 51, '_shipping-label1', ''),
(164, 51, '_sku', ''),
(165, 52, '_edit_last', '1'),
(166, 52, '_edit_lock', '1474037410:1'),
(167, 52, '_thumbnail_id', '37'),
(168, 52, 'excerpt', 'Nos couverts sont propres.'),
(169, 52, 'content', 'Louez nos beaux couverts propres !'),
(170, 52, '_price', ''),
(171, 52, '_attribute-label1', ''),
(172, 52, '_attribute1', ''),
(173, 52, '_attribute-unit1', ''),
(174, 52, '_attribute-label2', ''),
(175, 52, '_attribute2', ''),
(176, 52, '_attribute-unit2', ''),
(177, 52, '_attribute-label3', ''),
(178, 52, '_attribute3', ''),
(179, 52, '_attribute-unit3', ''),
(180, 52, '_shipping1', ''),
(181, 52, '_shipping-label1', ''),
(182, 52, '_sku', ''),
(183, 53, '_edit_last', '1'),
(184, 53, '_edit_lock', '1474470994:1'),
(185, 53, '_thumbnail_id', '31'),
(186, 53, 'excerpt', 'Nos assiettes sont blanches.'),
(187, 53, 'content', 'Louez nos belles assiettes propres !'),
(188, 53, '_price', '5'),
(189, 53, '_attribute-label1', ''),
(190, 53, '_attribute1', ''),
(191, 53, '_attribute-unit1', ''),
(192, 53, '_attribute-label2', ''),
(193, 53, '_attribute2', ''),
(194, 53, '_attribute-unit2', ''),
(195, 53, '_attribute-label3', ''),
(196, 53, '_attribute3', ''),
(197, 53, '_attribute-unit3', ''),
(198, 53, '_shipping1', ''),
(199, 53, '_shipping-label1', ''),
(200, 53, '_sku', ''),
(201, 54, '_edit_last', '1'),
(202, 54, '_edit_lock', '1474037585:1'),
(203, 54, '_thumbnail_id', '39'),
(204, 54, 'excerpt', 'Nos noeuds de chaises bleu sont colorés.'),
(205, 54, 'content', 'Louez nos beaux noeuds de chaises bleu colorés !'),
(206, 54, '_price', '5'),
(207, 54, '_attribute-label1', ''),
(208, 54, '_attribute1', ''),
(209, 54, '_attribute-unit1', ''),
(210, 54, '_attribute-label2', ''),
(211, 54, '_attribute2', ''),
(212, 54, '_attribute-unit2', ''),
(213, 54, '_attribute-label3', ''),
(214, 54, '_attribute3', ''),
(215, 54, '_attribute-unit3', ''),
(216, 54, '_shipping1', ''),
(217, 54, '_shipping-label1', ''),
(218, 54, '_sku', ''),
(219, 49, '_wp_trash_meta_status', 'publish'),
(220, 49, '_wp_trash_meta_time', '1474037734'),
(221, 49, '_wp_desired_post_slug', 'products'),
(564, 167, '_edit_last', '1'),
(565, 167, '_edit_lock', '1474450756:1'),
(566, 167, '_thumbnail_id', '27'),
(569, 169, '_edit_last', '1'),
(570, 169, '_edit_lock', '1474450778:1'),
(571, 169, '_thumbnail_id', '28'),
(574, 8, '_thumbnail_id', '176'),
(575, 10, '_thumbnail_id', '177'),
(576, 169, '_wp_trash_meta_status', 'publish'),
(577, 169, '_wp_trash_meta_time', '1474452525'),
(578, 169, '_wp_desired_post_slug', 'droite'),
(579, 167, '_wp_trash_meta_status', 'publish'),
(580, 167, '_wp_trash_meta_time', '1474452527'),
(581, 167, '_wp_desired_post_slug', 'gauche'),
(582, 175, '_edit_last', '1'),
(583, 175, '_edit_lock', '1474469622:1'),
(584, 175, 'excerpt', ''),
(585, 175, 'content', '<img class="alignnone size-medium wp-image-33" src="http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chandelierrose-200x300.jpg" alt="deco-chandelierrose" width="200" height="300" />'),
(586, 175, '_price', '5'),
(587, 175, '_attribute-label1', ''),
(588, 175, '_attribute1', ''),
(589, 175, '_attribute-unit1', ''),
(590, 175, '_attribute-label2', ''),
(591, 175, '_attribute2', ''),
(592, 175, '_attribute-unit2', ''),
(593, 175, '_attribute-label3', ''),
(594, 175, '_attribute3', ''),
(595, 175, '_attribute-unit3', ''),
(596, 175, '_shipping1', ''),
(597, 175, '_shipping-label1', ''),
(598, 175, '_sku', ''),
(599, 175, '_wp_trash_meta_status', 'publish'),
(600, 175, '_wp_trash_meta_time', '1474469771'),
(601, 175, '_wp_desired_post_slug', 'porte-bougies'),
(602, 176, '_wp_attached_file', '2016/09/slider-2-1.jpg'),
(603, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:22:"2016/09/slider-2-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-2-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-2-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slider-2-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-grid-listing";a:4:{s:4:"file";s:22:"slider-2-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-list-listing";a:4:{s:4:"file";s:22:"slider-2-1-240x160.jpg";s:5:"width";i:240;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:19:"modern-grid-listing";a:4:{s:4:"file";s:22:"slider-2-1-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:18:"product-page-image";a:4:{s:4:"file";s:22:"slider-2-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:27:"product-category-page-image";a:4:{s:4:"file";s:22:"slider-2-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:22:"slider-2-1-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:20:"slider-2-1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(604, 177, '_wp_attached_file', '2016/09/slider-3-2.jpg'),
(605, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:22:"2016/09/slider-3-2.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slider-3-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider-3-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slider-3-2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slider-3-2-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-grid-listing";a:4:{s:4:"file";s:22:"slider-3-2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-list-listing";a:4:{s:4:"file";s:22:"slider-3-2-240x160.jpg";s:5:"width";i:240;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:19:"modern-grid-listing";a:4:{s:4:"file";s:22:"slider-3-2-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:18:"product-page-image";a:4:{s:4:"file";s:22:"slider-3-2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:27:"product-category-page-image";a:4:{s:4:"file";s:22:"slider-3-2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:22:"slider-3-2-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:20:"slider-3-2-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(607, 23, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:103;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:88:"http://contactform7.com/configuration-errors/#mail.sender:error_email_not_in_site_domain";}}}}'),
(608, 178, '_edit_last', '1'),
<<<<<<< HEAD
(609, 178, '_edit_lock', '1474623959:1'),
(610, 178, '_thumbnail_id', '181'),
(611, 178, 'excerpt', ''),
(612, 178, 'content', ''),
(613, 178, '_price', '0.35'),
(614, 178, '_attribute-label1', ''),
(615, 178, '_attribute1', ''),
(616, 178, '_attribute-unit1', ''),
(617, 178, '_attribute-label2', ''),
(618, 178, '_attribute2', ''),
(619, 178, '_attribute-unit2', ''),
(620, 178, '_attribute-label3', ''),
(621, 178, '_attribute3', ''),
(622, 178, '_attribute-unit3', ''),
(623, 178, '_shipping1', ''),
(624, 178, '_shipping-label1', ''),
(625, 178, '_sku', ''),
(628, 181, '_wp_attached_file', '2016/09/20151114_141028-150x150.jpg'),
(629, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:35:"2016/09/20151114_141028-150x150.jpg";s:5:"sizes";a:1:{s:13:"prestro_small";a:4:{s:4:"file";s:33:"20151114_141028-150x150-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(630, 182, '_edit_last', '1'),
(631, 182, '_edit_lock', '1474624346:1'),
(632, 182, '_thumbnail_id', '39'),
(633, 182, 'excerpt', 'Nœud de chaise satin'),
(634, 182, 'content', 'Nœud de chaise satin'),
(635, 182, '_price', '0.40'),
(636, 182, '_attribute-label1', ''),
(637, 182, '_attribute1', ''),
(638, 182, '_attribute-unit1', ''),
(639, 182, '_attribute-label2', ''),
(640, 182, '_attribute2', ''),
(641, 182, '_attribute-unit2', ''),
(642, 182, '_attribute-label3', ''),
(643, 182, '_attribute3', ''),
(644, 182, '_attribute-unit3', ''),
(645, 182, '_shipping1', ''),
(646, 182, '_shipping-label1', ''),
(647, 182, '_sku', ''),
(648, 183, '_edit_last', '1'),
(649, 183, '_edit_lock', '1474624321:1'),
(650, 184, '_wp_attached_file', '2016/09/11751272_507819089367186_1989817579_n-768x577.jpg'),
(651, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:577;s:4:"file";s:57:"2016/09/11751272_507819089367186_1989817579_n-768x577.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-768x577.jpg";s:5:"width";i:768;s:6:"height";i:577;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-grid-listing";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-600x451.jpg";s:5:"width";i:600;s:6:"height";i:451;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-list-listing";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-213x160.jpg";s:5:"width";i:213;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:19:"modern-grid-listing";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:18:"product-page-image";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-600x451.jpg";s:5:"width";i:600;s:6:"height";i:451;s:9:"mime-type";s:10:"image/jpeg";}s:27:"product-category-page-image";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-600x451.jpg";s:5:"width";i:600;s:6:"height";i:451;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:57:"11751272_507819089367186_1989817579_n-768x577-730x410.jpg";s:5:"width";i:730;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:55:"11751272_507819089367186_1989817579_n-768x577-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(652, 183, '_thumbnail_id', '184'),
(653, 183, 'excerpt', 'Nappe carrée blanc. 240\r\ncm'),
(654, 183, 'content', 'Nappe carrée blanc. 240cm\r\n\r\nNon repassée 6.00€\r\nRepassée 7.60 €'),
(655, 183, '_price', '6.00'),
(656, 183, '_attribute-label1', ''),
(657, 183, '_attribute1', ''),
(658, 183, '_attribute-unit1', ''),
(659, 183, '_attribute-label2', ''),
(660, 183, '_attribute2', ''),
(661, 183, '_attribute-unit2', ''),
(662, 183, '_attribute-label3', ''),
(663, 183, '_attribute3', ''),
(664, 183, '_attribute-unit3', ''),
(665, 183, '_shipping1', ''),
(666, 183, '_shipping-label1', ''),
(667, 183, '_sku', ''),
(668, 54, '_wp_trash_meta_status', 'publish'),
(669, 54, '_wp_trash_meta_time', '1474624538'),
(670, 54, '_wp_desired_post_slug', 'noeud-de-chaise-bleu'),
(671, 185, '_edit_last', '1'),
(672, 185, '_edit_lock', '1474624490:1'),
(673, 185, 'excerpt', 'Nappe ronde blanc. 290 cm'),
(674, 185, 'content', 'Non repassée 6.80€\r\nRepassée 8.20 €\r\n'),
(675, 185, '_price', '6.80'),
(676, 185, '_attribute-label1', ''),
(677, 185, '_attribute1', ''),
(678, 185, '_attribute-unit1', ''),
(679, 185, '_attribute-label2', ''),
(680, 185, '_attribute2', ''),
(681, 185, '_attribute-unit2', ''),
(682, 185, '_attribute-label3', ''),
(683, 185, '_attribute3', ''),
(684, 185, '_attribute-unit3', ''),
(685, 185, '_shipping1', ''),
(686, 185, '_shipping-label1', ''),
(687, 185, '_sku', ''),
(688, 186, '_edit_last', '1'),
(689, 186, '_edit_lock', '1474624561:1'),
(690, 186, 'excerpt', 'Nappe rectangle blanc.\r\n140x300'),
(691, 186, 'content', 'Non repassée 6.00€\r\nRepassée 7.60 €'),
(692, 186, '_price', '6.00'),
(693, 186, '_attribute-label1', ''),
(694, 186, '_attribute1', ''),
(695, 186, '_attribute-unit1', ''),
(696, 186, '_attribute-label2', ''),
(697, 186, '_attribute2', ''),
(698, 186, '_attribute-unit2', ''),
(699, 186, '_attribute-label3', ''),
(700, 186, '_attribute3', ''),
(701, 186, '_attribute-unit3', ''),
(702, 186, '_shipping1', ''),
(703, 186, '_shipping-label1', ''),
(704, 186, '_sku', ''),
(705, 187, '_edit_last', '1'),
(706, 187, '_edit_lock', '1474624679:1');
INSERT INTO `fedalawp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(707, 188, '_wp_attached_file', '2016/09/11759408_507819076033854_450547215_n-640x410.jpg'),
(708, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:410;s:4:"file";s:56:"2016/09/11759408_507819076033854_450547215_n-640x410.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-grid-listing";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:20:"classic-list-listing";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-250x160.jpg";s:5:"width";i:250;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:19:"modern-grid-listing";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:18:"product-page-image";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:27:"product-category-page-image";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:16:"prestro_featured";a:4:{s:4:"file";s:56:"11759408_507819076033854_450547215_n-640x410-640x410.jpg";s:5:"width";i:640;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:13:"prestro_small";a:4:{s:4:"file";s:54:"11759408_507819076033854_450547215_n-640x410-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(709, 187, '_thumbnail_id', '188'),
(710, 187, 'excerpt', 'Serviette de table blanc'),
(711, 187, 'content', 'Non repassée 0.30€\r\nRepassée 0.60 €'),
(712, 187, '_price', '0.30'),
(713, 187, '_attribute-label1', ''),
(714, 187, '_attribute1', ''),
(715, 187, '_attribute-unit1', ''),
(716, 187, '_attribute-label2', ''),
(717, 187, '_attribute2', ''),
(718, 187, '_attribute-unit2', ''),
(719, 187, '_attribute-label3', ''),
(720, 187, '_attribute3', ''),
(721, 187, '_attribute-unit3', ''),
(722, 187, '_shipping1', ''),
(723, 187, '_shipping-label1', ''),
(724, 187, '_sku', ''),
(725, 189, '_edit_last', '1'),
(726, 189, '_edit_lock', '1474624731:1'),
(727, 189, 'excerpt', 'Chemin de table satin'),
(728, 189, 'content', ''),
(729, 189, '_price', '2.00'),
(730, 189, '_attribute-label1', ''),
(731, 189, '_attribute1', ''),
(732, 189, '_attribute-unit1', ''),
(733, 189, '_attribute-label2', ''),
(734, 189, '_attribute2', ''),
(735, 189, '_attribute-unit2', ''),
(736, 189, '_attribute-label3', ''),
(737, 189, '_attribute3', ''),
(738, 189, '_attribute-unit3', ''),
(739, 189, '_shipping1', ''),
(740, 189, '_shipping-label1', ''),
(741, 189, '_sku', ''),
(742, 190, '_edit_last', '1'),
(743, 190, '_edit_lock', '1474624792:1'),
(744, 190, 'excerpt', 'Kit vaisselle complet'),
(745, 190, 'content', ''),
(746, 190, '_price', '1.40'),
(747, 190, '_attribute-label1', ''),
(748, 190, '_attribute1', ''),
(749, 190, '_attribute-unit1', ''),
(750, 190, '_attribute-label2', ''),
(751, 190, '_attribute2', ''),
(752, 190, '_attribute-unit2', ''),
(753, 190, '_attribute-label3', ''),
(754, 190, '_attribute3', ''),
(755, 190, '_attribute-unit3', ''),
(756, 190, '_shipping1', ''),
(757, 190, '_shipping-label1', ''),
(758, 190, '_sku', ''),
(759, 191, '_edit_last', '1'),
(760, 191, '_edit_lock', '1474624831:1'),
(761, 191, 'excerpt', 'Vase martini 60/70 cm'),
(762, 191, 'content', ''),
(763, 191, '_price', '8.00'),
(764, 191, '_attribute-label1', ''),
(765, 191, '_attribute1', ''),
(766, 191, '_attribute-unit1', ''),
(767, 191, '_attribute-label2', ''),
(768, 191, '_attribute2', ''),
(769, 191, '_attribute-unit2', ''),
(770, 191, '_attribute-label3', ''),
(771, 191, '_attribute3', ''),
(772, 191, '_attribute-unit3', ''),
(773, 191, '_shipping1', ''),
(774, 191, '_shipping-label1', ''),
(775, 191, '_sku', ''),
(776, 192, '_edit_last', '1'),
(777, 192, '_edit_lock', '1474624875:1'),
(778, 192, 'excerpt', 'Vase bombé 32 cm'),
(779, 192, 'content', ''),
(780, 192, '_price', '1.50'),
(781, 192, '_attribute-label1', ''),
(782, 192, '_attribute1', ''),
(783, 192, '_attribute-unit1', ''),
(784, 192, '_attribute-label2', ''),
(785, 192, '_attribute2', ''),
(786, 192, '_attribute-unit2', ''),
(787, 192, '_attribute-label3', ''),
(788, 192, '_attribute3', ''),
(789, 192, '_attribute-unit3', ''),
(790, 192, '_shipping1', ''),
(791, 192, '_shipping-label1', ''),
(792, 192, '_sku', ''),
(793, 193, '_edit_last', '1'),
(794, 193, '_edit_lock', '1474624935:1'),
(795, 193, 'excerpt', 'Chandelier blanc, fuchsia, argent'),
(796, 193, 'content', ''),
(797, 193, '_price', '3.00'),
(798, 193, '_attribute-label1', ''),
(799, 193, '_attribute1', ''),
(800, 193, '_attribute-unit1', ''),
(801, 193, '_attribute-label2', ''),
(802, 193, '_attribute2', ''),
(803, 193, '_attribute-unit2', ''),
(804, 193, '_attribute-label3', ''),
(805, 193, '_attribute3', ''),
(806, 193, '_attribute-unit3', ''),
(807, 193, '_shipping1', ''),
(808, 193, '_shipping-label1', ''),
(809, 193, '_sku', ''),
(810, 194, '_edit_last', '1'),
(811, 194, '_edit_lock', '1474625090:1'),
(812, 194, 'excerpt', 'Vase soliflore 60 cm'),
(813, 194, 'content', ''),
(814, 194, '_price', '3.00'),
(815, 194, '_attribute-label1', ''),
(816, 194, '_attribute1', ''),
(817, 194, '_attribute-unit1', ''),
(818, 194, '_attribute-label2', ''),
(819, 194, '_attribute2', ''),
(820, 194, '_attribute-unit2', ''),
(821, 194, '_attribute-label3', ''),
(822, 194, '_attribute3', ''),
(823, 194, '_attribute-unit3', ''),
(824, 194, '_shipping1', ''),
(825, 194, '_shipping-label1', ''),
(826, 194, '_sku', ''),
(827, 195, '_edit_last', '1'),
(828, 195, '_edit_lock', '1474625274:1'),
(829, 195, 'excerpt', ''),
(830, 195, 'content', 'FORFAIT BASIQUE : 5.00 € / personne\r\n<ul>\r\n\r\n	<li>Nappage en tissu</li>\r\n	<li>Housse lycra</li>\r\n	<li>Nœud de chaise organza ou satin couleur au choix</li>\r\n	<li>Chemin de table assorti</li>\r\n	<li>Serviette de table en tissu</li>\r\n</ul>\r\n\r\n'),
(831, 195, '_price', '5.00'),
(832, 195, '_attribute-label1', ''),
(833, 195, '_attribute1', ''),
(834, 195, '_attribute-unit1', ''),
(835, 195, '_attribute-label2', ''),
(836, 195, '_attribute2', ''),
(837, 195, '_attribute-unit2', ''),
(838, 195, '_attribute-label3', ''),
(839, 195, '_attribute3', ''),
(840, 195, '_attribute-unit3', ''),
(841, 195, '_shipping1', ''),
(842, 195, '_shipping-label1', ''),
(843, 195, '_sku', ''),
(844, 196, '_edit_last', '1'),
(845, 196, '_edit_lock', '1474625363:1'),
(846, 196, 'excerpt', 'FORFAIT CONFORT : 7.00 € / personne\r\n'),
(847, 196, 'content', 'FORFAIT CONFORT : 7.00 € / personne\r\n\r\nNappage en tissu\r\nHousse lycra\r\nNœud de chaise organza ou satin couleur au choix\r\nChemin de table assorti\r\nServiette de table en tissu\r\nMise en place du couvert'),
(848, 196, '_price', '7.00'),
(849, 196, '_attribute-label1', ''),
(850, 196, '_attribute1', ''),
(851, 196, '_attribute-unit1', ''),
(852, 196, '_attribute-label2', ''),
(853, 196, '_attribute2', ''),
(854, 196, '_attribute-unit2', ''),
(855, 196, '_attribute-label3', ''),
(856, 196, '_attribute3', ''),
(857, 196, '_attribute-unit3', ''),
(858, 196, '_shipping1', ''),
(859, 196, '_shipping-label1', ''),
(860, 196, '_sku', ''),
(861, 197, '_edit_last', '1'),
(862, 197, '_edit_lock', '1474625415:1'),
(863, 197, 'excerpt', 'FORFAIT ELEGANCE : 9.00 € / personne'),
(864, 197, 'content', 'FORFAIT ELEGANCE : 9.00 € / personne\r\n\r\nNappage en tissu\r\nHousse lycra\r\nNœud de chaise organza ou satin couleur au choix\r\nChemin de table assorti\r\nServiette de table en tissu\r\nVase et composition florale\r\nMise en place du couvert\r\nAccessoires : perles de pluies, plumes, bougies, miroir, rince doigt...'),
(865, 197, '_price', '9.00'),
(866, 197, '_attribute-label1', ''),
(867, 197, '_attribute1', ''),
(868, 197, '_attribute-unit1', ''),
(869, 197, '_attribute-label2', ''),
(870, 197, '_attribute2', ''),
(871, 197, '_attribute-unit2', ''),
(872, 197, '_attribute-label3', ''),
(873, 197, '_attribute3', ''),
(874, 197, '_attribute-unit3', ''),
(875, 197, '_shipping1', ''),
(876, 197, '_shipping-label1', ''),
(877, 197, '_sku', ''),
(878, 198, '_edit_last', '1'),
(879, 198, '_edit_lock', '1474625602:1'),
(880, 198, 'excerpt', 'FORFAIT PRESTIGE : 10.30 € / personne\r\n'),
(881, 198, 'content', 'FORFAIT PRESTIGE : 10.30 € / personne\r\n\r\nNappage en tissu\r\nHousse lycra\r\nNœud de chaise organza ou satin couleur au choix\r\nChemin de table assorti\r\nServiette de table en tissu\r\nVase et composition florale\r\nMise en place du couvert\r\nAccessoires : perles de pluies, plumes, bougies, miroir, rince doigt...\r\nCoin des mariés : trône au choix, rideaux lumineux max 6M, table basse,\r\nluminaire d’ambiance, piliers d’honneur chemin de traverse.'),
(882, 198, '_price', '10.30'),
(883, 198, '_attribute-label1', ''),
(884, 198, '_attribute1', ''),
(885, 198, '_attribute-unit1', ''),
(886, 198, '_attribute-label2', ''),
(887, 198, '_attribute2', ''),
(888, 198, '_attribute-unit2', ''),
(889, 198, '_attribute-label3', ''),
(890, 198, '_attribute3', ''),
(891, 198, '_attribute-unit3', ''),
(892, 198, '_shipping1', ''),
(893, 198, '_shipping-label1', ''),
(894, 198, '_sku', ''),
(895, 53, '_wp_trash_meta_status', 'publish'),
(896, 53, '_wp_trash_meta_time', '1474625866'),
(897, 53, '_wp_desired_post_slug', 'assiettes'),
(898, 52, '_wp_trash_meta_status', 'publish'),
(899, 52, '_wp_trash_meta_time', '1474625866'),
(900, 52, '_wp_desired_post_slug', 'couverts'),
(901, 51, '_wp_trash_meta_status', 'publish'),
(902, 51, '_wp_trash_meta_time', '1474625867'),
(903, 51, '_wp_desired_post_slug', 'verres');
=======
(609, 178, '_edit_lock', '1474624172:1'),
(610, 178, '_thumbnail_id', '30'),
(611, 178, '_wp_page_template', 'default');
>>>>>>> d6aeab2c933058ccde32876caeb1b267aa35cf79

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_posts`
--

CREATE TABLE `fedalawp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_posts`
--

INSERT INTO `fedalawp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-16 13:44:26', '2016-09-16 11:44:26', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2016-09-16 13:50:06', '2016-09-16 11:50:06', '', 0, 'http://localhost/wordpress-fedala/?p=1', 0, 'post', '', 1),
(2, 1, '2016-09-16 13:44:26', '2016-09-16 11:44:26', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/wordpress-fedala/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2016-09-16 13:50:12', '2016-09-16 11:50:12', '', 0, 'http://localhost/wordpress-fedala/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-09-16 13:45:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-09-16 13:45:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-fedala/?p=3', 0, 'post', '', 0),
(4, 1, '2016-09-16 13:50:06', '2016-09-16 11:50:06', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-09-16 13:50:06', '2016-09-16 11:50:06', '', 1, 'http://localhost/wordpress-fedala/?p=4', 0, 'revision', '', 0),
(5, 1, '2016-09-16 13:50:12', '2016-09-16 11:50:12', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/wordpress-fedala/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-09-16 13:50:12', '2016-09-16 11:50:12', '', 2, 'http://localhost/wordpress-fedala/?p=5', 0, 'revision', '', 0),
(6, 1, '2016-09-16 13:52:56', '2016-09-16 11:52:56', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2016-09-16 13:52:56', '2016-09-16 11:52:56', '', 0, 'http://localhost/wordpress-fedala/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-09-16 13:52:56', '2016-09-16 11:52:56', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-09-16 13:52:56', '2016-09-16 11:52:56', '', 6, 'http://localhost/wordpress-fedala/?p=7', 0, 'revision', '', 0),
(8, 1, '2016-09-16 13:54:19', '2016-09-16 11:54:19', '[show_categories]', 'Décoration', '', 'publish', 'closed', 'closed', '', 'decoration', '', '', '2016-09-23 09:58:25', '2016-09-23 07:58:25', '', 0, 'http://localhost/wordpress-fedala/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-09-16 13:54:19', '2016-09-16 11:54:19', '', 'Décoration', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-09-16 13:54:19', '2016-09-16 11:54:19', '', 8, 'http://localhost/wordpress-fedala/?p=9', 0, 'revision', '', 0),
(10, 1, '2016-09-16 13:54:32', '2016-09-16 11:54:32', '', 'Traiteur', '', 'publish', 'closed', 'closed', '', 'traiteur', '', '', '2016-09-23 10:05:34', '2016-09-23 08:05:34', '', 0, 'http://localhost/wordpress-fedala/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-09-16 13:54:32', '2016-09-16 11:54:32', '', 'Traiteur', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-09-16 13:54:32', '2016-09-16 11:54:32', '', 10, 'http://localhost/wordpress-fedala/?p=11', 0, 'revision', '', 0),
(12, 1, '2016-09-16 13:55:08', '2016-09-16 11:55:08', 'Tajine de poulet aux olives - 6,00 €\r\n\r\nTajine bœuf aux pruneaux, abricots et amandes grillées - 7,50 €\r\n\r\nTajine agneau aux raisins - 8,30 €\r\n\r\nCouscous poulet - 6,00 €\r\n\r\nCouscous bœuf - 6,50 €\r\n\r\nCouscous agneau - 7,50 €\r\n\r\nCouscous poulet bœuf merguez - 9,50 €\r\n\r\nCouscous poulet agneau merguez - 10,50 €\r\n\r\nSupplément merguez - 1,00 €\r\n\r\nPaella - 7,80 €\r\n\r\nPaella avec langoustine - 8,50 €\r\n\r\nOsso bucco de dinde - 7,00 €\r\n\r\nOsso bucco de veau - 8,90 €\r\n\r\nTrio de farcis à l’agneau (min 6 parts) - 7,90 €\r\n\r\nGigot de 7 heures (min 10 parts) - 7,80 €\r\n\r\nTourte orientale (min 6 parts) - 2,80 €\r\n\r\nLasagne - 4,90 €\r\n\r\nHarcha aux olives et fromage - 2,10 €', 'Plats', '', 'publish', 'closed', 'closed', '', 'entrees', '', '', '2016-09-23 11:30:25', '2016-09-23 09:30:25', '', 10, 'http://localhost/wordpress-fedala/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-09-16 13:55:08', '2016-09-16 11:55:08', 'entrée 01 - 5,00 €\n\nentrée 02 - 5,00 €\n\nentrée 03 - 5,00 €', 'Entrées', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-09-16 13:55:08', '2016-09-16 11:55:08', '', 12, 'http://localhost/wordpress-fedala/?p=13', 0, 'revision', '', 0),
(14, 1, '2016-09-16 13:55:30', '2016-09-16 11:55:30', 'Pommes de terre persillées - 0,50 €\r\n\r\nPommes de terre rôties à la suédoise - 0,90 €\r\n\r\nPoêlée de légumes frais - 1,10 €\r\n\r\nSemoule - 0,50 €\r\n\r\nBoulgour - 0,90 €\r\n\r\nRatatouille - 1,30 €\r\n\r\nTagliatelles - 0,70 €\r\n\r\nGratin dauphinois - 1,20 €\r\n\r\nRiz blanc - 0,80 €\r\n\r\nRiz pilaf - 1,00 €\r\n\r\nPotatoes - 0,90 €\r\n\r\nRösti - 0,80 €', 'Accompagnements', '', 'publish', 'closed', 'closed', '', 'plats', '', '', '2016-09-23 11:39:11', '2016-09-23 09:39:11', '', 10, 'http://localhost/wordpress-fedala/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-09-16 13:55:30', '2016-09-16 11:55:30', 'plat 01 - 5,00 €\n\nplat 02 - 5,00 €\n\nplat 03 - 5,00 €', 'Plats', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-09-16 13:55:30', '2016-09-16 11:55:30', '', 14, 'http://localhost/wordpress-fedala/?p=15', 0, 'revision', '', 0),
(16, 1, '2016-09-16 13:55:49', '2016-09-16 11:55:49', 'Croissant à la viande - 0,50 €\r\n\r\nCroissant au fromage et ail concassé - 0,50 €\r\n\r\nTarte napolitaine - 0,50 €\r\n\r\nTarte saumon à la crème et aux herbes - 0,50 €\r\n\r\nTarte saumon et fondue de poireaux - 0,50 €\r\n\r\nCiabbata au saumon fromage frais crudités - 1,65 €\r\n\r\nMini ciabbata poulet à l’indienne - 1,65 €\r\n\r\nNavette crudités thon - 0,90 €\r\n\r\nNavette crudités poulet - 0,90 €\r\n\r\nSamoussa bœuf et légumes - 0,90 €\r\n\r\nSamoussa au poulet épices douces - 0,90 €\r\n\r\nSamoussa aux fruits de mer - 1,00 €\r\n\r\nRouleau de printemps poulet crudités - 1,10 €\r\n\r\nCake au thon olive et fromage - 0,55 €\r\n\r\nCake mimolette poulet paprika - 0,55 €\r\n\r\nCake chèvre figue et noix grillées - 0,55 €\r\n\r\nAccras de morue - 0,29 €\r\n\r\nCarré pain polaire au saumon - 0,80 €\r\n\r\nToasts aux tapenades variées - 0,35 €\r\n\r\nVerrines variées - 1,10 €', 'Mini salés', '', 'publish', 'closed', 'closed', '', 'desserts', '', '', '2016-09-23 11:45:01', '2016-09-23 09:45:01', '', 10, 'http://localhost/wordpress-fedala/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-09-16 13:55:49', '2016-09-16 11:55:49', 'dessert 01 - 5,00 €\n\ndessert 02 - 5,00 €\n\ndessert 03 - 5,00 €', 'Desserts', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-09-16 13:55:49', '2016-09-16 11:55:49', '', 16, 'http://localhost/wordpress-fedala/?p=17', 0, 'revision', '', 0),
(18, 1, '2016-09-16 13:56:31', '2016-09-16 11:56:31', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-09-16 14:03:38', '2016-09-16 12:03:38', '', 0, 'http://localhost/wordpress-fedala/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2016-09-16 13:56:30', '2016-09-16 11:56:30', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-09-16 14:03:37', '2016-09-16 12:03:37', '', 0, 'http://localhost/wordpress-fedala/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2016-09-16 13:56:30', '2016-09-16 11:56:30', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-09-16 14:03:37', '2016-09-16 12:03:37', '', 0, 'http://localhost/wordpress-fedala/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-09-16 13:57:04', '2016-09-16 11:57:04', '[contact-form-7 id="23" title="Contact form 1"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-09-21 16:32:21', '2016-09-21 14:32:21', '', 0, 'http://localhost/wordpress-fedala/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-09-16 13:57:04', '2016-09-16 11:57:04', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-09-16 13:57:04', '2016-09-16 11:57:04', '', 21, 'http://localhost/wordpress-fedala/?p=22', 0, 'revision', '', 0),
(23, 1, '2016-09-16 14:00:11', '2016-09-16 12:00:11', '<div class="row" style=" background: #DDD">\r\n<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">\r\n<label>Type d’événement :\r\n[select* Evnement "Mariage" "Baptême" "Cocktail" "Départ en retraite"]</label>\r\n<label> Date:\r\n[date* date-65 min:2016-09-15 max:2100-09-01 placeholder "Exemple: aaaa-mm-jj"]</label>\r\n\r\n<label> Votre adresse :\r\n[text* text-514]</label>\r\n\r\n<label>Nombre d’invités : \r\n[number number-339 min:5 max:500]\r\n</label>\r\n<label> Réception :\r\n<label>[radio radio-395 default:1 "Assise"]</label><label>[radio radio-395 default:1 "Debout"]</label>\r\n\r\n</label>\r\n<label>Type de réception :\r\n<label>[checkbox* checkbox-111 use_label_element "Déjeuner"]</label>\r\n<label>[checkbox* checkbox-111 use_label_element "Dîner"]</label>\r\n<label>[checkbox* checkbox-111 use_label_element "Soirée"]</label>\r\n</label>\r\n<label>Prestations :\r\n<label>[checkbox* checkbox-111 use_label_element "Vaisselle"]</label> <label>[checkbox* checkbox-111 use_label_element  "Mobilier"]</label>\r\n\r\n<label>[checkbox* checkbox-111 use_label_element "Boissons"]</label> <label>[checkbox* checkbox-111 use_label_element "Décoration"]</label>\r\n\r\n<label>[checkbox* checkbox-111 use_label_element  "Nappage"]</label><label>[checkbox* checkbox-111 use_label_element "Personnel de service"]</label>\r\n\r\n</label>\r\n</div>\r\n<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">\r\n\r\n<label> Votre nom\r\n\r\n    [text* your-name] </label>\r\n\r\n<label> votre email:\r\n    [email* your-email] </label>\r\n\r\n<label>Téléphone :\r\n[tel* tel-691]\r\n</label>\r\n\r\n<label> Sujet:\r\n    [text your-subject] </label>\r\n\r\n<label>Votre  Message:\r\n\r\n    [textarea your-message] </label>\r\n\r\n[submit "Envoyez"]\r\n</div>\r\n \r\n</div>\nFedala "[your-subject]"\n[your-name]<abdulrahman.rasho@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)\nabdulrahman.rasho@gmail.com\nReply-To: [your-email]\n\n\n\n\nFedala "[your-subject]"\nFedala <wordpress@_>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Fedala (http://localhost/wordpress-fedala)\n[your-email]\nReply-To: root@127.0.0.1\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-09-23 10:56:08', '2016-09-23 08:56:08', '', 0, 'http://localhost/wordpress-fedala/?post_type=wpcf7_contact_form&#038;p=23', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2016-09-16 14:02:27', '2016-09-16 12:02:27', '[contact-form-7 id="23" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-09-16 14:02:27', '2016-09-16 12:02:27', '', 21, 'http://localhost/wordpress-fedala/?p=24', 0, 'revision', '', 0),
(25, 1, '2016-09-16 14:03:38', '2016-09-16 12:03:38', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-09-16 14:03:38', '2016-09-16 12:03:38', '', 0, 'http://localhost/wordpress-fedala/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2016-09-16 14:03:39', '2016-09-16 12:03:39', '', 'Connexion', '', 'publish', 'closed', 'closed', '', 'connexion', '', '', '2016-09-16 14:03:39', '2016-09-16 12:03:39', '', 0, 'http://localhost/wordpress-fedala/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2016-09-16 12:14:08', '2016-09-16 12:14:08', '', 'accueil-deco', '', 'inherit', 'open', 'closed', '', 'accueil-deco', '', '', '2016-09-16 12:14:08', '2016-09-16 12:14:08', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-deco.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-09-16 12:14:08', '2016-09-16 12:14:08', '', 'accueil-parallax-1', '', 'inherit', 'open', 'closed', '', 'accueil-parallax-1', '', '', '2016-09-16 12:14:08', '2016-09-16 12:14:08', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-parallax-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-09-16 12:14:09', '2016-09-16 12:14:09', '', 'accueil-parallax-2', '', 'inherit', 'open', 'closed', '', 'accueil-parallax-2', '', '', '2016-09-16 12:14:09', '2016-09-16 12:14:09', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-parallax-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-09-16 12:14:09', '2016-09-16 12:14:09', '', 'accueil-traiteur', '', 'inherit', 'open', 'closed', '', 'accueil-traiteur', '', '', '2016-09-16 12:14:09', '2016-09-16 12:14:09', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/accueil-traiteur.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2016-09-16 12:14:10', '2016-09-16 12:14:10', '', 'deco-assiette', '', 'inherit', 'open', 'closed', '', 'deco-assiette', '', '', '2016-09-16 12:14:10', '2016-09-16 12:14:10', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-assiette.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2016-09-16 12:14:10', '2016-09-16 12:14:10', '', 'deco-chaisebleuvert', '', 'inherit', 'open', 'closed', '', 'deco-chaisebleuvert', '', '', '2016-09-16 12:14:10', '2016-09-16 12:14:10', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chaisebleuvert.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-09-16 12:14:11', '2016-09-16 12:14:11', '', 'deco-chandelierrose', '', 'inherit', 'open', 'closed', '', 'deco-chandelierrose', '', '', '2016-09-21 16:52:53', '2016-09-21 14:52:53', '', 175, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chandelierrose.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-09-16 12:14:11', '2016-09-16 12:14:11', '', 'deco-chemintableblanc', '', 'inherit', 'open', 'closed', '', 'deco-chemintableblanc', '', '', '2016-09-16 12:14:11', '2016-09-16 12:14:11', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chemintableblanc.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2016-09-16 12:14:12', '2016-09-16 12:14:12', '', 'deco-chemintablebleu', '', 'inherit', 'open', 'closed', '', 'deco-chemintablebleu', '', '', '2016-09-16 12:14:12', '2016-09-16 12:14:12', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chemintablebleu.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2016-09-16 12:14:12', '2016-09-16 12:14:12', '', 'deco-chemintablemauve', '', 'inherit', 'open', 'closed', '', 'deco-chemintablemauve', '', '', '2016-09-16 12:14:12', '2016-09-16 12:14:12', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chemintablemauve.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-09-16 12:14:13', '2016-09-16 12:14:13', '', 'deco-couverts', '', 'inherit', 'open', 'closed', '', 'deco-couverts', '', '', '2016-09-16 12:14:13', '2016-09-16 12:14:13', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-couverts.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-09-16 12:14:13', '2016-09-16 12:14:13', '', 'deco-couvertserviette', '', 'inherit', 'open', 'closed', '', 'deco-couvertserviette', '', '', '2016-09-16 12:14:13', '2016-09-16 12:14:13', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-couvertserviette.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-09-16 12:14:14', '2016-09-16 12:14:14', '', 'deco-noeudbleu', '', 'inherit', 'open', 'closed', '', 'deco-noeudbleu', '', '', '2016-09-16 12:14:14', '2016-09-16 12:14:14', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-noeudbleu.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-09-16 12:14:14', '2016-09-16 12:14:14', '', 'deco-noeudrouge', '', 'inherit', 'open', 'closed', '', 'deco-noeudrouge', '', '', '2016-09-16 12:14:14', '2016-09-16 12:14:14', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-noeudrouge.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-09-16 12:14:14', '2016-09-16 12:14:14', '', 'deco-pergola', '', 'inherit', 'open', 'closed', '', 'deco-pergola', '', '', '2016-09-16 12:14:14', '2016-09-16 12:14:14', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-pergola.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-09-16 12:14:15', '2016-09-16 12:14:15', '', 'deco-tabledoree', '', 'inherit', 'open', 'closed', '', 'deco-tabledoree', '', '', '2016-09-16 12:14:15', '2016-09-16 12:14:15', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-tabledoree.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-09-16 12:14:15', '2016-09-16 12:14:15', '', 'deco-tablerose', '', 'inherit', 'open', 'closed', '', 'deco-tablerose', '', '', '2016-09-16 12:14:15', '2016-09-16 12:14:15', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-tablerose.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-09-16 12:14:16', '2016-09-16 12:14:16', '', 'deco-vaselong', '', 'inherit', 'open', 'closed', '', 'deco-vaselong', '', '', '2016-09-16 12:14:16', '2016-09-16 12:14:16', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-vaselong.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-09-16 12:14:16', '2016-09-16 12:14:16', '', 'deco-verres', '', 'inherit', 'open', 'closed', '', 'deco-verres', '', '', '2016-09-16 12:14:16', '2016-09-16 12:14:16', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-verres.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-09-16 12:14:17', '2016-09-16 12:14:17', '', 'traiteur-desserts', '', 'inherit', 'open', 'closed', '', 'traiteur-desserts', '', '', '2016-09-16 12:14:17', '2016-09-16 12:14:17', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/traiteur-desserts.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-09-16 12:14:17', '2016-09-16 12:14:17', '', 'traiteur-entrees', '', 'inherit', 'open', 'closed', '', 'traiteur-entrees', '', '', '2016-09-16 12:14:17', '2016-09-16 12:14:17', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/traiteur-entrees.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-09-16 12:14:18', '2016-09-16 12:14:18', '', 'traiteur-plats', '', 'inherit', 'open', 'closed', '', 'traiteur-plats', '', '', '2016-09-16 12:14:18', '2016-09-16 12:14:18', '', 0, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/traiteur-plats.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2016-09-16 16:40:49', '2016-09-16 14:40:49', '', 'Products', '', 'trash', 'closed', 'closed', '', 'products__trashed', '', '', '2016-09-16 16:55:34', '2016-09-16 14:55:34', '', 0, 'http://localhost/wordpress-fedala/?page_id=49', 0, 'page', '', 0),
(50, 1, '2016-09-16 16:40:55', '2016-09-16 14:40:55', '', 'Page d’exemple de produit', '', 'trash', 'closed', 'closed', '', 'page-dexemple-de-produit__trashed', '', '', '2016-09-16 16:42:08', '2016-09-16 14:42:08', '', 0, 'http://localhost/wordpress-fedala/?product=page-dexemple-de-produit', 0, 'al_product', '', 0),
(51, 1, '2016-09-16 16:42:49', '2016-09-16 14:42:49', 'Louez nos beaux verres transparents !', 'Verres', 'Nos verres sont transparents.', 'trash', 'closed', 'closed', '', 'verres__trashed', '', '', '2016-09-23 12:17:47', '2016-09-23 10:17:47', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=51', 0, 'al_product', '', 0),
(52, 1, '2016-09-16 16:52:08', '2016-09-16 14:52:08', 'Louez nos beaux couverts propres !', 'Couverts', 'Nos couverts sont propres.', 'trash', 'closed', 'closed', '', 'couverts__trashed', '', '', '2016-09-23 12:17:46', '2016-09-23 10:17:46', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=52', 0, 'al_product', '', 0),
(53, 1, '2016-09-16 16:53:23', '2016-09-16 14:53:23', 'Louez nos belles assiettes propres !', 'Assiettes', 'Nos assiettes sont blanches.', 'trash', 'closed', 'closed', '', 'assiettes__trashed', '', '', '2016-09-23 12:17:46', '2016-09-23 10:17:46', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=53', 0, 'al_product', '', 0),
(54, 1, '2016-09-16 16:55:25', '2016-09-16 14:55:25', 'Louez nos beaux noeuds de chaises bleu colorés !', 'Noeud de chaise bleu', 'Nos noeuds de chaises bleu sont colorés.', 'trash', 'closed', 'closed', '', 'noeud-de-chaise-bleu__trashed', '', '', '2016-09-23 11:55:38', '2016-09-23 09:55:38', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=54', 0, 'al_product', '', 0),
(55, 1, '2016-09-16 16:55:34', '2016-09-16 14:55:34', '', 'Products', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-09-16 16:55:34', '2016-09-16 14:55:34', '', 49, 'http://localhost/wordpress-fedala/?p=55', 0, 'revision', '', 0),
(56, 1, '2016-09-16 16:55:49', '2016-09-16 14:55:49', '[show_categories]', 'Décoration', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-09-16 16:55:49', '2016-09-16 14:55:49', '', 8, 'http://localhost/wordpress-fedala/?p=56', 0, 'revision', '', 0),
(167, 1, '2016-09-21 11:41:36', '2016-09-21 09:41:36', '', 'gauche', '', 'trash', 'open', 'open', '', 'gauche__trashed', '', '', '2016-09-21 12:08:47', '2016-09-21 10:08:47', '', 0, 'http://localhost/wordpress-fedala/?p=167', 0, 'post', '', 0),
(168, 1, '2016-09-21 11:41:36', '2016-09-21 09:41:36', '', 'gauche', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2016-09-21 11:41:36', '2016-09-21 09:41:36', '', 167, 'http://localhost/wordpress-fedala/?p=168', 0, 'revision', '', 0),
(169, 1, '2016-09-21 11:41:55', '2016-09-21 09:41:55', '', 'droite', '', 'trash', 'open', 'open', '', 'droite__trashed', '', '', '2016-09-21 12:08:46', '2016-09-21 10:08:46', '', 0, 'http://localhost/wordpress-fedala/?p=169', 0, 'post', '', 0),
(170, 1, '2016-09-21 11:41:55', '2016-09-21 09:41:55', '', 'droite', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2016-09-21 11:41:55', '2016-09-21 09:41:55', '', 169, 'http://localhost/wordpress-fedala/?p=170', 0, 'revision', '', 0),
(171, 1, '2016-09-21 16:08:30', '2016-09-21 14:08:30', '[contact-form-7 id="23" title="Contact form 1"]', 'Contactez-nous', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-09-21 16:08:30', '2016-09-21 14:08:30', '', 21, 'http://localhost/wordpress-fedala/?p=171', 0, 'revision', '', 0),
(172, 1, '2016-09-21 16:32:21', '2016-09-21 14:32:21', '[contact-form-7 id="23" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-09-21 16:32:21', '2016-09-21 14:32:21', '', 21, 'http://localhost/wordpress-fedala/?p=172', 0, 'revision', '', 0),
(173, 1, '2016-09-21 16:51:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-21 16:51:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&p=173', 0, 'al_product', '', 0),
(174, 1, '2016-09-21 16:52:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-21 16:52:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&p=174', 0, 'al_product', '', 0),
(175, 1, '2016-09-21 16:53:59', '2016-09-21 14:53:59', '<img class="alignnone size-medium wp-image-33" src="http://localhost/wordpress-fedala/wp-content/uploads/2016/09/deco-chandelierrose-200x300.jpg" alt="deco-chandelierrose" width="200" height="300" />', 'porte bougies', '', 'trash', 'closed', 'closed', '', 'porte-bougies__trashed', '', '', '2016-09-21 16:56:11', '2016-09-21 14:56:11', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=175', 0, 'al_product', '', 0),
(176, 1, '2016-09-23 09:58:19', '2016-09-23 07:58:19', '', 'slider-2', '', 'inherit', 'open', 'closed', '', 'slider-2', '', '', '2016-09-23 09:58:19', '2016-09-23 07:58:19', '', 8, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/slider-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2016-09-23 10:04:54', '2016-09-23 08:04:54', '', 'slider-3', '', 'inherit', 'open', 'closed', '', 'slider-3', '', '', '2016-09-23 10:04:54', '2016-09-23 08:04:54', '', 10, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/slider-3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
<<<<<<< HEAD
(178, 1, '2016-09-23 11:41:54', '2016-09-23 09:41:54', '', 'Nœud de chaise organza', '', 'publish', 'closed', 'closed', '', 'housse-de-chaise-lycra-blanc', '', '', '2016-09-23 11:46:41', '2016-09-23 09:46:41', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=178', 0, 'al_product', '', 0),
(181, 1, '2016-09-23 11:46:29', '2016-09-23 09:46:29', '', '20151114_141028-150x150', '', 'inherit', 'open', 'closed', '', '20151114_141028-150x150', '', '', '2016-09-23 11:46:29', '2016-09-23 09:46:29', '', 178, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/20151114_141028-150x150.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2016-09-23 11:49:08', '2016-09-23 09:49:08', 'Nœud de chaise satin', 'Nœud de chaise satin', 'Nœud de chaise satin', 'publish', 'closed', 'closed', '', 'noeud-de-chaise-satin', '', '', '2016-09-23 11:54:44', '2016-09-23 09:54:44', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=182', 0, 'al_product', '', 0),
(183, 1, '2016-09-23 11:52:22', '2016-09-23 09:52:22', 'Nappe carrée blanc. 240cm\r\n\r\nNon repassée 6.00€\r\nRepassée 7.60 €', 'Nappe carrée blanc. 240 cm', 'Nappe carrée blanc. 240\r\ncm', 'publish', 'closed', 'closed', '', 'nappe-carree-blanc-240-cm', '', '', '2016-09-23 11:54:19', '2016-09-23 09:54:19', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=183', 0, 'al_product', '', 0),
(184, 1, '2016-09-23 11:52:08', '2016-09-23 09:52:08', '', '11751272_507819089367186_1989817579_n-768x577', '', 'inherit', 'open', 'closed', '', '11751272_507819089367186_1989817579_n-768x577', '', '', '2016-09-23 11:52:08', '2016-09-23 09:52:08', '', 183, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/11751272_507819089367186_1989817579_n-768x577.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2016-09-23 11:56:54', '2016-09-23 09:56:54', 'Non repassée 6.80€\r\nRepassée 8.20 €\r\n', 'Nappe ronde blanc. 290 cm', 'Nappe ronde blanc. 290 cm', 'publish', 'closed', 'closed', '', 'nappe-ronde-blanc-290-cm', '', '', '2016-09-23 11:56:54', '2016-09-23 09:56:54', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=185', 0, 'al_product', '', 0),
(186, 1, '2016-09-23 11:57:39', '2016-09-23 09:57:39', 'Non repassée 6.00€\r\nRepassée 7.60 €', 'Nappe rectangle blanc. 140x300', 'Nappe rectangle blanc.\r\n140x300', 'publish', 'closed', 'closed', '', 'nappe-rectangle-blanc-140x300', '', '', '2016-09-23 11:57:53', '2016-09-23 09:57:53', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=186', 0, 'al_product', '', 0),
(187, 1, '2016-09-23 12:00:11', '2016-09-23 10:00:11', 'Non repassée 0.30€\r\nRepassée 0.60 €', 'Serviette de table blanc', 'Serviette de table blanc', 'publish', 'closed', 'closed', '', 'serviette-de-table-blanc', '', '', '2016-09-23 12:00:11', '2016-09-23 10:00:11', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=187', 0, 'al_product', '', 0),
(188, 1, '2016-09-23 12:00:02', '2016-09-23 10:00:02', '', '11759408_507819076033854_450547215_n-640x410', '', 'inherit', 'open', 'closed', '', '11759408_507819076033854_450547215_n-640x410', '', '', '2016-09-23 12:00:02', '2016-09-23 10:00:02', '', 187, 'http://localhost/wordpress-fedala/wp-content/uploads/2016/09/11759408_507819076033854_450547215_n-640x410.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2016-09-23 12:00:53', '2016-09-23 10:00:53', '', 'Chemin de table satin', 'Chemin de table satin', 'publish', 'closed', 'closed', '', 'chemin-de-table-satin', '', '', '2016-09-23 12:00:53', '2016-09-23 10:00:53', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=189', 0, 'al_product', '', 0),
(190, 1, '2016-09-23 12:02:02', '2016-09-23 10:02:02', '', 'Kit vaisselle complet', 'Kit vaisselle complet', 'publish', 'closed', 'closed', '', 'kit-vaisselle-complet', '', '', '2016-09-23 12:02:02', '2016-09-23 10:02:02', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=190', 0, 'al_product', '', 0),
(191, 1, '2016-09-23 12:02:42', '2016-09-23 10:02:42', '', 'Vase martini 60/70 cm', 'Vase martini 60/70 cm', 'publish', 'closed', 'closed', '', 'vase-martini-6070-cm', '', '', '2016-09-23 12:02:42', '2016-09-23 10:02:42', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=191', 0, 'al_product', '', 0),
(192, 1, '2016-09-23 12:03:22', '2016-09-23 10:03:22', '', 'Vase bombé 32 cm', 'Vase bombé 32 cm', 'publish', 'closed', 'closed', '', 'vase-bombe-32-cm', '', '', '2016-09-23 12:03:22', '2016-09-23 10:03:22', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=192', 0, 'al_product', '', 0),
(193, 1, '2016-09-23 12:04:25', '2016-09-23 10:04:25', '', 'Chandelier blanc, fuchsia, argent', 'Chandelier blanc, fuchsia, argent', 'publish', 'closed', 'closed', '', 'chandelier-blanc-fuchsia-argent', '', '', '2016-09-23 12:04:25', '2016-09-23 10:04:25', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=193', 0, 'al_product', '', 0),
(194, 1, '2016-09-23 12:05:05', '2016-09-23 10:05:05', '', 'Vase soliflore 60 cm', 'Vase soliflore 60 cm', 'publish', 'closed', 'closed', '', 'vase-soliflore-60-cm', '', '', '2016-09-23 12:05:05', '2016-09-23 10:05:05', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=194', 0, 'al_product', '', 0),
(195, 1, '2016-09-23 12:09:20', '2016-09-23 10:09:20', 'FORFAIT BASIQUE : 5.00 € / personne\r\n<ul>\r\n\r\n	<li>Nappage en tissu</li>\r\n	<li>Housse lycra</li>\r\n	<li>Nœud de chaise organza ou satin couleur au choix</li>\r\n	<li>Chemin de table assorti</li>\r\n	<li>Serviette de table en tissu</li>\r\n</ul>\r\n\r\n', 'FORFAIT BASIQUE : 5.00 € / personne', '', 'publish', 'closed', 'closed', '', 'forfait-basique-5-00-e-personne', '', '', '2016-09-23 12:09:20', '2016-09-23 10:09:20', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=195', 0, 'al_product', '', 0),
(196, 1, '2016-09-23 12:11:07', '2016-09-23 10:11:07', 'FORFAIT CONFORT : 7.00 € / personne\r\n\r\nNappage en tissu\r\nHousse lycra\r\nNœud de chaise organza ou satin couleur au choix\r\nChemin de table assorti\r\nServiette de table en tissu\r\nMise en place du couvert', 'FORFAIT CONFORT : 7.00 € / personne', 'FORFAIT CONFORT : 7.00 € / personne\r\n', 'publish', 'closed', 'closed', '', 'forfait-confort-7-00-e-personne', '', '', '2016-09-23 12:11:07', '2016-09-23 10:11:07', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=196', 0, 'al_product', '', 0),
(197, 1, '2016-09-23 12:12:18', '2016-09-23 10:12:18', 'FORFAIT ELEGANCE : 9.00 € / personne\r\n\r\nNappage en tissu\r\nHousse lycra\r\nNœud de chaise organza ou satin couleur au choix\r\nChemin de table assorti\r\nServiette de table en tissu\r\nVase et composition florale\r\nMise en place du couvert\r\nAccessoires : perles de pluies, plumes, bougies, miroir, rince doigt...', 'FORFAIT ELEGANCE : 9.00 € / personne', 'FORFAIT ELEGANCE : 9.00 € / personne', 'publish', 'closed', 'closed', '', 'forfait-elegance-9-00-e-personne', '', '', '2016-09-23 12:12:18', '2016-09-23 10:12:18', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=197', 0, 'al_product', '', 0),
(198, 1, '2016-09-23 12:13:19', '2016-09-23 10:13:19', 'FORFAIT PRESTIGE : 10.30 € / personne\r\n\r\nNappage en tissu\r\nHousse lycra\r\nNœud de chaise organza ou satin couleur au choix\r\nChemin de table assorti\r\nServiette de table en tissu\r\nVase et composition florale\r\nMise en place du couvert\r\nAccessoires : perles de pluies, plumes, bougies, miroir, rince doigt...\r\nCoin des mariés : trône au choix, rideaux lumineux max 6M, table basse,\r\nluminaire d’ambiance, piliers d’honneur chemin de traverse.', 'FORFAIT PRESTIGE : 10.30 € / personne', 'FORFAIT PRESTIGE : 10.30 € / personne\r\n', 'publish', 'closed', 'closed', '', 'forfait-prestige-10-30-e-personne', '', '', '2016-09-23 12:15:32', '2016-09-23 10:15:32', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&#038;p=198', 0, 'al_product', '', 0),
(199, 1, '2016-09-23 12:18:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-09-23 12:18:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-fedala/?post_type=al_product&p=199', 0, 'al_product', '', 0);
=======
(178, 1, '2016-09-23 11:23:26', '2016-09-23 09:23:26', 'Maxi cup cake varié - 1,30 €\r\n\r\nMuffin - 1,30 €\r\n\r\nCarrot’cake - 1,70 €\r\n\r\nCheese cake - 2,00 €\r\n\r\nMini brownie - 0,70 €\r\n\r\nMini financier - 0,55 €\r\n\r\nMini éclair - 0,45 €\r\n\r\nMini macaron varié - 0,66 €\r\n\r\nBriouate - 0,80 €\r\n\r\nBaklava - 0,60\r\n\r\nFondant aux dattes - 0,45 €\r\n\r\nGribas noix de coco - 0,50 €\r\n\r\nMakroud - 0,40 €\r\n\r\nChabbakias - 0,60 €\r\n\r\nNoix (pâtisserie en forme de noix) - 0,70 €\r\n\r\nTartelette chocolat - 0,55 €\r\n\r\nTartelette citron - 0,55 €\r\n\r\nSalade de fruits frais de saison - 2,40 €\r\n\r\nCookies - 0,70 €', 'Petites douceurs', '', 'publish', 'closed', 'closed', '', 'petites-douceurs', '', '', '2016-09-23 11:50:45', '2016-09-23 09:50:45', '', 10, 'http://localhost/wordpress-fedala/?page_id=178', 0, 'page', '', 0),
(179, 1, '2016-09-23 11:22:18', '2016-09-23 09:22:18', 'entrée 01 - 5,00 €\r\n\r\nentrée 02 - 5,00 €\r\n\r\nentrée 03 - 5,00 €', 'Les plats', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-09-23 11:22:18', '2016-09-23 09:22:18', '', 12, 'http://localhost/wordpress-fedala/?p=179', 0, 'revision', '', 0),
(180, 1, '2016-09-23 11:22:37', '2016-09-23 09:22:37', 'plat 01 - 5,00 €\r\n\r\nplat 02 - 5,00 €\r\n\r\nplat 03 - 5,00 €', 'Accompagnements', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-09-23 11:22:37', '2016-09-23 09:22:37', '', 14, 'http://localhost/wordpress-fedala/?p=180', 0, 'revision', '', 0),
(181, 1, '2016-09-23 11:22:43', '2016-09-23 09:22:43', 'entrée 01 - 5,00 €\r\n\r\nentrée 02 - 5,00 €\r\n\r\nentrée 03 - 5,00 €', 'Plats', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-09-23 11:22:43', '2016-09-23 09:22:43', '', 12, 'http://localhost/wordpress-fedala/?p=181', 0, 'revision', '', 0),
(182, 1, '2016-09-23 11:22:53', '2016-09-23 09:22:53', 'dessert 01 - 5,00 €\r\n\r\ndessert 02 - 5,00 €\r\n\r\ndessert 03 - 5,00 €', 'Mini salés', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-09-23 11:22:53', '2016-09-23 09:22:53', '', 16, 'http://localhost/wordpress-fedala/?p=182', 0, 'revision', '', 0),
(183, 1, '2016-09-23 11:23:26', '2016-09-23 09:23:26', '', 'Petites douceurs', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2016-09-23 11:23:26', '2016-09-23 09:23:26', '', 178, 'http://localhost/wordpress-fedala/?p=183', 0, 'revision', '', 0),
(184, 1, '2016-09-23 11:28:44', '2016-09-23 09:28:44', 'Tajine de poulet aux olives - 6,00 €\n\nTajine bœuf aux pruneaux, abricots et amandes grillées - 7,50 €\n\nTajine agneau aux raisins - 8,30 €\n\nCouscous poulet - 6,00 €\n\nCouscous bœuf - 6,50 €\n\nCouscous agneau - 7,50 €\n\nCouscous poulet bœuf merguez - 9,50 €\n\nCouscous poulet agneau merguez - 10,50 €\n\nSupplément merguez - 1,00 €\n\nPaella - 7,80 €\n\nPaella avec langoustine - 8,', 'Plats', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2016-09-23 11:28:44', '2016-09-23 09:28:44', '', 12, 'http://localhost/wordpress-fedala/?p=184', 0, 'revision', '', 0),
(185, 1, '2016-09-23 11:30:25', '2016-09-23 09:30:25', 'Tajine de poulet aux olives - 6,00 €\r\n\r\nTajine bœuf aux pruneaux, abricots et amandes grillées - 7,50 €\r\n\r\nTajine agneau aux raisins - 8,30 €\r\n\r\nCouscous poulet - 6,00 €\r\n\r\nCouscous bœuf - 6,50 €\r\n\r\nCouscous agneau - 7,50 €\r\n\r\nCouscous poulet bœuf merguez - 9,50 €\r\n\r\nCouscous poulet agneau merguez - 10,50 €\r\n\r\nSupplément merguez - 1,00 €\r\n\r\nPaella - 7,80 €\r\n\r\nPaella avec langoustine - 8,50 €\r\n\r\nOsso bucco de dinde - 7,00 €\r\n\r\nOsso bucco de veau - 8,90 €\r\n\r\nTrio de farcis à l’agneau (min 6 parts) - 7,90 €\r\n\r\nGigot de 7 heures (min 10 parts) - 7,80 €\r\n\r\nTourte orientale (min 6 parts) - 2,80 €\r\n\r\nLasagne - 4,90 €\r\n\r\nHarcha aux olives et fromage - 2,10 €', 'Plats', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-09-23 11:30:25', '2016-09-23 09:30:25', '', 12, 'http://localhost/wordpress-fedala/?p=185', 0, 'revision', '', 0),
(186, 1, '2016-09-23 11:38:39', '2016-09-23 09:38:39', 'Pommes de terre persillées - 0,50 €\n\nPommes de terre rôties à la suédoise - 0,90 €\n\nPoêlée de légumes frais - 1,10 €\n\nSemoule - 0,50 €\n\nBoulgour - 0,90 €\n\nRatatouille - 1,30 €\n\nTagliatelles - 0,70 €\n\nGratin dauphinois - 1,20 €\n\nRiz blanc - 0,80', 'Accompagnements', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2016-09-23 11:38:39', '2016-09-23 09:38:39', '', 14, 'http://localhost/wordpress-fedala/?p=186', 0, 'revision', '', 0),
(187, 1, '2016-09-23 11:39:11', '2016-09-23 09:39:11', 'Pommes de terre persillées - 0,50 €\r\n\r\nPommes de terre rôties à la suédoise - 0,90 €\r\n\r\nPoêlée de légumes frais - 1,10 €\r\n\r\nSemoule - 0,50 €\r\n\r\nBoulgour - 0,90 €\r\n\r\nRatatouille - 1,30 €\r\n\r\nTagliatelles - 0,70 €\r\n\r\nGratin dauphinois - 1,20 €\r\n\r\nRiz blanc - 0,80 €\r\n\r\nRiz pilaf - 1,00 €\r\n\r\nPotatoes - 0,90 €\r\n\r\nRösti - 0,80 €', 'Accompagnements', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-09-23 11:39:11', '2016-09-23 09:39:11', '', 14, 'http://localhost/wordpress-fedala/?p=187', 0, 'revision', '', 0),
(188, 1, '2016-09-23 11:41:55', '2016-09-23 09:41:55', 'Croissant à la viande - 0,50 €\n\nCroissant au fromage et ail concassé - 0,50 €\n\nTarte napolitaine - 0,50 €\n\nTarte saumon à la crème et aux herbes - 0,50 €\n\nTarte saumon et fondue de poireaux - 0,50 €\n\nCiabbata au saumon fromage frais crudités - 1,65 €\n\nMini ciabbata poulet à l’indienne - 1,65 €\n\nNavette crudités thon - 0,90 €\n\nNavette crudités poulet - 0,90 €\n\nSamoussa bœuf et légumes - 0,90 €', 'Mini salés', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2016-09-23 11:41:55', '2016-09-23 09:41:55', '', 16, 'http://localhost/wordpress-fedala/?p=188', 0, 'revision', '', 0),
(189, 1, '2016-09-23 11:43:36', '2016-09-23 09:43:36', 'Croissant à la viande - 0,50 €\r\n\r\nCroissant au fromage et ail concassé - 0,50 €\r\n\r\nTarte napolitaine - 0,50 €\r\n\r\nTarte saumon à la crème et aux herbes - 0,50 €\r\n\r\nTarte saumon et fondue de poireaux - 0,50 €\r\n\r\nCiabbata au saumon fromage frais crudités - 1,65 €\r\n\r\nMini ciabbata poulet à l’indienne - 1,65 €\r\n\r\nNavette crudités thon - 0,90 €\r\n\r\nNavette crudités poulet - 0,90 €\r\n\r\nSamoussa bœuf et légumes - 0,90 €\r\n\r\nSamoussa au poulet épices douces - 0,90 €\r\n\r\nSamoussa aux fruits de mer - 1,00 €\r\n\r\nRouleau de printemps poulet crudités - 1,10 €\r\n\r\nCake au thon olive et fromage - 0,55 €\r\n\r\nCake mimolette poulet paprika - 0,55 €\r\n\r\nCake chèvre figue et noix grillées - 0,55 €\r\n\r\nAccras de morue - 0,29 €\r\n\r\nCarré pain polaire au saumon - 0,80 €\r\n\r\nToasts aux tapenades variées - 0,35 €\r\n\r\nVerrines variées - 1,10 €', 'Mini salés', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-09-23 11:43:36', '2016-09-23 09:43:36', '', 16, 'http://localhost/wordpress-fedala/?p=189', 0, 'revision', '', 0),
(190, 1, '2016-09-23 11:44:00', '2016-09-23 09:44:00', 'Croissant à la viande - 0,50 €\r\n\r\nCroissant au fromage et ail concassé - 0,50 €\r\n\r\nTarte napolitaine - 0,50 €\r\n\r\nTarte saumon à la crème et aux herbes - 0,50 €\r\n\r\nTarte saumon et fondue de poireaux - 0,50 €\r\n\r\nCiabbata au saumon fromage frais crudités - 1,65 €\r\n\r\nMini ciabbata poulet à l’indienne - 1,65 €\r\n\r\nNavette crudités thon - 0,90 €\r\n\r\nNavette crudités poulet - 0,90 €\r\n\r\nSamoussa bœuf et légumes - 0,90 €\r\n\r\nSamoussa au poulet épices douces - 0,90 €\r\n\r\nSamoussa aux fruits de mer - 1,00 €\r\n\r\nRouleau de printemps poulet crudités - 1,10 €\r\n\r\nCake au thon olive et fromage - 0,55 €\r\n\r\nCake mimolette poulet paprika - 0,55 €\r\n\r\nCake chèvre figue et noix grillées - 0,55 €\r\n\r\nAccras de morue - 0,29 €\r\n\r\nCarré pain polaire au saumon - 0,80 €\r\n\r\nToasts aux tapenades variées - 0,35 €\r\n\r\nVerrines variées - 1,10 €', 'Mini salés', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-09-23 11:44:00', '2016-09-23 09:44:00', '', 16, 'http://localhost/wordpress-fedala/?p=190', 0, 'revision', '', 0),
(191, 1, '2016-09-23 11:45:01', '2016-09-23 09:45:01', 'Croissant à la viande - 0,50 €\r\n\r\nCroissant au fromage et ail concassé - 0,50 €\r\n\r\nTarte napolitaine - 0,50 €\r\n\r\nTarte saumon à la crème et aux herbes - 0,50 €\r\n\r\nTarte saumon et fondue de poireaux - 0,50 €\r\n\r\nCiabbata au saumon fromage frais crudités - 1,65 €\r\n\r\nMini ciabbata poulet à l’indienne - 1,65 €\r\n\r\nNavette crudités thon - 0,90 €\r\n\r\nNavette crudités poulet - 0,90 €\r\n\r\nSamoussa bœuf et légumes - 0,90 €\r\n\r\nSamoussa au poulet épices douces - 0,90 €\r\n\r\nSamoussa aux fruits de mer - 1,00 €\r\n\r\nRouleau de printemps poulet crudités - 1,10 €\r\n\r\nCake au thon olive et fromage - 0,55 €\r\n\r\nCake mimolette poulet paprika - 0,55 €\r\n\r\nCake chèvre figue et noix grillées - 0,55 €\r\n\r\nAccras de morue - 0,29 €\r\n\r\nCarré pain polaire au saumon - 0,80 €\r\n\r\nToasts aux tapenades variées - 0,35 €\r\n\r\nVerrines variées - 1,10 €', 'Mini salés', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-09-23 11:45:01', '2016-09-23 09:45:01', '', 16, 'http://localhost/wordpress-fedala/?p=191', 0, 'revision', '', 0),
(192, 1, '2016-09-23 11:50:27', '2016-09-23 09:50:27', 'Maxi cup cake varié - 1,30 €\n\nMuffin - 1,30 €\n\nCarrot’cake - 1,70 €\nCheese cake - 2,00 €\nMini brownie - 0,70 €\nMini financier - 0,55 €\nMini éclair - 0,45 €\nMini macaron varié - 0,66 €\nBriouate - 0,80 €\nBaklava - 0,60 €\nFondant aux dattes - 0,45 €\nGribas noix de coco - 0,50 €\nMakroud - 0,40 €\nChabbakias - 0,60 €\nNoix (pâtisserie en forme de noix) - 0,70 €\nTartelette chocolat - 0,55 €\nTartelette citron - 0,55 €\n\nSalade de fruits frais de saison - 2,40 €\n\nCookies - 0,70 €', 'Petites douceurs', '', 'inherit', 'closed', 'closed', '', '178-autosave-v1', '', '', '2016-09-23 11:50:27', '2016-09-23 09:50:27', '', 178, 'http://localhost/wordpress-fedala/?p=192', 0, 'revision', '', 0),
(193, 1, '2016-09-23 11:50:45', '2016-09-23 09:50:45', 'Maxi cup cake varié - 1,30 €\r\n\r\nMuffin - 1,30 €\r\n\r\nCarrot’cake - 1,70 €\r\n\r\nCheese cake - 2,00 €\r\n\r\nMini brownie - 0,70 €\r\n\r\nMini financier - 0,55 €\r\n\r\nMini éclair - 0,45 €\r\n\r\nMini macaron varié - 0,66 €\r\n\r\nBriouate - 0,80 €\r\n\r\nBaklava - 0,60\r\n\r\nFondant aux dattes - 0,45 €\r\n\r\nGribas noix de coco - 0,50 €\r\n\r\nMakroud - 0,40 €\r\n\r\nChabbakias - 0,60 €\r\n\r\nNoix (pâtisserie en forme de noix) - 0,70 €\r\n\r\nTartelette chocolat - 0,55 €\r\n\r\nTartelette citron - 0,55 €\r\n\r\nSalade de fruits frais de saison - 2,40 €\r\n\r\nCookies - 0,70 €', 'Petites douceurs', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2016-09-23 11:50:45', '2016-09-23 09:50:45', '', 178, 'http://localhost/wordpress-fedala/?p=193', 0, 'revision', '', 0);
>>>>>>> d6aeab2c933058ccde32876caeb1b267aa35cf79

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_termmeta`
--

CREATE TABLE `fedalawp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_terms`
--

CREATE TABLE `fedalawp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_terms`
--

INSERT INTO `fedalawp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'navbar-top', 'navbar-top', 0),
(3, 'Vaisselle', 'vaisselle', 0),
(4, 'Décoration', 'decoration', 0),
(5, 'Traiteur', 'traiteur', 0);

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_term_relationships`
--

CREATE TABLE `fedalawp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_term_relationships`
--

INSERT INTO `fedalawp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(25, 2, 0),
(26, 2, 0),
(51, 3, 0),
(52, 3, 0),
(53, 3, 0),
(54, 4, 0),
(167, 1, 0),
(169, 1, 0),
(175, 4, 0),
(178, 4, 0),
(182, 4, 0),
(183, 4, 0),
(185, 4, 0),
(186, 4, 0),
(187, 4, 0),
(189, 4, 0),
(190, 3, 0),
(191, 4, 0),
(192, 4, 0),
(193, 4, 0),
(194, 4, 0),
(195, 4, 0),
(196, 4, 0),
(197, 4, 0),
(198, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_term_taxonomy`
--

CREATE TABLE `fedalawp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_term_taxonomy`
--

INSERT INTO `fedalawp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'al_product-cat', 'Louez notre belle vaisselle !', 0, 1),
(4, 4, 'al_product-cat', 'Louez nos magnifiques articles de décoration !', 0, 15),
(5, 5, 'al_product-cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_usermeta`
--

CREATE TABLE `fedalawp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_usermeta`
--

INSERT INTO `fedalawp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'fedala'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'fedalawp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'fedalawp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:9:{s:64:"21269efa57c1e08167851ed87c64ba9a2bdec15f1084fa0152811e1978d79afe";a:4:{s:10:"expiration";i:1475235932;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474026332;}s:64:"260f56ef346d805ce250b63e8cd7c8261d6c2da59bbb62fca6341c63bf0d583b";a:4:{s:10:"expiration";i:1474623625;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474450825;}s:64:"8f8d8de26cc1db1e52513170835de6391fd74b7d1101fe7a231e421a359a9335";a:4:{s:10:"expiration";i:1474636943;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474464143;}s:64:"29ac0a0299083ac2123b15ca78a446b3c9ebbb5d40a538cb2e101503d16208ce";a:4:{s:10:"expiration";i:1474703407;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474530607;}s:64:"678e567aeeef113c2d9dca53806ec9947ea8554bcf34197659b40ac5bbb0dd8b";a:4:{s:10:"expiration";i:1474789252;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474616452;}s:64:"ce969d834988e56ab6f34e877c2e9c61c03f727c42500884356ff6b2af33d108";a:4:{s:10:"expiration";i:1475827018;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474617418;}s:64:"25e586cfc16b332e6de9d3f75db07964d0b37f359a0736e753bd1477cc18f51a";a:4:{s:10:"expiration";i:1474792993;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.92 Safari/537.36";s:5:"login";i:1474620193;}s:64:"4a10be68b3fdd65461b0f8e891fbb2899805180c80f3b2240f7da3aecd157fb6";a:4:{s:10:"expiration";i:1474793733;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474620933;}s:64:"44be55313daa6b84899a31054f547e9a679de42223bd8d0b2ca5fcf82b91f7be";a:4:{s:10:"expiration";i:1474796405;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1474623605;}}'),
(15, 1, 'fedalawp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'fedalawp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'fedalawp_user-settings-time', '1474623643');

-- --------------------------------------------------------

--
-- Structure de la table `fedalawp_users`
--

CREATE TABLE `fedalawp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contenu de la table `fedalawp_users`
--

INSERT INTO `fedalawp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'fedala', '$P$B3iUAWlCLNnvGcpD3BqtnzJFBhCfJe/', 'fedala', 'root@127.0.0.1', '', '2016-09-16 11:44:24', '', 0, 'fedala');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `fedalawp_commentmeta`
--
ALTER TABLE `fedalawp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `fedalawp_comments`
--
ALTER TABLE `fedalawp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `fedalawp_links`
--
ALTER TABLE `fedalawp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `fedalawp_options`
--
ALTER TABLE `fedalawp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `fedalawp_postmeta`
--
ALTER TABLE `fedalawp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `fedalawp_posts`
--
ALTER TABLE `fedalawp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `fedalawp_termmeta`
--
ALTER TABLE `fedalawp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `fedalawp_terms`
--
ALTER TABLE `fedalawp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `fedalawp_term_relationships`
--
ALTER TABLE `fedalawp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `fedalawp_term_taxonomy`
--
ALTER TABLE `fedalawp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `fedalawp_usermeta`
--
ALTER TABLE `fedalawp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `fedalawp_users`
--
ALTER TABLE `fedalawp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `fedalawp_commentmeta`
--
ALTER TABLE `fedalawp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fedalawp_comments`
--
ALTER TABLE `fedalawp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fedalawp_links`
--
ALTER TABLE `fedalawp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fedalawp_options`
--
ALTER TABLE `fedalawp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;
--
-- AUTO_INCREMENT pour la table `fedalawp_postmeta`
--
ALTER TABLE `fedalawp_postmeta`
<<<<<<< HEAD
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=904;
=======
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;
>>>>>>> d6aeab2c933058ccde32876caeb1b267aa35cf79
--
-- AUTO_INCREMENT pour la table `fedalawp_posts`
--
ALTER TABLE `fedalawp_posts`
<<<<<<< HEAD
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
=======
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
>>>>>>> d6aeab2c933058ccde32876caeb1b267aa35cf79
--
-- AUTO_INCREMENT pour la table `fedalawp_termmeta`
--
ALTER TABLE `fedalawp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fedalawp_terms`
--
ALTER TABLE `fedalawp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `fedalawp_term_taxonomy`
--
ALTER TABLE `fedalawp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `fedalawp_usermeta`
--
ALTER TABLE `fedalawp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `fedalawp_users`
--
ALTER TABLE `fedalawp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
