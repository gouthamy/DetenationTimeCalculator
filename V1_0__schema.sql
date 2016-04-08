CREATE TABLE `offense_types` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(150) NOT NULL,
  `desscription` varchar(200) DEFAULT NULL,
  `detention_period` int(2) NOT NULL,
  `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` TIMESTAMP NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dtc_config` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `good_time` int(2) NOT NULL,
  `bad_time` int(2) DEFAULT NULL,
  `school_hours` int(2) DEFAULT NULL,
  `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` TIMESTAMP NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `students` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(150) NOT NULL,
  `class` varchar(200) DEFAULT NULL,
  `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` TIMESTAMP NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `student_offense` (
  `student_id` int(4) NOT NULL,
  `offense_id` int(4) NOT NULL,
  `offense_time` TIMESTAMP NOT NULL,
  `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` TIMESTAMP NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
   CONSTRAINT `student_foreign_key` FOREIGN KEY (`student_id`) REFERENCES `students`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
   CONSTRAINT `offense_foreign_key` FOREIGN KEY (`offense_id`) REFERENCES `offense_types`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=utf8;