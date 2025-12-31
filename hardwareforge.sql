/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : hardwareforge

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 29/11/2025 19:21:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for builds
-- ----------------------------
DROP TABLE IF EXISTS `builds`;
CREATE TABLE `builds`  (
  `builds_id` int NOT NULL AUTO_INCREMENT,
  `builds_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `builds_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `cpus_id` int NULL DEFAULT NULL,
  `gpus_id` int NULL DEFAULT NULL,
  `motherboards_id` int NULL DEFAULT NULL,
  `rams_id` int NULL DEFAULT NULL,
  `cpucoolers_id` int NULL DEFAULT NULL,
  `storages_id` int NULL DEFAULT NULL,
  `cases_id` int NULL DEFAULT NULL,
  `psus_id` int NULL DEFAULT NULL,
  `Users_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`builds_id`) USING BTREE,
  INDEX `cpus_id`(`cpus_id` ASC) USING BTREE,
  INDEX `gpus_id`(`gpus_id` ASC) USING BTREE,
  INDEX `motherboards_id`(`motherboards_id` ASC) USING BTREE,
  INDEX `rams_id`(`rams_id` ASC) USING BTREE,
  INDEX `cpucoolers_id`(`cpucoolers_id` ASC) USING BTREE,
  INDEX `storages_id`(`storages_id` ASC) USING BTREE,
  INDEX `cases_id`(`cases_id` ASC) USING BTREE,
  INDEX `psus_id`(`psus_id` ASC) USING BTREE,
  INDEX `Users_id`(`Users_id` ASC) USING BTREE,
  CONSTRAINT `builds_ibfk_1` FOREIGN KEY (`cpus_id`) REFERENCES `cpus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_2` FOREIGN KEY (`gpus_id`) REFERENCES `gpus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_3` FOREIGN KEY (`motherboards_id`) REFERENCES `motherboards` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_4` FOREIGN KEY (`rams_id`) REFERENCES `rams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_5` FOREIGN KEY (`cpucoolers_id`) REFERENCES `cpucoolers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_6` FOREIGN KEY (`storages_id`) REFERENCES `storages` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_7` FOREIGN KEY (`cases_id`) REFERENCES `cases` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_8` FOREIGN KEY (`psus_id`) REFERENCES `psus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `builds_ibfk_9` FOREIGN KEY (`Users_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of builds
-- ----------------------------
INSERT INTO `builds` VALUES (2, 'test', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 3);

-- ----------------------------
-- Table structure for cases
-- ----------------------------
DROP TABLE IF EXISTS `cases`;
CREATE TABLE `cases`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `dimensions` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_factor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `materials` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mainboard_support` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `front_panel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `side_panel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expansion_slot` int NULL DEFAULT NULL,
  `ssd_slot` int NULL DEFAULT NULL,
  `hdd_slot` int NULL DEFAULT NULL,
  `gpu_length` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gpu_length_max_mm` int NULL DEFAULT NULL,
  `cpuCooler_height` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cpu_cooler_height_max_mm` int NULL DEFAULT NULL,
  `psu_length` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `weight` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_cases_color`(`color` ASC) USING BTREE,
  INDEX `idx_cases_gpu_length`(`gpu_length_max_mm` ASC) USING BTREE,
  INDEX `idx_cases_cooler_height`(`cpu_cooler_height_max_mm` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cases
-- ----------------------------
INSERT INTO `cases` (`id`, `name`, `price`, `image_url`, `product_url`, `dimensions`, `form_factor`, `materials`, `mainboard_support`, `color`, `front_panel`, `side_panel`, `expansion_slot`, `ssd_slot`, `hdd_slot`, `gpu_length`, `gpu_length_max_mm`, `cpuCooler_height`, `cpu_cooler_height_max_mm`, `psu_length`, `weight`) VALUES
(1, 'Lian Li O11 Dynamic EVO', 699.00, 'images/CASE/Lian_Li_O11_Dynamic_EVO.jpg', '', '465 x 285 x 459 mm', 'Mid Tower', 'Aluminum, Tempered Glass, Steel', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 2 x USB 3.0, Audio Combo', 'Tempered Glass', 8, 6, 4, '422 mm', 422, '167 mm', 167, '220 mm', 12.00),
(2, 'NZXT H9 Flow', 749.00, 'images/CASE/NZXT_H9_Flow.jpg', '', '495 x 290 x 466 mm', 'Mid Tower', 'Steel, Tempered Glass, Plastic', 'ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 2 x USB 3.2, Audio Jack', 'Tempered Glass', 7, 4, 2, '435 mm', 435, '165 mm', 165, '200 mm', 13.10),
(3, 'Fractal Design North', 679.00, 'images/CASE/Fractal_Design_North.jpg', '', '447 x 215 x 469 mm', 'Mid Tower', 'Steel, Tempered Glass, Real Wood', 'ATX, Micro-ATX, Mini-ITX', 'Wood', '2 x USB 3.0, 1 x USB-C, Audio Combo', 'Tempered Glass', 7, 3, 2, '355 mm', 355, '170 mm', 170, '255 mm', 7.60),
(4, 'Montech Air 100 ARGB', 299.00, 'images/CASE/Montech_Air_100_ARGB.jpg', '', '405 x 210 x 425 mm', 'Micro ATX', 'Steel, Tempered Glass, Plastic', 'Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, 1 x Audio Combo', 'Tempered Glass', 4, 2, 2, '330 mm', 330, '161 mm', 161, '160 mm', 6.30),
(5, 'Phanteks XT Pro Ultra', 599.00, 'images/CASE/Phanteks_XT_Pro_Ultra.jpg', '', '460 x 230 x 490 mm', 'Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 3, 2, '415 mm', 415, '184 mm', 184, '270 mm', 9.20),
(6, 'Lian Li Lancool III', 849.00, 'images/CASE/Lian_Li_Lancool_III.png', NULL, '475 x 230 x 480 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 4, 4, '398 mm', 398, '180 mm', 180, '220mm', 13.00),
(7, 'NZXT H5 Flow', 449.00, 'images/CASE/NZXT_H5_Flow.jpg', NULL, '460 x 210 x 460 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 1 x USB 3.2, Audio Jack', 'Mesh', 7, 2, 1, '365 mm', 365, '165 mm', 165, '180 mm', 7.60),
(8, 'Fractal Design Meshify C', 399.00, 'images/CASE/Fractal_Design_Meshify_C.jpg', NULL, '440 x 224 x 479 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 3, 2, '315 mm', 315, '172 mm', 172, '175 mm', 6.65),
(9, 'Corsair 4000D Airflow', 349.00, 'images/CASE/Corsair_4000D_Airflow.jpg', NULL, '453 x 230 x 466 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'White', '1 x USB-C, 1 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 3, '360 mm', 360, '170 mm', 170, ' 180 mm', 7.80),
(10, 'be quiet! Pure Base 500DX', 499.00, 'images/CASE/be_quiet_Pure_Base_500DX.jpg', NULL, '468 x 231 x 501 mm', 'ATX Mid Tower', 'Steel, Tempered Glass, Plastic', 'ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 1 x USB 3.2, Audio Combo', 'Tempered Glass', 7, 2, 2, '369 mm', 369, '190 mm', 190, '258 mm', 7.80),
(11, 'Thermaltake View 71', 799.00, 'images/CASE/Thermaltake_View_71.jpg', NULL, '590 x 246 x 569 mm', 'ATX Full Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, 2 x USB 2.0, Audio', 'Tempered Glass', 8, 4, 3, '310 mm', 310, '185 mm', 185, '220 mm', 18.90),
(12, 'Phanteks Eclipse P400A', 379.00, 'images/CASE/Phanteks_Eclipse_P400A.jpg', NULL, '465 x 200 x 455 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 2, '400 mm', 400, '170 mm', 170, '250 mm', 7.20),
(13, 'Lian Li LANCOOL 216', 399.00, 'images/CASE/Lian_Li_LANCOOL_216.jpg', NULL, '445 x 230 x 485 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Mesh', 7, 4, 2, '400 mm', 400, '180 mm', 180, '220 mm', 9.10),
(14, 'NZXT H7 Flow', 599.00, 'images/CASE/NZXT_H7_Flow.jpg', NULL, '480 x 230 x 505 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.2, 1 x USB-C, Audio Jack', 'Mesh', 7, 2, 2, '400 mm', 400, '185 mm', 185, '200 mm', 11.60),
(15, 'Cooler Master MasterBox Q300L', 199.00, 'images/CASE/Cooler_Master_MasterBox_Q300L.png', NULL, '389 x 194 x 399 mm', 'Micro ATX', 'Steel, Acrylic', 'Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Acrylic', 4, 1, 1, '350 mm', 350, '159 mm', 159, '160 mm', 3.80),
(16, 'Fractal Design Pop Air', 299.00, 'images/CASE/Fractal_Design_Pop_Air.jpg', NULL, '450 x 215 x 440 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'White', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 2, '340 mm', 340, '170 mm', 170, '170 mm', 6.80),
(17, 'Corsair 275R Airflow', 299.00, 'images/CASE/Corsair_275R_Airflow.avif', NULL, '445 x 230 x 466 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 2, '370 mm', 370, '170 mm', 170, '180 mm', 8.00),
(18, 'Lian Li PC-O11 Dynamic', 699.00, 'images/CASE/Lian_Li_PC-O11_Dynamic.jpg', NULL, '465 x 285 x 460 mm', 'ATX Mid Tower', 'Aluminum, Tempered Glass, Steel', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 2 x USB 3.0, Audio Combo', 'Tempered Glass', 8, 6, 4, '422 mm', 422, '167 mm', 167, '220 mm', 11.80),
(19, 'NZXT H210I', 269.00, 'images/CASE/NZXT_H210I.jpg', NULL, '349 x 210 x 375 mm', 'Mini ITX', 'Steel, Tempered Glass', 'Mini-ITX', 'Black', '1 x USB-C, 1 x USB 3.1, Audio Jack', 'Tempered Glass', 2, 2, 1, '305 mm', 305, '165 mm', 165, '180 mm', 6.00),
(20, 'Silverstone RL06', 299.00, 'images/CASE/Silverstone_RL06.jpg', NULL, '473 x 200 x 440 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 2, '395 mm', 395, '167 mm', 167, '180 mm', 7.50),
(21, 'Cooler Master Silencio S600', 449.00, 'images/CASE/Cooler_Master_Silencio_S600.jpg', NULL, '467 x 220 x 505 mm', 'ATX Mid Tower', 'Steel, Aluminum', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, 1 x USB-C, Audio Combo', 'Aluminum', 7, 2, 2, '414 mm', 414, '165 mm', 165, '180 mm', 10.20),
(22, 'Phanteks P500A', 549.00, 'images/CASE/Phanteks_P500A.jpg', NULL, '500 x 240 x 520 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 3, 3, '440 mm', 440, '175 mm', 175, '250 mm', 11.50),
(23, 'Lian Li PC-V3000', 1299.00, 'images/CASE/Lian_Li_PC-V3000.jpg', NULL, '285 x 650 x 630 mm', 'ATX Full Tower', 'Aluminum', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '4 x USB 3.0, Audio Combo', 'Aluminum', 8, 6, 6, '470 mm', 470, '190 mm', 190, '300 mm', 19.50),
(24, 'NZXT H510', 399.00, 'images/CASE/NZXT_H510.jpg', NULL, '428 x 210 x 460 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 1 x USB 3.1, Audio Jack', 'Tempered Glass', 7, 2, 2, '381 mm', 381, '165 mm', 165, '180 mm', 6.60),
(25, 'Fractal Design Define 7 Compact', 549.00, 'images/CASE/Fractal_Design_Define_7_Compact.jpg', NULL, '440 x 224 x 448 mm', 'ATX Mid Tower', 'Steel', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, 1 x USB-C, Audio Combo', 'Solid Panel', 7, 2, 2, '315 mm', 315, '169 mm', 169, '200 mm', 8.60),
(26, 'Cooler Master NR200', 349.00, 'images/CASE/Cooler_Master_NR200.jpg', NULL, '376 x 185 x 292 mm', 'Mini ITX', 'Steel', 'Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Mesh', 3, 3, 2, '330 mm', 330, '155 mm', 155, '130 mm', 4.50),
(28, 'Corsair 5000D Airflow', 699.00, 'images/CASE/Corsair_5000D_Airflow.jpg', NULL, '520 x 245 x 520 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '1 x USB-C, 2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 4, 2, '420 mm', 420, '170 mm', 170, '250 mm', 13.80),
(29, 'Lian Li O11 Air Mini', 479.00, 'images/CASE/Lian_Li_O11_Air_Mini.jpg', NULL, '400 x 288 x 384 mm', 'ATX Mid Tower', 'Steel, Aluminum, Mesh', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 4, 2, '362 mm', 362, '170 mm', 170, '200 mm', 8.50),
(30, 'Phanteks Eclipse G360A', 429.00, 'images/CASE/Phanteks_Eclipse_G360A.jpg', NULL, '455 x 200 x 465 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 2, '400 mm', 400, '162 mm', 162, '220 mm', 7.20),
(31, 'Fractal Design Torrent', 899.00, 'images/CASE/Fractal_Design_Torrent.jpg', NULL, '544 x 242 x 530 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 4, 4, '461 mm', 461, '188 mm', 188, '230 mm', 10.80),
(32, 'Thermaltake Core P3', 599.00, 'images/CASE/Thermaltake_Core_P3.jpg', NULL, '470 x 333 x 512 mm', 'ATX Open Frame', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 8, 3, 3, '450 mm', 450, '180 mm', 180, '200 mm', 10.50),
(33, 'SilverStone FARA R1', 239.00, 'images/CASE/SilverStone_FARA_R1.jpg', NULL, '446 x 207 x 455 mm', 'ATX Mid Tower', 'Steel, Tempered Glass', 'ATX, Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 7, 2, 2, '322 mm', 322, '165 mm', 165, '160 mm', 6.90),
(34, 'ASUS Prime AP201', 329.00, 'images/CASE/ASUS_Prime_AP201.jpg', NULL, '350 x 205 x 460 mm', 'Micro ATX', 'Steel, Mesh', 'Micro-ATX, Mini-ITX', 'White', '2 x USB 3.0, Audio Combo', 'Mesh', 4, 3, 1, '338 mm', 338, '170 mm', 170, '180 mm', 6.10),
(35, 'DeepCool CH370', 259.00, 'images/CASE/DeepCool_CH370.jpg', NULL, '431 x 215 x 413 mm', 'Micro ATX', 'Steel, Tempered Glass', 'Micro-ATX, Mini-ITX', 'Black', '2 x USB 3.0, Audio Combo', 'Tempered Glass', 4, 2, 2, '320 mm', 320, '165 mm', 165, '160 mm', 6.30);

-- ----------------------------
-- Table structure for table `completed_builds`
-- ----------------------------

DROP TABLE IF EXISTS `completed_builds`;
CREATE TABLE `completed_builds` (
  `completed_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `builds_id` int NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`completed_id`),
  INDEX `idx_completed_builds_user` (`user_id`),
  INDEX `idx_completed_builds_public` (`is_public`),
  INDEX `idx_completed_builds_created` (`created_at` DESC),
  CONSTRAINT `fk_completed_builds_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_completed_builds_build` FOREIGN KEY (`builds_id`) REFERENCES `builds` (`builds_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for table `build_comments`
-- ----------------------------

DROP TABLE IF EXISTS `build_comments`;
CREATE TABLE `build_comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `completed_build_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_comment_id` int DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  INDEX `idx_build_comments_build` (`completed_build_id`),
  INDEX `idx_build_comments_user` (`user_id`),
  INDEX `idx_build_comments_parent` (`parent_comment_id`),
  INDEX `idx_build_comments_created` (`created_at` DESC),
  CONSTRAINT `fk_build_comments_build` FOREIGN KEY (`completed_build_id`) REFERENCES `completed_builds` (`completed_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_build_comments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_build_comments_parent` FOREIGN KEY (`parent_comment_id`) REFERENCES `build_comments` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for table `build_ratings`
-- ----------------------------

DROP TABLE IF EXISTS `build_ratings`;
CREATE TABLE `build_ratings` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `completed_build_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `uk_build_ratings_user_build` (`completed_build_id`, `user_id`),
  INDEX `idx_build_ratings_build` (`completed_build_id`),
  INDEX `idx_build_ratings_user` (`user_id`),
  CONSTRAINT `fk_build_ratings_build` FOREIGN KEY (`completed_build_id`) REFERENCES `completed_builds` (`completed_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_build_ratings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_rating_range` CHECK (`rating` >= 1 AND `rating` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for cpucoolers
-- ----------------------------
DROP TABLE IF EXISTS `cpucoolers`;
CREATE TABLE `cpucoolers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `liquid_cooling` tinyint(1) NULL DEFAULT NULL,
  `dimension` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `height_mm` int NULL DEFAULT NULL,
  `heatpipes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tdp` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_cpucoolers_color`(`color` ASC) USING BTREE,
  INDEX `idx_cpucoolers_height`(`height_mm` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cpucoolers
-- ----------------------------
INSERT INTO `cpucoolers` (`id`, `name`, `price`, `image_url`, `product_url`, `liquid_cooling`, `dimension`, `color`, `height_mm`, `heatpipes`, `tdp`) VALUES
(1, 'Noctua NH-U12S Redux', 239.00, 'images/CPUCOOLER/NOCTUA_NH-U12S_REDUX.jpg', '', 0, '158mm (H) x 125mm (W) x 71mm (D)', 'Black', 158, '4 heatpipes', 180),
(2, 'DeepCool AK400 Performance', 139.00, 'images/CPUCOOLER/DEEPCOOL_AK400_PERFORMANCE.jpg', '', 0, '155mm (H) x 127mm (W) x 97mm (D)', 'Black', 155, '4 heatpipes', 180),
(3, 'be quiet! Dark Rock 4', 329.00, 'images/CPUCOOLER/BEQUIET_DARK_ROCK_4.jpg', '', 0, '159mm (H) x 136mm (W) x 96mm (D)', 'Black', 159, '6 heatpipes', 250),
(4, 'Cooler Master MasterLiquid ML240L V2 RGB', 329.00, 'images/CPUCOOLER/COOLER_MASTER_MASTERLIQUID_ML240L_V2_RGB.jpg', '', 1, '277mm (L) x 119.6mm (W) x 27.2mm (H)', 'RGB', 277, 'Pump-based', 250),
(5, 'NZXT Kraken X63 RGB', 569.00, 'images/CPUCOOLER/NZXT_KRAKEN_X63_RGB.jpg', '', 1, '315mm (L) x 143mm (W) x 30mm (H)', 'RGB', 315, 'Pump-based', 280),
(6, 'Noctua NH-D15 G2', 599.00, 'images/CPUCOOLER/NOCTUA_NH-D15_G2.jpg', NULL, 0, '161mm (H) x 150mm (W) x 135mm (D)', 'Black/Brown', 168, '8 heatpipes', 250),
(7, 'be quiet! Dark Rock Pro 4', 399.00, 'images/CPUCOOLER/BEQUIET_DARK_ROCK_PRO_4.jpg', NULL, 0, '163mm (H) x 139mm (W) x 111mm (D)', 'Black', 163, '7 heatpipes', 250),
(8, 'Corsair H150i Elite Capellix', 799.00, 'images/CPUCOOLER/CORSAIR_ICUE_H150I_ELITE_CAPELLIX.jpg', NULL, 1, '397mm (L) x 120mm (W) x 27mm (H)', 'RGB', 397, 'Pump-based', 280),
(9, 'Arctic Liquid Freezer II 240', 329.00, 'images/CPUCOOLER/LIQUID_FREEZER_II_240.jpg', NULL, 1, '277mm (L) x 120mm (W) x 38mm (H)', 'Black', 277, 'Pump-based', 250),
(10, 'Thermalright Phantom Spirit 120 SE', 199.00, 'images/CPUCOOLER/THERMALRIGHT_PHANTOM_SPIRIT_120_SE.jpg', NULL, 0, '154mm (H) x 120mm (W) x 71mm (D)', 'Silver', 154, '5 heatpipes', 220),
(11, 'ID-COOLING SE-224-XTS', 149.00, 'images/CPUCOOLER/ID-COOLING_SE-224-XTS.jpg', NULL, 0, '155mm (H) x 120mm (W) x 73mm (D)', 'Black', 155, '4 heatpipes', 180),
(12, 'Scythe Fuma 2', 249.00, 'images/CPUCOOLER/SCYTHE_FUMA_2.jpg', NULL, 0, '154.5mm (H) x 130mm (W) x 140mm (D)', 'Black', 154, '6 heatpipes', 190),
(13, 'Cooler Master Hyper 212 RGB', 199.00, 'images/CPUCOOLER/COOLER_MASTER_HYPER_212_RGB.png', NULL, 0, '158.8mm (H) x 120mm (W) x 77.6mm (D)', 'Black', 158, '4 heatpipes', 150),
(14, 'Thermaltake TH240 ARGB', 449.00, 'images/CPUCOOLER/THERMALTAKE_TH240_ARGB.png', NULL, 1, '277mm (L) x 120mm (W) x 27mm (H)', 'RGB', 277, 'Pump-based', 280),
(15, 'Deepcool AK620 Digital Pro', 439.00, 'images/CPUCOOLER/DEEPCOOL_AK620_DIGITAL_PRO.jpg', NULL, 0, '163mm (H) x 138mm (W) x 129mm (D)', 'Black', 163, '6 heatpipes', 220),
(16, 'Noctua NH-U9S', 349.00, 'images/CPUCOOLER/NOCTUA_NH-U9S.jpg', NULL, 0, '125mm (H) x 95mm (W) x 71mm (D)', 'Black/Brown', 125, '5 heatpipes', 130),
(17, 'be quiet! Pure Rock Slim 2', 169.00, 'images/CPUCOOLER/BEQUIET_PURE_ROCK_SLIM_2.jpg', NULL, 0, '145mm (H) x 90mm (W) x 68mm (D)', 'Black', 145, '4 heatpipes', 120),
(18, 'Corsair H100i RGB PLATINUM', 649.00, 'images/CPUCOOLER/CORSAIR_ICUE_H100I_RGB_PLATINUM.jpg', NULL, 1, '322mm (L) x 120mm (W) x 27mm (H)', 'RGB', 322, 'Pump-based', 240),
(19, 'Arctic Freezer 34 eSports DUO', 249.00, 'images/CPUCOOLER/ARCTIC_FREEZER_34_ESPORTS_DUO.jpg', NULL, 0, '157mm (H) x 120mm (W) x 96mm (D)', 'Black', 157, '4 heatpipes', 210),
(20, 'Zalman ZET 5 BLACK', 349.00, 'images/CPUCOOLER/ZALMAN_ZET_5_BLACK.png', NULL, 0, '158mm (H) x 130mm (W) x 117mm (D)', 'Black', 158, '5 heatpipes', 220),
(21, 'Thermaltake TH120 ARGB', 349.00, 'images/CPUCOOLER/THERMALTAKE_TH120_ARGB.jpg', NULL, 1, '277mm (L) x 120mm (W) x 27mm (H)', 'RGB', 277, 'Pump-based', 150),
(22, 'ID-COOLING AURAFLOW X 240', 399.00, 'images/CPUCOOLER/ID-COOLING_AURAFLOW_X_240.jpg', NULL, 1, '277mm (L) x 120mm (W) x 27mm (H)', 'RGB', 277, 'Pump-based', 250),
(23, 'Scythe Mugen 5 Rev.B', 229.00, 'images/CPUCOOLER/SCYTHE_MUGEN_5_REV.B.jpg', NULL, 0, '154.5mm (H) x 130mm (W) x 140mm (D)', 'Black', 154, '6 heatpipes', 220),
(24, 'Cooler Master MasterLiquid ML240L CORE ARGB', 299.00, 'images/CPUCOOLER/COOLER_MASTER_MASTERLIQUID_ML240L_CORE_ARGB.jpg', NULL, 1, '277mm (L) x 119.6mm (W) x 27.2mm (H)', 'Black', 277, 'Pump-based', 200),
(25, 'Noctua NH-L12S', 299.00, 'images/CPUCOOLER/NOCTUA_NH-L12S.jpg', NULL, 0, '145mm (H) x 125mm (W) x 70mm (D)', 'Black/Brown', 145, '5 heatpipes', 145);

-- ----------------------------
-- Table structure for cpus
-- ----------------------------
DROP TABLE IF EXISTS `cpus`;
CREATE TABLE `cpus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `cores` int NULL DEFAULT NULL,
  `threads` int NULL DEFAULT NULL,
  `base_clock` decimal(5, 2) NULL DEFAULT NULL,
  `boost_clock` decimal(5, 2) NULL DEFAULT NULL,
  `socket` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dimension` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wattage` int NULL DEFAULT NULL,
  `cpu_category` enum('consumer','workstation','datacenter') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'consumer',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cpus
-- ----------------------------
INSERT INTO `cpus` (`id`, `name`, `brand`, `price`, `image_url`, `product_url`, `cores`, `threads`, `base_clock`, `boost_clock`, `socket`, `dimension`, `wattage`, `cpu_category`) VALUES
(1, 'Ryzen 7 7800X3D', 'AMD', 1399.00, 'images/CPU/AMD_RYZEN_7_7800X3D_PROCESSOR_TMT.jpg', 'https://www.tmt.my/products/amd-ryzen-7-7800x3d-processor-am5', 8, 16, 4.20, 5.00, 'AM5', '3.99 cm x 3.99 cm x 0.25 cm', 120, 'consumer'),
(2, 'AMD Ryzen 5 7600', 'AMD', 849.00, 'images/CPU/AMD_RYZEN_5_7000_SERIES.avif', 'https://www.tmt.my/products/amd-processor-am5-ryzen-5-7600', 6, 12, 3.80, 5.10, 'AM5', '40mm x 40mm', 65, 'consumer'),
(3, 'AMD Ryzen 9 7900X', 'AMD', 2699.00, 'images/CPU/AMD_RYZEN_9_7000_SERIES.avif', 'https://asashi.com.my/english/ws.item/56986/PROCESSOR/AMD%20AM5/AMD-RYZEN-9-7900X-Processor-%2876M-Cache---12C24T---up-to-5.7Ghz%29-AM5---100-100000589WOF/', 12, 24, 4.70, 5.60, 'AM5', '40mm x 40mm', 170, 'consumer'),
(4, 'Intel Core i5-13600K', 'INTEL', 1349.00, 'images/CPU/INTEL_I5_13TH_GEN.jpg', '', 14, 20, 3.50, 5.10, 'LGA1700', '37.5mm x 37.5mm', 125, 'consumer'),
(5, 'Intel Core i7-14700K', 'INTEL', 1379.00, 'images/CPU/INTEL_I7_14TH_GEN.png', 'https://www.tmt.my/products/intel-i7-14700k-unlocked-14th-gen-processor', 20, 28, 3.40, 5.60, 'LGA1700', '37.5mm x 37.5mm', 125, 'consumer'),
(6, 'AMD Ryzen 5 5600', 'AMD', 469.00, 'images/CPU/AMD_RYZEN_5_5000_SERIES.avif', 'https://www.tmt.my/products/amd-processor-am4-ryzen-5-5600', 6, 12, 3.50, 4.40, 'AM4', '40mm x 40mm', 65, 'consumer'),
(7, 'Intel Xeon W5-2465X', 'INTEL', 3499.00, 'images/CPU/INTEL_XEON_W5_2465X.jpg', '', 16, 32, 3.10, 4.70, 'LGA4677', '45mm x 45mm', 240, 'workstation'),
(8, 'AMD Ryzen Threadripper Pro 7965WX', 'AMD', 6999.00, 'images/CPU/AMD_THREADRIPPER_PRO.jpg', '', 24, 48, 4.20, 5.30, 'sTR5', '58.5mm x 75.4mm', 350, 'workstation'),
(9, 'Intel Xeon W9-3495X', 'INTEL', 11499.00, 'images/CPU/INTEL_XEON_W9.jpg', '', 56, 112, 1.90, 4.80, 'LGA4677', '45mm x 45mm', 420, 'workstation'),
(10, 'AMD Ryzen Threadripper 7980X', 'AMD', 9499.00, 'images/CPU/AMD_THREADRIPPER.jpg', '', 64, 128, 3.20, 5.10, 'sTR5', '58.5mm x 75.4mm', 350, 'workstation'),
(11, 'Intel Xeon Platinum 8460Y', 'INTEL', 18999.00, 'images/CPU/INTEL_XEON_PLATINUM.jpg', '', 40, 80, 2.00, 3.70, 'LGA4677', '45mm x 45mm', 300, 'datacenter'),
(12, 'AMD EPYC 9554', 'AMD', 15999.00, 'images/CPU/AMD_EPYC_9000_SERIES.avif', '', 64, 128, 3.10, 3.75, 'SP5', '72mm x 75mm', 360, 'datacenter'),
(13, 'Intel Xeon Silver 4410Y', 'INTEL', 4499.00, 'images/CPU/INTEL_XEON_SILVER.jpg', '', 12, 24, 2.00, 3.90, 'LGA4677', '45mm x 45mm', 150, 'datacenter'),
(14, 'AMD EPYC 9354P', 'AMD', 7999.00, 'images/CPU/AMD_EPYC_9000_SERIES.avif', '', 32, 64, 3.25, 3.80, 'SP5', '72mm x 75mm', 280, 'datacenter'),
(15, 'Intel Core i9-14900K', 'INTEL', 2299.00, 'images/CPU/INTEL_I9_14TH_GEN.avif', 'https://www.intel.com', 24, 32, 3.20, 6.00, 'LGA1700', '37.5mm x 37.5mm', 253, 'consumer'),
(16, 'AMD Ryzen 5 7500F', 'AMD', 799.00, 'images/CPU/AMD_RYZEN_5_7000_SERIES.avif', NULL, 6, 12, 3.70, 5.00, 'AM5', NULL, 65, 'consumer'),
(17, 'AMD Ryzen 7 7700X', 'AMD', 1299.00, 'images/CPU/AMD_RYZEN_7_7000_SERIES.avif', NULL, 8, 16, 4.50, 5.40, 'AM5', NULL, 105, 'consumer'),
(18, 'AMD Ryzen 9 7950X3D', 'AMD', 2999.00, 'images/CPU/AMD_RYZEN_9_7000_SERIES.avif', NULL, 16, 32, 4.20, 5.70, 'AM5', NULL, 120, 'consumer'),
(19, 'Intel Core i5-13400F', 'INTEL', 999.00, 'images/CPU/INTEL_I5_13TH_GEN.jpg', NULL, 10, 16, 2.50, 4.60, 'LGA1700', NULL, 148, 'consumer'),
(20, 'Intel Core i7-13700F', 'INTEL', 1599.00, 'images/CPU/INTEL_I7_13TH_GEN.jpg', NULL, 16, 24, 2.10, 5.20, 'LGA1700', NULL, 219, 'consumer'),
(21, 'Intel Core i9-13900KS', 'INTEL', 3299.00, 'images/CPU/INTEL_I9_13TH_GEN.jpg', NULL, 24, 32, 3.20, 6.00, 'LGA1700', NULL, 253, 'consumer'),
(22, 'AMD Ryzen 3 5300G', 'AMD', 399.00, 'images/CPU/AMD_RYZEN_3_5000_SERIES.jpg', NULL, 4, 8, 4.00, 4.20, 'AM4', NULL, 65, 'consumer'),
(23, 'AMD Ryzen 5 5500', 'AMD', 499.00, 'images/CPU/AMD_RYZEN_5_5000_SERIES.avif', NULL, 6, 12, 3.60, 4.20, 'AM4', NULL, 65, 'consumer'),
(24, 'AMD Ryzen 7 5700G', 'AMD', 799.00, 'images/CPU/AMD_RYZEN_5_5000_SERIES.avif', NULL, 8, 16, 3.80, 4.60, '', NULL, 65, 'consumer'),
(25, 'AMD Ryzen 9 5900X', 'AMD', 1199.00, 'images/CPU/AMD_RYZEN_5_9000_SERIES.avif', NULL, 12, 24, 3.70, 4.80, 'AM4', NULL, 105, 'consumer'),
(26, 'Intel Core i3-13100', 'INTEL', 649.00, 'images/CPU/INTEL_I3_13TH_GEN.jpg', NULL, 4, 8, 3.40, 4.50, 'LGA1700', NULL, 110, 'consumer'),
(27, 'Intel Core i3-13400', 'INTEL', 849.00, 'images/CPU/INTEL_I3_13TH_GEN.jpg', NULL, 10, 16, 2.50, 4.60, 'LGA1700', NULL, 148, 'consumer'),
(28, 'Intel Core i5-13500', 'INTEL', 1149.00, 'images/CPU/INTEL_I5_13TH_GEN.jpg', NULL, 14, 20, 2.50, 4.80, 'LGA1700', NULL, 154, 'consumer'),
(29, 'Intel Core i5-14600K', 'INTEL', 1599.00, 'images/CPU/INTEL_I5_14TH_GEN.jpg', NULL, 14, 20, 3.50, 5.30, 'LGA1700', NULL, 181, 'consumer'),
(30, 'Intel Core i7-13700K', 'INTEL', 1999.00, 'images/CPU/INTEL_I7_13TH_GEN.jpg', NULL, 16, 24, 3.40, 5.40, 'LGA1700', NULL, 125, 'consumer'),
(31, 'Intel Core i9-13900K', 'INTEL', 2799.00, 'images/CPU/INTEL_I9_13TH_GEN.jpg', NULL, 24, 32, 3.00, 5.80, 'LGA1700', NULL, 125, 'consumer'),
(32, 'AMD Ryzen 5 4500', 'AMD', 299.00, 'images/CPU/AMD_RYZEN_5_4000_SERIES.jpg', NULL, 6, 12, 3.60, 4.10, 'AM4', NULL, 65, 'consumer'),
(33, 'AMD Ryzen 5 5600G', 'AMD', 599.00, 'images/CPU/AMD_RYZEN_5_5000_SERIES.avif', NULL, 6, 12, 3.90, 4.40, 'AM4', NULL, 65, 'consumer'),
(34, 'AMD Ryzen 7 5700X3D', 'AMD', 1299.00, 'images/CPU/AMD_RYZEN_5_5000_SERIES.avif', NULL, 8, 16, 3.00, 4.10, 'AM4', NULL, 105, 'consumer'),
(35, 'Intel Core i5-12400F', 'INTEL', 699.00, 'images/CPU/INTEL_I5_12TH_GEN.jpg', NULL, 6, 12, 2.50, 0.00, 'LGA1700', NULL, 65, 'consumer'),
(37, 'Ryzen 7 5700X', 'AMD', 759.00, 'images/CPU/AMD_RYZEN_7_5000_SERIES.jpg', NULL, 8, 16, 3.40, 4.60, 'AM4', '7nm', 65, 'consumer'),
(38, 'Ryzen 5 5600X', 'AMD', 659.00, 'images/CPU/AMD_RYZEN_5_5000_SERIES.avif', NULL, 6, 12, 3.70, 4.60, 'AM4', '7nm', 65, 'consumer'),
(39, 'Ryzen 5 7600X', 'AMD', 999.00, 'images/CPU/AMD_RYZEN_5_7000_SERIES.avif', NULL, 6, 12, 4.70, 5.30, 'AM5', '5nm', 105, 'consumer'),
(40, 'Ryzen 7 7700', 'AMD', 1569.00, 'images/CPU/AMD_RYZEN_7_7000_SERIES.avif', NULL, 8, 16, 3.80, 5.30, 'AM5', '5nm', 65, 'consumer'),
(41, 'Ryzen 9 9900X', 'AMD', 2149.00, 'images/CPU/AMD_RYZEN_9_9000_SERIES.avif', NULL, 12, 24, 4.40, 5.60, 'AM5', '4nm', 120, 'consumer'),
(42, 'Ryzen 5 9600X', 'AMD', 1299.00, 'images/CPU/AMD_RYZEN_5_9000_SERIES.avif', NULL, 6, 12, 3.90, 5.40, 'AM5', '4nm', 65, 'consumer'),
(43, 'Ryzen 7 9700X', 'AMD', 1679.00, 'images/CPU/AMD_RYZEN_7_9000_SERIES.avif', NULL, 8, 16, 3.80, 5.50, 'AM5', '4nm', 65, 'consumer'),
(44, 'Ryzen 7 9800X3D', 'AMD', 1999.00, 'images/CPU/AMD_RYZEN_7_9000_SERIES.avif', NULL, 8, 16, 4.20, 5.20, 'AM5', '4nm', 120, 'consumer'),
(45, 'Ryzen 9 9900X3D', 'AMD', 2999.00, 'images/CPU/AMD_RYZEN_9_9000_SERIES.avif', NULL, 12, 24, 4.40, 5.40, 'AM5', '4nm', 120, 'consumer'),
(46, 'Ryzen 9 9950X3D', 'AMD', 3499.00, 'images/CPU/AMD_RYZEN_9_9000_SERIES.avif', NULL, 16, 32, 4.30, 5.50, 'AM5', '4nm', 170, 'consumer'),
(47, 'Core i5-14400F', 'Intel', 599.00, 'images/CPU/INTEL_I5_14TH_GEN.jpg', NULL, 10, 16, 2.50, 4.70, 'LGA1700', 'Intel 7', 65, 'consumer'),
(48, 'Core i7-14700F', 'Intel', 1349.00, 'images/CPU/INTEL_I7_14TH_GEN.png', NULL, 20, 28, 2.10, 5.40, 'LGA1700', 'Intel 7', 65, 'consumer'),
(49, 'Core Ultra 5 245K', 'Intel', 1399.00, 'images/CPU/INTEL_CORE_ULTRA_5_SERIES_2.avif', NULL, 14, 14, 4.20, 5.20, 'LGA1851', 'Intel 4', 125, 'consumer'),
(50, 'Core Ultra 5 245KF', 'Intel', 1299.00, 'images/CPU/INTEL_CORE_ULTRA_5_SERIES_2.avif', NULL, 14, 14, 4.20, 5.20, 'LGA1851', 'Intel 4', 125, 'consumer'),
(51, 'Core Ultra 7 265K', 'Intel', 1499.00, 'images/CPU/INTEL_CORE_ULTRA_7_SERIES_2.jpg', NULL, 20, 20, 3.90, 5.50, 'LGA1851', 'Intel 4', 125, 'consumer'),
(52, 'Core Ultra 7 265KF', 'Intel', 1399.00, 'images/CPU/INTEL_CORE_ULTRA_7_SERIES_2.jpg', NULL, 20, 20, 3.90, 5.50, 'LGA1851', 'Intel 4', 125, 'consumer'),
(53, 'Core Ultra 9 285K', 'Intel', 2599.00, 'images/CPU/INTEL_CORE_ULTRA_9_SERIES_2.avif', NULL, 24, 24, 3.80, 5.70, 'LGA1851', 'Intel 4', 125, 'consumer');

-- ----------------------------
-- Table structure for gpus
-- ----------------------------
DROP TABLE IF EXISTS `gpus`;
CREATE TABLE `gpus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `dimension` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `core_clock` decimal(6, 2) NULL DEFAULT NULL,
  `memory_size` int NULL DEFAULT NULL,
  `memory_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `power_connectors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wattage` int NULL DEFAULT NULL,
  `card_bus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gpu_category` enum('consumer','workstation','datacenter') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'consumer',
  `gpu_subcategory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'gaming',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gpus
-- ----------------------------
INSERT INTO `gpus` (`id`, `name`, `brand`, `price`, `image_url`, `product_url`, `dimension`, `color`, `core_clock`, `memory_size`, `memory_type`, `power_connectors`, `wattage`, `card_bus`, `gpu_category`, `gpu_subcategory`) VALUES
(1, 'MSI GeForce RTX 5070 Ti EXPERT OC', 'NVIDIA', 4199.00, 'images/GPU/MSI-RTX5070TI-EXPERT-OC-1.jpg', 'https://www.tmt.my/products/msi-geforce-rtx-5070-ti-expert-oc', '	15.00 cm x 31.90 cm x 6.00 cm', 'black', 2580.00, 16, 'GDDR7', '16-pin', 300, '256-Bit', 'consumer', 'gaming'),
(2, 'ASUS Dual Radeon RX 6500 XT V2 OC', 'AMD', 599.00, 'images/GPU/ASUS-DUAL-RADEON-RX-6500-XT-V2-OC-1.jpg', '\r\n', '	12.80 cm x 20.10 cm x 4.00 cm', 'black', 2820.00, 4, 'GDDR6', ' 1 x 6-pin', 165, '64-bit', 'consumer', 'entry-level'),
(3, 'MSI GeForce RTX 5070 Ti Gaming TRIO OC', 'NVIDIA', 4299.00, 'images/GPU/MSI-RTX-5070-TI-GAMING-TRIO-PLUS-OC.jpg', '\r\n', '3.38cm x 1.40cm x 5.0cm ', 'black', 2572.00, 16, 'GDDR7', '16-pin', 300, '256-bit', 'consumer', 'gaming'),
(4, 'ZOTAC GAMING GeForce RTX 5090 ARCTICSTORM AIO', 'NVIDIA', 12999.00, 'images/GPU/ZOTAC-RTX5090-ARCTICSTORM-AIO-MAIN.jpg', '\r\n', '39.4cm x 12.28cm x 5.57cm', 'black', 2437.00, 32, 'GDDR7', '16-pin', 600, '512-bit', 'consumer', 'enthusiast'),
(5, 'Gigabyte GeForce RTX 5050 WINDFORCE OC', 'NVIDIA', 1099.00, 'images/GPU/GIGABYTE_RTX_5050_WINDFORCE_OC.png', '\r\n', '19.9cm x 11.6cm x 4.0cm', 'black', 2587.00, 8, 'GDDR6', '8-pin*1', 180, '128-bit', 'consumer', 'entry-level'),
(6, 'Sapphire Radeon RX 9060 XT OC NITRO+ 16GB', 'AMD', 1859.00, 'images/GPU/SAPPHIRE_RX9060XT_OC_NITRO+.jpg', '', '30.0cm x 13.1cm x 5.5cm', 'silver', 2780.00, 16, 'GDDR6X', '8-pin*1', 375, '128-bit', 'consumer', 'gaming'),
(7, 'Acer ARC B580 Nitro OC', 'INTEL', 1399.00, 'images/GPU/ACER-ARC-B580-NITRO-OC-1.jpg', '\r\n', '26.8cm x 11.3cm x 4.0cm', 'black', 2670.00, 12, 'GDDR6', '8-pin*1', 150, '192-bit', 'consumer', 'workstation'),
(8, 'MSI GeForce RTX 5070 Ti SHADOW 3X OC', 'NVIDIA', 3799.00, 'images/GPU/MSI-RTX-5070-ti-SHADOW-3X-OC.jpg', '\r\n', '30.3cm x 12.1cm x 4.9cm ', 'black', 2497.00, 16, 'GDDR7', '16-pin', 300, '256-bit', 'consumer', 'professional'),
(9, 'ASUS TURBO Radeon AI PRO R9700', 'AMD', 6849.00, 'images/GPU/ASUS-TURBO-AI-PRO-9700-BOX-VIEW.jpg', '\r\n', '	11.10 cm x 26.60 cm x 4.00 cm', 'black', 2940.00, 24, 'GDDR6', '16-pin', 300, '256-bit', 'workstation', 'enthusiast'),
(10, 'ZOTAC GAMING GeForce RTX 3050 Twin Edge OC', 'NVIDIA', 749.00, 'images/GPU/ZOTAC-RTX-3050-TWIN-EDGE-OC-1.jpg', '\r\n', '	11.10 cm x 16.10 cm x 4.00 cm', 'black', 1477.00, 8, 'GDDR6', '8-pin', 130, '96-bit', 'consumer', 'entry-level'),
(11, 'ASUS Dual Radeon RX 7600 EVO OC', 'AMD', 1099.00, 'images/GPU/ASUS_DUAL_RX7600_EVO_OC.jpg\r\n', '', '	12.30 cm x 22.90 cm x 4.90 cm', 'black', 2715.00, 16, 'GDDR6', '8-pin', 220, '128-bit', 'consumer', 'gaming'),
(12, 'ASUS Prime GeForce RTX 5080 OC', 'NVIDIA', 6399.00, 'images/GPU/ASUS-PRIME-RTX-5080-OC.jpg\r\n', '', '30.4cm x 12.6cm x 5.0cm', 'black', 2685.00, 16, 'GDDR7', '16-pin', 350, '256-bit', 'consumer', 'gaming'),
(13, 'Gigabyte GeForce RTX 5060 OC Low Profile', 'NVIDIA', 1349.00, 'images/GPU/GIGABYTE_RTX_5060_OC_LOWPROFILE.jpg\r\n', '', '	6.90 cm x 18.20 cm x 3.60 cm', 'black', 2512.00, 8, 'GDDR6', '8-pin', 170, '128-bit', 'consumer', 'entry-level'),
(14, 'PNY GeForce RTX 5060 Ti Dual Fan OC 8GB', 'NVIDIA', 1729.00, 'images/GPU/PNY_RTX_5060TI_DUAL_FAN_OC.jpg\r\n', '', '12.00 cm x 24.50 cm x 4.00 cm', 'black', 2692.00, 8, 'GDDR6', '8-pin', 220, '128-bit', 'consumer', 'workstation'),
(15, 'Palit GeForce RTX 5060 Dual OC', 'NVIDIA', 1329.00, 'images/GPU/PALIT_RTX_5060_DUAL_OC.jpg', '', '	12.00 cm x 19.70 cm x 4.00 cm', 'black', 2535.00, 8, 'GDDR6', '8-pin', 220, '128-bit', 'consumer', 'datacenter'),
(16, 'MSI GeForce RTX 4070 GAMING X TRIO', 'NVIDIA', 2999.00, 'images/GPU/MSI_RTX_4070+GAMING_X_TRIO.png', NULL, '33.8cm x 14.1cm x 5.2cm', 'black', 2610.00, 12, 'GDDR6X', '16-pin', 200, '192-bit', 'consumer', 'gaming'),
(17, 'ASUS ROG Strix RTX 4080 OC', 'NVIDIA', 5999.00, 'images/GPU/ASUS_ROG_STRIX_RTX_4080_OC.jpg', NULL, '35.8cm x 14.9cm x 7.01cm', 'black', 2655.00, 16, 'GDDR6X', '16-pin', 320, '192-bit', 'consumer', 'gaming'),
(18, 'Gigabyte Radeon RX 7900 XT GAMING OC', 'AMD', 3599.00, 'images/GPU/GIGABYTE_RX_7900XT_GAMING_OC.jpg', NULL, '33.1cm x 13.8cm x 5.0cm', 'black', 2535.00, 20, 'GDDR6', '8-pin x 2', 315, '320-bit', 'consumer', 'gaming'),
(19, 'Sapphire Pulse Radeon RX 6750 XT', 'AMD', 1799.00, 'images/GPU/SAPPHIRE_RX_6750XT_GAMING_OC.jpg', NULL, '28.0cm x 12.3cm x 5.05cm', 'black', 2618.00, 12, 'GDDR6', '8-pin x 1', 250, '192-bit', 'consumer', 'gaming'),
(20, 'PowerColor RX 6600 Fighter', 'AMD', 999.00, 'images/GPU/POWERCOLOR_RX_6600_FIGHTER.png', NULL, '20cm x 11.1cm x 3.9cm', 'black', 2491.00, 8, 'GDDR6', '8-pin x 1', 180, '128-bit', 'consumer', 'gaming'),
(21, 'ZOTAC Gaming GeForce RTX 4060 Ti Twin Edge', 'NVIDIA', 1899.00, 'images/GPU/ZOTAC_RTX_4060TI_TWIN_EDGE.jpg', NULL, '22.6cm x 12.3cm x 4.01cm', 'black', 2535.00, 8, 'GDDR6', '8-pin x 1', 160, '128-bit', 'consumer', 'gaming'),
(22, 'PNY GeForce RTX 4070 Ti Verto', 'NVIDIA', 3599.00, 'images/GPU/PNY_RTX_4070TI_VERTO.jpg', NULL, '30.5cm x 12.0cm x 6.06cm', 'black', 2610.00, 12, 'GDDR6X', '16-pin x 1', 285, '192-bit', 'consumer', 'gaming'),
(23, 'XFX SPEEDSTER RX 7800 XT MERC 319 ', 'AMD', 2599.00, 'images/GPU/XFX_SPEEDSTER_RX_7800XT_MERC319.jpg', NULL, '32.6cm x 12.6cm x 5.8cm\r\n', 'black', 2565.00, 16, 'GDDR6', '8-pin x 2', 263, '256-bit', 'consumer', 'gaming'),
(24, 'ASUS TUF Gaming RTX 4090 OC', 'NVIDIA', 9999.00, 'images/GPU/ASUS_TUF_RTX_4090_OC.png', NULL, '34.8cm x 15.0cm x 7.26cm', 'black', 2595.00, 24, 'GDDR6X', '16-pin x 1', 450, '384-bit', 'consumer', 'gaming'),
(25, 'Gigabyte Eagle RTX 4060', 'NVIDIA', 1499.00, 'images/GPU/GIGABYTE_EAGLE_RTX_4060.png', NULL, '27.2cm x 11.5cm x 4.0cm', 'black', 2505.00, 8, 'GDDR6', '8-pin x 1', 130, '128-bit', 'consumer', 'gaming'),
(26, 'MSI Gaming GeForce RTX 3060 Ti', 'NVIDIA', 1799.00, 'images/GPU/MSI_GAMING_RTX_3060_TI.png', NULL, '27.8cm x 13.1cm x 5.1cm', 'black', 1830.00, 8, 'GDDR6', '12-pin x 1', 200, '256-bit', 'consumer', 'gaming'),
(27, 'Sapphire NITRO+ RX 6950 XT', 'AMD', 2299.00, 'images/GPU/SAPPHIRE_NITRO_RX_6950_XT.jpg', NULL, '32.0cm x 13.4cm x 7.1cm', 'black', 2310.00, 16, 'GDDR6', '8-pin x 2', 335, '256-bit', 'consumer', 'gaming'),
(28, 'Palit JetStream RTX 4080', 'NVIDIA', 5599.00, 'images/GPU/PALIT_JETSTREAM_RTX_4080.jpg', NULL, '32.8cm x 13.7cm x 7.1cm', 'black', 2505.00, 16, 'GDDR6X', '16-pin x 1', 320, '256-bit', 'consumer', 'gaming'),
(29, 'XFX Speedster RX 6600 XT', 'AMD', 1199.00, 'images/GPU/XFX_SPEEDSTER_RX_6600_XT.jpg', NULL, '26.9cm x 12.4cm x 4.6cm', 'black', 2589.00, 8, 'GDDR6', '8-pin x 1', 160, '128-bit', 'consumer', 'gaming'),
(30, 'ASUS DUAL RTX 4070 OC', 'NVIDIA', 2799.00, 'images/GPU/ASUS_DUAL_RTX_4070_OC.png', NULL, '26.7cm x 13.4cm x 5.1cm', 'black', 2550.00, 12, 'GDDR6X', '8-pin x 1', 200, '192-bit', 'consumer', 'gaming'),
(31, 'MSI Ventus RTX 3070 Ti OC', 'NVIDIA', 1999.00, 'images/GPU/MSI_VENTUS_RTX_3070_TI.png', NULL, '30.5cm x 12.1cm x 5.2cm', 'black', 1830.00, 8, 'GDDR6X', '12-pin x 1', 290, '256-bit', 'consumer', 'gaming'),
(32, 'PowerColor Hellhound RX 6650 XT', 'AMD', 899.00, 'images/GPU/POWERCOLOR_HELLHOUND_RX_6650_XT.jpg', NULL, '26.2cm x 13.2cm x 5.3cm', 'black', 2635.00, 8, 'GDDR6', '8-pin x 1', 230, '128-bit', 'consumer', 'gaming'),
(33, 'ASRock Phantom Gaming RX 7700 XT', 'AMD', 1999.00, 'images/GPU/ASROCK_PHANTOM_RX_7700_XT.png', NULL, '32.8cm x 13.1cm x 5.1cm', 'black', 2599.00, 12, 'GDDR6', '8-pin x 1', 245, '192-bit', 'consumer', 'gaming'),
(34, 'Gigabyte Windforce RTX 3060', 'NVIDIA', 1499.00, 'images/GPU/GIGABYTE_WINDFORCE_RTX_3060.jpg', NULL, '28.2cm x 11.7cm x 4.1cm', 'black', 1792.00, 12, 'GDDR6', '8-pin x 1', 170, '192-bit', 'consumer', 'gaming'),
(35, 'Sapphire PULSE RX 7900 XTX', 'AMD', 3999.00, 'images/GPU/SAPPHIRE_PULSE_RX_7900_XTX.png', NULL, '31.3cm x 13.5cm x 5.8cm', 'black', 2500.00, 24, 'GDDR6', '8-pin x 3', 355, '384-bit', 'consumer', 'gaming'),
(36, 'ASUS TUF Gaming RX 7800 XT OC', 'AMD', 2799.00, 'images/GPU/ASUS_TUF_RX_7800XT.png', NULL, '32.8cm x 15.0cm x 6.2cm', 'black', 2565.00, 16, 'GDDR6', '8-pin x 2', 263, '256-bit', 'consumer', 'gaming'),
(37, 'PowerColor Red Devil RX 7900 GRE', 'AMD', 2999.00, 'images/GPU/PowerColor_Red_Devil_RX_7900_GRE.jpg', NULL, '33.8cm x 14.0cm x 7.0cm', 'black', 2395.00, 16, 'GDDR6', '8-pin x 2', 260, '256-bit', 'consumer', 'gaming'),
(38, 'Sapphire Pulse RX 7600 XT 16GB', 'AMD', 1499.00, 'images/GPU/Sapphire_Pulse_RX_7600XT.jpg', NULL, '24.0cm x 11.9cm x 4.6cm', 'black', 2755.00, 16, 'GDDR6', '8-pin x 1', 190, '128-bit', 'consumer', 'gaming'),
(39, 'AMD Radeon Pro W7600', 'AMD', 4599.00, 'images/GPU/AMD_RADEON_PRO_W7600.avif', NULL, '26.7cm x 11.2cm x 4.0cm', 'black', 2200.00, 8, 'GDDR6', '8-pin x 1', 130, '128-bit', 'workstation', 'professional'),
(40, 'Intel Arc A770 Limited Edition 16GB', 'INTEL', 1699.00, 'images/GPU/INTEL_ARC_A770_LIMITED_EDITION.jpg', NULL, '28.0cm x 11.7cm x 4.2cm', 'black', 2100.00, 16, 'GDDR6', '8-pin x 2', 225, '256-bit', 'consumer', 'gaming'),
(41, 'Intel Arc A750 Challenger D OC', 'INTEL', 1199.00, 'images/GPU/INTEL_ARC_A750_CHALLENGER.png', NULL, '27.1cm x 12.0cm x 4.0cm', 'black', 2050.00, 8, 'GDDR6', '8-pin x 1', 225, '256-bit', 'consumer', 'entry-level'),
(42, 'Intel Arc Pro A60', 'INTEL', 3199.00, 'images/GPU/INTEL_ARC_PRO_A60.png', NULL, '16.8cm x 6.9cm x 1.8cm', 'black', 2000.00, 12, 'GDDR6', 'None', 75, '192-bit', 'workstation', 'professional'),
(43, 'ASUS ROG Strix RTX 5090 OC', 'NVIDIA', 15999.00, 'images/GPU/ASUS_ROG_STRIX_RTX_5090_OC.jpg', NULL, '35.7cm x 15.0cm x 7.6cm', 'black', 2900.00, 24, 'GDDR7', '16-pin x 1', 450, '512-bit', 'consumer', 'enthusiast'),
(44, 'MSI Suprim X RTX 5080', 'NVIDIA', 6650.00, 'images/GPU/MSI_SUPRIM_X_RTX_5080.png', NULL, '33.8cm x 14.2cm x 7.0cm', 'black', 2850.00, 16, 'GDDR7', '16-pin x 1', 360, '256-bit', 'consumer', 'enthusiast'),
(45, 'Gigabyte AORUS RTX 5070 Ti Master', 'NVIDIA', 5439.00, 'images/GPU/GIGABYTE_AORUS_RTX_5070_TI_MASTER.png', NULL, '33.0cm x 14.0cm x 6.8cm', 'black', 2800.00, 16, 'GDDR7', '16-pin x 1', 300, '256-bit', 'consumer', 'gaming'),
(46, 'ASUS TUF Gaming RTX 5070 OC', 'NVIDIA', 3899.00, 'images/GPU/ASUS_TUF_RTX_5070_OC.jpg', NULL, '30.5cm x 13.8cm x 6.2cm', 'black', 2650.00, 12, 'GDDR7', '16-pin x 1', 250, '192-bit', 'consumer', 'gaming'),
(47, 'ASUS ROG Astral RTX 5080 White Edition', 'NVIDIA', 7599.00, 'images/GPU/ASUS_ROG_ASTRAL_RTX_5080_WHITE.png', NULL, '33.8cm x 14.2cm x 7.0cm', 'white', 2850.00, 16, 'GDDR7', '16-pin x 1', 360, '256-bit', 'consumer', 'enthusiast'),
(48, 'ASUS ROG Astral RTX 5090 White Edition', 'NVIDIA', 9199.00, 'images/GPU/ASUS_ROG_ASTRAL_RTX_5090_WHITE.png', NULL, '35.7cm x 15.0cm x 7.6cm', 'white', 2900.00, 32, 'GDDR7', '16-pin x 1', 600, '512-bit', 'consumer', 'enthusiast'),
(49, 'Gigabyte RTX 5070 Ti Aero OC', 'NVIDIA', 4499.00, 'images/GPU/GIGABYTE_RTX_5070_TI_AERO_OC.png', NULL, '33.0cm x 14.0cm x 6.8cm', 'white', 2800.00, 16, 'GDDR7', '16-pin x 1', 300, '256-bit', 'consumer', 'gaming'),
(50, 'MSI GAMING TRIO RTX 5070 OC WHITE', 'NVIDIA', 3399.00, 'images/GPU/MSI_GAMING_TRIO_RTX_5070_OC_WHITE.png', NULL, '30.5cm x 13.8cm x 6.2cm', 'white', 2650.00, 12, 'GDDR7', '16-pin x 1', 250, '192-bit', 'consumer', 'gaming');

-- ----------------------------
-- Table structure for motherboards
-- ----------------------------
DROP TABLE IF EXISTS `motherboards`;
CREATE TABLE `motherboards`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `CPU` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cpu_socket` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chipset` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `memory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `memory_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `memory_speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LAN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wireless_connection` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expansion_slot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `storage_interface` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_factor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wattage` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_motherboards_cpu_socket`(`cpu_socket` ASC) USING BTREE,
  INDEX `idx_motherboards_memory_type`(`memory_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of motherboards
-- ----------------------------
INSERT INTO `motherboards` (`id`, `name`, `price`, `image_url`, `product_url`, `CPU`, `cpu_socket`, `chipset`, `memory`, `memory_type`, `memory_speed`, `LAN`, `wireless_connection`, `expansion_slot`, `storage_interface`, `form_factor`, `wattage`) VALUES
(1, 'MSI MPG B850 EDGE TI WIFI ATX Motherboard', 1499.00, 'images/MOTHERBOARD/MSI_MPG_B850_EDGE_TI_WIFI_WHITE.png', '', 'AM5', 'AM5', 'AMD B850', '4 x DDR5', 'DDR5', NULL, 'YES', 'YES', 'PCI-E 5.0 x 16 ', '4 x M.2', 'ATX', 70),
(2, 'MSI B550 Gaming Plus', 599.00, 'images/MOTHERBOARD/MSI_MPG_B550_GAMING_PLUS.png', '', 'AM4', 'AM4', 'AMD B550', '4 x DDR4, up to 4400 MHz, 128GB max', 'DDR4', '4400+', 'Realtek 8111H Gigabit LAN', 'None', '2 x PCIe x16, 2 x PCIe x1', '2 x M.2, 6 x SATA 6Gb/s', 'ATX', 65),
(3, 'ASUS TUF Gaming B650-PLUS WiFi', 899.00, 'images/MOTHERBOARD/ASUS_TUF_GAMING_B650_PLUS_WIFI.png', '', 'AM5', 'AM5', 'AMD B650', '4 x DDR5, up to 6400 MHz, 128GB max', 'DDR5', '6400+', '2.5Gb Intel LAN', 'WiFi 6 + Bluetooth 5.2', '2 x PCIe x16 (1x Gen4), 1 x PCIe x1', '3 x M.2, 4 x SATA 6Gb/s', 'ATX', 75),
(4, 'Gigabyte B760M AORUS Elite AX', 749.00, 'images/MOTHERBOARD/GIGABYTE_B760M_AORUS_ELITE_AX.jpg', '', 'LGA1700', 'LGA1700', 'Intel B760', '4 x DDR5, up to 7600 MHz, 128GB max', 'DDR5', '7600+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', '2 x PCIe x16 (1x Gen4), 1 x PCIe x1', '2 x M.2, 4 x SATA 6Gb/s', 'Micro ATX', 70),
(5, 'ASRock Z790 Steel Legend', 1099.00, 'images/MOTHERBOARD/ASROCK_Z790_STEEL_LEGEND.jpg', '', 'LGA1700', 'LGA1700', 'Intel Z790', '4 x DDR5, up to 7200 MHz, 128GB max', 'DDR5', '7200+', '2.5Gb Realtek LAN', 'WiFi 6E + Bluetooth 5.3', '3 x PCIe x16, 1 x PCIe x1', '3 x M.2, 8 x SATA 6Gb/s', 'ATX', 80),
(6, 'ASUS ROG Strix B550-I Gaming', 899.00, 'images/MOTHERBOARD/ASUS_ROG_STRIX_B550-I_GAMING.png', '', 'AM4', 'AM4', 'AMD B550', '2 x DDR4, up to 5100 MHz, 64GB max', 'DDR4', '5100+', 'Intel I225-V 2.5Gb LAN', 'WiFi 6 + Bluetooth 5.1', '1 x PCIe x16', '2 x M.2, 4 x SATA 6Gb/s', 'Mini ITX', 60),
(7, 'ASUS TUF Gaming X670E-Plus WiFi', 1299.00, 'images/MOTHERBOARD/ASUS_TUF_GAMING_X670E_EATX.png', '', 'AMD', 'AM5', 'AMD X670E', '4 x DIMM, up to 128GB', 'DDR5', '6000+', '2.5Gb Ethernet', 'YES', 'PCI-E 5.0 x 16', '4 x M.2', 'ATX', 75),
(8, 'MSI MAG B760 Tomahawk WiFi', 899.00, 'images/MOTHERBOARD/MSI_MAG_B760_TOMAHAWK_WIFI.png', NULL, 'LGA1700', 'LGA1700', 'Intel B760', '4 x DDR5', 'DDR5', '6000+', 'YES', 'YES', '4.0 x 16', '3 x M.2', 'ATX', 65),
(9, 'Gigabyte AORUS B650 Elite AX', 799.00, 'images/MOTHERBOARD/GIGABYTE_B650_AORUS_ELITE_AX.png', NULL, 'AM5', 'AM5', 'AMD B650', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', 'PCIe 4.0 x16', '3 x M.2, 4 x SATA 6Gb/s', 'ATX', 65),
(10, 'ASRock B550M Pro4', 449.00, 'images/MOTHERBOARD/ASROCK_B550M_PRO4.png', NULL, 'AM4', 'AM4', 'AMD B550', '4 x DDR4, up to 128GB', 'DDR4', '4400+', 'Gigabit LAN', 'None', 'PCIe 4.0 x16', '2 x M.2, 6 x SATA 6Gb/s', 'Micro ATX', 65),
(11, 'ASUS Prime Z690-P WiFi', 999.00, 'images/MOTHERBOARD/ASUS_PRIME_Z690-P_WIFI.png', NULL, 'LGA1700', 'LGA1700', 'Intel Z690', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6 + Bluetooth 5.2', 'PCIe 5.0 x16', '3 x M.2, 4 x SATA 6Gb/s', 'ATX', 70),
(12, 'MSI PRO B650M-A WiFi', 599.00, 'images/MOTHERBOARD/MSI_PRO_B650M-A_WIFI.png', NULL, 'AM5', 'AM5', 'AMD B650', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6 + Bluetooth 5.2', 'PCIe 4.0 x16', '2 x M.2, 4 x SATA 6Gb/s', 'Micro ATX', 65),
(13, 'Gigabyte Z790 AORUS ELITE AX', 1099.00, 'images/MOTHERBOARD/GIGABYTE_AORUS_Z790_ELITE_AX.png', NULL, 'LGA1700', 'LGA1700', 'Intel Z790', '4 x DDR5, up to 128GB', 'DDR5', '7200+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', 'PCIe 5.0 x16', '4 x M.2, 6 x SATA 6Gb/s', 'ATX', 75),
(14, 'ASRock X670E Steel Legend', 1199.00, 'images/MOTHERBOARD/ASROCK_X670E_STEEL_LEGEND.png', NULL, 'AM5', 'AM5', 'AMD X670E', '4 x DDR5, up to 128GB', 'DDR5', '6600+', '2.5Gb LAN', 'None', 'PCIe 5.0 x16', '4 x M.2, 6 x SATA 6Gb/s', 'ATX', 75),
(15, 'ASUS ROG Strix B550-F Gaming WiFi', 799.00, 'images/MOTHERBOARD/ASUS_ROG_STRIX_B550-F_GAMING_WIFI.png', NULL, 'AM4', 'AM4', 'AMD B550', '4 x DDR4, up to 128GB', 'DDR4', '4400+', '2.5Gb LAN', 'WiFi 6 + Bluetooth 5.1', 'PCIe 4.0 x16', '2 x M.2, 6 x SATA 6Gb/s', 'ATX', 70),
(16, 'MSI MAG B660M Mortar WiFi', 749.00, 'images/MOTHERBOARD/MSI_MAG_B660M_MORTAR_WIFI.jpg', NULL, 'LGA1700', 'LGA1700', 'Intel B660', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.2', 'PCIe 4.0 x16', '2 x M.2, 6 x SATA 6Gb/s', 'Micro ATX', 65),
(17, 'Gigabyte X670 AORUS ELITE AX', 999.00, 'images/MOTHERBOARD/GIGABYTE_X670_AORUS_ELITE_AX.png', NULL, 'AM5', 'AM5', 'AMD X670', '4 x DDR5, up to 128GB', 'DDR5', '6600+', '2.5Gb LAN', 'None', 'PCIe 4.0 x16', '4 x M.2, 6 x SATA 6Gb/s', 'ATX', 70),
(18, 'ASUS TUF Gaming H770-PRO WiFi', 849.00, 'images/MOTHERBOARD/ASUS_TUF_GAMING_H770-PRO_WIFI.jpg', NULL, 'LGA1700', 'LGA1700', 'Intel H770', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6 + Bluetooth 5.2', 'PCIe 4.0 x16', '3 x M.2, 4 x SATA 6Gb/s', 'ATX', 65),
(19, 'MSI B650 GAMING PLUS WIFI', 749.00, 'images/MOTHERBOARD/MSI_B650_GAMING_PLUS_WIFI.png', NULL, 'AM5', 'AM5', 'AMD B650', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', 'PCIe 4.0 x16', '3 x M.2, 6 x SATA 6Gb/s', 'ATX', 65),
(20, 'ASRock Z690 Phantom Gaming ITX/TB4', 1299.00, 'images/MOTHERBOARD/ASROCK_Z690_PHANTOM_GAMING_ITX_TB4.jpg', NULL, 'LGA1700', 'LGA1700', 'Intel Z690', '2 x DDR5, up to 64GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.2', 'PCIe 5.0 x16', '2 x M.2, 4 x SATA 6Gb/s', 'Mini ITX', 70),
(21, 'Gigabyte B650M DS3H', 499.00, 'images/MOTHERBOARD/GIGABYTE_B650M_DS3H.jpg', NULL, 'AM5', 'AM5', 'AMD B650', '4 x DDR5, up to 128GB', 'DDR5', '6400+', 'Gigabit LAN', 'None', 'PCIe 4.0 x16', '2 x M.2, 4 x SATA 6Gb/s', 'Micro ATX', 60),
(22, 'ASUS Prime B660M-A WiFi', 799.00, 'images/MOTHERBOARD/ASUS_PRIME_B660M-A_WIFI.png', NULL, 'LGA1700', 'LGA1700', 'Intel B660', '4 x DDR5, up to 128GB', 'DDR5', '6000+', '2.5Gb LAN', 'WiFi 6 + Bluetooth 5.2', 'PCIe 4.0 x16', '2 x M.2, 4 x SATA 6Gb/s', 'Micro ATX', 65),
(23, 'MSI MPG X670E Carbon WiFi', 1499.00, 'images/MOTHERBOARD/MSI_MPG_X670E_CARBON_WIFI.png', NULL, 'AM5', 'AM5', 'AMD X670E', '4 x DDR5, up to 128GB', 'DDR5', '6600+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', 'PCIe 5.0 x16', '4 x M.2, 6 x SATA 6Gb/s', 'ATX', 80),
(24, 'ASRock B650M PG Riptide WiFi', 699.00, 'images/MOTHERBOARD/ASROCK_B650M_PG_RIPTIDE_WIFI.png', NULL, 'AM5', 'AM5', 'AMD B650', '4 x DDR5, up to 128GB', 'DDR5', '6400+', '2.5Gb LAN', 'WiFi 6 + Bluetooth 5.2', 'PCIe 4.0 x16', '2 x M.2, 4 x SATA 6Gb/s', 'Micro ATX', 65),
(25, 'Gigabyte Z690 Gaming X', 849.00, 'images/MOTHERBOARD/GIGABYTE_Z690_GAMING_X.png', NULL, 'LGA1700', 'LGA1700', 'Intel Z690', '4 x DDR4, up to 128GB', 'DDR4', '5333+', '2.5Gb LAN', 'None', 'PCIe 5.0 x16', '3 x M.2, 6 x SATA 6Gb/s', 'ATX', 70),
(26, 'ASUS TUF Gaming B660-Plus D4', 649.00, 'images/MOTHERBOARD/ASUS_TUF_GAMING_B660-PLUS_D4.png', NULL, 'LGA1700', 'LGA1700', 'Intel B660', '4 x DDR4, up to 128GB', 'DDR4', '5333+', '2.5Gb LAN', 'None', 'PCIe 4.0 x16', '2 x M.2, 4 x SATA 6Gb/s', 'ATX', 65),
(27, 'ASUS ROG Crosshair X870E Hero', 3499.00, 'images/MOTHERBOARD/ASUS_ROG_CROSSHAIR_X870E_HERO.jpg', NULL, 'AMD', 'AM5', 'AMD X870E', '4 x DDR5, up to 8400+ MHz, 128GB max', 'DDR5', '8400+', '2.5Gb LAN', 'WiFi 7 + Bluetooth 5.4', 'PCIe 5.0 x16 + PCIe 5.0 x8', '5 x M.2, 8 x SATA 6Gb/s', 'ATX', 95),
(28, 'Gigabyte X670E AORUS Master AX', 2599.00, 'images/MOTHERBOARD/GIGABYTE_X670E_AORUS_MASTER_AX.png', NULL, 'AMD', 'AM5', 'AMD X670E', '4 x DDR5, up to 8400+ MHz, 128GB max', 'DDR5', '8400+', '2.5Gb LAN', 'WiFi 7 + Bluetooth 5.4', 'PCIe 5.0 x16 + PCIe 5.0 x8', '5 x M.2, 8 x SATA 6Gb/s', 'ATX', 90),
(29, 'ASRock B850M Steel Legend WiFi', 879.00, 'images/MOTHERBOARD/ASROCK_B850M_STEEL_LEGEND_WIFI.png', NULL, 'AMD', 'AM5', 'AMD B850', '4 x DDR5, up to 7600+ MHz, 128GB max', 'DDR5', '7600+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', 'PCIe 5.0 x16', '3 x M.2, 4 x SATA 6Gb/s', 'Micro ATX', 70),
(30, 'MSI MAG B650 Tomahawk WiFi', 1099.00, 'images/MOTHERBOARD/MSI_MAG_B650_TOMAHAWK_WIFI.jpg', NULL, 'AMD', 'AM5', 'AMD B650', '4 x DDR5, up to 7800+ MHz, 128GB max', 'DDR5', '7800+', '2.5Gb LAN', 'WiFi 6E + Bluetooth 5.3', 'PCIe 5.0 x16', '4 x M.2, 6 x SATA 6Gb/s', 'ATX', 75);

-- ----------------------------
-- Table structure for psus
-- ----------------------------
DROP TABLE IF EXISTS `psus`;
CREATE TABLE `psus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `EPS_connector` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SATA_connector` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Dimensions` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Modular` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PSU_compatibility` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PCIe_connector` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_factor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `power` int NULL DEFAULT NULL,
  `efficiency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warranty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `weight` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_psus_color`(`color` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of psus
-- ----------------------------
INSERT INTO `psus` (`id`, `name`, `price`, `image_url`, `product_url`, `EPS_connector`, `SATA_connector`, `Dimensions`, `Modular`, `color`, `PSU_compatibility`, `PCIe_connector`, `form_factor`, `power`, `efficiency`, `warranty`, `weight`) VALUES
(1, 'Corsair RM850e 850W 80+ Gold', 549.00, 'images/PSU/CORSAIR_RM850E_80PLUS_GOLD_ATX.jpg', 'https://www.tmt.my/products/corsair-rm-series-rm850e-rm1000e-850w-1000w-80plus-gold-full-modular-power-supply', '2 x 4+4 Pin EPS', '8 x SATA', '150 x 86 x 160 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '3 x 6+2 Pin PCIe', 'ATX', 850, '80+ Gold', '10 Years', 1.65),
(2, 'Cooler Master MWE 650 Bronze V2', 289.00, 'images/PSU/COOLER_MASTER_MWE_650_BRONZE_V2.png', '', '1 x 4+4 Pin EPS', '6 x SATA', '150 x 86 x 140 mm', 'Non-Modular', 'Black', 'ATX 12V v2.52', '2 x 6+2 Pin PCIe', 'ATX', 650, '80+ Bronze', '5 Years', 1.40),
(3, 'Be Quiet! Pure Power 12M 750W 80+ Gold', 519.00, 'images/PSU/BEQUIET_PURE_POWER_12M_750W_80PLUS_GOLD.jpg', 'https://www.bequiet.com/en/powersupply/4174', '2 x 4+4 Pin EPS', '6 x SATA', '160 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '2 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 750, '80+ Gold', '10 Years', 1.80),
(4, 'Thermaltake Smart BX1 550W 80+ Bronze', 239.00, 'images/PSU/THERMALTAKE_SMART_BX1_550W_80PLUS_BRONZE.jpg', 'https://www.thermaltake.com/smart-bx1-550w.html', '1 x 4+4 Pin EPS', '5 x SATA', '150 x 86 x 140 mm', 'Non-Modular', 'Black', 'ATX 12V v2.4', '2 x 6+2 Pin PCIe', 'ATX', 550, '80+ Bronze', '5 Years', 1.35),
(5, 'Seasonic Focus GX-1000 80+ Gold', 799.00, 'images/PSU/SEASONIC_FOCUS_GX_1000W_80PLUS_GOLD.jpg', 'https://seasonic.com/focus-gx', '2 x 4+4 Pin EPS', '10 x SATA', '140 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '4 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 1000, '80+ Gold', '10 Years', 1.90),
(6, 'Corsair RM1000e 1000W 80+ Gold', 649.00, 'images/PSU/CORSAIR_RM1000E_1000W_80PLUS_GOLD.png', NULL, '2 x 4+4 Pin', '10 x SATA', '150 x 86 x 180 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '4 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 1000, '80+ Gold', '10 Years', 1.85),
(7, 'Cooler Master MWE 750 Gold V2', 359.00, 'images/PSU/COOLER_MASTER_MWE_750_80PLUS_GOLD_V2.jpg', NULL, '2 x 4+4 Pin', '6 x SATA', '150 x 86 x 140 mm', 'Semi-Modular', 'Black', 'ATX 12V v2.52', '2 x 6+2 Pin', 'ATX', 750, '80+ Gold', '5 Years', 1.55),
(8, 'Be Quiet! Pure Power 11 550W', 299.00, 'images/PSU/BEQUIET_PURE_POWER_11_550W_80PLUS_GOLD.jpg', NULL, '', '6 x SATA', '160 x 150 x 86 mm', 'Semi-Modular', 'Black', 'ATX 12V v2.4', '2 x 6+2 Pin', 'ATX', 550, '80+ Gold', '5 Years', 1.70),
(9, 'Thermaltake Toughpower GF1 850W', 699.00, 'images/PSU/THERMALTAKE_TOUGHPOWER_GF1_850W_80PLUS_GOLD.jpg', NULL, '2 x 4+4 Pin', '9 x SATA', '140 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '3 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 850, '80+ Gold', '10 Years', 1.95),
(10, 'Seasonic PRIME TX-1000 1000W', 1599.00, 'images/PSU/SEASONIC_PRIME_TX-1000W_80PLUS_TITANIUM.jpg', NULL, '2 x 4+4 Pin', '12 x SATA', '140 x 170 x 86 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '4 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 1000, '80+ Titanium', '12 Years', 2.40),
(11, 'Corsair CX750M 750W 80+ Bronze', 399.00, 'images/PSU/CORSAIR_CX750M_750W_80PLUS_BRONZE.jpg', NULL, '2 x 4+4 Pin', '6 x SATA', '150 x 86 x 160 mm', 'Semi-Modular', 'Black', 'ATX 12V v2.4', '2 x 6+2 Pin', 'ATX', 750, '80+ Bronze', '5 Years', 1.70),
(12, 'Cooler Master MWE 850 White', 449.00, 'images/PSU/COOLER_MASTER_MWE_850_GOLD_V2_WHITE.jpg', NULL, '2 x 4+4 Pin', '8 x SATA', '150 x 86 x 140 mm', 'Fully Modular', 'White', 'ATX 12V v2.52', '3 x 6+2 Pin', 'ATX', 800, '80+ Gold', '5 Years', 1.60),
(13, 'Be Quiet! Dark Power 13 850W', 1199.00, 'images/PSU/BEQUIET_DARK_POWER_13_850W_80PLUS_TITANIUM.jpg', NULL, '2 x 4+4 Pin', '8 x SATA', '160 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '4 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 850, '80+ Platinum', '10 Years', 2.10),
(14, 'Thermaltake Smart 700W', 299.00, 'images/PSU/THERMALTAKE_SMART_700W_80PLUS.jpg', NULL, '1 x 4+4 Pin', '5 x SATA', '150 x 86 x 140 mm', 'Non-Modular', 'Black', 'ATX 12V v2.3', '2 x 6+2 Pin', 'ATX', 700, '80+ White', '3 Years', 1.45),
(15, 'Seasonic FOCUS GX-650 650W', 549.00, 'images/PSU/SEASONIC_FOCUS_GX_650W_80PLUS_GOLD.jpg', NULL, '1 x 4+4 Pin', '6 x SATA', '140 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 12V v2.52', '2 x 6+2 Pin', 'ATX', 650, '80+ Gold', '10 Years', 1.55),
(16, 'Corsair RM850x 850W 80+ Gold', 699.00, 'images/PSU/CORSAIR_RM850X_SHIFT_850W_80PLUS_GOLD.jpg', NULL, '2 x 4+4 Pin', '9 x SATA', '150 x 86 x 170 mm', 'Fully Modular', 'Black', 'ATX 12V v2.52', '4 x 6+2 Pin', 'ATX', 850, '80+ Gold', '10 Years', 1.90),
(17, 'Cooler Master MWE 550W 80+ GOLD', 229.00, 'images/PSU/COOLER_MASTER_MWE_550_GOLD_V2.jpg', NULL, '1 x 4+4 Pin', '5 x SATA', '150 x 86 x 140 mm', 'Non-Modular', 'Black', 'ATX 12V v2.31', '2 x 6+2 Pin', 'ATX', 550, '80+ Bronze', '5 Years', 1.40),
(18, 'Be Quiet! System Power 9 700W', 399.00, 'images/PSU/BEQUIET_SYSTEM_POWER_9_700W_80PLUS_GOLD.jpg', NULL, '2 x 4+4 Pin', '6 x SATA', '140 x 150 x 86 mm', 'Semi-Modular', 'Black', 'ATX 12V v2.4', '2 x 6+2 Pin', 'ATX', 700, '80+ Gold', '5 Years', 1.75),
(19, 'Thermaltake GF1 ARGB 650W', 429.00, 'images/PSU/THERMALTAKE_GF1_ARGB_650W_80PLUS_GOLD.png', NULL, '1 x 4+4 Pin', '7 x SATA', '140 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 12V v2.52', '2 x 6+2 Pin', 'ATX', 650, '80+ Gold', '10 Years', 1.85),
(20, 'Seasonic S12III 650W', 329.00, 'images/PSU/SEASONIC_S12III_550W_80PLUS_GOLD.jpg', NULL, '1 x 4+4 Pin', '6 x SATA', '140 x 150 x 86 mm', 'Non-Modular', 'Black', 'ATX 12V v2.31', '2 x 6+2 Pin', 'ATX', 650, '80+ Bronze', '5 Years', 1.60),
(21, 'Corsair TX650M 650W', 449.00, 'images/PSU/CORSAIR_TX650M_80PLUS_GOLD.jpg', NULL, '1 x 4+4 Pin', '', '150 x 86 x 160 mm', 'Semi-Modular', 'Black', 'ATX 12V v2.4', '2 x 6+2 Pin', 'ATX', 650, '80+ Gold', '7 Years', 1.75),
(22, 'Cooler Master Silent PRO Gold 1200W', 1299.00, 'images/PSU/COOLER_MASTER_SILENT_PRO_1200W_80PLUS_GOLD.jpg', NULL, '2 x 4+4 Pin', '12 x SATA', '170 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 12V v2.52', '6 x 6+2 Pin', 'ATX', 1200, '80+ Gold', '10 Years', 2.80),
(23, 'Be Quiet! Pure Power L8 600W', 269.00, 'images/PSU/BEQUIET_PURE_POWER_L8_600W_80PLUS_BRONZE.jpg', NULL, '1 x 4+4 Pin', '6 x SATA', '150 x 140 x 86 mm', 'Non-Modular', 'Black', 'ATX 12V v2.3', '2 x 6+2 Pin', 'ATX', 600, '80+ Bronze', '3 Years', 1.50),
(24, 'Thermaltake TR2 1200W', 899.00, 'images/PSU/THERMALTAKE_TR2_1200W_80PLUS.jpg', NULL, '2 x 4+4 Pin', '10 x SATA', '180 x 150 x 86 mm', 'Semi-Modular', 'Black', 'ATX 12V v2.4', '4 x 6+2 Pin', 'ATX', 1200, '80+ Gold', '5 Years', 2.60),
(25, 'Seasonic Prime TX-850 850W', 1399.00, 'images/PSU/SEASONIC_PRIME_TX-850W_80PLUS_TITANIUM.jpg', NULL, '2 x 4+4 Pin', '10 x SATA', '170 x 150 x 86 mm', 'Fully Modular', 'Black', 'ATX 3.0 / PCIe 5.0 Ready', '3 x 6+2 Pin + 1 x 12VHPWR', 'ATX', 850, '80+ Titanium', '12 Years', 2.20);

-- ----------------------------
-- Table structure for rams
-- ----------------------------
DROP TABLE IF EXISTS `rams`;
CREATE TABLE `rams`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `memory_speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `memory_size` int NULL DEFAULT NULL,
  `memory_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wattage` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rams
-- ----------------------------
INSERT INTO `rams` (`id`, `name`, `price`, `image_url`, `product_url`, `memory_speed`, `memory_size`, `memory_type`, `color`, `wattage`) VALUES
(1, 'Corsair Vengeance LPX 16GB (2x8GB) DDR4 3200MHz', 299.00, 'images/RAM/CORSAIR_VENGEANCE_LPX_16GB_DDR4_3200MHZ.jpg', '', '3200MHz', 16, 'DDR4', 'Black', 3),
(2, 'Kingston Fury Beast 32GB (2x16GB) DDR5 5600MHz', 629.00, 'images/RAM/KINGSTON_FURY_BEAST_32GB_DDR5_5600MHZ.jpg', '', '5600MHz', 32, 'DDR5', 'Black', 4),
(3, 'G.Skill Trident Z5 RGB 32GB (2x16GB) DDR5 6000MHz', 749.00, 'images/RAM/G.SKILL_TRIDENT_Z5_RGB_32GB_DDR5_6000MHZ.jpg', '', '6000MHz', 32, 'DDR5', 'Silver', 4),
(4, 'TEAMGROUP T-Force Delta RGB 16GB (2x8GB) DDR4 3600MHz', 339.00, 'images/RAM/TEAMGROUP_T-FORCE_DELTA_RGB_16GB_DDR4_3600MHZ.jpg', '', '3600MHz', 16, 'DDR4', 'White', 3),
(5, 'Crucial Pro 64GB (2x32GB) DDR5 5600MHz', 999.00, 'images/RAM/CRUCIAL_PRO_64GB_DDR5_5600MHZ.jpg', '', '5600MHz', 64, 'DDR5', 'Black', 4),
(6, 'Corsair Vengeance RGB Pro 32GB DDR4 3600MHz', 599.00, 'images/RAM/CORSAIR_VENGEANCE_RGB_PRO_32GB_DDR4_3600MHZ.avif', NULL, '3600MHz', 32, 'DDR4', 'RGB', 3),
(7, 'G.Skill Ripjaws V 16GB DDR4 3200MHz', 279.00, 'images/RAM/G.SKILL_RIPJAWS_V_16GB_DDR4_3200MHZ.jpg', NULL, '3200MHz', 16, 'DDR4', 'Black', 3),
(8, 'Kingston Fury Beast 32GB DDR5 5200MHz', 749.00, 'images/RAM/KINGSTON_FURY_BEAST_32GB_DDR5_5200MHZ.jpg', NULL, '5200MHz', 32, 'DDR5', 'Black', 4),
(9, 'Teamgroup T-Force Xtreem 32GB DDR5 7200MHz', 999.00, 'images/RAM/TEAMGROUP_T-FORCE_XTREEM_32GB_DDR5_7200MHZ.jpg', NULL, '7200MHz', 32, 'DDR5', 'Narvik Black', 4),
(10, 'Patriot Viper Venom 16GB DDR5 6000MHz', 399.00, 'images/RAM/PATRIOT_VIPER_VENOM_16GB_DDR5_6000MHZ.jpg', NULL, '6000MHz', 16, 'DDR5', 'Black', 4),
(11, 'Corsair Dominator Platinum RGB 64GB DDR5 5600MHz', 1499.00, 'images/RAM/CORSAIR_DOMINATOR_PLATINUM_RGB_64GB_DDR5_5600MHZ.jpg', NULL, '5600MHz', 64, 'DDR5', 'White', 4),
(12, 'G.Skill Trident Z Neo 32GB DDR4 3600MHz', 649.00, 'images/RAM/G.SKILL_TRIDENT_Z_NEO_32GB_DDR4_3600MHZ.jpg', NULL, '3600MHz', 32, 'DDR4', 'Black/White', 3),
(13, 'Kingston FURY Beast 16GB DDR4 2666MHz', 199.00, 'images/RAM/KINGSTON_FURY_BEAST_16GB_DDR4_2666MHZ.jpg', NULL, '2666MHz', 16, 'DDR4', 'Black', 3),
(14, 'Teamgroup T-Force Dark Za 32GB DDR4 4000MHz', 799.00, 'images/RAM/TEAMGROUP_T-FORCE_DARK_ZA_32GB_DDR4_4000MHZ.jpg', NULL, '4000MHz', 32, 'DDR4', 'Black', 3),
(15, 'Patriot Viper Steel 8GB DDR4 3200MHz', 159.00, 'images/RAM/PATRIOT_VIPER_STEEL_8GB_DDR4_3200MHZ.jpg', NULL, '3200MHz', 8, 'DDR4', 'Gray', 3),
(16, 'Corsair Vengeance LPX 8GB DDR4 3000MHz', 139.00, 'images/RAM/Corsair_Vengeance_LPX_8GB_DDR4_3000MHz.jpg', NULL, '3000MHz', 8, 'DDR4', 'Black', 3),
(17, 'G.Skill Trident Z Royal 16GB DDR4 4000MHz', 899.00, 'images/RAM/G.Skill_Trident_Z_Royal_16GB_DDR4_4000MHz.jpg', NULL, '4000MHz', 16, 'DDR4', 'Gold', 3),
(18, 'Kingston FURY Renegade 32GB DDR5 6400MHz', 899.00, 'images/RAM/Kingston_FURY_Renegade_32GB_DDR5_6400MHz.jpg', NULL, '6400MHz', 32, 'DDR5', 'Black', 4),
(19, 'Teamgroup T-Force Vulcan Z 16GB DDR4 3200MHz', 249.00, 'images/RAM/Teamgroup_T-Force_Vulcan_Z_16GB_DDR4_3200MHz.jpg', NULL, '3200MHz', 16, 'DDR4', 'Red', 3),
(20, 'Patriot Viper 4 Blackout 64GB DDR4 3600MHz', 1099.00, 'images/RAM/Patriot_Viper_4_Blackout_64GB_DDR4_3600MHz.jpg', NULL, '3600MHz', 64, 'DDR4', 'Black', 3),
(21, 'Corsair Vengeance RGB Pro SL 16GB DDR5 5200MHz', 449.00, 'images/RAM/Corsair_Vengeance_RGB_Pro_SL_16GB_DDR5_5200MHz.jpg', NULL, '5200MHz', 16, 'DDR5', 'White', 4),
(22, 'G.Skill Ripjaws S5 32GB DDR5 5600MHz', 699.00, 'images/RAM/G.Skill_Ripjaws_S5_32GB_DDR5_5600MHz.jpg', NULL, '5600MHz', 32, 'DDR5', 'Black', 4),
(23, 'Kingston FURY Impact 32GB DDR4 2666MHz SO-DIMM', 399.00, 'images/RAM/Kingston_FURY_Impact_32GB_DDR4_2666MHz_SO-DIMM.jpg', NULL, '2666MHz', 32, 'DDR4', 'Black', 3),
(24, 'Teamgroup T-Force Dark Z 16GB DDR4 3600MHz', 349.00, 'images/RAM/Teamgroup_T-Force_Dark_Z_16GB_DDR4_3600MHz.png', NULL, '3600MHz', 16, 'DDR4', 'White', 3),
(25, 'Patriot Memory Signature 8GB DDR4 2666MHz', 99.00, 'images/RAM/Patriot_Memory_Signature_8GB_DDR4_2666MHz.jpg', NULL, '2666MHz', 8, 'DDR4', 'Black', 3);

-- ----------------------------
-- Table structure for replies
-- ----------------------------
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thread_id`(`thread_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of replies
-- ----------------------------

-- ----------------------------
-- Table structure for storages
-- ----------------------------
DROP TABLE IF EXISTS `storages`;
CREATE TABLE `storages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `interface` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_factor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `readwrite` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `power` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `capacity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `storage_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warranty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storages
-- ----------------------------
INSERT INTO `storages` (`id`, `name`, `price`, `image_url`, `product_url`, `interface`, `form_factor`, `readwrite`, `power`, `capacity`, `storage_type`, `nand`, `warranty`) VALUES
(1, 'Seagate Barracuda 2TB', 250.00, 'images/STORAGE/seagate_2tb.png', '', 'SATA', '3.5\"', 'Read/Write 200MB/s', '6W', '2TB', 'HDD', NULL, '3 Years'),
(2, 'Samsung 970 EVO Plus 1TB', 550.00, 'images/STORAGE/samsung_970evo_1tb.jpg', '', 'NVMe', 'M.2', 'Read 3500MB/s / Write 3300MB/s', '5W', '1TB', 'M.2 SSD', 'V-NAND', '5 Years'),
(3, 'Crucial MX500 500GB', 220.00, 'images/STORAGE/crucial_mx500_500gb.jpg', '', 'SATA', '2.5\"', 'Read 560MB/s / Write 510MB/s', '4W', '500GB', 'SATA SSD', 'TLC', '5 Years'),
(4, 'WD Blue 1TB', 180.00, 'images/STORAGE/wd_blue_1tb.png', '', 'SATA', '3.5\"', 'Read/Write 150MB/s', '6W', '1TB', 'HDD', NULL, '2 Years'),
(5, 'Kingston A2000 1TB', 300.00, 'images/STORAGE/kingston_a2000_1tb.jpg', '', 'NVMe', 'M.2', 'Read 2200MB/s / Write 2000MB/s', '5W', '1TB', 'M.2 SSD', '3D NAND', '5 Years'),
(6, 'Samsung 990 Pro 2TB', 1299.00, 'images/STORAGE/SAMSUNG_990_PRO_2TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7450MB/s / Write 6900MB/s', '6W', '2TB', 'M.2 SSD', 'V-NAND', '5 Years'),
(7, 'WD Black SN850X 1TB', 649.00, 'images/STORAGE/WD_BLACK_SN850X_1TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7300MB/s / Write 6600MB/s', '6W', '1TB', 'M.2 SSD', 'TLC', '5 Years'),
(8, 'Crucial P5 Plus 2TB', 849.00, 'images/STORAGE/CRUCIAL_P5_PLUS_2TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 6600MB/s / Write 5000MB/s', '6W', '2TB', 'M.2 SSD', 'TLC', '5 Years'),
(9, 'Kingston NV2 1TB', 449.00, 'images/STORAGE/KINGSTON_NV2_1TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 3500MB/s / Write 2800MB/s', '5W', '1TB', 'M.2 SSD', '3D NAND', '3 Years'),
(10, 'Teamgroup MP44L 2TB', 699.00, 'images/STORAGE/TEAMGROUP_MP44L_2TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 5000MB/s / Write 4500MB/s', '6W', '2TB', 'M.2 SSD', 'TLC', '5 Years'),
(11, 'Samsung 870 EVO 1TB', 599.00, 'images/STORAGE/SAMSUNG_870_EVO_SATA_SSD_1TB.jpg', NULL, 'SATA', '2.5\"', 'Read 560MB/s / Write 530MB/s', '4W', '1TB', 'SATA SSD', 'V-NAND', '5 Years'),
(12, 'WD Blue SN580 500GB', 199.00, 'images/STORAGE/WD_BLUE_SN580_500GB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 4000MB/s / Write 3000MB/s', '5W', '500GB', 'M.2 SSD', 'TLC', '5 Years'),
(13, 'SK Hynix Gold P31 1TB', 649.00, 'images/STORAGE/SK_HYNIX_GOLD_P31_1TB.jpg', NULL, 'M.2 PCIe 3.0 x4', 'M.2', 'Read 3500MB/s / Write 3200MB/s', '5W', '1TB', 'M.2 SSD', 'TLC', '5 Years'),
(14, 'Seagate FireCuda 530 1TB', 999.00, 'images/STORAGE/SEAGATE_FIRECUDA_530_1TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7300MB/s / Write 6900MB/s', '6W', '1TB', 'M.2 SSD', 'TLC', '5 Years'),
(15, 'Intel 670p 2TB', 799.00, 'images/STORAGE/INTEL_670P_2TB.jpg', NULL, 'M.2 PCIe 3.0 x4', 'M.2', 'Read 3500MB/s / Write 3000MB/s', '5W', '2TB', 'M.2 SSD', 'QLC', '3 Years'),
(16, 'Kingston Fury Renegade 4TB', 1999.00, 'images/STORAGE/KINGSTON_FURY_RENEGADE_4TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7300MB/s / Write 7000MB/s', '7W', '4TB', 'M.2 SSD', '3D NAND', '5 Years'),
(17, 'WD Red SA500 500GB', 399.00, 'images/STORAGE/WD_RED_SA500_500GB.png', NULL, 'M.2 SATA', 'M.2', 'Read 560MB/s / Write 530MB/s', '4W', '500GB', 'M.2 SSD', 'TLC', '3 Years'),
(18, 'Samsung 970 Pro 512GB', 449.00, 'images/STORAGE/SAMSUNG_970_PRO_512GB.jpg', NULL, 'M.2 PCIe 3.0 x4', 'M.2', 'Read 3500MB/s / Write 2700MB/s', '6W', '512GB', 'M.2 SSD', 'TLC', '5 Years'),
(19, 'Corsair MP600 Pro XT 1TB', 849.00, 'images/STORAGE/CORSAIR_MP600_PRO_XT_1TB.png', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7100MB/s / Write 6800MB/s', '4W', '1TB', 'M.2 SSD', 'TLC', '3 Years'),
(20, 'Teamgroup MP33 2TB', 449.00, 'images/STORAGE/TEAMGROUP_MP33_2TB.jpg', NULL, 'M.2 PCIe 3.0 x4', 'M.2', 'Read 2100MB/s / Write 1700MB/s', '4W', '2TB', 'M.2 SSD', 'TLC', '3 Years'),
(21, 'Crucial MX500 2TB', 699.00, 'images/STORAGE/CRUCIAL_MX500_2TB.jpg', NULL, 'SATA', '2.5\"', 'Read 560MB/s / Write 510MB/s', '4W', '2TB', 'SATA SSD', 'TLC', '5 Years'),
(22, 'Sabrent Rocket 4.0 4TB', 4599.00, 'images/STORAGE/SABRENT_ROCKET_4_PLUS_4TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7000MB/s / Write 6850MB/s', '6W', '4TB', 'M.2 SSD', 'TLC', '5 Years'),
(23, 'WD Blue 5TB', 799.00, 'images/STORAGE/WD_BLUE_5TB.jpg', NULL, 'SATA', '3.5\"', 'Read/Write 150MB/s', '6W', '5TB', 'HDD', 'NA', '2 Years'),
(24, 'Seagate Barracuda 4TB', 569.00, 'images/STORAGE/SEAGATE_BARRACUDA_4TB.png', NULL, 'SATA', '3.5\"', 'Read/Write 210MB/s', '6W', '4TB', 'HDD', 'NA', '2 Years'),
(25, 'SK Hynix Platinum P41 2TB', 749.00, 'images/STORAGE/SK_HYNIX_PLATINUM_P41_2TB.jpg', NULL, 'M.2 PCIe 4.0 x4', 'M.2', 'Read 7000MB/s / Write 6500MB/s', '6W', '2TB', 'M.2 SSD', 'TLC', '5 Years');

-- ----------------------------
-- Table structure for threads
-- ----------------------------
DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `threads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of threads
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email_Address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('user','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'user',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Email_Address`(`Email_Address` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'huzir', 'huzir123@gmail.com', '$2b$10$TT10OuIpKMd1PIBxm8AHjO3B0ny8xT1XWZ42mlQUu8yMfU/CFNzce', 'user');
INSERT INTO `users` VALUES (4, 'AdminUser', 'admin@example.com', '$2b$10$GJqA2NG/sUQ79xuvyzRRyu7kkstnU6RE/cbT/NzTu8uoNz0o55ZEe', 'admin');

-- ----------------------------
-- Seed Data for Completed Builds Feature
-- ----------------------------

-- Add more sample builds for testing completed builds feature
INSERT INTO `builds` (`builds_name`, `builds_description`, `cpus_id`, `gpus_id`, `motherboards_id`, `rams_id`, `cpucoolers_id`, `storages_id`, `cases_id`, `psus_id`, `Users_id`) VALUES
('Gaming Beast', 'High-end gaming build with RTX 5070 Ti', 1, 1, 1, 2, 1, 2, 1, 1, 3),
('Budget Workstation', 'Affordable productivity setup', 6, 2, 2, 1, 2, 1, 4, 2, 4),
('Ultimate Dream Build', 'No compromise enthusiast build', 3, 4, 3, 5, 3, 2, 2, 5, 3);

-- Seed data for completed_builds (4 entries)
INSERT INTO `completed_builds` (`user_id`, `builds_id`, `title`, `description`, `is_public`, `created_at`) VALUES
(3, 2, 'My First Gaming PC', 'Finally completed my first gaming build! Super excited about the performance.', 1, '2024-01-15 10:30:00'),
(3, 5, 'Gaming Beast Build', 'High-end gaming rig for 1440p gaming. Runs everything on ultra!', 1, '2024-02-20 14:45:00'),
(4, 6, 'Office Workstation', 'Budget-friendly workstation for productivity tasks and light editing.', 1, '2024-03-10 09:15:00'),
(3, 7, 'Dream Machine', 'My ultimate dream build - no compromises!', 1, '2024-03-25 16:00:00');

-- Seed data for build_comments - Parent comments (top-level, no parent_comment_id)
INSERT INTO `build_comments` (`completed_build_id`, `user_id`, `parent_comment_id`, `content`, `created_at`) VALUES
(1, 4, NULL, 'Nice build! What kind of FPS are you getting in games?', '2024-01-16 11:00:00'),
(2, 4, NULL, 'The RTX 5070 Ti is a beast! Great choice.', '2024-02-21 10:00:00'),
(2, 4, NULL, 'How are the thermals with that cooler?', '2024-02-22 09:30:00'),
(3, 3, NULL, 'Smart budget choices! Perfect for office work.', '2024-03-11 10:00:00'),
(4, 4, NULL, 'Wow, that''s an incredible build! Total cost must be insane.', '2024-03-26 09:00:00');

-- Seed data for build_comments - First level replies
INSERT INTO `build_comments` (`completed_build_id`, `user_id`, `parent_comment_id`, `content`, `created_at`) VALUES
(1, 3, 1, 'Thanks! Getting around 120fps in most AAA titles at 1080p.', '2024-01-16 12:30:00'),
(2, 3, 3, 'Running around 65-70°C under load, pretty quiet too!', '2024-02-22 11:15:00'),
(3, 4, 4, 'Thanks! Trying to keep costs down while staying productive.', '2024-03-11 11:30:00'),
(4, 3, 5, 'Yeah it wasn''t cheap, but totally worth it for the performance!', '2024-03-26 10:30:00');

-- Seed data for build_comments - Second level replies (nested)
INSERT INTO `build_comments` (`completed_build_id`, `user_id`, `parent_comment_id`, `content`, `created_at`) VALUES
(1, 4, 6, 'That''s impressive for a first build! Well done.', '2024-01-16 14:00:00');

-- Seed data for build_ratings (4 entries)
INSERT INTO `build_ratings` (`completed_build_id`, `user_id`, `rating`, `created_at`) VALUES
(1, 4, 4, '2024-01-16 11:05:00'),
(2, 4, 5, '2024-02-21 10:05:00'),
(3, 3, 4, '2024-03-11 10:05:00'),
(4, 4, 5, '2024-03-26 09:05:00');

SET FOREIGN_KEY_CHECKS = 1;

