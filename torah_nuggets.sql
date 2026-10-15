-- Adminer 4.8.1 MySQL 8.0.41-0ubuntu0.24.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `audio`;
CREATE TABLE `audio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_general_ci DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `audio` (`id`, `title`, `name`, `path`, `size`, `url`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(27,	'Unconsciousness in Creation',	NULL,	NULL,	NULL,	NULL,	'1',	'https://aarnatechxperts.in/TorahNuggets/public/audios/image/1739903756.jpg',	'As human beings we seek to expand and grow, we search for the wisdom of God and to be able to co-create with God. What I don´t understand is why we were not created to automatically understand all this from the very beginning.',	'2025-02-18 19:14:33',	'2025-02-18 19:22:30'),
(28,	'Intention and God’s Will.',	'recording.webm',	'1739906521.webm',	'77893',	'https://aarnatechxperts.in/TorahNuggets/public/audios/1739906521.webm',	'1',	'https://aarnatechxperts.in/TorahNuggets/public/audios/image/1739906521.jpg',	NULL,	'2025-02-18 19:22:01',	'2025-02-18 19:22:25');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `stripe_customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `members` (`id`, `name`, `email`, `password`, `mobile`, `image`, `address`, `gender`, `dob`, `stripe_customer_id`, `created_at`, `updated_at`) VALUES
(2,	'Demo',	'demo@gmail.com',	'$2y$10$TwlmKMHADSvnLMxnHzjCnOd8H0WV/lOh58F7t/fpDGhkq3f1S1lwW',	'1234567890',	'1739958410.jpeg',	'Demo Testing',	'male',	'2025-02-07',	'cus_RluZEjjIrCGmBT',	'2025-02-14 10:25:06',	'2025-02-19 10:10:22'),
(3,	'Test',	'test@gmail.com',	'$2y$10$vojdZd.IHY2AIrCgo29E1eL4a/oa1O506VhXJ1mfqQyoiMKS.VudG',	'2132143243',	NULL,	NULL,	'female',	'2025-02-06',	NULL,	'2025-02-14 10:27:00',	'2025-02-14 10:27:00');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2016_06_01_000001_create_oauth_auth_codes_table',	1),
(4,	'2016_06_01_000002_create_oauth_access_tokens_table',	1),
(5,	'2016_06_01_000003_create_oauth_refresh_tokens_table',	1),
(6,	'2016_06_01_000004_create_oauth_clients_table',	1),
(7,	'2016_06_01_000005_create_oauth_personal_access_clients_table',	1),
(8,	'2019_08_19_000000_create_failed_jobs_table',	1),
(9,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(10,	'2025_02_14_111507_update_user_id_foreign_in_subscriptions',	2);

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('020fc730b0c444184ed002cb77fa2a2b67ea1652490a9d59e4b967d7e864b04f4d2d0eba56470586',	33,	3,	'Dicom',	'[]',	0,	'2024-11-29 10:56:32',	'2024-11-29 10:56:32',	'2025-11-29 10:56:32'),
('031f233f699aa2a6d51260f1fb7383c876f68372f183195a6380d2183cf2019beefa09d6523d961b',	12,	3,	'MyApp',	'[]',	0,	'2024-10-05 06:22:28',	'2024-10-05 06:22:28',	'2025-10-05 06:22:28'),
('082981ea41d5708d8eb192f0d8f61e99d3dd21aadca1104e55030fb6da301f86d92a11db62e40423',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 08:05:26',	'2024-11-15 08:05:26',	'2025-11-15 08:05:26'),
('0a497066c5bfb3087627606ef9784acc493368c2ad11fd346a54908cea461a22fc60d8468d89f81a',	20,	3,	'MyApp',	'[]',	0,	'2024-10-10 05:30:44',	'2024-10-10 05:30:44',	'2025-10-10 05:30:44'),
('0b080bdbb931dc20e5ed8b526c73f74969f8dfa941eb0333617f442ab27f3134cb1ae551493b9ac7',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:19:49',	'2024-11-08 12:19:49',	'2025-11-08 12:19:49'),
('0b166cdde7a60f3d124a9d62e70c369cf5c0466e7f4c127138e539810ef94a8f00d44301c55fd8fd',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 11:57:09',	'2024-11-08 11:57:09',	'2025-11-08 11:57:09'),
('1193435bf0d126a5f08d2fd0182ec38c8c16b00d6d4eab5c510d5323cb5b26c03927efc306f36a24',	34,	3,	'MyApp',	'[]',	0,	'2024-11-06 10:26:03',	'2024-11-06 10:26:03',	'2025-11-06 10:26:03'),
('11b5dff43d664f521122b2338295657f5372899dbf2f8efdbc0914d999ecd2fd406cf2034f8e8ec7',	50,	3,	'MyApp',	'[]',	0,	'2024-12-19 02:18:59',	'2024-12-19 02:18:59',	'2025-12-19 02:18:59'),
('129fd37510c6fefd1b26d1b5e5979cbcf75fa902ef1db57c0e0e1c6019d4560c819c81bd7c1850d5',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 10:32:43',	'2024-11-07 10:32:43',	'2025-11-07 10:32:43'),
('13d28c498d268dd6fa5a7bc69218105567adef7f9188c3e4eca67219627577efec35bbd5a03e0ac0',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:31:32',	'2024-11-06 11:31:32',	'2025-11-06 11:31:32'),
('1684d8994de383c438531bdef565f25acd408f8dcb2a37c026a515ba1a92d4292695c2f6fa0851c1',	47,	3,	'Dicom',	'[]',	0,	'2024-11-08 13:34:02',	'2024-11-08 13:34:02',	'2025-11-08 13:34:02'),
('1aff633e1df8f6a47afbcc56605d1f917f789ff5e7c20a381cac6db9f8b6e474aa180bdfe73ac159',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 12:56:48',	'2024-11-07 12:56:48',	'2025-11-07 12:56:48'),
('1df6d92ca7926e11640ab677669876453d26918b769d957e7b385e5c0781407de4f6f590a09bb09e',	35,	3,	'MyApp',	'[]',	0,	'2024-11-06 10:27:02',	'2024-11-06 10:27:02',	'2025-11-06 10:27:02'),
('1f9e48c357062117904fad679b8d2ed6dc82bb803aadf2625752259088f4ec2326d23db9a582f7ae',	33,	3,	'Dicom',	'[]',	0,	'2024-11-29 11:29:07',	'2024-11-29 11:29:07',	'2025-11-29 11:29:07'),
('225f0a5af632870c80eaa06afd7a4cec29025741ba5c17d8269ac9b0ce3af6dc92fb70a7652779bf',	33,	3,	'Dicom',	'[]',	0,	'2024-11-29 11:22:49',	'2024-11-29 11:22:49',	'2025-11-29 11:22:49'),
('235cdf2f6f7f4c7366a9e56894ed2d53321b458df24eb35b6c1a86451267e1e8f22413c16e36db13',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:28:44',	'2024-11-06 11:28:44',	'2025-11-06 11:28:44'),
('2456af3a2969188b9b56ff34452b8462b8f6228e4954a2677e8c5f96208a6dea9c0b56b37b72aa8c',	54,	3,	'MyApp',	'[]',	0,	'2024-12-19 02:22:38',	'2024-12-19 02:22:38',	'2025-12-19 02:22:38'),
('245bfef7cc06dc0158551c087af7f7416fc79c31dc6095345a1dbb3ec9e1843c4d019efacd2d6ed1',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:22:16',	'2024-11-06 11:22:16',	'2025-11-06 11:22:16'),
('2668dac3706b57031e8a09503f6a5e7c2336e09c6aa925ca330512ba28e33bbf926a4eb9ebf293a1',	4,	3,	'MyApp',	'[]',	0,	'2022-08-22 23:36:12',	'2022-08-22 23:36:12',	'2023-08-23 05:06:12'),
('288cfb0463ce25dd01f4333340833f86751173a582131fa5a0529c906fdb506c56e86de6c1434f5f',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:19:23',	'2024-11-08 12:19:23',	'2025-11-08 12:19:23'),
('28ce429f148567d225d8a3a5e7282a3611e5cf53d0cc8d56d505ca31907d0bff4beba9f3711f7c57',	5,	3,	'MyApp',	'[]',	0,	'2022-08-23 00:49:47',	'2022-08-23 00:49:47',	'2023-08-23 06:19:47'),
('2a7d8f003e7922f124a49e4b09ecfc3a04d0205742ac24c82aaa8272b967f387b1af74108099fb39',	31,	3,	'MyApp',	'[]',	0,	'2024-10-28 15:13:43',	'2024-10-28 15:13:43',	'2025-10-28 15:13:43'),
('2c981bd00c157c50e94b3bd92f09dc0565764014a61436c74ce9863c25b74280c374dad8bdae0192',	50,	3,	'Dicom',	'[]',	0,	'2024-12-19 02:19:15',	'2024-12-19 02:19:15',	'2025-12-19 02:19:15'),
('2e694ddb3e396d1f6016b1e420af501f1ca82bd1e3a716a9ad4958158411eaf08afc75e2fe39f115',	38,	3,	'MyApp',	'[]',	0,	'2024-11-06 12:23:37',	'2024-11-06 12:23:37',	'2025-11-06 12:23:37'),
('2fd80341e5653846aaecfb98837c97e8fa0ac83de44f39501f158d82306936ba67602c2361c5dcfd',	33,	3,	'Dicom',	'[]',	0,	'2024-12-02 10:14:40',	'2024-12-02 10:14:40',	'2025-12-02 10:14:40'),
('34d5075a8f07c2f6053b3bbb657c9141fb5dee8540b5a4e7426bc41b95052e91e0be2f9542e5c785',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:47:07',	'2024-11-06 11:47:07',	'2025-11-06 11:47:07'),
('358781b51985b5b663dd186d56160b7d4690b5244f5184296c8db2f6d74a07a3b4f8a5ecd8c63fd1',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 13:03:25',	'2024-11-07 13:03:25',	'2025-11-07 13:03:25'),
('373efa854afa1b458707ee045b7277edd2898f0686330ca63ed9efa663fb884ec5e2e22850f4e3bd',	33,	3,	'Dicom',	'[]',	0,	'2024-11-08 10:28:03',	'2024-11-08 10:28:03',	'2025-11-08 10:28:03'),
('390e6c9a2ca2d0b2132739d90f48cf5253ac3d6711bb5b043f95fb0aa3dfbe416397f50f62718072',	42,	3,	'MyApp',	'[]',	0,	'2024-11-06 12:24:23',	'2024-11-06 12:24:23',	'2025-11-06 12:24:23'),
('3bd852199a2ef1808ccff0713608c20885c88130769bcd2abb91e63726dec103e0e4a415229481a5',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 13:07:00',	'2024-11-08 13:07:00',	'2025-11-08 13:07:00'),
('3f88cbb0c3d91a7e351a32d48fb773a2b9f31774216982e2c4e7f5becd712b0b4a53d43a0cf70abe',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:37:59',	'2024-11-06 11:37:59',	'2025-11-06 11:37:59'),
('4072d4ecffa77a75e83ab4b2adfc41ef5da34322eab5b6bb3ab6d180a6b9e4a653f5c22a9593662f',	33,	3,	'Dicom',	'[]',	0,	'2024-12-02 12:46:47',	'2024-12-02 12:46:47',	'2025-12-02 12:46:47'),
('44234d515575698cef883361991f1b05a1f038b0966701d277674c155200d5b42566cd781c26ac1e',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 07:57:33',	'2024-11-15 07:57:33',	'2025-11-15 07:57:33'),
('4497280b848f08f601ffd3fc6b39e114651f20212dd68c21d0d08d044a495bf7d3ed3b39b0352010',	8,	3,	'MyApp',	'[]',	0,	'2024-10-01 02:17:52',	'2024-10-01 02:17:52',	'2025-10-01 07:47:52'),
('47b455a1f117aea01960a9b790e5920ce1ef39d713936239d6452e95a0a3c8054bbdeb4191cce7c0',	41,	3,	'MyApp',	'[]',	0,	'2024-11-06 12:24:13',	'2024-11-06 12:24:13',	'2025-11-06 12:24:13'),
('4cc64120cf55e4beb89a95f6cf1414fa619231e12175342513f12d5bc3f4dddb22bae2789c4751fb',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 07:59:58',	'2024-11-15 07:59:58',	'2025-11-15 07:59:58'),
('4ed5634d7d3225ef34ee4e6fe24b8c7390be8b005fc08c6f221fbbe7321cc1798a61a783b547cf30',	33,	3,	'Dicom',	'[]',	0,	'2024-12-02 12:46:19',	'2024-12-02 12:46:19',	'2025-12-02 12:46:19'),
('507f6cb67b1f58b46b46f0aea311d06d33ec782d66c87451aa8b90fdf3978ee009481860a02b189f',	6,	3,	'MyApp',	'[]',	0,	'2022-08-23 06:16:20',	'2022-08-23 06:16:20',	'2023-08-23 11:46:20'),
('51b7482dbc8ef976c45e7c5c602e58f3f14b0af36f8520a299e59484d9ec3f7edf04f398d56fdc4a',	33,	3,	'Dicom',	'[]',	0,	'2024-11-26 13:33:06',	'2024-11-26 13:33:06',	'2025-11-26 13:33:06'),
('52b90fed950cb9832a023b3b473687ed2d1b7543096fba03672478cd8a4e2a61c3547ca32ea1559b',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 06:56:00',	'2024-11-07 06:56:00',	'2025-11-07 06:56:00'),
('5e27b61c2bb5646122b715288a8be4b96e6f95e19ff44872436edcdd9ca486e5ca1a4be87e5279cc',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:48:10',	'2024-11-06 11:48:10',	'2025-11-06 11:48:10'),
('5f47e965d61547bc15b37b737400f17b33c3407c819bc2d4c8e674121f04cc17cf46c067c2716685',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:05:13',	'2024-11-06 11:05:13',	'2025-11-06 11:05:13'),
('5f9f34aa7fce8f0dbdf229be7b2a7aedaf6a80dde52d2aa1dcdb0db827adae347f3e0de6157dcec7',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 10:54:42',	'2024-11-06 10:54:42',	'2025-11-06 10:54:42'),
('603d65416d765fc2ae46ba36d92380267dc3c02170c75b8cdd8b66b81167cced3f63f824fb14dc49',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 10:55:11',	'2024-11-06 10:55:11',	'2025-11-06 10:55:11'),
('6278921252252aa8639d886d49eb60277fa7a2efadd510a6020cc040a1057b75670669ec6799eae0',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:39:26',	'2024-11-08 12:39:26',	'2025-11-08 12:39:26'),
('654ab19e862dbf02c2b5c02e3e38db02aad0c45cbe53730632996319d30d73fc7285877836b39690',	47,	3,	'MyApp',	'[]',	0,	'2024-11-08 12:23:07',	'2024-11-08 12:23:07',	'2025-11-08 12:23:07'),
('68809ddea5c0b533c89d76e3ae427736c3953f386d522ffe1972f20af6054026ec6a162691c54bba',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 06:12:43',	'2024-11-07 06:12:43',	'2025-11-07 06:12:43'),
('6ccd76c5f6a18f2216ad04cdbb92e08f25f85033d6ab32283c06fdb0fea0da7823fc64f3d0498e53',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 09:31:13',	'2024-11-07 09:31:13',	'2025-11-07 09:31:13'),
('6dc4f9d82ed87a3f7d49efd2a7f85570e957dbd986a8825248766cc76000070aa6d55669c26d331f',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 07:24:19',	'2024-11-15 07:24:19',	'2025-11-15 07:24:19'),
('6e52485238fd2bb9ba925cfb42389dee2e3a87d3ebbbf5028b52d3e23c4d68fbd74b5de179f9732d',	33,	3,	'Dicom',	'[]',	0,	'2024-11-11 07:24:13',	'2024-11-11 07:24:13',	'2025-11-11 07:24:13'),
('6e97f39c58dcd7f5c7f2ee606bba5251842b7bbcc5f8082f4c03e50e28b9a52665bc91db07d76173',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:32:04',	'2024-11-06 11:32:04',	'2025-11-06 11:32:04'),
('6f8a95bb5e9dd781ef3ff0f3ea9f46f10fd9aa2b1735a6652321136f5f678e9c854d76ceeb9000be',	47,	3,	'Dicom',	'[]',	0,	'2024-11-12 12:42:55',	'2024-11-12 12:42:55',	'2025-11-12 12:42:55'),
('70573d8a0def91976fc75021fca710b11ff5369584a8bbc2b000197b3721edac1e166fba6d5678b1',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:30:35',	'2024-11-06 11:30:35',	'2025-11-06 11:30:35'),
('717e1129295ece6f9c4985345ed10aed8800adfe7763900a5202c82e46cbbd74e658ea6e24460008',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 07:56:57',	'2024-11-15 07:56:57',	'2025-11-15 07:56:57'),
('734c432cefe1ec69cf00417a7930d98eca7d34263c9cdd724d200f3a5d50b65860a0ea0a2912be95',	19,	3,	'MyApp',	'[]',	0,	'2024-10-09 14:05:48',	'2024-10-09 14:05:48',	'2025-10-09 14:05:48'),
('7371e376d58efffbb42c6ec671ae0223f00b357f4a0f693fadb12897a1589064b8bd895d67719af2',	46,	3,	'MyApp',	'[]',	0,	'2024-11-08 11:56:54',	'2024-11-08 11:56:54',	'2025-11-08 11:56:54'),
('741f6506936167f06f1e9c6ab5b5cf22714b53d4a36acdde750d3e84372192fa10c3f1545035aada',	47,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:40:21',	'2024-11-08 12:40:21',	'2025-11-08 12:40:21'),
('76057552142ec35f63f49fe0839dcee439fab3c40908a01db90811f733e79772eeb716db2fde7941',	47,	3,	'Dicom',	'[]',	0,	'2024-11-11 07:31:32',	'2024-11-11 07:31:32',	'2025-11-11 07:31:32'),
('76902b0b26abad5059180ec0273e75929255c9dddc8cd25158eb9fb86897a5718c5e6411c702ad4b',	21,	3,	'MyApp',	'[]',	0,	'2024-10-28 15:10:51',	'2024-10-28 15:10:51',	'2025-10-28 15:10:51'),
('7bfe39eedb77366c6138dffd06e43c2100dadda8b45e5f0812d4f001cd9b3d18ee3d35d27ed52013',	33,	3,	'Dicom',	'[]',	0,	'2025-01-16 07:21:41',	'2025-01-16 07:21:41',	'2026-01-16 07:21:41'),
('7e458b607ed2e1968992e294adbce16e7e8e7b0fb1af0acb91bcd9473bf6d95839474701f562726e',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 13:26:55',	'2024-11-08 13:26:55',	'2025-11-08 13:26:55'),
('7e9a60492e5220303e6699442769acf04bc4b2e3cb76844933c092f720df274f26e578667301e15e',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:00:55',	'2024-11-08 12:00:55',	'2025-11-08 12:00:55'),
('8157eb09d0ecfbf6788df07f9f8f340f9bab2cee8bd6d8e4f67b6fa9dd6e100e318177e4cbd489c8',	49,	3,	'Dicom',	'[]',	0,	'2024-11-12 07:34:16',	'2024-11-12 07:34:16',	'2025-11-12 07:34:16'),
('81a327b15f79a156e59c818c4518e09109844266ef6b767e2afb3c5352548591e4b58c0ac091c04e',	2,	3,	'MyApp',	'[]',	0,	'2022-08-22 05:57:06',	'2022-08-22 05:57:06',	'2023-08-22 11:27:06'),
('8275169dcb35282b9808dce011d1d57d39bf84b651f37da4b9d8e54fc716ef2fdf992bc581da17c9',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:44:58',	'2024-11-06 11:44:58',	'2025-11-06 11:44:58'),
('860ebb9074625fde134140dd23c5aab6417bdb8b035f5508ecc1d956207829a3868bcae60c5e2703',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 10:55:15',	'2024-11-07 10:55:15',	'2025-11-07 10:55:15'),
('88ca3dbd7f745f64f8739ee800952aa52c13bbbb67f0e1fb4b0876c29f0db708ce93a361179c99f9',	1,	3,	'MyApp',	'[]',	0,	'2022-08-22 06:12:56',	'2022-08-22 06:12:56',	'2023-08-22 11:42:56'),
('892d644a7540f3460c64a920c5217b4fea07d2604e80624a11df5b749979e53f439f97c149deaceb',	45,	3,	'MyApp',	'[]',	0,	'2024-11-06 12:26:41',	'2024-11-06 12:26:41',	'2025-11-06 12:26:41'),
('8af7e52e0c4d15509893e70b76dd450e55c69c050c82a6f01f1feccb1e40a45db66734a04af6777e',	2,	3,	'MyApp',	'[]',	0,	'2022-08-22 06:26:30',	'2022-08-22 06:26:30',	'2023-08-22 11:56:30'),
('8b18e8e25c74431dadecebc00c9e32d1c0dc80bf491217d21fd159dcbb0cf41956e09467f839795c',	43,	3,	'MyApp',	'[]',	0,	'2024-11-06 12:25:00',	'2024-11-06 12:25:00',	'2025-11-06 12:25:00'),
('8b821c96986dae9183832c6b5311cfed8a9debeba87a0b3c54769607a9f037a1d0888b900f1644b4',	47,	3,	'Dicom',	'[]',	0,	'2024-11-11 07:37:15',	'2024-11-11 07:37:15',	'2025-11-11 07:37:15'),
('8be6f3973441daf2356a4d3d99d70c85675b103dbe24759989bb472e1845bbe8f9a61899e4e05752',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:38:07',	'2024-11-06 11:38:07',	'2025-11-06 11:38:07'),
('8fa1a90f98e83ff02905bd5c2a402359964b34f7074d19bc330a4658fa61feeb192eb8b345f064bc',	48,	3,	'MyApp',	'[]',	0,	'2024-11-12 07:28:27',	'2024-11-12 07:28:27',	'2025-11-12 07:28:27'),
('9022fd6840b4ff8daade52fe3690068f68d1f5717d419f3bc2bfe09e22f46844722f7b75fb23bf2e',	33,	3,	'Dicom',	'[]',	0,	'2024-11-26 09:20:41',	'2024-11-26 09:20:41',	'2025-11-26 09:20:41'),
('9399ac02ceb66cd9ac033eb799ac810d98fb458715747220ad9399e004f4e164f03df8e554af0b5a',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:35:04',	'2024-11-08 12:35:04',	'2025-11-08 12:35:04'),
('9992ef29211325c1ab085e3dda0cec4b7f22141d32c825d3278fb96a8bc7e37352922d84a53d7e14',	16,	3,	'MyApp',	'[]',	0,	'2024-10-09 13:58:12',	'2024-10-09 13:58:12',	'2025-10-09 13:58:12'),
('9adf20caaa9f512310a9afd713c31ce8ebe9ef46d31c68998670d46a00c89068349de6113016cacf',	1,	3,	'MyApp',	'[]',	0,	'2022-08-22 05:56:03',	'2022-08-22 05:56:03',	'2023-08-22 11:26:03'),
('9aeac1520488f55926dd63dd837964b0871bbbf7b783d7422d2be50eb84dbbe7af5c14bafeebdfbe',	32,	3,	'MyApp',	'[]',	0,	'2024-10-28 15:16:34',	'2024-10-28 15:16:34',	'2025-10-28 15:16:34'),
('9bb714c7f24a1fbf5cb2edad247e193886af7f9ea7e20ca6e6f8194d1b8e6aca836df9ad1e6e846a',	37,	3,	'MyApp',	'[]',	0,	'2024-11-06 10:37:02',	'2024-11-06 10:37:02',	'2025-11-06 10:37:02'),
('9cf98eff46ba4fe41b49645e5a78837522e6a26c434065c3bb7fa2629a9d4c439ed9af76dc554eac',	46,	3,	'Dicom',	'[]',	0,	'2024-11-12 12:05:41',	'2024-11-12 12:05:41',	'2025-11-12 12:05:41'),
('a260893192d50fe20983b24a6bbd1558cb6bf1f4ecbd47e04cf1eaf70401e1f14dc501d12d61d3ad',	1,	3,	'MyApp',	'[]',	0,	'2022-08-23 00:07:09',	'2022-08-23 00:07:09',	'2023-08-23 05:37:09'),
('a47da71dffbe1f709ac77f4092e99da0bd860dd7b7bf6a6116e25ae5da0c096ec23f66c8bcad2a28',	7,	3,	'MyApp',	'[]',	0,	'2022-08-23 06:23:12',	'2022-08-23 06:23:12',	'2023-08-23 11:53:12'),
('a7bc7a0238a4b7cd8399ae6751b232d970635d9a3418cd17e8a09fe2f9e9723207d467fa9d69f0b7',	11,	3,	'MyApp',	'[]',	0,	'2024-10-01 02:19:45',	'2024-10-01 02:19:45',	'2025-10-01 07:49:45'),
('aa24997e6fc567d8888a48b0a6afc2aaa03fc2cfc5f664445802181b60c1d96a57fe20a05b0fc722',	3,	3,	'MyApp',	'[]',	0,	'2022-08-22 07:39:37',	'2022-08-22 07:39:37',	'2023-08-22 13:09:37'),
('ad2e5ba11c15183f06c22db9564d1bce1b47dbc0c89c537bff4b47ad632a35adc5b0496bb64915ac',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:28:13',	'2024-11-06 11:28:13',	'2025-11-06 11:28:13'),
('ae378c5d9b9863fca53fb18600390b43ae35cc3a861f34227b1eda5a61090862e116243e7cbae397',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 13:04:27',	'2024-11-07 13:04:27',	'2025-11-07 13:04:27'),
('af3b9e369f96629bf85812fe6851b633d6c7bad7bf692d00398078b6181329ad7976ba06e16d0d25',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 07:58:41',	'2024-11-15 07:58:41',	'2025-11-15 07:58:41'),
('b037ff53a1ddb68bfb940e14826fa631358c8d22f7c7e0427d7674736a50ae8bb3c705b5cb422da8',	20,	3,	'Dicom',	'[]',	0,	'2024-11-07 12:13:29',	'2024-11-07 12:13:29',	'2025-11-07 12:13:29'),
('b09a9d2139a7925d46c505beb2b2912d4594d47de0b9579fdec6673da39a883142bb09436abeb593',	54,	3,	'Dicom',	'[]',	0,	'2024-12-19 02:22:55',	'2024-12-19 02:22:55',	'2025-12-19 02:22:55'),
('b0e99e2cdaa7c38a68a3426b635846ebecb1c1ab436ecda28885ad1d54f7378f86a343e9c86396f3',	33,	3,	'Dicom',	'[]',	0,	'2024-11-27 09:35:13',	'2024-11-27 09:35:13',	'2025-11-27 09:35:13'),
('b2cbaf0fdf394a949711114b92c01f699d7b99b82ec5e0a4754e46e4f92471550cd277734db205d5',	10,	3,	'MyApp',	'[]',	0,	'2024-10-01 02:18:52',	'2024-10-01 02:18:52',	'2025-10-01 07:48:52'),
('b61ded8b837318e6553859e34302d0e555f2e2cf3c0ff8a2908b848a4839a29ab9032b94ba2cbd69',	44,	3,	'MyApp',	'[]',	0,	'2024-11-06 12:25:37',	'2024-11-06 12:25:37',	'2025-11-06 12:25:37'),
('b6d206a77357e428b6ea8fffa39a76f14a0acdae4fd8e23f534c73e9e13097a232806d82fe187d8b',	33,	3,	'Dicom',	'[]',	0,	'2024-12-19 01:51:24',	'2024-12-19 01:51:24',	'2025-12-19 01:51:24'),
('b750c5407d6ee84107da44a0ccccf7cc69f6442c84c444053f7496ca8ec85546e5e87e90be26f227',	33,	3,	'Dicom',	'[]',	0,	'2024-11-13 06:59:22',	'2024-11-13 06:59:22',	'2025-11-13 06:59:22'),
('b7e1c47f3b76829ee62ad64ee68349996213109b9ef547fc1772e85fdc49743dad954bd696ca1950',	47,	3,	'Dicom',	'[]',	0,	'2024-11-08 13:23:01',	'2024-11-08 13:23:01',	'2025-11-08 13:23:01'),
('be1e749cdd3f9f2944619c061ab122ac969de5c0fb60f78ee30e85d7290021654cfa2237864bfe92',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 08:04:29',	'2024-11-15 08:04:29',	'2025-11-15 08:04:29'),
('bf8a201d146a99e75c7f378fda2dc4ed64553765cd176d8d84cbeb632c1d041c361c2704d0c63c48',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:39:06',	'2024-11-06 11:39:06',	'2025-11-06 11:39:06'),
('c26b925096f551a7e06c4f44e844fb02f3f9b7bf9e4692ca58011baf75fb950b399dbe1a8e846d74',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 09:42:09',	'2024-11-07 09:42:09',	'2025-11-07 09:42:09'),
('c4361e5a75b21b33907652be7dc1343f0621225caef959d1fbdec94b4b88f4ec23fb6f761a6e80a4',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 12:18:57',	'2024-11-06 12:18:57',	'2025-11-06 12:18:57'),
('c8efb38f3db35eb9ac63b534dd6249d2261c6519b1de2bdc362daf6ea3d80cc1d3e35e9a8a5b4ec0',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 08:06:22',	'2024-11-15 08:06:22',	'2025-11-15 08:06:22'),
('d5d1e528814d910755f05bc5e4ea94874f5eec12492baa27dc7de072037ee4efc9dbedf138e1d165',	33,	3,	'MyApp',	'[]',	0,	'2024-11-06 10:23:58',	'2024-11-06 10:23:58',	'2025-11-06 10:23:58'),
('d74b488b85570f1e56a24efa9b024d60e6dfaa9c15875031253535af17532c4a6d3793edea551e58',	47,	3,	'Dicom',	'[]',	0,	'2024-11-08 12:24:54',	'2024-11-08 12:24:54',	'2025-11-08 12:24:54'),
('df4f0955ec8f04534c8c5d76e3b8e9be1a130ab4da661b66a295d7560df240e0056045458b9049f9',	48,	3,	'Dicom',	'[]',	0,	'2024-11-12 07:29:17',	'2024-11-12 07:29:17',	'2025-11-12 07:29:17'),
('e14edacfaa139ac0ee5565ea83c8c423443c8eb80513365143d744dd1c89997dfcfff60617ee44a3',	13,	3,	'MyApp',	'[]',	0,	'2024-10-05 11:49:15',	'2024-10-05 11:49:15',	'2025-10-05 11:49:15'),
('e595e9f535df0436e12a844104619acfc78fe491cc5abb2d01197e743ee81e1ca1cb9956aa7fe41b',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:41:44',	'2024-11-06 11:41:44',	'2025-11-06 11:41:44'),
('e6e034de452a229cc61f91aff6cdd5b3e8c3fcc7b745ac057824cddd4f4be2f8cdb779fd9e0d6cab',	49,	3,	'MyApp',	'[]',	0,	'2024-11-12 07:34:01',	'2024-11-12 07:34:01',	'2025-11-12 07:34:01'),
('e70c8ca136f3ed74a29b920f453d079d5e0146634c3d544825c97709ef9486fa6855da55cc659b1f',	2,	3,	'MyApp',	'[]',	0,	'2022-08-22 06:22:25',	'2022-08-22 06:22:25',	'2023-08-22 11:52:25'),
('eb983d3ec049353a36474bf11a2a2207b20ba3ddde124ad562adcaf308f79270e25a0288d80c4584',	1,	3,	'MyApp',	'[]',	0,	'2022-08-23 00:09:51',	'2022-08-23 00:09:51',	'2023-08-23 05:39:51'),
('eedde659f8f616404ecaadee0abfbd8a2f4c73589754373867cc5f0989e9e7c9244ac005ef497e86',	46,	3,	'Dicom',	'[]',	0,	'2024-11-08 13:19:39',	'2024-11-08 13:19:39',	'2025-11-08 13:19:39'),
('f217fdc00860c57522d10da49683199bc4093b0d2b69bf47a9c488efc9823da99de59ea04fe55886',	33,	3,	'Dicom',	'[]',	0,	'2024-11-08 11:27:29',	'2024-11-08 11:27:29',	'2025-11-08 11:27:29'),
('f2ed49a3861dbdae9bc05ba56373d03e670df24d49937364deb9f18adee75492182fe4b17bbb3218',	33,	3,	'Dicom',	'[]',	0,	'2024-11-06 11:39:46',	'2024-11-06 11:39:46',	'2025-11-06 11:39:46'),
('f5249930e0dea664b3197ef2570bbd040eb8e8ea86f102e6ad4875f69d6d12958ace7b89a9442ba4',	33,	3,	'Dicom',	'[]',	0,	'2024-11-07 12:15:48',	'2024-11-07 12:15:48',	'2025-11-07 12:15:48'),
('f9dec29f4f48e4d0aff7cba13d9ea60185f2b47f10fc1b28ccc46a66e64c4611a95c445b925e6197',	1,	3,	'MyApp',	'[]',	0,	'2022-08-22 05:52:55',	'2022-08-22 05:52:55',	'2023-08-22 11:22:55'),
('faccd5cb712e7c466fa9c48f74c84711bcc920bc1b09855e3f87cf3bb105a0e0784ad2fa3ef9f275',	20,	3,	'Dicom',	'[]',	0,	'2024-11-15 07:56:24',	'2024-11-15 07:56:24',	'2025-11-15 07:56:24'),
('fb162559d17395549243382d5c0018c260b0e2f07a8690787f56df81146dcf344a48ac660ad979aa',	6,	3,	'MyApp',	'[]',	0,	'2022-08-23 06:20:47',	'2022-08-23 06:20:47',	'2023-08-23 11:50:47'),
('fd45c82d867528c335b410f4c8f41a49cd3e976092d4934bf01f82496decdd2f3390cf5eb06508a1',	2,	3,	'MyApp',	'[]',	0,	'2022-08-22 06:13:47',	'2022-08-22 06:13:47',	'2023-08-22 11:43:47'),
('ffa708572abb480e673fa7ab8c63fa2db5a53d8fce3d99482fca5ce3c3e8bcca512663d63b98a327',	36,	3,	'MyApp',	'[]',	0,	'2024-11-06 10:27:41',	'2024-11-06 10:27:41',	'2025-11-06 10:27:41');

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'Laravel Personal Access Client',	'qd4zI1YUnwTJ7tytWUZckmu1aQOUu9gncXvC8ch7',	NULL,	'http://localhost',	1,	0,	0,	'2022-08-22 02:22:19',	'2022-08-22 02:22:19'),
(2,	NULL,	'Laravel Password Grant Client',	'gr3bgmdIOVpjw9IrYiKWeuFZmIwtzFMds4M97ORV',	'users',	'http://localhost',	0,	1,	0,	'2022-08-22 02:22:19',	'2022-08-22 02:22:19'),
(3,	NULL,	'Laravel Personal Access Client',	'ZA8ZaGqUOhq8jzLuL3ZmykX4MSaNA5NoQYyij3jU',	NULL,	'http://localhost',	1,	0,	0,	'2022-08-22 05:52:13',	'2022-08-22 05:52:13'),
(4,	NULL,	'Laravel Password Grant Client',	'BZFZWmCoKZbIXbnzbM3ygx8OWLG6g0Zsydms0zLz',	'users',	'http://localhost',	0,	1,	0,	'2022-08-22 05:52:13',	'2022-08-22 05:52:13');

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'2022-08-22 02:22:19',	'2022-08-22 02:22:19'),
(2,	3,	'2022-08-22 05:52:13',	'2022-08-22 05:52:13');

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint unsigned NOT NULL,
  `subscription_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_payment_intent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `members` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `payments` (`id`, `userId`, `subscription_id`, `stripe_payment_intent_id`, `amount`, `currency`, `status`, `payment_method`, `created_at`, `updated_at`) VALUES
(4,	2,	'cs_test_a1bdSEoIDvQenpB2G2PYBNgqGcvFKDwT1OguOWveth1aDkjF6KEJDeozu5',	'pi_3QtQPqGz7OU5LB7u19b4f2OC',	2.99,	'usd',	'paid',	'card',	'2025-02-17 09:14:40',	'2025-02-17 09:14:40');

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1,	'App\\Models\\Member',	2,	'TorahNuggets',	'4eed0e4ed657e25b3973d7ab9eff7a2f6079609b89dde0ff0a3a4ea056a1be2b',	'[\"*\"]',	NULL,	NULL,	'2025-02-14 10:25:06',	'2025-02-14 10:25:06'),
(2,	'App\\Models\\Member',	3,	'TorahNuggets',	'1d9d3018e0978d2a85ff6a4fdc13478c11e2100bc4ac6ac652a450cbd2b4ea7d',	'[\"*\"]',	NULL,	NULL,	'2025-02-14 10:27:00',	'2025-02-14 10:27:00'),
(3,	'App\\Models\\Member',	2,	'MemberAuthToken',	'c3e3eb68cdfd112c54044b469bf0d3aa976592c15b6e4f138eaca3ea0d816bae',	'[\"*\"]',	NULL,	NULL,	'2025-02-14 10:27:46',	'2025-02-14 10:27:46'),
(4,	'App\\Models\\Member',	2,	'MemberAuthToken',	'87cb0192cfda69474743baaab5ec3a2e6ef0fce32afc61162b683d17c29352c7',	'[\"*\"]',	NULL,	NULL,	'2025-02-17 07:06:39',	'2025-02-17 07:06:39'),
(5,	'App\\Models\\Member',	2,	'MemberAuthToken',	'e73deeb3e23287a0959d233320c6c0e2ad523b663809a3290608d0b541621bcd',	'[\"*\"]',	NULL,	NULL,	'2025-02-17 07:57:20',	'2025-02-17 07:57:20'),
(6,	'App\\Models\\Member',	2,	'MemberAuthToken',	'7ca080f23232248112352aa4d1cd9a9b539a20aad65b4ee3fec94b7bcbdcc136',	'[\"*\"]',	NULL,	NULL,	'2025-02-17 09:02:18',	'2025-02-17 09:02:18'),
(7,	'App\\Models\\Member',	2,	'MemberAuthToken',	'a328b676f38b47f41a026d332964a539ddd62af1a97e7e84ca4a575880d43606',	'[\"*\"]',	NULL,	NULL,	'2025-02-18 19:30:19',	'2025-02-18 19:30:19'),
(8,	'App\\Models\\Member',	2,	'MemberAuthToken',	'f6e34906a4a8d244a5d90d059423b4363e8003f3b99d19e56fe3686d29bc01a4',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 08:04:25',	'2025-02-19 08:04:25'),
(9,	'App\\Models\\Member',	2,	'MemberAuthToken',	'288e3df4169bc485d2dd98bd12e84d92faedb860551522804da57b3f7beb6b16',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 11:49:02',	'2025-02-19 11:49:02'),
(10,	'App\\Models\\Member',	2,	'MemberAuthToken',	'df0802e51e3792e5241387f4886c3bfdab308e7e745991a86f669dece3525869',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 11:53:32',	'2025-02-19 11:53:32'),
(11,	'App\\Models\\Member',	2,	'MemberAuthToken',	'f2941ae74e3fec9aa3a97d944c00105aa8a624f12f806566b11e0445a92681ac',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 17:23:17',	'2025-02-19 17:23:17'),
(12,	'App\\Models\\Member',	2,	'MemberAuthToken',	'725abbb61dfd3fdfcf1724489573c1fd02a8d45fc6ce038f7af6f33c494d769f',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 17:55:06',	'2025-02-19 17:55:06'),
(13,	'App\\Models\\Member',	2,	'MemberAuthToken',	'db5393debec6b22138d34481c052dd8ef570fa1b6980a08b7a03e55d6c1bf86e',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:25:08',	'2025-02-19 18:25:08'),
(14,	'App\\Models\\Member',	2,	'MemberAuthToken',	'e213390ab70d4f6b0f75009ced0e266b24437653db17dbb541549317935bd299',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:26:58',	'2025-02-19 18:26:58'),
(15,	'App\\Models\\Member',	2,	'MemberAuthToken',	'9cc65051d76a3c28eeef6272fce043dc50d38aaf90e795d5c0044d6cf7cfd068',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:28:07',	'2025-02-19 18:28:07'),
(16,	'App\\Models\\Member',	2,	'MemberAuthToken',	'4bde98c43fb570c3ce9236be6be1283ca9569083724450dee323646213c538a9',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:30:12',	'2025-02-19 18:30:12'),
(17,	'App\\Models\\Member',	2,	'MemberAuthToken',	'b17f823861d870cf396d1c40dfbe299065fff7d7f281edb3174f0a6e53e06321',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:31:56',	'2025-02-19 18:31:56'),
(18,	'App\\Models\\Member',	2,	'MemberAuthToken',	'377f94df2616dbb8a6e3e196fd1f53b894d0ced553e0863797cdfade25e0fc1a',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:36:51',	'2025-02-19 18:36:51'),
(19,	'App\\Models\\Member',	2,	'MemberAuthToken',	'db64133173ded5c3884467a2d10b15334f6e2ffdbf07854d71df9fe0a00c348a',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:36:55',	'2025-02-19 18:36:55'),
(20,	'App\\Models\\Member',	2,	'MemberAuthToken',	'b6613761840fad0f203e2b22178a6496841a083e6d40bb4ca613c57ebfb07c9b',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:37:20',	'2025-02-19 18:37:20'),
(21,	'App\\Models\\Member',	2,	'MemberAuthToken',	'7253fad6614da0f48cc7e5e78f0404d494a2086ff78ff90801aff5b6239f2793',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:45:12',	'2025-02-19 18:45:12'),
(22,	'App\\Models\\Member',	2,	'MemberAuthToken',	'98b348f5b569ed7de272d20fc8500eb805c23a5cb0f75491d39c613ae0f8a385',	'[\"*\"]',	NULL,	NULL,	'2025-02-19 18:49:50',	'2025-02-19 18:49:50');

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint unsigned NOT NULL,
  `stripe_subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_foreign` (`userId`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `subscriptions_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `subscriptions` (`id`, `userId`, `stripe_subscription_id`, `stripe_customer_id`, `plan_id`, `status`, `start_date`, `end_date`, `price`, `created_at`, `updated_at`) VALUES
(16,	2,	'cs_test_a1bdSEoIDvQenpB2G2PYBNgqGcvFKDwT1OguOWveth1aDkjF6KEJDeozu5',	'cus_RluZEjjIrCGmBT',	'basic',	'active',	'2025-02-17',	'2025-03-17',	2.99,	'2025-02-17 09:14:40',	'2025-02-17 09:14:40');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(20,	'Demo',	'demo@gmail.com',	NULL,	'$2y$10$9MIRdxsNLROSXXL/15mWLeaNUG0CWkQryAG97A9MrYvuYb.KmE7MW',	NULL,	NULL,	'1234567890',	NULL,	'2024-10-10 05:30:44',	'2024-10-10 05:30:44');

-- 2025-03-10 07:36:26
