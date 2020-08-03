-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 03, 2020 at 07:00 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u839831317_casestudy1`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_commentmeta`
--

CREATE TABLE `case_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_comments`
--

CREATE TABLE `case_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_links`
--

CREATE TABLE `case_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_options`
--

CREATE TABLE `case_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_options`
--

INSERT INTO `case_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://stardigitex.com/casestudy1', 'yes'),
(2, 'home', 'https://stardigitex.com/casestudy1', 'yes'),
(3, 'blogname', 'Case Study', 'yes'),
(4, 'blogdescription', 'Case Study', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'izharusmani786@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'casestudy1', 'yes'),
(41, 'stylesheet', 'casestudy1', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '54', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1611574064', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'case_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1596400065;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1596410865;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1596454065;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596454071;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596454073;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596713265;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1596379601;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1596031136;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_timeout_browser_5fa42a5ced972bb6d5ae8800e98bebfb', '1596626872', 'no'),
(125, '_site_transient_browser_5fa42a5ced972bb6d5ae8800e98bebfb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"84.0.4147.89\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_80bc207537711bbc111e88c4ab5d2dc5', '1596626873', 'no'),
(127, '_site_transient_php_check_80bc207537711bbc111e88c4ab5d2dc5', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1596379605;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(153, '_site_transient_timeout_browser_72f533ef66d493b897f3cfc643e15448', '1596633068', 'no'),
(154, '_site_transient_browser_72f533ef66d493b897f3cfc643e15448', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.105\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(160, 'current_theme', 'Casestudy1', 'yes'),
(161, 'theme_mods_casestudy1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:19:\"ot_set_google_fonts\";a:0:{}}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(164, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1596379604;s:7:\"checked\";a:4:{s:10:\"casestudy1\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.6\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(172, 'WPLANG', '', 'yes'),
(173, 'new_admin_email', 'izharusmani786@gmail.com', 'yes'),
(206, '_site_transient_timeout_php_check_75e04be8322671c786117633c455e7a7', '1596713440', 'no'),
(207, '_site_transient_php_check_75e04be8322671c786117633c455e7a7', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(208, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"7\",\"critical\":\"0\"}', 'yes'),
(227, 'recovery_mode_email_last_sent', '1596219492', 'yes'),
(228, 'option_tree_settings', 'a:3:{s:15:\"contextual_help\";a:2:{s:7:\"content\";a:1:{i:0;a:3:{s:2:\"id\";s:17:\"option_types_help\";s:5:\"title\";s:12:\"Option Types\";s:7:\"content\";s:25:\" Help content goes here! \";}}s:7:\"sidebar\";s:28:\" Sidebar content goes here! \";}s:8:\"sections\";a:1:{i:0;a:2:{s:2:\"id\";s:7:\"general\";s:5:\"title\";s:7:\"General\";}}s:8:\"settings\";a:4:{i:0;a:10:{s:2:\"id\";s:16:\"header_logo_text\";s:5:\"label\";s:9:\"Logo Text\";s:4:\"desc\";s:19:\"Logo in text format\";s:7:\"section\";s:7:\"general\";s:4:\"type\";s:4:\"text\";s:3:\"std\";s:0:\"\";s:5:\"class\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:7:\"choices\";a:0:{}}i:1;a:10:{s:2:\"id\";s:19:\"header_logo_tagline\";s:5:\"label\";s:12:\"Logo Tagline\";s:4:\"desc\";s:27:\"Logo Tagline in text format\";s:7:\"section\";s:7:\"general\";s:4:\"type\";s:4:\"text\";s:3:\"std\";s:0:\"\";s:5:\"class\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:7:\"choices\";a:0:{}}i:2;a:13:{s:2:\"id\";s:15:\"logo_azoncastv2\";s:5:\"label\";s:11:\"Header Logo\";s:4:\"desc\";s:23:\"Upload your header logo\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:7:\"general\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:3;a:13:{s:2:\"id\";s:18:\"Favicon_azoncastv2\";s:5:\"label\";s:7:\"Favicon\";s:4:\"desc\";s:25:\"Upload your favicon image\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:7:\"general\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}}}', 'yes'),
(230, 'ot_media_post_ID', '46', 'yes'),
(240, 'option_tree', 'a:4:{s:16:\"header_logo_text\";s:4:\"Vlog\";s:19:\"header_logo_tagline\";s:16:\"Video say it all\";s:15:\"logo_azoncastv2\";s:0:\"\";s:18:\"Favicon_azoncastv2\";s:0:\"\";}', 'yes'),
(252, 'slider_cat_children', 'a:0:{}', 'yes'),
(254, 'category_children', 'a:0:{}', 'yes'),
(258, '_site_transient_timeout_theme_roots', '1596381403', 'no'),
(259, '_site_transient_theme_roots', 'a:4:{s:10:\"casestudy1\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(263, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `case_postmeta`
--

CREATE TABLE `case_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_postmeta`
--

INSERT INTO `case_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(6, 6, '_edit_lock', '1596022497:1'),
(7, 8, '_edit_lock', '1596022530:1'),
(8, 9, '_edit_last', '1'),
(9, 9, '_wp_page_template', 'default'),
(10, 9, '_edit_lock', '1596022571:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_wp_page_template', 'default'),
(13, 11, '_edit_lock', '1596022586:1'),
(14, 13, '_edit_last', '1'),
(15, 13, '_wp_page_template', 'default'),
(16, 13, '_edit_lock', '1596022595:1'),
(17, 15, '_edit_last', '1'),
(18, 15, '_wp_page_template', 'default'),
(19, 15, '_edit_lock', '1596077553:1'),
(20, 17, '_edit_last', '1'),
(21, 17, '_edit_lock', '1596304189:1'),
(22, 18, '_wp_attached_file', '2020/07/nature-1264041_960_720.jpg'),
(23, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:576;s:4:\"file\";s:34:\"2020/07/nature-1264041_960_720.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"nature-1264041_960_720-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"nature-1264041_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"nature-1264041_960_720-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 19, '_wp_attached_file', '2020/07/screenshot.png'),
(25, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1420;s:6:\"height\";i:526;s:4:\"file\";s:22:\"2020/07/screenshot.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"screenshot-300x111.png\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"screenshot-1024x379.png\";s:5:\"width\";i:1024;s:6:\"height\";i:379;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"screenshot-768x284.png\";s:5:\"width\";i:768;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 20, '_wp_attached_file', '2020/07/slide1.jpg'),
(27, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:171;s:4:\"file\";s:18:\"2020/07/slide1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 17, '_thumbnail_id', '26'),
(29, 21, '_edit_last', '1'),
(30, 21, '_edit_lock', '1596304184:1'),
(31, 21, '_thumbnail_id', '18'),
(32, 22, '_edit_last', '1'),
(33, 22, '_edit_lock', '1596304179:1'),
(34, 22, '_thumbnail_id', '24'),
(35, 23, '_wp_attached_file', '2020/07/African-Elephant-Wallpapers-1.jpg'),
(36, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1000;s:4:\"file\";s:41:\"2020/07/African-Elephant-Wallpapers-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"African-Elephant-Wallpapers-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"African-Elephant-Wallpapers-1-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"African-Elephant-Wallpapers-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"African-Elephant-Wallpapers-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"African-Elephant-Wallpapers-1-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 24, '_wp_attached_file', '2020/07/Elephant-grass-trees_1920x1080.jpg'),
(38, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:42:\"2020/07/Elephant-grass-trees_1920x1080.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Elephant-grass-trees_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"Elephant-grass-trees_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Elephant-grass-trees_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"Elephant-grass-trees_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"Elephant-grass-trees_1920x1080-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 26, '_wp_attached_file', '2020/07/BdZjZNs.jpg'),
(40, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2020/07/BdZjZNs.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"BdZjZNs-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"BdZjZNs-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"BdZjZNs-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"BdZjZNs-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"BdZjZNs-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 27, '_wp_attached_file', '2020/07/blog-post-image-guide.jpg'),
(42, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:420;s:4:\"file\";s:33:\"2020/07/blog-post-image-guide.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(43, 28, '_wp_attached_file', '2020/07/images.jpg'),
(44, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2020/07/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 29, '_wp_attached_file', '2020/07/images-1.jpg'),
(46, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2020/07/images-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 30, '_wp_attached_file', '2020/07/writers-blog-ftr.jpg'),
(48, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1240;s:6:\"height\";i:775;s:4:\"file\";s:28:\"2020/07/writers-blog-ftr.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"writers-blog-ftr-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"writers-blog-ftr-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"writers-blog-ftr-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"writers-blog-ftr-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 32, '_edit_last', '1'),
(54, 32, '_edit_lock', '1596049889:1'),
(55, 32, '_thumbnail_id', '27'),
(57, 34, '_edit_last', '1'),
(58, 34, '_thumbnail_id', '28'),
(60, 34, '_edit_lock', '1596049904:1'),
(61, 36, '_edit_last', '1'),
(62, 36, '_thumbnail_id', '29'),
(64, 36, '_edit_lock', '1596049917:1'),
(65, 38, '_edit_last', '1'),
(66, 38, '_thumbnail_id', '30'),
(68, 38, '_edit_lock', '1596049928:1'),
(69, 40, '_edit_last', '1'),
(70, 40, '_thumbnail_id', '23'),
(72, 40, '_edit_lock', '1596049945:1'),
(73, 42, '_edit_last', '1'),
(74, 42, '_thumbnail_id', '27'),
(76, 42, '_edit_lock', '1596224645:1'),
(77, 44, '_edit_last', '1'),
(78, 44, '_thumbnail_id', '28'),
(80, 44, '_edit_lock', '1596303424:1'),
(82, 44, 'eclude_post', 'on'),
(84, 48, '_menu_item_type', 'post_type'),
(85, 48, '_menu_item_menu_item_parent', '0'),
(86, 48, '_menu_item_object_id', '6'),
(87, 48, '_menu_item_object', 'page'),
(88, 48, '_menu_item_target', ''),
(89, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 48, '_menu_item_xfn', ''),
(91, 48, '_menu_item_url', ''),
(93, 49, '_menu_item_type', 'post_type'),
(94, 49, '_menu_item_menu_item_parent', '53'),
(95, 49, '_menu_item_object_id', '13'),
(96, 49, '_menu_item_object', 'page'),
(97, 49, '_menu_item_target', ''),
(98, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 49, '_menu_item_xfn', ''),
(100, 49, '_menu_item_url', ''),
(102, 50, '_menu_item_type', 'post_type'),
(103, 50, '_menu_item_menu_item_parent', '0'),
(104, 50, '_menu_item_object_id', '9'),
(105, 50, '_menu_item_object', 'page'),
(106, 50, '_menu_item_target', ''),
(107, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 50, '_menu_item_xfn', ''),
(109, 50, '_menu_item_url', ''),
(111, 51, '_menu_item_type', 'post_type'),
(112, 51, '_menu_item_menu_item_parent', '0'),
(113, 51, '_menu_item_object_id', '15'),
(114, 51, '_menu_item_object', 'page'),
(115, 51, '_menu_item_target', ''),
(116, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 51, '_menu_item_xfn', ''),
(118, 51, '_menu_item_url', ''),
(120, 52, '_menu_item_type', 'post_type'),
(121, 52, '_menu_item_menu_item_parent', '0'),
(122, 52, '_menu_item_object_id', '11'),
(123, 52, '_menu_item_object', 'page'),
(124, 52, '_menu_item_target', ''),
(125, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 52, '_menu_item_xfn', ''),
(127, 52, '_menu_item_url', ''),
(129, 53, '_menu_item_type', 'custom'),
(130, 53, '_menu_item_menu_item_parent', '0'),
(131, 53, '_menu_item_object_id', '53'),
(132, 53, '_menu_item_object', 'custom'),
(133, 53, '_menu_item_target', ''),
(134, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 53, '_menu_item_xfn', ''),
(136, 53, '_menu_item_url', '#'),
(138, 54, '_wp_attached_file', '2020/08/favicon.png'),
(139, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:57;s:6:\"height\";i:31;s:4:\"file\";s:19:\"2020/08/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 55, '_wp_trash_meta_status', 'publish'),
(141, 55, '_wp_trash_meta_time', '1596386965');

-- --------------------------------------------------------

--
-- Table structure for table `case_posts`
--

CREATE TABLE `case_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_posts`
--

INSERT INTO `case_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-07-29 11:27:44', '2020-07-29 11:27:44', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://stardigitex.com/casestudy1.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-29 11:27:44', '2020-07-29 11:27:44', '', 0, 'https://stardigitex.com/casestudy1/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-07-29 11:27:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-29 11:27:53', '0000-00-00 00:00:00', '', 0, 'https://stardigitex.com/casestudy1/?p=4', 0, 'post', '', 0),
(6, 1, '2020-07-29 11:37:03', '2020-07-29 11:37:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-07-29 11:37:03', '2020-07-29 11:37:03', '', 0, 'https://stardigitex.com/casestudy1/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-07-29 11:37:03', '2020-07-29 11:37:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-07-29 11:37:03', '2020-07-29 11:37:03', '', 6, 'https://stardigitex.com/casestudy1/2020/07/29/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-07-29 11:37:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-29 11:37:29', '0000-00-00 00:00:00', '', 0, 'https://stardigitex.com/casestudy1/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-07-29 11:38:33', '2020-07-29 11:38:33', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-07-29 11:38:33', '2020-07-29 11:38:33', '', 0, 'https://stardigitex.com/casestudy1/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-07-29 11:38:33', '2020-07-29 11:38:33', '', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-07-29 11:38:33', '2020-07-29 11:38:33', '', 9, 'https://stardigitex.com/casestudy1/2020/07/29/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-07-29 11:38:48', '2020-07-29 11:38:48', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2020-07-29 11:38:48', '2020-07-29 11:38:48', '', 0, 'https://stardigitex.com/casestudy1/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-07-29 11:38:48', '2020-07-29 11:38:48', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-07-29 11:38:48', '2020-07-29 11:38:48', '', 11, 'https://stardigitex.com/casestudy1/2020/07/29/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-07-29 11:38:55', '2020-07-29 11:38:55', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-07-29 11:38:55', '2020-07-29 11:38:55', '', 0, 'https://stardigitex.com/casestudy1/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-07-29 11:38:55', '2020-07-29 11:38:55', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-07-29 11:38:55', '2020-07-29 11:38:55', '', 13, 'https://stardigitex.com/casestudy1/2020/07/29/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-07-29 11:39:04', '2020-07-29 11:39:04', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-07-29 11:39:04', '2020-07-29 11:39:04', '', 0, 'https://stardigitex.com/casestudy1/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-07-29 11:39:04', '2020-07-29 11:39:04', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-07-29 11:39:04', '2020-07-29 11:39:04', '', 15, 'https://stardigitex.com/casestudy1/2020/07/29/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-07-29 17:42:58', '2020-07-29 17:42:58', '', 'Tinci dunt vitae sem dor', '', 'publish', 'closed', 'closed', '', 'tinci-dunt-vitae-sem-dor', '', '', '2020-08-01 17:49:49', '2020-08-01 17:49:49', '', 0, 'https://stardigitex.com/casestudy1/?post_type=slider&#038;p=17', 0, 'slider', '', 0),
(18, 1, '2020-07-29 17:43:17', '2020-07-29 17:43:17', '', 'nature-1264041_960_720', '', 'inherit', 'open', 'closed', '', 'nature-1264041_960_720', '', '', '2020-07-29 17:43:17', '2020-07-29 17:43:17', '', 17, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/nature-1264041_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-07-29 17:43:26', '2020-07-29 17:43:26', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2020-07-29 17:43:26', '2020-07-29 17:43:26', '', 17, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/screenshot.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2020-07-29 17:43:30', '2020-07-29 17:43:30', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2020-07-29 17:43:30', '2020-07-29 17:43:30', '', 17, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-07-29 17:43:57', '2020-07-29 17:43:57', '', 'Tinci dunt vitae sem dor middle', '', 'publish', 'closed', 'closed', '', 'tinci-dunt-vitae-sem-dor-middle', '', '', '2020-08-01 17:49:44', '2020-08-01 17:49:44', '', 0, 'https://stardigitex.com/casestudy1/?post_type=slider&#038;p=21', 0, 'slider', '', 0),
(22, 1, '2020-07-29 17:44:13', '2020-07-29 17:44:13', '', 'Tinci dunt vitae sem dor Last', '', 'publish', 'closed', 'closed', '', 'tinci-dunt-vitae-sem-dor-last', '', '', '2020-08-01 17:49:39', '2020-08-01 17:49:39', '', 0, 'https://stardigitex.com/casestudy1/?post_type=slider&#038;p=22', 0, 'slider', '', 0),
(23, 1, '2020-07-29 18:17:46', '2020-07-29 18:17:46', '', 'African Elephant Wallpapers (1)', '', 'inherit', 'open', 'closed', '', 'african-elephant-wallpapers-1', '', '', '2020-07-29 18:17:46', '2020-07-29 18:17:46', '', 22, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/African-Elephant-Wallpapers-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-07-29 18:17:50', '2020-07-29 18:17:50', '', 'Elephant-grass-trees_1920x1080', '', 'inherit', 'open', 'closed', '', 'elephant-grass-trees_1920x1080', '', '', '2020-07-29 18:17:50', '2020-07-29 18:17:50', '', 22, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/Elephant-grass-trees_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-07-29 18:18:14', '2020-07-29 18:18:14', '', 'Tinci dunt vitae sem dor Last', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2020-07-29 18:18:14', '2020-07-29 18:18:14', '', 22, 'https://stardigitex.com/casestudy1/2020/07/29/22-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2020-07-29 18:18:57', '2020-07-29 18:18:57', '', 'BdZjZNs', '', 'inherit', 'open', 'closed', '', 'bdzjzns', '', '', '2020-07-29 18:18:57', '2020-07-29 18:18:57', '', 17, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/BdZjZNs.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-07-29 19:13:05', '2020-07-29 19:13:05', '', 'blog-post-image-guide', '', 'inherit', 'open', 'closed', '', 'blog-post-image-guide', '', '', '2020-07-29 19:13:05', '2020-07-29 19:13:05', '', 0, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/blog-post-image-guide.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-07-29 19:13:07', '2020-07-29 19:13:07', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2020-07-29 19:13:07', '2020-07-29 19:13:07', '', 0, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-07-29 19:13:08', '2020-07-29 19:13:08', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2020-07-29 19:13:08', '2020-07-29 19:13:08', '', 0, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2020-07-29 19:13:11', '2020-07-29 19:13:11', '', 'writers-blog-ftr', '', 'inherit', 'open', 'closed', '', 'writers-blog-ftr', '', '', '2020-07-29 19:13:11', '2020-07-29 19:13:11', '', 0, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/07/writers-blog-ftr.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-07-29 19:13:51', '2020-07-29 19:13:51', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet', '', '', '2020-07-29 19:13:51', '2020-07-29 19:13:51', '', 0, 'https://stardigitex.com/casestudy1/?p=32', 0, 'post', '', 0),
(33, 1, '2020-07-29 19:13:51', '2020-07-29 19:13:51', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-29 19:13:51', '2020-07-29 19:13:51', '', 32, 'https://stardigitex.com/casestudy1/2020/07/29/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-07-29 19:14:06', '2020-07-29 19:14:06', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet-2', '', '', '2020-07-29 19:14:06', '2020-07-29 19:14:06', '', 0, 'https://stardigitex.com/casestudy1/?p=34', 0, 'post', '', 0),
(35, 1, '2020-07-29 19:14:06', '2020-07-29 19:14:06', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-07-29 19:14:06', '2020-07-29 19:14:06', '', 34, 'https://stardigitex.com/casestudy1/2020/07/29/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-07-29 19:14:18', '2020-07-29 19:14:18', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet-3', '', '', '2020-07-29 19:14:18', '2020-07-29 19:14:18', '', 0, 'https://stardigitex.com/casestudy1/?p=36', 0, 'post', '', 0),
(37, 1, '2020-07-29 19:14:18', '2020-07-29 19:14:18', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-07-29 19:14:18', '2020-07-29 19:14:18', '', 36, 'https://stardigitex.com/casestudy1/2020/07/29/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-07-29 19:14:30', '2020-07-29 19:14:30', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet-4', '', '', '2020-07-29 19:14:30', '2020-07-29 19:14:30', '', 0, 'https://stardigitex.com/casestudy1/?p=38', 0, 'post', '', 0),
(39, 1, '2020-07-29 19:14:30', '2020-07-29 19:14:30', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-07-29 19:14:30', '2020-07-29 19:14:30', '', 38, 'https://stardigitex.com/casestudy1/2020/07/29/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-07-29 19:14:46', '2020-07-29 19:14:46', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet-5', '', '', '2020-07-29 19:14:46', '2020-07-29 19:14:46', '', 0, 'https://stardigitex.com/casestudy1/?p=40', 0, 'post', '', 0),
(41, 1, '2020-07-29 19:14:46', '2020-07-29 19:14:46', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-29 19:14:46', '2020-07-29 19:14:46', '', 40, 'https://stardigitex.com/casestudy1/2020/07/29/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-07-29 19:14:58', '2020-07-29 19:14:58', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet-6', '', '', '2020-07-29 19:14:58', '2020-07-29 19:14:58', '', 0, 'https://stardigitex.com/casestudy1/?p=42', 0, 'post', '', 0),
(43, 1, '2020-07-29 19:14:58', '2020-07-29 19:14:58', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-07-29 19:14:58', '2020-07-29 19:14:58', '', 42, 'https://stardigitex.com/casestudy1/2020/07/29/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-07-29 19:15:15', '2020-07-29 19:15:15', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'publish', 'open', 'open', '', 'diam-donec-adipiscing-tristique-risus-nec-fqugiet-7', '', '', '2020-07-31 19:43:49', '2020-07-31 19:43:49', '', 0, 'https://stardigitex.com/casestudy1/?p=44', 0, 'post', '', 0),
(45, 1, '2020-07-29 19:15:15', '2020-07-29 19:15:15', '', 'Diam donec adipiscing tristique risus nec fqugiet', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-29 19:15:15', '2020-07-29 19:15:15', '', 44, 'https://stardigitex.com/casestudy1/2020/07/29/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-07-31 18:18:28', '2020-07-31 18:18:28', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2020-07-31 18:18:28', '2020-07-31 18:18:28', '', 0, 'https://stardigitex.com/casestudy1/?option-tree=media', 0, 'option-tree', '', 0),
(47, 1, '2020-08-02 14:49:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-08-02 14:49:31', '0000-00-00 00:00:00', '', 0, 'https://stardigitex.com/casestudy1/?page_id=47', 0, 'page', '', 0),
(48, 1, '2020-08-02 15:32:06', '2020-08-02 15:32:06', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-08-02 15:40:03', '2020-08-02 15:40:03', '', 0, 'https://stardigitex.com/casestudy1/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2020-08-02 15:32:06', '2020-08-02 15:32:06', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-08-02 15:40:03', '2020-08-02 15:40:03', '', 0, 'https://stardigitex.com/casestudy1/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2020-08-02 15:32:06', '2020-08-02 15:32:06', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-08-02 15:40:03', '2020-08-02 15:40:03', '', 0, 'https://stardigitex.com/casestudy1/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2020-08-02 15:32:06', '2020-08-02 15:32:06', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-08-02 15:40:03', '2020-08-02 15:40:03', '', 0, 'https://stardigitex.com/casestudy1/?p=51', 6, 'nav_menu_item', '', 0),
(52, 1, '2020-08-02 15:32:06', '2020-08-02 15:32:06', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-08-02 15:40:03', '2020-08-02 15:40:03', '', 0, 'https://stardigitex.com/casestudy1/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2020-08-02 15:32:36', '2020-08-02 15:32:36', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-masonary', '', '', '2020-08-02 15:40:03', '2020-08-02 15:40:03', '', 0, 'https://stardigitex.com/casestudy1/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2020-08-02 16:49:12', '2020-08-02 16:49:12', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2020-08-02 16:49:12', '2020-08-02 16:49:12', '', 0, 'https://stardigitex.com/casestudy1/wp-content/uploads/2020/08/favicon.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2020-08-02 16:49:25', '2020-08-02 16:49:25', '{\n    \"site_icon\": {\n        \"value\": 54,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-08-02 16:49:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '176dfa88-284b-44c7-8260-f40e996cc483', '', '', '2020-08-02 16:49:25', '2020-08-02 16:49:25', '', 0, 'https://stardigitex.com/casestudy1/2020/08/02/176dfa88-284b-44c7-8260-f40e996cc483/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `case_termmeta`
--

CREATE TABLE `case_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_terms`
--

CREATE TABLE `case_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_terms`
--

INSERT INTO `case_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Uncategorized', 'uncategorized', 0),
(4, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `case_term_relationships`
--

CREATE TABLE `case_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_term_relationships`
--

INSERT INTO `case_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(17, 1, 0),
(17, 3, 0),
(21, 1, 0),
(21, 3, 0),
(22, 1, 0),
(22, 3, 0),
(32, 1, 0),
(34, 1, 0),
(36, 1, 0),
(38, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0),
(48, 4, 0),
(49, 4, 0),
(50, 4, 0),
(51, 4, 0),
(52, 4, 0),
(53, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `case_term_taxonomy`
--

CREATE TABLE `case_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_term_taxonomy`
--

INSERT INTO `case_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 10),
(3, 3, 'slider_cat', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `case_usermeta`
--

CREATE TABLE `case_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_usermeta`
--

INSERT INTO `case_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'case_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'case_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"6e126a118e37d1fcdddf5bf8269f16a86c7592078c46459ea0939864cc7a6f93\";a:4:{s:10:\"expiration\";i:1596392135;s:2:\"ip\";s:13:\"106.202.53.61\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1596219335;}s:64:\"9d3ef4920042f042ce71b7dfa2727c814e3c8f95f520bcfa57b2bd5e15ff3a64\";a:4:{s:10:\"expiration\";i:1596559704;s:2:\"ip\";s:13:\"106.202.1.206\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36\";s:5:\"login\";i:1596386904;}}'),
(17, 1, 'case_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"106.202.53.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'case_user-settings', 'libraryContent=browse'),
(22, 1, 'case_user-settings-time', '1596044613'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(25, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Table structure for table `case_users`
--

CREATE TABLE `case_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_users`
--

INSERT INTO `case_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgccTg86H.i2orRZN4OQUmbGLdFoJk/', 'admin', 'izharusmani786@gmail.com', 'https://stardigitex.com/casestudy1', '2020-07-29 11:27:44', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `case_commentmeta`
--
ALTER TABLE `case_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `case_comments`
--
ALTER TABLE `case_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `case_links`
--
ALTER TABLE `case_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `case_options`
--
ALTER TABLE `case_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `case_postmeta`
--
ALTER TABLE `case_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `case_posts`
--
ALTER TABLE `case_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `case_termmeta`
--
ALTER TABLE `case_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `case_terms`
--
ALTER TABLE `case_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `case_term_relationships`
--
ALTER TABLE `case_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `case_term_taxonomy`
--
ALTER TABLE `case_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `case_usermeta`
--
ALTER TABLE `case_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `case_users`
--
ALTER TABLE `case_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_commentmeta`
--
ALTER TABLE `case_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_comments`
--
ALTER TABLE `case_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `case_links`
--
ALTER TABLE `case_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_options`
--
ALTER TABLE `case_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `case_postmeta`
--
ALTER TABLE `case_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `case_posts`
--
ALTER TABLE `case_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `case_termmeta`
--
ALTER TABLE `case_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_terms`
--
ALTER TABLE `case_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `case_term_taxonomy`
--
ALTER TABLE `case_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `case_usermeta`
--
ALTER TABLE `case_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `case_users`
--
ALTER TABLE `case_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
