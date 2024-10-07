ALTER TABLE `agents`
MODIFY COLUMN `id` int(11) NOT NULL AUTO_INCREMENT FIRST;

INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_12_20_112351_create_doctors_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_12_20_183921_add_role_to_users_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_12_21_072447_create_patients_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_12_21_200720_add_status_to_patients_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_01_04_185641_create_services_table', 1);
INSERT INTO `migrations` VALUES (10, '2023_01_06_120445_add_time_to_services', 1);
INSERT INTO `migrations` VALUES (11, '2023_01_06_120727_add_day_off_to_services', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'doctor'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2y$10$fJtqpbvYhQ0OLxrT3SR8wug0ZoEv/vxoYljO17WXoNQncMsEGgTtC', NULL, '2022-12-21 04:43:59', '2023-10-01 06:50:03', 'admin');

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;


INSERT INTO `cities` ( `name`, `code`) VALUES
( 'Fujairah', '04'),
( 'Abu Dhabi',  '01'),
( 'Dubai', '03'),
( 'Ras Al Khaimah', '05'),
( 'Umm Al Quwain', '07'),
( 'Sharjah', '06'),
( 'Ajman', '02');

DROP TABLE IF EXISTS `communities`;
CREATE TABLE communities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    city_id INT UNSIGNED,
    FOREIGN KEY (city_id) REFERENCES cities (id),
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

ALTER TABLE `properties`
ADD COLUMN `community` int(11) UNSIGNED NULL AFTER `measurements`;

DROP TABLE IF EXISTS `locations`;
CREATE TABLE locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

ALTER TABLE `off_plans`
MODIFY COLUMN `location` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `completion_dat`;


INSERT INTO `property_type`(`id`, `type`) VALUES (1, 'Residential');
INSERT INTO `property_type`(`id`, `type`) VALUES (2, 'Commercial');


ALTER TABLE `features` 
MODIFY COLUMN `id` int(11) NOT NULL AUTO_INCREMENT FIRST;

ALTER TABLE `off_plans`
MODIFY COLUMN `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL AFTER `location`,
MODIFY COLUMN `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL AFTER `longitude`;

ALTER TABLE `off_plans`
MODIFY COLUMN `short_description` text CHARACTER SET utf8 NOT NULL AFTER `property_sub_type`;

ALTER TABLE `off_plans`
ADD COLUMN `img5` varchar(255) NOT NULL DEFAULT '' AFTER `img4`,
ADD COLUMN `img6` varchar(255) NOT NULL DEFAULT '' AFTER `img5`,
ADD COLUMN `img7` varchar(255) NOT NULL DEFAULT '' AFTER `img6`,
ADD COLUMN `img8` varchar(255) NOT NULL DEFAULT '' AFTER `img7`;

ALTER TABLE `properties`
MODIFY COLUMN `img5` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' AFTER `img4`,
ADD COLUMN `img6` varchar(255) NOT NULL DEFAULT '' AFTER `img5`,
ADD COLUMN `img7` varchar(255) NOT NULL DEFAULT '' AFTER `img6`,
ADD COLUMN `img8` varchar(255) NOT NULL DEFAULT '' AFTER `img7`;

ALTER TABLE `floor_plans`
ADD COLUMN `ask_for_area` tinyint(1) NOT NULL DEFAULT 0 AFTER `ask_for_price`;

ALTER TABLE `off_plans`
MODIFY COLUMN `video_url` text CHARACTER SET utf8 NOT NULL DEFAULT '' AFTER `measurements`,
MODIFY COLUMN `longitude` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' AFTER `location`,
MODIFY COLUMN `latitude` varchar(255) CHARACTER SET utf8  NOT NULL DEFAULT '' AFTER `longitude`;


CREATE TABLE `buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' NOT NULL,
  `community_id` int(10) unsigned DEFAULT '0' NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `community_id` (`community_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

ALTER TABLE `properties`
ADD COLUMN `building` int(11) NOT NULL DEFAULT 0 AFTER `community`;