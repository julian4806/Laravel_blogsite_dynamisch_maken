/*
 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blogsite

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 08/12/2022 15:24:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for listings
-- ----------------------------
DROP TABLE IF EXISTS `listings`;
CREATE TABLE `listings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conclusion_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conclusion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of listings
-- ----------------------------
BEGIN;
INSERT INTO `listings` VALUES (1, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:25', '2022-12-08 13:38:25'), (2, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:27', '2022-12-08 13:38:27'), (3, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:29', '2022-12-08 13:38:29'), (4, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:30', '2022-12-08 13:38:30'), (5, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:32', '2022-12-08 13:38:32'), (6, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:33', '2022-12-08 13:38:33'), (7, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:34', '2022-12-08 13:38:34'), (8, 'Is Coding Fun or Boring?', 'What is coding? Coding is the process of writing instructions for computers. It’s sort of like writing a to-do list in another language. In fact, there are dozens of different programming languages out there.\r\n\r\nFor example, coders use HTML and JavaScript to build websites. Swift is a popular language for iOS application developers. And Python is, well, pretty much good for everything.\r\n\r\nDevelopers use code to create everything from calculator apps to entire operating systems. Smartphones, laptops, vehicle infotainment systems, and many other computers utilize code.\r\n\r\nProgrammers can create virtually anything using code. Once you understand how programming works, you’ll be able to craft any kind of software or application.', 'Ami Mamolo', 'Assistant Professor at the University of Ontario Institute of Technology', 'Blog, Computer Science, STEM, Technology', 'Is Computer Programming Hard to Learn?', 'People often wonder if computer programming is hard to learn. After all, the question makes sense — just look at the picture above. If you have no programming experience, it probably seems pretty daunting.\r\n\r\nHere’s the surprising fact. Although coding may appear cryptic, most people get the hang of it quickly. And once you learn one language, it becomes easier to learn another.\r\n\r\nBut I tried coding, and it didn’t work out. Why is coding so hard?\r\n\r\nLots of people try coding, and it’s easy to get discouraged early on. It’s also possible that you didn’t have the right guidance when making your first attempt. But you’re not alone! Countless expert programmers made multiple attempts before they got the hang of it.', 'What Kind of Person Likes Coding?', 'Any person can enjoy coding. However, people who enjoy problem-solving often thrive as programmers. And while you don’t have to have an ‘engineering mind’ to do well, you’ll love coding if you also love building things.\r\n\r\nIn the world of programming, you’ll find artists, musicians, engineers, machinists, businesspeople — virtually every kind of person. And that’s one of the best things about coding: Anyone can do it, and everyone can bring their own unique strengths to the table and create something great.', NULL, '2022-12-08 13:38:36', '2022-12-08 13:38:36');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (11, '2014_10_12_000000_create_users_table', 1), (12, '2014_10_12_100000_create_password_resets_table', 1), (13, '2019_08_19_000000_create_failed_jobs_table', 1), (14, '2019_12_14_000001_create_personal_access_tokens_table', 1), (15, '2022_12_01_101128_create_listings_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
