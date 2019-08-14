/*
SQLyog Community v11.52 (64 bit)
MySQL - 10.1.40-MariaDB : Database - swarnanjali
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`swarnanjali` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `swarnanjali`;

/*Table structure for table `allocateroom` */

DROP TABLE IF EXISTS `allocateroom`;

CREATE TABLE `allocateroom` (
  `a_r_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` int(12) DEFAULT NULL,
  `registration_type` varchar(250) DEFAULT NULL,
  `staff_name` varchar(250) DEFAULT NULL,
  `hostel_type` varchar(45) DEFAULT NULL,
  `floor_name` varchar(45) DEFAULT NULL,
  `room_numebr` varchar(250) DEFAULT NULL,
  `student_name` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contact_number` varchar(250) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `joining_date` varchar(250) DEFAULT NULL,
  `till_date` varchar(250) DEFAULT NULL,
  `allot_bed` varchar(250) DEFAULT NULL,
  `charge_per_month` varchar(250) DEFAULT NULL,
  `no_of_months` varchar(250) DEFAULT NULL,
  `paid_amount` varchar(250) DEFAULT NULL,
  `guardian_name` varchar(250) DEFAULT NULL,
  `g_contact_number` varchar(45) DEFAULT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` text,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `allocateroom` */

insert  into `allocateroom`(`a_r_id`,`s_id`,`class_id`,`registration_type`,`staff_name`,`hostel_type`,`floor_name`,`room_numebr`,`student_name`,`gender`,`contact_number`,`dob`,`joining_date`,`till_date`,`allot_bed`,`charge_per_month`,`no_of_months`,`paid_amount`,`guardian_name`,`g_contact_number`,`relation`,`email`,`address`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,15,'Student','hh','1','1','1','109','Male','9874563211','08/27/2019','08/22/2019','08/14/2019','15','12','5','200','sdfsdf','9874563211','hhh','kasi@gmail.com','hyderabad',1,'2019-08-05 15:17:11','2019-08-05 15:17:11',120);

/*Table structure for table `announcements` */

DROP TABLE IF EXISTS `announcements`;

CREATE TABLE `announcements` (
  `int_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `comment` text,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `sent_by` int(11) DEFAULT NULL,
  `readcount` int(11) DEFAULT '0',
  PRIMARY KEY (`int_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `announcements` */

/*Table structure for table `bonfi_cer` */

DROP TABLE IF EXISTS `bonfi_cer`;

CREATE TABLE `bonfi_cer` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `title` text,
  `paragraph` longtext,
  `status` int(11) DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `bonfi_cer` */

insert  into `bonfi_cer`(`b_id`,`s_id`,`title`,`paragraph`,`status`,`create_at`,`update_at`,`create_by`) values (3,17,'bonificate  certificate ','zcgvxcbcvndgvfxcbcvbcvncvncvbnvbnvbnmvbmvbnmbn,mbmbnmnbmvbmvbmvbmcvbdfhdrfhdfhdfhg',1,'2019-08-13 23:49:44','0000-00-00 00:00:00',111);

/*Table structure for table `book_damage` */

DROP TABLE IF EXISTS `book_damage`;

CREATE TABLE `book_damage` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `i_b_id` int(11) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `student_id` varchar(250) DEFAULT NULL,
  `book_number` varchar(250) DEFAULT NULL,
  `return_type` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `book_damage` */

insert  into `book_damage`(`b_id`,`s_id`,`i_b_id`,`class_id`,`student_id`,`book_number`,`return_type`,`price`,`status`,`create_at`,`create_by`) values (1,17,1,'15','109','1','Amount','100',1,'2019-08-05 15:14:00',124);

/*Table structure for table `book_fine_list` */

DROP TABLE IF EXISTS `book_fine_list`;

CREATE TABLE `book_fine_list` (
  `b_f_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fine_if_any` bigint(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`b_f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_fine_list` */

/*Table structure for table `books_list` */

DROP TABLE IF EXISTS `books_list`;

CREATE TABLE `books_list` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL COMMENT 's_id=school id',
  `book_number` varchar(250) DEFAULT NULL,
  `book_title` varbinary(250) DEFAULT NULL,
  `author_name` varchar(250) DEFAULT NULL,
  `publisher` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `isbn` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `shelf_no` varchar(250) DEFAULT NULL,
  `department` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active;0=deactive',
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `books_list` */

insert  into `books_list`(`b_id`,`s_id`,`book_number`,`book_title`,`author_name`,`publisher`,`category`,`isbn`,`date`,`price`,`qty`,`shelf_no`,`department`,`status`,`create_at`,`create_by`) values (1,17,'book 1','book title','auther','hhh','jjkk','sss','08/13/2019','100',2,'ss','sss',1,'2019-08-05 15:12:08',124);

/*Table structure for table `calendar_events` */

DROP TABLE IF EXISTS `calendar_events`;

CREATE TABLE `calendar_events` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT '0',
  `event_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `event_date` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calendar_events` */

/*Table structure for table `class_books` */

DROP TABLE IF EXISTS `class_books`;

CREATE TABLE `class_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` varchar(45) DEFAULT NULL,
  `books` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `class_books` */

insert  into `class_books`(`id`,`s_id`,`class_id`,`books`,`status`,`create_at`,`update_at`,`create_by`) values (1,17,'15','Book1',1,'2019-08-05 15:08:57','2019-08-05 15:08:57',107),(2,17,'15','Book number',1,'2019-08-05 15:08:57','2019-08-05 15:08:57',107);

/*Table structure for table `class_list` */

DROP TABLE IF EXISTS `class_list`;

CREATE TABLE `class_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `teacher_module` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `class_list` */

insert  into `class_list`(`id`,`s_id`,`teacher_module`,`name`,`section`,`capacity`,`status`,`create_at`,`update_at`,`create_by`) values (15,17,'2',' 1 class','a','120',1,'2019-08-04 11:14:39','2019-08-04 11:14:39',107),(16,17,'2','2 class','a','100',1,'2019-08-05 10:22:19','2019-08-05 10:22:19',107);

/*Table structure for table `class_subjects` */

DROP TABLE IF EXISTS `class_subjects`;

CREATE TABLE `class_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` varchar(45) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `class_subjects` */

insert  into `class_subjects`(`id`,`s_id`,`class_id`,`subject`,`status`,`create_at`,`update_at`,`create_by`) values (11,17,'15','English',1,'2019-08-04 11:14:59','2019-08-04 11:14:59',107),(12,17,'15','Telugu',1,'2019-08-04 11:14:59','2019-08-04 11:14:59',107),(13,17,'16','Subject1',1,'2019-08-05 10:22:44','2019-08-05 10:22:44',107),(14,17,'15','Subject  one',1,'2019-08-05 19:12:09','2019-08-05 19:12:09',107);

/*Table structure for table `class_teachers` */

DROP TABLE IF EXISTS `class_teachers`;

CREATE TABLE `class_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `class_teachers` */

insert  into `class_teachers`(`id`,`s_id`,`class_id`,`teacher_id`,`status`,`create_at`,`update_at`,`create_by`) values (4,17,15,119,1,'2019-08-04 11:15:23',NULL,107),(5,17,16,117,1,'2019-08-05 10:22:26',NULL,107);

/*Table structure for table `class_times` */

DROP TABLE IF EXISTS `class_times`;

CREATE TABLE `class_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `form_time` varchar(250) DEFAULT NULL,
  `to_time` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `class_times` */

insert  into `class_times`(`id`,`s_id`,`form_time`,`to_time`,`status`,`create_at`,`update_at`,`create_by`) values (3,17,'12:12 am','5:30 pm',1,'2019-08-04 11:15:12',NULL,107),(4,17,'9:00 am ','10:00pm',1,'2019-08-05 12:54:23',NULL,107);

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT '0',
  `event` varchar(250) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `events` */

/*Table structure for table `exam_instructions` */

DROP TABLE IF EXISTS `exam_instructions`;

CREATE TABLE `exam_instructions` (
  `e_i_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `instructions` text,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`e_i_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `exam_instructions` */

insert  into `exam_instructions`(`e_i_id`,`s_id`,`instructions`,`status`,`create_at`,`update_at`,`create_by`) values (4,17,'DGVDFGBDF',1,'2019-08-05 19:41:14','2019-08-05 19:41:14',122);

/*Table structure for table `exam_list` */

DROP TABLE IF EXISTS `exam_list`;

CREATE TABLE `exam_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `student_id` varchar(250) DEFAULT NULL,
  `exam_date` varchar(250) DEFAULT NULL,
  `start_time` varchar(250) DEFAULT NULL,
  `to_time` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `exam_list` */

insert  into `exam_list`(`id`,`s_id`,`exam_type`,`class_id`,`subject`,`student_id`,`exam_date`,`start_time`,`to_time`,`status`,`create_at`,`update_at`,`create_by`) values (7,17,'Assignments','15','14',NULL,'10-04-1993','10pm','1pm',1,'2019-08-05 19:19:15',NULL,122),(8,17,'Assignments','16','13',NULL,'10-04-1993','10pm','1pm',1,'2019-08-05 19:19:15',NULL,122);

/*Table structure for table `exam_list_data` */

DROP TABLE IF EXISTS `exam_list_data`;

CREATE TABLE `exam_list_data` (
  `e_l_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `class_id` int(15) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `exam_date` varchar(250) DEFAULT NULL,
  `start_time` varchar(250) DEFAULT NULL,
  `to_time` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_l_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `exam_list_data` */

/*Table structure for table `exam_marks_list` */

DROP TABLE IF EXISTS `exam_marks_list`;

CREATE TABLE `exam_marks_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` varchar(45) DEFAULT NULL,
  `subject_id` varchar(45) DEFAULT NULL,
  `class_id` varchar(45) DEFAULT NULL,
  `marks_obtained` varchar(45) DEFAULT NULL,
  `max_marks` varchar(45) DEFAULT NULL,
  `remarks` text,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `exam_marks_list` */

insert  into `exam_marks_list`(`id`,`s_id`,`student_id`,`exam_id`,`subject_id`,`class_id`,`marks_obtained`,`max_marks`,`remarks`,`status`,`create_at`,`create_by`) values (1,17,108,'7','13','16','100','1000','bc',1,'2019-08-06 10:10:26',122),(2,17,109,'7','11','15','200','500','hh',1,'2019-08-06 10:22:44',122),(3,17,118,'7','11','15','200','5000','hh',1,'2019-08-06 10:22:44',122),(4,17,121,'7','11','15','200','500','hh',1,'2019-08-06 10:22:44',122);

/*Table structure for table `exam_syllabus` */

DROP TABLE IF EXISTS `exam_syllabus`;

CREATE TABLE `exam_syllabus` (
  `e_s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` int(12) DEFAULT NULL,
  `document` varchar(250) DEFAULT NULL,
  `org_document` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`e_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exam_syllabus` */

/*Table structure for table `gate_pass` */

DROP TABLE IF EXISTS `gate_pass`;

CREATE TABLE `gate_pass` (
  `g_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `gate_pass_number` varchar(250) DEFAULT NULL,
  `student_name` int(12) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `gate_pass_hours` varchar(250) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`g_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `gate_pass` */

insert  into `gate_pass`(`g_p_id`,`s_id`,`date`,`gate_pass_number`,`student_name`,`class_id`,`gate_pass_hours`,`remarks`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,'2019-08-03','123',109,'15','12','hhj',1,'2019-08-05 15:17:41','2019-08-05 15:17:41',120);

/*Table structure for table `home_work` */

DROP TABLE IF EXISTS `home_work`;

CREATE TABLE `home_work` (
  `h_w_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `subjects` varchar(250) DEFAULT NULL,
  `work_date` varchar(250) DEFAULT NULL,
  `work_sub_date` varchar(250) DEFAULT NULL,
  `work` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `upate_at` datetime DEFAULT NULL,
  `create_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`h_w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `home_work` */

insert  into `home_work`(`h_w_id`,`s_id`,`class_id`,`subjects`,`work_date`,`work_sub_date`,`work`,`status`,`create_at`,`upate_at`,`create_by`) values (1,17,'16','13','08/07/2019','08/22/2019','vbcvb',1,'2019-08-05 13:59:52',NULL,119),(2,17,'15','11','08/14/2019','08/14/2019','ghgvnb',1,'2019-08-05 14:19:41',NULL,119),(3,17,'16','13','08/15/2019','08/22/2019','gghg',1,'2019-08-06 12:45:49',NULL,119),(4,17,'16','13','08/15/2019','08/22/2019','gghg',1,'2019-08-06 12:46:09',NULL,119),(5,17,'16','13','08/15/2019','08/22/2019','gghg',1,'2019-08-06 12:46:28',NULL,119);

/*Table structure for table `hostel_details` */

DROP TABLE IF EXISTS `hostel_details`;

CREATE TABLE `hostel_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `hostel_name` varchar(250) DEFAULT NULL,
  `hostel_type` varchar(250) DEFAULT NULL,
  `warden_name` varchar(250) DEFAULT NULL,
  `contact_number` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `facilities` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hostel_details` */

insert  into `hostel_details`(`id`,`s_id`,`hostel_name`,`hostel_type`,`warden_name`,`contact_number`,`address`,`facilities`,`status`,`create_at`,`updated_at`,`create_by`) values (1,17,'hostel','1','nnn','8099010156','hyderabad, aszfdf','jj',1,'2019-08-05 15:15:40','2019-08-05 15:15:40',120);

/*Table structure for table `hostel_floors` */

DROP TABLE IF EXISTS `hostel_floors`;

CREATE TABLE `hostel_floors` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `floor_name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hostel_floors` */

insert  into `hostel_floors`(`f_id`,`s_id`,`floor_name`,`status`,`created_at`,`updated_at`,`create_by`) values (1,17,'floor one',1,'2019-08-05 15:15:24','2019-08-05 15:15:24',107);

/*Table structure for table `hostel_rooms` */

DROP TABLE IF EXISTS `hostel_rooms`;

CREATE TABLE `hostel_rooms` (
  `h_r_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `hotel_type` varchar(45) DEFAULT NULL,
  `room_name` varchar(250) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `total_beds` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hostel_rooms` */

insert  into `hostel_rooms`(`h_r_id`,`s_id`,`hotel_type`,`room_name`,`floor_id`,`total_beds`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,'1','room1',1,15,1,'2019-08-05 15:15:50','2019-08-05 15:15:50',120);

/*Table structure for table `hostel_types` */

DROP TABLE IF EXISTS `hostel_types`;

CREATE TABLE `hostel_types` (
  `h_t_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `hostel_type` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hostel_types` */

insert  into `hostel_types`(`h_t_id`,`s_id`,`hostel_type`,`status`,`created_at`,`updatetime`,`create_by`) values (1,17,'5 stras',1,'2019-08-05 15:15:02','2019-08-05 15:15:02',107);

/*Table structure for table `issued_book` */

DROP TABLE IF EXISTS `issued_book`;

CREATE TABLE `issued_book` (
  `i_b_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `barcode_id` varchar(250) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL COMMENT 'b_id=book id',
  `no_of_books_taken` varchar(250) DEFAULT NULL,
  `issued_date` varchar(250) DEFAULT NULL,
  `return_renew_date` varchar(250) DEFAULT NULL,
  `return_date` varchar(250) DEFAULT NULL,
  `fine_if_any` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`i_b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `issued_book` */

insert  into `issued_book`(`i_b_id`,`s_id`,`barcode_id`,`student_id`,`class_id`,`b_id`,`no_of_books_taken`,`issued_date`,`return_renew_date`,`return_date`,`fine_if_any`,`status`,`create_at`,`create_by`,`update_at`) values (1,17,'kkk',109,15,1,'2','08/13/2019','08/22/2019','',NULL,2,'2019-08-05 15:13:41',124,NULL);

/*Table structure for table `principal_assign_instractions` */

DROP TABLE IF EXISTS `principal_assign_instractions`;

CREATE TABLE `principal_assign_instractions` (
  `p_a_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(12) DEFAULT NULL,
  `teacher_modules` varchar(250) DEFAULT NULL,
  `instractions` varchar(250) DEFAULT NULL,
  `otp` longtext,
  `opt_created_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`p_a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `principal_assign_instractions` */

insert  into `principal_assign_instractions`(`p_a_id`,`s_id`,`teacher_modules`,`instractions`,`otp`,`opt_created_at`,`created_at`,`created_by`) values (1,17,'2','dear','dear','2019-08-02 20:06:31','2019-08-02 20:06:31',111),(2,17,'1','hello every once','hello every once','2019-08-03 11:20:58','2019-08-03 11:20:58',111),(3,17,'1','hello meeting','hello meeting','2019-08-03 11:21:56','2019-08-03 11:21:56',111),(4,17,'2','happy friendsship day','happy friendsship day','2019-08-04 11:59:28','2019-08-04 11:59:28',111),(5,17,'2','cbcvb','cbcvb','2019-08-12 22:00:27','2019-08-12 22:00:27',111);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`status`,`create_at`) values (1,'Admin',1,'2018-06-18 14:32:40'),(2,'School Admin',1,'2018-06-18 14:33:00'),(3,'Administrator',1,'2018-06-18 14:33:40'),(4,'Fee management ',1,'2018-06-18 14:34:30'),(5,'Transportation',1,'2018-06-18 14:34:28'),(6,'Teacher',1,'2018-06-18 14:34:28'),(7,'Student',1,'2018-06-18 14:34:28'),(8,'Academic Mangement',1,'2018-06-18 14:34:28'),(9,'Examination ',1,'2018-07-09 12:59:06'),(10,'Librarian',1,'2019-11-08 15:41:14'),(11,'Hostel',1,'2019-06-18 15:41:29'),(12,'Principal ',1,'2019-07-29 13:49:05');

/*Table structure for table `route_numbers` */

DROP TABLE IF EXISTS `route_numbers`;

CREATE TABLE `route_numbers` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `route_no` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `route_numbers` */

insert  into `route_numbers`(`r_id`,`s_id`,`route_no`,`status`,`created_at`,`updated_at`,`created_by`) values (4,17,'route',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110);

/*Table structure for table `route_stops` */

DROP TABLE IF EXISTS `route_stops`;

CREATE TABLE `route_stops` (
  `stop_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `stop_name` varchar(250) DEFAULT NULL,
  `s_status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `route_stops` */

insert  into `route_stops`(`stop_id`,`r_id`,`s_id`,`stop_name`,`s_status`,`created_at`,`updated_at`,`created_by`) values (19,4,17,'stop one',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110),(20,4,17,'stop two',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110),(21,4,17,'stop three',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110),(22,4,17,'stop four',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110),(23,4,17,'stop five',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110),(24,4,17,'stop six',1,'2019-08-09 10:48:45','2019-08-09 10:48:45',110);

/*Table structure for table `schools` */

DROP TABLE IF EXISTS `schools`;

CREATE TABLE `schools` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `scl_email_id` varchar(250) DEFAULT NULL,
  `scl_con_number` varchar(45) DEFAULT NULL,
  `scl_representative` varchar(250) DEFAULT NULL,
  `scl_rep_contact` varchar(45) DEFAULT NULL,
  `mob_country_code` varchar(25) DEFAULT NULL,
  `scl_rep_mobile` varchar(45) DEFAULT NULL,
  `scl_rep_email` varchar(250) DEFAULT NULL,
  `scl_rep_nationali_id` varchar(45) DEFAULT NULL,
  `scl_rep_add1` varchar(250) DEFAULT NULL,
  `scl_rep_add2` varchar(250) DEFAULT NULL,
  `scl_rep_zipcode` varchar(25) DEFAULT NULL,
  `scl_rep_city` varchar(45) DEFAULT NULL,
  `scl_rep_state` varchar(45) DEFAULT NULL,
  `scl_rep_country` varchar(45) DEFAULT NULL,
  `scl_bas_name` varchar(250) DEFAULT NULL,
  `scl_bas_contact` varchar(45) DEFAULT NULL,
  `scl_bas_email` varchar(250) DEFAULT NULL,
  `scl_bas_nationali_id` varchar(250) DEFAULT NULL,
  `scl_bas_add1` varchar(250) DEFAULT NULL,
  `scl_bas_add2` varchar(250) DEFAULT NULL,
  `scl_bas_zipcode` varchar(25) DEFAULT NULL,
  `scl_bas_city` varchar(25) DEFAULT NULL,
  `scl_bas_state` varchar(25) DEFAULT NULL,
  `scl_bas_country` varchar(25) DEFAULT NULL,
  `scl_bas_document` varchar(250) DEFAULT NULL,
  `scl_bas_logo` varchar(250) DEFAULT NULL,
  `working_month` varchar(250) DEFAULT NULL,
  `bank_holder_name` varchar(250) DEFAULT NULL,
  `bank_acc_no` varchar(25) DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `bank_ifsc` varchar(25) DEFAULT NULL,
  `bank_document` varchar(250) DEFAULT NULL,
  `kyc_doc1` varchar(250) DEFAULT NULL,
  `kyc_doc2` varchar(250) DEFAULT NULL,
  `kyc_doc3` varchar(250) DEFAULT NULL,
  `kyc_file1` varchar(250) DEFAULT NULL,
  `kyc_file2` varchar(250) DEFAULT NULL,
  `kyc_file3` varchar(250) DEFAULT NULL,
  `lib_book_due_time` varchar(250) DEFAULT NULL,
  `fine_charge_amt` varchar(250) DEFAULT NULL,
  `completed` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `schools` */

insert  into `schools`(`s_id`,`u_id`,`scl_email_id`,`scl_con_number`,`scl_representative`,`scl_rep_contact`,`mob_country_code`,`scl_rep_mobile`,`scl_rep_email`,`scl_rep_nationali_id`,`scl_rep_add1`,`scl_rep_add2`,`scl_rep_zipcode`,`scl_rep_city`,`scl_rep_state`,`scl_rep_country`,`scl_bas_name`,`scl_bas_contact`,`scl_bas_email`,`scl_bas_nationali_id`,`scl_bas_add1`,`scl_bas_add2`,`scl_bas_zipcode`,`scl_bas_city`,`scl_bas_state`,`scl_bas_country`,`scl_bas_document`,`scl_bas_logo`,`working_month`,`bank_holder_name`,`bank_acc_no`,`bank_name`,`bank_ifsc`,`bank_document`,`kyc_doc1`,`kyc_doc2`,`kyc_doc3`,`kyc_file1`,`kyc_file2`,`kyc_file3`,`lib_book_due_time`,`fine_charge_amt`,`completed`,`status`,`create_at`,`update_at`,`create_by`) values (17,106,'swarnajali@gmail.com','8099010155','swarnajali','8225555555','+91','8099010155','swarnajali@gmail.com','1233333333','hyd','hyd','516203','hyd','Andhra Pradesh','india','swarnajali','80990101555','swarnajali@gmail.com','','hyd','hyd','516203','hyd','Andhra Pradesh','india',NULL,'1529388434.jpg','6 Months','swarnajali','1234566666','sbi','SBIN0000844','','vbdf','hh','kk','1564384233.xlsx','?1564384233.xlsx','?11564384233.xlsx',NULL,NULL,1,1,'2019-07-29 12:37:45','2019-07-29 12:41:19',1);

/*Table structure for table `schools_announcements` */

DROP TABLE IF EXISTS `schools_announcements`;

CREATE TABLE `schools_announcements` (
  `int_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `comment` text,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `sent_by` int(11) DEFAULT NULL,
  `readcount` int(11) DEFAULT '0',
  PRIMARY KEY (`int_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `schools_announcements` */

/*Table structure for table `student_attendenc_reports` */

DROP TABLE IF EXISTS `student_attendenc_reports`;

CREATE TABLE `student_attendenc_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` varchar(250) DEFAULT NULL,
  `student_id` varchar(250) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `subject_id` varchar(250) DEFAULT NULL,
  `time` varchar(250) DEFAULT NULL,
  `attendence` varchar(250) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `student_attendenc_reports` */

insert  into `student_attendenc_reports`(`id`,`s_id`,`student_id`,`class_id`,`subject_id`,`time`,`attendence`,`remarks`,`teacher_id`,`created_at`,`update_at`) values (1,'17','109','15','11','3','Present','',119,'2019-08-05 20:19:48','2019-08-05 20:19:48'),(2,'17','118','15','11','3','Present','',119,'2019-08-05 20:19:48','2019-08-05 20:19:48'),(3,'17','121','15','11','3','Present','',119,'2019-08-05 20:19:48','2019-08-05 20:19:48'),(4,'17','109','15','12','3','Absent','absent',119,'2019-08-06 10:24:05',NULL),(5,'17','118','15','12','3','Absent','absent',119,'2019-08-06 10:24:05',NULL),(6,'17','121','15','12','3','Absent','absent',119,'2019-08-06 10:24:05',NULL);

/*Table structure for table `student_bus_payment` */

DROP TABLE IF EXISTS `student_bus_payment`;

CREATE TABLE `student_bus_payment` (
  `b_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_t_id` int(12) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `student_id` varchar(250) DEFAULT NULL,
  `class_name` varchar(250) DEFAULT NULL,
  `roll_number` varchar(250) DEFAULT NULL,
  `total_amount` varchar(250) DEFAULT NULL,
  `fee_terms` varchar(250) DEFAULT NULL,
  `pay_amount` varchar(250) DEFAULT NULL,
  `razorpay_payment_id` varchar(250) DEFAULT NULL,
  `razorpay_order_id` varchar(250) DEFAULT NULL,
  `razorpay_signature` varchar(250) DEFAULT NULL,
  `invoice` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` timestamp NULL DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `student_bus_payment` */

insert  into `student_bus_payment`(`b_p_id`,`s_t_id`,`s_id`,`student_id`,`class_name`,`roll_number`,`total_amount`,`fee_terms`,`pay_amount`,`razorpay_payment_id`,`razorpay_order_id`,`razorpay_signature`,`invoice`,`status`,`create_at`,`create_by`) values (1,1,17,'127','16',NULL,'120',NULL,'100',NULL,NULL,NULL,NULL,1,'2019-08-09 15:25:37',107);

/*Table structure for table `student_fee` */

DROP TABLE IF EXISTS `student_fee`;

CREATE TABLE `student_fee` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `class_name` varchar(250) DEFAULT NULL,
  `roll_number` varchar(250) DEFAULT NULL,
  `fee_amount` varchar(250) DEFAULT NULL,
  `fee_terms` varchar(250) DEFAULT NULL,
  `pay_amount` varchar(250) DEFAULT NULL,
  `razorpay_payment_id` varchar(250) DEFAULT NULL,
  `razorpay_order_id` varchar(250) DEFAULT NULL,
  `razorpay_signature` varchar(250) DEFAULT NULL,
  `invoice` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` timestamp NULL DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `student_fee` */

insert  into `student_fee`(`p_id`,`school_id`,`s_id`,`class_name`,`roll_number`,`fee_amount`,`fee_terms`,`pay_amount`,`razorpay_payment_id`,`razorpay_order_id`,`razorpay_signature`,`invoice`,`status`,`create_at`,`create_by`) values (1,17,127,'15','5467892555555','100000','3','1000',NULL,NULL,NULL,'kasi_1271565288700.pdf',1,'2019-08-08 23:55:01',NULL),(2,17,127,'15','5467892555555','100000','3','9000',NULL,NULL,NULL,'kasi_1271565288737.pdf',1,'2019-08-08 23:55:38',NULL),(3,17,128,'16',NULL,'','','',NULL,NULL,NULL,NULL,1,'2019-08-12 23:03:44',107);

/*Table structure for table `student_transport` */

DROP TABLE IF EXISTS `student_transport`;

CREATE TABLE `student_transport` (
  `s_t_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `student_id` varchar(250) DEFAULT NULL,
  `route` varchar(250) DEFAULT NULL,
  `stop` varchar(250) DEFAULT NULL,
  `vechical_number` varchar(250) DEFAULT NULL,
  `pickup_point` varchar(250) DEFAULT NULL,
  `distance` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `stop_strat` varchar(250) DEFAULT NULL,
  `stop_end` varchar(250) DEFAULT NULL,
  `total_amount` varchar(250) DEFAULT NULL,
  `pay_amount` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `student_transport` */

insert  into `student_transport`(`s_t_id`,`s_id`,`class_id`,`student_id`,`route`,`stop`,`vechical_number`,`pickup_point`,`distance`,`amount`,`stop_strat`,`stop_end`,`total_amount`,`pay_amount`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,'16','127','4',NULL,NULL,NULL,NULL,NULL,'19','22','120','100',1,'2019-08-09 15:25:36','2019-08-09 15:42:22',107);

/*Table structure for table `subject_list` */

DROP TABLE IF EXISTS `subject_list`;

CREATE TABLE `subject_list` (
  `s_l_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`s_l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subject_list` */

/*Table structure for table `teacher_module_wise_class` */

DROP TABLE IF EXISTS `teacher_module_wise_class`;

CREATE TABLE `teacher_module_wise_class` (
  `t_m_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(12) DEFAULT NULL,
  `modules_name` varchar(250) DEFAULT NULL,
  `class` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`t_m_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_module_wise_class` */

insert  into `teacher_module_wise_class`(`t_m_c_id`,`s_id`,`modules_name`,`class`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,'1','ukg',1,'2019-08-02 13:13:30','2019-08-02 13:13:30',107),(2,17,'1','lkg',1,'2019-08-02 13:13:44','2019-08-02 13:13:44',107),(3,17,'2','fristclass',1,'2019-08-02 16:35:08','2019-08-02 13:14:00',107);

/*Table structure for table `teacher_modules` */

DROP TABLE IF EXISTS `teacher_modules`;

CREATE TABLE `teacher_modules` (
  `t_m_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(12) DEFAULT NULL,
  `modules` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_modules` */

insert  into `teacher_modules`(`t_m_id`,`s_id`,`modules`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,' Pri primary ',1,'2019-08-02 11:50:08','2019-08-02 11:49:48',107),(2,17,'Primary',1,'2019-08-02 11:50:10','2019-08-02 11:49:55',107),(3,17,'Upper primary',1,'2019-08-02 12:54:39','2019-08-02 12:54:39',107),(5,17,'vvv',2,'2019-08-04 11:14:17','2019-08-04 11:14:17',107);

/*Table structure for table `teachers_list` */

DROP TABLE IF EXISTS `teachers_list`;

CREATE TABLE `teachers_list` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(12) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `class_name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` int(12) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `teachers_list` */

insert  into `teachers_list`(`t_id`,`s_id`,`type`,`class_name`,`status`,`create_at`,`create_by`,`update_at`) values (1,17,'1','lkg',1,'2019-07-31 12:23:25',NULL,'0000-00-00 00:00:00'),(2,17,'1','ukg',1,'2019-07-31 12:23:34',NULL,'0000-00-00 00:00:00'),(3,17,'1','nursery',1,'2019-07-31 12:24:09',NULL,'0000-00-00 00:00:00'),(4,17,'2','1class',1,'2019-07-31 12:24:26',NULL,'0000-00-00 00:00:00'),(5,17,'2','2class',1,'2019-07-31 12:24:37',NULL,'0000-00-00 00:00:00'),(6,17,'2','3class',1,'2019-07-31 12:24:49',NULL,'0000-00-00 00:00:00'),(7,17,'2','4class',1,'2019-07-31 12:25:07',NULL,'0000-00-00 00:00:00'),(8,17,'2','5class',1,'2019-07-31 12:25:09',NULL,'0000-00-00 00:00:00'),(9,17,'3','6class',1,'2019-07-31 12:25:29',NULL,'0000-00-00 00:00:00'),(10,17,'3','7class',1,'2019-07-31 12:25:42',NULL,'0000-00-00 00:00:00'),(11,17,'3','8class',1,'2019-07-31 12:25:54',NULL,'0000-00-00 00:00:00'),(12,17,'3','9class',1,'2019-07-31 12:26:12',NULL,'0000-00-00 00:00:00'),(13,17,'3','10class',1,'2019-07-31 12:26:17',NULL,'0000-00-00 00:00:00');

/*Table structure for table `time_slot` */

DROP TABLE IF EXISTS `time_slot`;

CREATE TABLE `time_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `day` varchar(250) DEFAULT NULL,
  `time` text,
  `teacher_module` varchar(250) DEFAULT NULL,
  `class_id` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `teacher` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `time_slot` */

insert  into `time_slot`(`id`,`s_id`,`day`,`time`,`teacher_module`,`class_id`,`subject`,`teacher`,`status`,`create_at`,`update_at`,`create_by`) values (8,17,'Monday','3','2','15','11','119',1,'2019-08-05 12:31:28',NULL,107),(9,17,'Tuesday','3','2','16','13','119',1,'2019-08-05 12:31:52','2019-08-05 13:59:44',107),(10,17,'Thursday','3','2','15','11','119',1,'2019-08-05 12:40:00','2019-08-05 12:41:58',107),(11,17,'Tuesday','3','2','15','14','119',1,'2019-08-05 19:13:40',NULL,107),(12,17,'Wednesday','3','2','15','12','119',1,'2019-08-05 19:59:46',NULL,107);

/*Table structure for table `transport_fee` */

DROP TABLE IF EXISTS `transport_fee`;

CREATE TABLE `transport_fee` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `route_id` varchar(250) DEFAULT NULL,
  `stops` varchar(250) DEFAULT NULL,
  `frequency` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `to_stops` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `transport_fee` */

insert  into `transport_fee`(`f_id`,`s_id`,`route_id`,`stops`,`frequency`,`amount`,`to_stops`,`status`,`created_at`,`updated_at`,`created_by`) values (10,17,'4','20',NULL,'180','23',1,'2019-08-09 10:49:52','2019-08-09 10:49:52',110),(11,17,'4','19',NULL,'120','22',1,'2019-08-09 10:49:52','2019-08-09 10:49:52',110);

/*Table structure for table `types` */

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `types` */

insert  into `types`(`id`,`types`,`status`) values (1,'Pri-Primary',1),(2,'Primary ',1),(3,'Upper-Primary',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(250) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `org_password` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `qalification` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `current_city` varchar(45) DEFAULT NULL,
  `current_state` varchar(45) DEFAULT NULL,
  `current_country` varchar(45) DEFAULT NULL,
  `current_pincode` varchar(15) DEFAULT NULL,
  `per_address` varchar(250) DEFAULT NULL,
  `per_city` varchar(45) DEFAULT NULL,
  `per_state` varchar(45) DEFAULT NULL,
  `per_country` varchar(45) DEFAULT NULL,
  `per_pincode` varchar(15) DEFAULT NULL,
  `blodd_group` varchar(15) DEFAULT NULL,
  `doj` varchar(45) DEFAULT NULL,
  `class_name` varchar(45) DEFAULT NULL,
  `roll_number` varchar(250) DEFAULT NULL,
  `fee_amount` varchar(250) DEFAULT NULL,
  `fee_terms` varchar(250) DEFAULT NULL,
  `pay_amount` varchar(250) DEFAULT NULL,
  `parent_name` varchar(250) DEFAULT NULL,
  `parent_gender` varchar(15) DEFAULT NULL,
  `parent_email` varchar(250) DEFAULT NULL,
  `parent_password` varchar(250) DEFAULT NULL,
  `parent_org_password` varchar(250) DEFAULT NULL,
  `education` varchar(250) DEFAULT NULL,
  `profession` varchar(250) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `bus_transport` varchar(250) DEFAULT NULL,
  `profile_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`u_id`,`role_id`,`s_id`,`name`,`email`,`gender`,`dob`,`password`,`org_password`,`mobile`,`qalification`,`address`,`current_city`,`current_state`,`current_country`,`current_pincode`,`per_address`,`per_city`,`per_state`,`per_country`,`per_pincode`,`blodd_group`,`doj`,`class_name`,`roll_number`,`fee_amount`,`fee_terms`,`pay_amount`,`parent_name`,`parent_gender`,`parent_email`,`parent_password`,`parent_org_password`,`education`,`profession`,`notes`,`bus_transport`,`profile_pic`,`status`,`create_at`,`update_at`,`create_by`) values (1,'1',NULL,'admin','admin@gmail.com',NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(106,'2',NULL,NULL,'swarnajali@gmail.com',NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456','8099010155',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-07-29 12:37:45','2019-07-29 12:41:19',1),(107,'3',17,'mahesh','mahesh@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','7013319056','dregee','hyd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'1564385202.jpeg',1,'2019-07-29 12:47:14',NULL,106),(110,'5',17,'transport','transport@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','8099010157','degree','hyd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-07-29 13:38:51',NULL,106),(111,'12',17,'siva ram','sivaram@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','8099010158','degree','hyd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-07-29 13:51:05',NULL,106),(117,'6',17,'china','channa@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','8309234819','degree','hyd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-07-30 14:59:55',NULL,106),(119,'6',17,'kasi','kal@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','8197557026','dregee','hyd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-07-31 13:24:15',NULL,106),(120,'11',17,'ggg','hostel@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','8099010155','degree','hhh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-08-02 15:29:04',NULL,106),(122,'9',17,'examiner','exam@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','9874563562','dregee','hyderabad, aszfdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-08-05 14:01:17',NULL,106),(123,'8',17,'sdfsdf','academic@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','9874563211','dregee','hyderabad, aszfdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-08-05 14:25:23',NULL,106),(124,'10',17,'sdfsdf','li@gmail.com','Male',NULL,'e10adc3949ba59abbe56e057f20f883e','123456','98745632189','dregee','hyderabad, aszfdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'',1,'2019-08-05 15:11:00',NULL,106),(125,'7',17,'sdfsdf','','Male','08/08/2019','','','9874563289','dregee','hyderabad, aszfdf','hyd','Andhra Pradesh','India','515001','hyderabad, aszfdf','hyd','Andhra Pradesh','India','515001','','08/14/2019','15','5467892555555','','','','sdfsdf','Male','amala@gmail.com',NULL,NULL,'degree','high','2','Yes','',1,'2018-08-05 15:11:34','2019-08-12 23:04:48',107),(127,'7',17,'kasi','','Male','08/15/2019','','','8197557026',NULL,'hyderabad, aszfdf','hyd','Andhra Pradesh','India','515001','hyderabad, aszfdf','hyd','Andhra Pradesh','India','515001','A+','08/14/2019','16','5467892555555','','','','sankar','Male','sankar@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','degree','high',NULL,'Yes','',1,'2019-08-08 23:42:23','2019-08-08 23:56:12',107),(128,'7',17,'sdfsdf','','Male','08/24/2019','','','9505856307',NULL,'hyderabad, aszfdf','hyd','Andhra Pradesh','India','515001','hyderabad, aszfdf','hyd','Andhra Pradesh','India','515001','','08/08/2019','16','5467892555555','','','','sur','Male','admin11892@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','degree','2',NULL,'Yes','',1,'2019-08-12 23:03:43','2019-08-12 23:03:43',107);

/*Table structure for table `vehicle_details` */

DROP TABLE IF EXISTS `vehicle_details`;

CREATE TABLE `vehicle_details` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `route_number` varchar(250) DEFAULT NULL,
  `registration_no` varchar(250) DEFAULT NULL,
  `driver_name` varchar(250) DEFAULT NULL,
  `driver_no` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_details` */

insert  into `vehicle_details`(`v_id`,`s_id`,`route_number`,`registration_no`,`driver_name`,`driver_no`,`status`,`created_at`,`updated_at`,`created_by`) values (10,17,'4','1234567892','kasi','8099010155',1,'2019-08-09 10:49:16','2019-08-09 10:49:16',110);

/*Table structure for table `vehicle_stops` */

DROP TABLE IF EXISTS `vehicle_stops`;

CREATE TABLE `vehicle_stops` (
  `v_s_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `multiple_stops` varchar(250) DEFAULT NULL,
  `s_status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`v_s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_stops` */

insert  into `vehicle_stops`(`v_s_id`,`v_id`,`s_id`,`multiple_stops`,`s_status`,`created_at`,`updated_at`,`created_by`) values (23,10,17,'19',1,'2019-08-09 10:49:17','2019-08-09 10:49:17',110),(24,10,17,'20',1,'2019-08-09 10:49:17','2019-08-09 10:49:17',110),(25,10,17,'21',1,'2019-08-09 10:49:17','2019-08-09 10:49:17',110),(26,10,17,'22',1,'2019-08-09 10:49:17','2019-08-09 10:49:17',110),(27,10,17,'23',1,'2019-08-09 10:49:17','2019-08-09 10:49:17',110);

/*Table structure for table `visitor_pass` */

DROP TABLE IF EXISTS `visitor_pass`;

CREATE TABLE `visitor_pass` (
  `v_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) DEFAULT NULL,
  `visitor_type` varchar(250) DEFAULT NULL,
  `visitor_name` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `contact_number` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `visit_time` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`v_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `visitor_pass` */

insert  into `visitor_pass`(`v_p_id`,`s_id`,`visitor_type`,`visitor_name`,`location`,`contact_number`,`email`,`visit_time`,`status`,`created_at`,`updated_at`,`created_by`) values (1,17,'Mother','sdfsdf','kadapa','9874563211','admin11@gmail.com','12:12',1,'2019-08-05 15:17:27','2019-08-05 15:17:27',120);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
