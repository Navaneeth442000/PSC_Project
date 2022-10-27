-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 01:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coaching_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add event', 8, 'add_event'),
(30, 'Can change event', 8, 'change_event'),
(31, 'Can delete event', 8, 'delete_event'),
(32, 'Can view event', 8, 'view_event'),
(33, 'Can add exam', 9, 'add_exam'),
(34, 'Can change exam', 9, 'change_exam'),
(35, 'Can delete exam', 9, 'delete_exam'),
(36, 'Can view exam', 9, 'view_exam'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add question_bank', 11, 'add_question_bank'),
(42, 'Can change question_bank', 11, 'change_question_bank'),
(43, 'Can delete question_bank', 11, 'delete_question_bank'),
(44, 'Can view question_bank', 11, 'view_question_bank'),
(45, 'Can add staff', 12, 'add_staff'),
(46, 'Can change staff', 12, 'change_staff'),
(47, 'Can delete staff', 12, 'delete_staff'),
(48, 'Can view staff', 12, 'view_staff'),
(49, 'Can add tbl_idgen', 13, 'add_tbl_idgen'),
(50, 'Can change tbl_idgen', 13, 'change_tbl_idgen'),
(51, 'Can delete tbl_idgen', 13, 'delete_tbl_idgen'),
(52, 'Can view tbl_idgen', 13, 'view_tbl_idgen'),
(53, 'Can add student_admission', 14, 'add_student_admission'),
(54, 'Can change student_admission', 14, 'change_student_admission'),
(55, 'Can delete student_admission', 14, 'delete_student_admission'),
(56, 'Can view student_admission', 14, 'view_student_admission'),
(57, 'Can add student', 15, 'add_student'),
(58, 'Can change student', 15, 'change_student'),
(59, 'Can delete student', 15, 'delete_student'),
(60, 'Can view student', 15, 'view_student'),
(61, 'Can add review', 16, 'add_review'),
(62, 'Can change review', 16, 'change_review'),
(63, 'Can delete review', 16, 'delete_review'),
(64, 'Can view review', 16, 'view_review'),
(65, 'Can add result', 17, 'add_result'),
(66, 'Can change result', 17, 'change_result'),
(67, 'Can delete result', 17, 'delete_result'),
(68, 'Can view result', 17, 'view_result'),
(69, 'Can add question', 18, 'add_question'),
(70, 'Can change question', 18, 'change_question'),
(71, 'Can delete question', 18, 'delete_question'),
(72, 'Can view question', 18, 'view_question'),
(73, 'Can add fee_payment', 19, 'add_fee_payment'),
(74, 'Can change fee_payment', 19, 'change_fee_payment'),
(75, 'Can delete fee_payment', 19, 'delete_fee_payment'),
(76, 'Can view fee_payment', 19, 'view_fee_payment'),
(77, 'Can add exam_registration', 20, 'add_exam_registration'),
(78, 'Can change exam_registration', 20, 'change_exam_registration'),
(79, 'Can delete exam_registration', 20, 'delete_exam_registration'),
(80, 'Can view exam_registration', 20, 'view_exam_registration'),
(81, 'Can add check_error', 21, 'add_check_error'),
(82, 'Can change check_error', 21, 'change_check_error'),
(83, 'Can delete check_error', 21, 'delete_check_error'),
(84, 'Can view check_error', 21, 'view_check_error'),
(85, 'Can add option_error', 22, 'add_option_error'),
(86, 'Can change option_error', 22, 'change_option_error'),
(87, 'Can delete option_error', 22, 'delete_option_error'),
(88, 'Can view option_error', 22, 'view_option_error');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(90) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `fee` int(11) NOT NULL,
  `description` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `fee`, `description`) VALUES
('CO_001', 'LDC Exam', 3000, '3 month '),
('CO_002', 'LGS Exam', 3500, '4 month'),
('CO_003', 'LP/UP Exam', 3000, '3 month'),
('CO_004', 'HSA Exam', 2500, '2 Month'),
('CO_005', 'SI Exam', 4000, '4 Month'),
('CO_007', 'BDO Exam', 3000, '3 Month');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(21, 'app1', 'check_error'),
(7, 'app1', 'course'),
(8, 'app1', 'event'),
(9, 'app1', 'exam'),
(20, 'app1', 'exam_registration'),
(19, 'app1', 'fee_payment'),
(10, 'app1', 'login'),
(22, 'app1', 'option_error'),
(18, 'app1', 'question'),
(11, 'app1', 'question_bank'),
(17, 'app1', 'result'),
(16, 'app1', 'review'),
(12, 'app1', 'staff'),
(15, 'app1', 'student'),
(14, 'app1', 'student_admission'),
(13, 'app1', 'tbl_idgen'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-25 12:13:27.628428'),
(2, 'auth', '0001_initial', '2022-06-25 12:13:28.073168'),
(3, 'admin', '0001_initial', '2022-06-25 12:13:28.154785'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-25 12:13:28.170861'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-25 12:13:28.178856'),
(6, 'app1', '0001_initial', '2022-06-25 12:13:29.025092'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-06-25 12:13:29.151823'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-06-25 12:13:29.252884'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-06-25 12:13:29.280060'),
(10, 'auth', '0004_alter_user_username_opts', '2022-06-25 12:13:29.296077'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-06-25 12:13:29.375402'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-06-25 12:13:29.394733'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-06-25 12:13:29.422614'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-06-25 12:13:29.448862'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-06-25 12:13:29.464743'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-06-25 12:13:29.504398'),
(17, 'auth', '0011_update_proxy_permissions', '2022-06-25 12:13:29.551846'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-06-25 12:13:29.594823'),
(19, 'sessions', '0001_initial', '2022-06-25 12:13:29.653477'),
(20, 'app1', '0002_remove_staff_address_staff_house_name', '2022-06-29 08:43:48.353510'),
(21, 'app1', '0003_staff_district_staff_street', '2022-06-29 08:45:04.649556'),
(22, 'app1', '0004_fee_payment_month_fee_payment_year', '2022-07-05 06:10:43.039917'),
(23, 'app1', '0005_student_admission_month_student_admission_year', '2022-07-05 09:49:53.663351'),
(24, 'app1', '0006_check_error', '2022-07-14 06:56:29.872790'),
(25, 'app1', '0007_tbl_idgen_errorid', '2022-07-14 07:19:01.852519'),
(26, 'app1', '0002_tbl_idgen_ansid_option_error', '2022-07-14 08:52:16.737982'),
(27, 'app1', '0003_remove_option_error_result_id_option_error_exam_id', '2022-07-15 06:26:25.962218'),
(28, 'app1', '0004_option_error_date', '2022-07-15 06:27:55.776687'),
(29, 'app1', '0005_option_error_student_exam_id', '2022-07-19 06:20:03.389974');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('36t5l2tkg1rd5vjr5o6p9da6ygr2bqa6', '.eJyrViouKU1JrUjMzUxRsjI0NtZRSgWxlFwj4g0MDJWA3IpcIDfYFcQ1NgYKJOYVg1RYmOuA9YJVB4eEukDVg8TigZriIRIIfXAxqNG1AL3tI04:1oo1KV:1M7HAqmSYf5e9VpC0GY-IXfUeK6I3-NgpSwIwoehGks', '2022-11-10 11:45:47.843358'),
('i8409dx19fo21tig3kh78dba9gre4v6i', '.eJyrViouKU3JTFGyUgoOCXWJNzAwVNIBi6VWJOaCxA2NjXSUUsEqXCOg8qkVuSANriCusRFQIDGvGKTC3BKiNx6oIB5iKEINXAxuTFoq2FwLHaWi1LLM1HIQxwzEAbOUgkB6zUDOKcV0YCJUCCgAMrywuAQkYGQMdAtYJjElNzMPKJGcX1pUDLGmFgCIy0QG:1oTg9w:W960Zs_XycIEZW9NoX9n_MNgVJEjRpG1ZJBhtj5MPDg', '2022-09-15 09:06:48.643970'),
('otibgkdpf2e82x6zzj84aw18xi7wt0ab', '.eJxdj00OgjAQhe8y6y6ACKhruYBo4o5UOiREW0JLkcR4d2eAYuLuzTfvzc8b6s5bh62C416AG2TTsE5iLrxiDeXleqqiKAYB_V2aB8ODAJykZpkRdsMKORQacZKQax5R3NYBDYZdFscWX1zk5BrRhBF2oXAuKJNTBq3tLKNUgDSO1Y6kwyfWA6oq7IOSE1nKkUmHmq6A5S4y6upnXBob2050_v9rOQOpdGvg8wWstFqy:1oDisb:wLqsFhOZCU2rTRY8zwpTc_fdRdY6w-yLrpO3V_AX_AI', '2022-08-02 08:46:57.700366');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` varchar(90) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_date` varchar(90) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `event_date`, `description`, `status`) VALUES
('STUD_001', 'Quiz Competition', '2022-07-08', 'Cash Prize', 'Active'),
('STUD_002', 'Free Seminar', '2022-07-30', 'Seminar conducted by Aparna Murali', 'Active'),
('STUD_003', 'Onam Celebration', '2022-09-03', 'Onam Programs', 'Active'),
('STUD_008', 'Science Day', '2022-09-23', 'Quiz Competition', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` varchar(90) NOT NULL,
  `exam_name` varchar(50) NOT NULL,
  `eligibility` varchar(50) NOT NULL,
  `exam_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `exam_name`, `eligibility`, `exam_type`) VALUES
('EX_001', 'LDC', 'MCA', 'Objective'),
('EX_002', 'LGS', 'BSC', 'Objective'),
('EX_003', 'SI Exam', 'mca', 'Objective'),
('EX_004', 'LP/UP Exam', 'SSLC', 'Objective');

-- --------------------------------------------------------

--
-- Table structure for table `exam_registration`
--

CREATE TABLE `exam_registration` (
  `student_exam_id` varchar(90) NOT NULL,
  `status` varchar(30) NOT NULL,
  `exam_id_id` varchar(90) NOT NULL,
  `student_id_id` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_registration`
--

INSERT INTO `exam_registration` (`student_exam_id`, `status`, `exam_id_id`, `student_id_id`) VALUES
('SE_001', 'Attended', 'EX_001', 'STUD_001'),
('SE_0010', 'Attended', 'EX_003', 'STUD_001'),
('SE_00100', 'Attended', 'EX_001', 'STUD_007'),
('SE_00101', 'Attended', 'EX_001', 'STUD_007'),
('SE_00102', 'Attended', 'EX_001', 'STUD_007'),
('SE_00103', 'Attended', 'EX_001', 'STUD_007'),
('SE_00104', 'Attended', 'EX_001', 'STUD_007'),
('SE_00105', 'Attended', 'EX_001', 'STUD_007'),
('SE_00106', 'Attended', 'EX_001', 'STUD_007'),
('SE_00107', 'Not Attended', 'EX_001', 'STUD_007'),
('SE_00108', 'Attended', 'EX_001', 'STUD_001'),
('SE_00109', 'Attended', 'EX_001', 'STUD_001'),
('SE_0011', 'Attended', 'EX_002', 'STUD_001'),
('SE_00110', 'Attended', 'EX_001', 'STUD_001'),
('SE_00111', 'Attended', 'EX_001', 'STUD_001'),
('SE_00112', 'Attended', 'EX_001', 'STUD_001'),
('SE_00113', 'Attended', 'EX_001', 'STUD_001'),
('SE_00114', 'Attended', 'EX_001', 'STUD_001'),
('SE_00115', 'Attended', 'EX_001', 'STUD_001'),
('SE_00116', 'Attended', 'EX_001', 'STUD_001'),
('SE_00117', 'Attended', 'EX_001', 'STUD_001'),
('SE_00118', 'Attended', 'EX_001', 'STUD_001'),
('SE_00119', 'Attended', 'EX_001', 'STUD_001'),
('SE_0012', 'Attended', 'EX_001', 'STUD_001'),
('SE_00120', 'Attended', 'EX_001', 'STUD_001'),
('SE_00121', 'Attended', 'EX_001', 'STUD_001'),
('SE_00122', 'Attended', 'EX_001', 'STUD_001'),
('SE_00123', 'Attended', 'EX_001', 'STUD_001'),
('SE_00124', 'Attended', 'EX_001', 'STUD_001'),
('SE_00125', 'Attended', 'EX_002', 'STUD_001'),
('SE_00126', 'Attended', 'EX_001', 'STUD_001'),
('SE_00127', 'Attended', 'EX_001', 'STUD_001'),
('SE_00128', 'Attended', 'EX_002', 'STUD_001'),
('SE_00129', 'Attended', 'EX_001', 'STUD_001'),
('SE_0013', 'Attended', 'EX_002', 'STUD_001'),
('SE_00130', 'Attended', 'EX_001', 'STUD_001'),
('SE_00131', 'Attended', 'EX_001', 'STUD_001'),
('SE_00132', 'Attended', 'EX_001', 'STUD_001'),
('SE_00133', 'Attended', 'EX_001', 'STUD_001'),
('SE_0014', 'Attended', 'EX_003', 'STUD_001'),
('SE_0015', 'Attended', 'EX_001', 'STUD_001'),
('SE_0016', 'Attended', 'EX_002', 'STUD_001'),
('SE_0017', 'Attended', 'EX_002', 'STUD_001'),
('SE_0018', 'Attended', 'EX_001', 'STUD_001'),
('SE_0019', 'Attended', 'EX_001', 'STUD_001'),
('SE_002', 'Attended', 'EX_001', 'STUD_001'),
('SE_0020', 'Attended', 'EX_001', 'STUD_001'),
('SE_0021', 'Attended', 'EX_001', 'STUD_001'),
('SE_0022', 'Attended', 'EX_001', 'STUD_001'),
('SE_0023', 'Attended', 'EX_001', 'STUD_001'),
('SE_0024', 'Attended', 'EX_001', 'STUD_001'),
('SE_0025', 'Attended', 'EX_001', 'STUD_001'),
('SE_0026', 'Attended', 'EX_001', 'STUD_001'),
('SE_0027', 'Attended', 'EX_001', 'STUD_001'),
('SE_0028', 'Attended', 'EX_001', 'STUD_001'),
('SE_0029', 'Attended', 'EX_001', 'STUD_001'),
('SE_003', 'Attended', 'EX_001', 'STUD_001'),
('SE_0030', 'Attended', 'EX_001', 'STUD_001'),
('SE_0031', 'Attended', 'EX_001', 'STUD_001'),
('SE_0032', 'Attended', 'EX_001', 'STUD_001'),
('SE_0033', 'Attended', 'EX_001', 'STUD_001'),
('SE_0034', 'Attended', 'EX_001', 'STUD_001'),
('SE_0035', 'Attended', 'EX_001', 'STUD_001'),
('SE_0036', 'Attended', 'EX_001', 'STUD_001'),
('SE_0037', 'Attended', 'EX_001', 'STUD_001'),
('SE_0038', 'Attended', 'EX_001', 'STUD_001'),
('SE_0039', 'Attended', 'EX_001', 'STUD_001'),
('SE_004', 'Attended', 'EX_001', 'STUD_001'),
('SE_0040', 'Attended', 'EX_001', 'STUD_001'),
('SE_0041', 'Attended', 'EX_001', 'STUD_001'),
('SE_0042', 'Attended', 'EX_001', 'STUD_001'),
('SE_0043', 'Attended', 'EX_001', 'STUD_001'),
('SE_0044', 'Attended', 'EX_001', 'STUD_001'),
('SE_0045', 'Attended', 'EX_001', 'STUD_001'),
('SE_0046', 'Attended', 'EX_001', 'STUD_001'),
('SE_0047', 'Attended', 'EX_001', 'STUD_001'),
('SE_0048', 'Attended', 'EX_001', 'STUD_001'),
('SE_0049', 'Attended', 'EX_001', 'STUD_001'),
('SE_005', 'Attended', 'EX_002', 'STUD_001'),
('SE_0050', 'Attended', 'EX_001', 'STUD_001'),
('SE_0051', 'Attended', 'EX_001', 'STUD_001'),
('SE_0052', 'Attended', 'EX_001', 'STUD_001'),
('SE_0053', 'Attended', 'EX_001', 'STUD_001'),
('SE_0054', 'Attended', 'EX_001', 'STUD_001'),
('SE_0055', 'Attended', 'EX_001', 'STUD_001'),
('SE_0056', 'Attended', 'EX_001', 'STUD_003'),
('SE_0057', 'Attended', 'EX_001', 'STUD_004'),
('SE_0058', 'Attended', 'EX_001', 'STUD_002'),
('SE_0059', 'Attended', 'EX_001', 'STUD_002'),
('SE_006', 'Attended', 'EX_001', 'STUD_003'),
('SE_0060', 'Attended', 'EX_001', 'STUD_002'),
('SE_0061', 'Attended', 'EX_001', 'STUD_002'),
('SE_0062', 'Attended', 'EX_001', 'STUD_002'),
('SE_0063', 'Attended', 'EX_001', 'STUD_002'),
('SE_0064', 'Attended', 'EX_001', 'STUD_002'),
('SE_0065', 'Attended', 'EX_001', 'STUD_002'),
('SE_0066', 'Attended', 'EX_001', 'STUD_002'),
('SE_0067', 'Attended', 'EX_001', 'STUD_002'),
('SE_0068', 'Attended', 'EX_001', 'STUD_002'),
('SE_0069', 'Attended', 'EX_001', 'STUD_001'),
('SE_007', 'Attended', 'EX_001', 'STUD_001'),
('SE_0070', 'Attended', 'EX_001', 'STUD_001'),
('SE_0071', 'Attended', 'EX_001', 'STUD_001'),
('SE_0072', 'Attended', 'EX_001', 'STUD_001'),
('SE_0073', 'Attended', 'EX_001', 'STUD_001'),
('SE_0074', 'Attended', 'EX_001', 'STUD_001'),
('SE_0075', 'Attended', 'EX_001', 'STUD_007'),
('SE_0076', 'Attended', 'EX_001', 'STUD_007'),
('SE_0077', 'Attended', 'EX_001', 'STUD_001'),
('SE_0078', 'Attended', 'EX_001', 'STUD_001'),
('SE_0079', 'Attended', 'EX_001', 'STUD_001'),
('SE_008', 'Attended', 'EX_001', 'STUD_001'),
('SE_0080', 'Attended', 'EX_001', 'STUD_001'),
('SE_0081', 'Attended', 'EX_001', 'STUD_001'),
('SE_0082', 'Attended', 'EX_001', 'STUD_001'),
('SE_0083', 'Attended', 'EX_001', 'STUD_001'),
('SE_0084', 'Attended', 'EX_001', 'STUD_001'),
('SE_0085', 'Attended', 'EX_001', 'STUD_001'),
('SE_0086', 'Attended', 'EX_001', 'STUD_001'),
('SE_0087', 'Attended', 'EX_001', 'STUD_001'),
('SE_0088', 'Attended', 'EX_001', 'STUD_001'),
('SE_0089', 'Attended', 'EX_001', 'STUD_001'),
('SE_009', 'Attended', 'EX_003', 'STUD_001'),
('SE_0090', 'Attended', 'EX_001', 'STUD_001'),
('SE_0091', 'Attended', 'EX_001', 'STUD_001'),
('SE_0092', 'Attended', 'EX_001', 'STUD_001'),
('SE_0093', 'Attended', 'EX_001', 'STUD_001'),
('SE_0094', 'Attended', 'EX_001', 'STUD_001'),
('SE_0095', 'Attended', 'EX_001', 'STUD_007'),
('SE_0096', 'Attended', 'EX_001', 'STUD_007'),
('SE_0097', 'Attended', 'EX_001', 'STUD_007'),
('SE_0098', 'Attended', 'EX_001', 'STUD_007'),
('SE_0099', 'Attended', 'EX_001', 'STUD_007');

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment`
--

CREATE TABLE `fee_payment` (
  `payment_id` varchar(90) NOT NULL,
  `fee` varchar(30) NOT NULL,
  `payment_date` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `course_id_id` varchar(90) NOT NULL,
  `student_id_id` varchar(90) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_payment`
--

INSERT INTO `fee_payment` (`payment_id`, `fee`, `payment_date`, `bank`, `account_no`, `ifsc_code`, `status`, `course_id_id`, `student_id_id`, `month`, `year`) VALUES
('FEE_001', '3000', '05-05-2021', 'SBI', '122324454464', 'SBI0019', 'Payed', 'CO_001', 'STUD_001', '5', '2021'),
('FEE_002', '2000', '05-06-2022', 'SBI', '24265765346', 'SBI0019', 'Payed', 'CO_001', 'STUD_001', '6', '2022'),
('FEE_003', '3000', '12-06-2022', 'SBI', '124565436776', 'SBI0018', 'Payed', 'CO_001', 'STUD_003', '6', '2022'),
('FEE_004', '2000', '15-06-2022', 'SBI', '24265765346', 'SBI0019', 'Payed', 'CO_001', 'STUD_001', '6', '2022'),
('FEE_005', '2500', '06-07-2022', 'SBI', '24265765346', 'SBI0019', 'Payed', 'CO_002', 'STUD_001', '7', '2022'),
('FEE_006', '2000', '06-07-2022', 'SBI', '24265765346', 'SBI0019', 'Payed', 'CO_002', 'STUD_001', '7', '2022'),
('FEE_007', '3000', '07-07-2022', 'sbi', '24265765346', 'SBI0019', 'Payed', 'CO_005', 'STUD_001', '7', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(90) NOT NULL,
  `password` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `category`) VALUES
('admin', 'admin', 'Admin'),
('STUD_001', '8592947539', 'Student'),
('STUD_002', '4355623445', 'Student'),
('STUD_003', '1234567890', 'Student'),
('STUD_004', '1122334455', 'Student'),
('STUD_007', '9876543210', 'Student'),
('ST_001', '758863864', 'Staff'),
('ST_002', '1234567890', 'Staff'),
('ST_0020', '9446884682', 'Staff'),
('ST_003', '123456', 'Staff'),
('ST_004', '9988776650', 'Staff'),
('ST_005', '2213123', 'Staff'),
('ST_006', '1234567899', 'Staff'),
('ST_007', '7787996766', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `option_error`
--

CREATE TABLE `option_error` (
  `answer_id` varchar(90) NOT NULL,
  `question_id` varchar(150) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `student_id_id` varchar(90) NOT NULL,
  `exam_id_id` varchar(90) NOT NULL,
  `date` varchar(30) NOT NULL,
  `student_exam_id_id` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `option_error`
--

INSERT INTO `option_error` (`answer_id`, `question_id`, `answer`, `student_id_id`, `exam_id_id`, `date`, `student_exam_id_id`) VALUES
('ANS_001', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00111'),
('ANS_0010', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00113'),
('ANS_0011', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00113'),
('ANS_0012', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00114'),
('ANS_0013', 'സൂര്യതാപം ഭൂമിയിലെത്തുന്ന രീതിയേത്', 'വികിരണം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00114'),
('ANS_0014', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00115'),
('ANS_0015', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00115'),
('ANS_0016', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00115'),
('ANS_0017', 'സൂര്യതാപം ഭൂമിയിലെത്തുന്ന രീതിയേത്', 'വികിരണം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00115'),
('ANS_0018', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00116'),
('ANS_0019', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00116'),
('ANS_002', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00111'),
('ANS_0020', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'മലനാട്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00116'),
('ANS_0021', 'സൂര്യതാപം ഭൂമിയിലെത്തുന്ന രീതിയേത്', 'വികിരണം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00116'),
('ANS_0022', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00116'),
('ANS_0023', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00117'),
('ANS_0024', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00117'),
('ANS_0025', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00117'),
('ANS_0026', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00117'),
('ANS_0027', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00118'),
('ANS_0028', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00118'),
('ANS_0029', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'മലനാട്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00118'),
('ANS_003', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'മലനാട്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00111'),
('ANS_0030', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00118'),
('ANS_0031', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00118'),
('ANS_0032', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00119'),
('ANS_0033', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00119'),
('ANS_0034', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00120'),
('ANS_0035', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00120'),
('ANS_0036', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00120'),
('ANS_0037', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00120'),
('ANS_0038', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00120'),
('ANS_0039', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'മലനാട്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00121'),
('ANS_004', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00111'),
('ANS_0040', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00121'),
('ANS_0041', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00121'),
('ANS_0042', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00122'),
('ANS_0043', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00122'),
('ANS_0044', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00122'),
('ANS_0045', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00122'),
('ANS_0046', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-08-30', 'SE_00123'),
('ANS_0047', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-08-30', 'SE_00123'),
('ANS_0048', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-08-30', 'SE_00123'),
('ANS_0049', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-08-31', 'SE_00124'),
('ANS_005', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'മലനാട്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00112'),
('ANS_0050', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-08-31', 'SE_00124'),
('ANS_0051', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-08-31', 'SE_00124'),
('ANS_0052', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-08-31', 'SE_00124'),
('ANS_0053', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-08-31', 'SE_00124'),
('ANS_0054', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന്', '11 ജൂലൈ 2015', 'STUD_001', 'EX_002', '2022-09-01', 'SE_00125'),
('ANS_0055', 'ഹേമറ്റൈറ്റ് ഏത് ലോഹത്തിന്റെ പ്രധാന അയിരാണ്', 'ഇരുമ്പ്', 'STUD_001', 'EX_002', '2022-09-01', 'SE_00125'),
('ANS_0056', 'റിസർവ് ബാങ്ക് ഓഫ് ഇന്ത്യയുടെ ഇരുപത്തിമൂന്നാമത്തെ ഗവർണർ', 'ബിമൽ ജലാൽ', 'STUD_001', 'EX_002', '2022-09-01', 'SE_00125'),
('ANS_0057', 'ഡിസ്ചാർജ് ലാംബിനുള്ളിൽ ഏത് വാതകം നിറച്ചാൽ ഓറഞ്ച് ചുവപ്പ് നിറത്തിലുള്ള പ്രകാശം ലഭിക്കും', 'നിയോൺ', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00126'),
('ANS_0058', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00126'),
('ANS_0059', 'ഇന്ത്യയുടെ നിയമനിർമ്മാണ വിഭാഗം', 'പാർലമെന്റ്', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00126'),
('ANS_006', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00112'),
('ANS_0060', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന്', '11 ജൂലൈ 2015', 'STUD_001', 'EX_002', '2022-09-01', 'SE_00128'),
('ANS_0061', 'റിസർവ് ബാങ്ക് ഓഫ് ഇന്ത്യയുടെ ഇരുപത്തിമൂന്നാമത്തെ ഗവർണർ', 'ബിമൽ ജലാൽ', 'STUD_001', 'EX_002', '2022-09-01', 'SE_00128'),
('ANS_0062', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന് ', '11 ജൂലൈ 2015', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00129'),
('ANS_0063', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00129'),
('ANS_0064', 'ചൂലന്നൂർ പക്ഷിസങ്കേതം ഏത് ജില്ലയിലാണ് സ്ഥിതി ചെയ്യുന്നത്', 'പാലക്കാട്', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00129'),
('ANS_0065', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0066', 'ഇന്ത്യയുടെ നിയമനിർമ്മാണ വിഭാഗം', 'പാർലമെന്റ്', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0067', 'ഭകാനംഗൽ അണക്കെട്ടിന്റെ നിർമ്മാണത്തിൽ പങ്കെടുത്ത ഏക വിദേശി ആരായിരുന്നു', 'റോബർട്ട് ബ്രിസ്റ്റോ', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0068', 'ഇന്ത്യയിൽ ബജറ്റ് അവതരണവുമായി ബന്ധപ്പെട്ട ഭരണഘടനാ വകുപ്പ്', '112', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0069', 'റിസർവ് ബാങ്ക് ഓഫ് ഇന്ത്യയുടെ ഇരുപത്തിമൂന്നാമത്തെ ഗവർണർ', 'ബിമൽ ജലാൽ', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_007', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'ഗുരുഗ്ര', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00112'),
('ANS_0070', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന് ', '11 ജൂലൈ 2015', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0071', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0072', 'ഡിസ്ചാർജ് ലാംബിനുള്ളിൽ ഏത് വാതകം നിറച്ചാൽ ഓറഞ്ച് ചുവപ്പ് നിറത്തിലുള്ള പ്രകാശം ലഭിക്കും', 'നിയോൺ', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0073', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'മലനാട്', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0074', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00130'),
('ANS_0075', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00131'),
('ANS_0076', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00132'),
('ANS_0077', 'ഇന്ത്യയുടെ നിയമനിർമ്മാണ വിഭാഗം', 'പാർലമെന്റ്', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00132'),
('ANS_0078', 'മൗലാനാ അബുൽകലാം ആസാദ് പ്രസിദ്ധീകരിച്ച പ്രതത്തിന്റെ പേര് എന്ത്', 'യങ് ഇന്ത്യ', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00132'),
('ANS_0079', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന് ', '11 ജൂലൈ 2015', 'STUD_001', 'EX_001', '2022-09-01', 'SE_00132'),
('ANS_008', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00113'),
('ANS_0080', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0081', 'ഇന്ത്യയുടെ നിയമനിർമ്മാണ വിഭാഗം', 'പാർലമെന്റ്', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0082', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന് ', '11 ജൂലൈ 2015', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0083', 'ഹേമറ്റൈറ്റ് ഏത് ലോഹത്തിന്റെ പ്രധാന അയിരാണ്', 'ഇരുമ്പ്', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0084', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0085', 'ഡിസ്ചാർജ് ലാംബിനുള്ളിൽ ഏത് വാതകം നിറച്ചാൽ ഓറഞ്ച് ചുവപ്പ് നിറത്തിലുള്ള പ്രകാശം ലഭിക്കും', 'നിയോൺ', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0086', 'കൊനേരുഹംപി ഏതുകളിയുമായി ബന്ധപ്പെട്ടതാണ്', 'കബഡി', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_0087', 'ചൂലന്നൂർ പക്ഷിസങ്കേതം ഏത് ജില്ലയിലാണ് സ്ഥിതി ചെയ്യുന്നത്', 'പാലക്കാട്', 'STUD_001', 'EX_001', '2022-10-27', 'SE_00133'),
('ANS_009', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'STUD_001', 'EX_001', '2022-07-19', 'SE_00113');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` varchar(90) NOT NULL,
  `question` varchar(150) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `exam_id_id` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `status`, `exam_id_id`) VALUES
('QST_001', 'നിസഹകരണ സമരത്തിന്റെ പ്രഖ്യാപിത ആശയങ്ങളിൽ ഉൾപ്പെടാത്തത്', 'നികുതി നൽകാതിരിക്കുക', 'തിരഞ്ഞെടുപ്പുകൾ ബഹിഷ്കരിക്കുക', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'ബ്രിട്ടീഷ് പുരസ്കാരങ്ങൾ തിരികെ നൽകുക', 'കൃഷിയിടങ്ങൾ തരിശിടുക', 'Not Attended', 'EX_001'),
('QST_0010', 'ഇന്ത്യയുടെ നിയമനിർമ്മാണ വിഭാഗം', 'സുപ്രീംകോടതി', 'ഹൈക്കോടതി', 'പാർലമെന്റ്', 'കേന്ദ്രമന്ത്രിസഭ', 'പാർലമെന്റ്', 'Not Attended', 'EX_001'),
('QST_0011', 'വിവരാവകാശ നിയമം നിലവിൽ വന്ന വർഷം', '2015', '2005', '2010', '2018', '2005', 'Not Attended', 'EX_001'),
('QST_0012', 'ഭകാനംഗൽ അണക്കെട്ടിന്റെ നിർമ്മാണത്തിൽ പങ്കെടുത്ത ഏക വിദേശി ആരായിരുന്നു', 'ആൽബർട്ട് ഹെൻട്രി', 'അൽമേഡ', 'റോബർട്ട് ബ്രിസ്റ്റോ', 'ഹാർവിസ്ലോകം', 'റോബർട്ട് ബ്രിസ്റ്റോ', 'Not Attended', 'EX_001'),
('QST_0013', 'മൗലാനാ അബുൽകലാം ആസാദ് പ്രസിദ്ധീകരിച്ച പ്രതത്തിന്റെ പേര് എന്ത്', 'അൽഹിലാൽ', 'യങ് ഇന്ത്യ', 'വന്ദേമാതരം', 'വോയ്സ് ഓഫ് ഇന്ത്യ', 'യങ് ഇന്ത്യ', 'Not Attended', 'EX_001'),
('QST_0014', 'ഇന്ത്യയിൽ ബജറ്റ് അവതരണവുമായി ബന്ധപ്പെട്ട ഭരണഘടനാ വകുപ്പ്', '138', '124', '112', '154', '112', 'Not Attended', 'EX_001'),
('QST_0015', 'റിസർവ് ബാങ്ക് ഓഫ് ഇന്ത്യയുടെ ഇരുപത്തിമൂന്നാമത്തെ ഗവർണർ', 'രഘുറാം രാജൻ', 'ബിമൽ ജലാൽ', 'ശക്തികാന്ത ദാസ്', 'ഊർജിത് പട്ടേൽ', 'ബിമൽ ജലാൽ', 'Not Attended', 'EX_001'),
('QST_0016', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന് ', '25 ഡിസംബർ 2015', '9 മെയ് 2015', '1 ഏപ്രിൽ 2015', '11 ജൂലൈ 2015', '11 ജൂലൈ 2015', 'Not Attended', 'EX_001'),
('QST_0017', 'കേന്ദ്ര ഗവൺമെന്റ് പദ്ധതിയായ അടൽ പെൻഷൻ യോജന\' പ്രഖ്യാപിച്ചതെന്ന്', '9 മെയ് 2015', '25 ഡിസംബർ 2015', '11 ജൂലൈ 2015', '1 ഏപ്രിൽ 2015', '11 ജൂലൈ 2015', 'Not Attended', 'EX_002'),
('QST_0018', 'ഹേമറ്റൈറ്റ് ഏത് ലോഹത്തിന്റെ പ്രധാന അയിരാണ്', 'സിങ്ക്', 'ഇരുമ്പ്', 'slad', 'അലൂമിനിയം', 'ഇരുമ്പ്', 'Not Attended', 'EX_001'),
('QST_0019', 'ഹേമറ്റൈറ്റ് ഏത് ലോഹത്തിന്റെ പ്രധാന അയിരാണ്', 'ഇരുമ്പ്', 'സിങ്ക്', 'അലൂമിനിയം', 'slad', 'ഇരുമ്പ്', 'Not Attended', 'EX_002'),
('QST_002', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'വിദ്യാ ബാലൻ', 'ദീപിക പദുക്കോൺ', 'അനുഷ്ക ശർമ്മ', 'പ്രിയങ്ക ചോപ്', 'Not Attended', 'EX_001'),
('QST_0020', 'റിസർവ് ബാങ്ക് ഓഫ് ഇന്ത്യയുടെ ഇരുപത്തിമൂന്നാമത്തെ ഗവർണർ', 'ബിമൽ ജലാൽ', 'രഘുറാം രാജൻ', 'ഊർജിത് പട്ടേൽ', 'ശക്തികാന്ത ദാസ്', 'ബിമൽ ജലാൽ', 'Not Attended', 'EX_002'),
('QST_0021', 'ഡിസ്ചാർജ് ലാംബിനുള്ളിൽ ഏത് വാതകം നിറച്ചാൽ ഓറഞ്ച് ചുവപ്പ് നിറത്തിലുള്ള പ്രകാശം ലഭിക്കും', 'ഹൈഡ്രജൻ', 'ക്ലോറിൻ', 'നിയോൺ', 'നൈട്രജൻ', 'നിയോൺ', 'Not Attended', 'EX_001'),
('QST_0022', 'കൊനേരുഹംപി ഏതുകളിയുമായി ബന്ധപ്പെട്ടതാണ്', 'ചെസ്', 'ഹോക്കി', 'ക്രിക്കറ്റ്', 'കബഡി', 'കബഡി', 'Not Attended', 'EX_001'),
('QST_003', 'സമുദ്രനിരപ്പിൽ നിന്ന് ഏകദേശം 75 മീറ്ററിൽ കൂടുതൽ ഉയരമുള്ള കേരളത്തിന്റെ ഭൂപ്രദേശം', 'ഇടനാട്', 'മലനാട്', 'തീരപ്രദേശം', 'സമതലം', 'മലനാട്', 'Not Attended', 'EX_001'),
('QST_004', 'മലബാർ കലാപത്തിന്റെ ഭാഗമായി നടന്ന പ്രധാന സംഭവം', 'പൂക്കോട്ടൂർ യുദ്ധം', 'കുളച്ചൽ യുദ്ധം', 'കുറച്യർ യുദ്ധം', 'ചാന്നാർ ലഹള', 'പൂക്കോട്ടൂർ യുദ്ധം', 'Not Attended', 'EX_001'),
('QST_005', 'ഇന്ത്യയിലെ ആദ്യത്തെ ധാന്യ എ.ടി.എം പ്രവർത്തിച്ചു തുടങ്ങിയത് എവിടെ', 'മുംബൈ', 'ബംഗാൾ', 'ഗുരുഗ്ര', 'തിരുവനന്തപുരം', 'ഗുരുഗ്ര', 'Not Attended', 'EX_001'),
('QST_006', 'സൂര്യതാപം ഭൂമിയിലെത്തുന്ന രീതിയേത്', 'അരിവഹനം', 'വികിരണം', 'സംവഹനം', 'ചാലനം', 'വികിരണം', 'Not Attended', 'EX_001'),
('QST_007', 'സരസ്വതി സമ്മാൻ ഏത് വിഭാഗവുമായി ബന്ധപ്പെട്ടതാണ്', 'കല', 'കായികം', 'സിനിമ', 'സാഹിത്യം', 'കായികം', 'Not Attended', 'EX_001'),
('QST_008', '2020 ലെ ടൊറന്റോ രാജ്യാന്തര ഫിലിം ഫെസ്റ്റിവലിൽ അംബാസിഡറായി തിരഞ്ഞെടുക്കപ്പെട്ട ബോളിവുഡ് നടി', 'പ്രിയങ്ക ചോപ്', 'വിദ്യാ ബാലൻ', 'ദീപിക പദുക്കോൺ', 'അനുഷ്ക ശർമ്മ', 'പ്രിയങ്ക ചോപ്', 'Not Attended', 'EX_003'),
('QST_009', 'ചൂലന്നൂർ പക്ഷിസങ്കേതം ഏത് ജില്ലയിലാണ് സ്ഥിതി ചെയ്യുന്നത്', 'എറണാകുളം', 'പാലക്കാട്', 'ഇടുക്കി', 'കൊല്ലം', 'പാലക്കാട്', 'Not Attended', 'EX_001');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `questionbank_id` varchar(90) NOT NULL,
  `question_paper` varchar(100) NOT NULL,
  `answer_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`questionbank_id`, `question_paper`, `answer_key`) VALUES
('QB_001', '/media/PSC.pdf', '/media/TAMES-2022-RANK-LIST_p1riAfA.pdf'),
('QB_003', '/media/DocScanner%205%20Jun%202022%2012-04.pdf', '/media/Where2buy_report%201.pdf'),
('QB_004', '/media/LDC%20Question%20Paper2021-1-13.pdf', '/media/LDC%20Answer%20Key%202021-14.pdf'),
('QB_005', '/media/LDC%20Question%20Paper2021-1-13_HH4yGEz.pdf', '/media/LDC%20Answer%20Key%202021-14_BCLj0IQ.pdf'),
('QB_006', '/media/LDC%20Question%20Paper2021-1-13_7O6ePAz.pdf', '/media/LDC%20Answer%20Key%202021-14_KMb502I.pdf'),
('QB_007', '/media/LDC%20Question%20Paper2021-1-13_Kiwuxzg.pdf', '/media/LDC%20Answer%20Key%202021-14_fFVUlNt.pdf'),
('QB_008', '/media/LDC%20Question%20Paper2021-1-13_LN6b3Lv.pdf', '/media/LDC%20Answer%20Key%202021-14_n6jeBgh.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` varchar(90) NOT NULL,
  `result` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `exam_id_id` varchar(90) NOT NULL,
  `student_id_id` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `result`, `status`, `date`, `exam_id_id`, `student_id_id`) VALUES
('RESULT_001', '1', 'completed', '2022-06-25', 'EX_001', 'STUD_001'),
('RESULT_0010', '3', 'completed', '2022-07-06', 'EX_001', 'STUD_001'),
('RESULT_0011', '7', 'completed', '2022-07-06', 'EX_001', 'STUD_001'),
('RESULT_0012', '3', 'completed', '2022-07-06', 'EX_001', 'STUD_001'),
('RESULT_0013', '1', 'completed', '2022-07-13', 'EX_001', 'STUD_001'),
('RESULT_0015', '1', 'completed', '2022-07-14', 'EX_001', 'STUD_001'),
('RESULT_002', '6', 'completed', '2022-06-25', 'EX_001', 'STUD_001'),
('RESULT_0026', '7', 'completed', '2022-07-15', 'EX_001', 'STUD_001'),
('RESULT_0028', '3', 'completed', '2022-07-15', 'EX_001', 'STUD_001'),
('RESULT_0029', '5', 'completed', '2022-07-15', 'EX_001', 'STUD_007'),
('RESULT_003', '6', 'completed', '2022-06-27', 'EX_001', 'STUD_001'),
('RESULT_0030', '6', 'completed', '2022-07-15', 'EX_001', 'STUD_007'),
('RESULT_0031', '10', 'completed', '2022-07-16', 'EX_001', 'STUD_001'),
('RESULT_0034', '5', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0035', '6', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0036', '4', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0037', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0038', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0039', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0040', '1', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0041', '5', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0042', '6', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0043', '5', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0044', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0045', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0046', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0047', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0048', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0049', '1', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_005', '4', 'completed', '2022-06-29', 'EX_001', 'STUD_001'),
('RESULT_0050', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0051', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0052', '2', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0053', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0054', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0055', '4', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0056', '3', 'completed', '2022-07-18', 'EX_001', 'STUD_007'),
('RESULT_0057', '4', 'completed', '2022-07-18', 'EX_001', 'STUD_001'),
('RESULT_0058', '2', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0059', '3', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_006', '4', 'completed', '2022-07-01', 'EX_001', 'STUD_001'),
('RESULT_0061', '3', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0062', '4', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0063', '3', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0064', '5', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0065', '5', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_007', '6', 'completed', '2022-07-02', 'EX_001', 'STUD_001'),
('RESULT_0070', '3', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0071', '2', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0072', '5', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0074', '2', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0075', '4', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0076', '3', 'completed', '2022-07-19', 'EX_001', 'STUD_001'),
('RESULT_0077', '4', 'completed', '2022-08-30', 'EX_001', 'STUD_001'),
('RESULT_0078', '2', 'completed', '2022-08-31', 'EX_001', 'STUD_001'),
('RESULT_0079', '2', 'completed', '2022-09-01', 'EX_001', 'STUD_001'),
('RESULT_008', '1', 'completed', '2022-07-06', 'EX_001', 'STUD_001'),
('RESULT_0080', '1', 'completed', '2022-09-01', 'EX_002', 'STUD_001'),
('RESULT_0081', '15', 'completed', '2022-09-01', 'EX_001', 'STUD_001'),
('RESULT_0082', '8', 'completed', '2022-09-01', 'EX_001', 'STUD_001'),
('RESULT_0083', '2', 'completed', '2022-09-01', 'EX_001', 'STUD_001'),
('RESULT_0084', '3', 'completed', '2022-09-01', 'EX_001', 'STUD_001'),
('RESULT_0085', '10', 'completed', '2022-10-27', 'EX_001', 'STUD_001'),
('RESULT_009', '1', 'completed', '2022-07-06', 'EX_001', 'STUD_001');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` varchar(90) NOT NULL,
  `review` varchar(150) NOT NULL,
  `review_date` varchar(30) NOT NULL,
  `student_id_id` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review`, `review_date`, `student_id_id`) VALUES
('RE_002', 'Good and Famous coaching center', '2022-06-29', 'STUD_001'),
('RE_003', 'Best Psc coaching Center', '2022-06-29', 'STUD_003'),
('RE_004', 'Best coaching institute for PSC', '2022-06-29', 'STUD_002'),
('RE_005', 'One of the best coaching center', '2022-07-01', 'STUD_001');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(90) NOT NULL,
  `staff_name` varchar(30) NOT NULL,
  `doj` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `qualification` varchar(90) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `doj`, `phone`, `email`, `dob`, `qualification`, `experience`, `status`, `house_name`, `district`, `street`) VALUES
('ST_001', 'Manju', '2022-06-15', '758863864', 'manju0@gmail.com', '1996-06-19', 'MCA', '3 Year', 'Appointed', 'Sreepadham', 'Kozhikode', 'Atholi'),
('ST_002', 'Sanu', '2022-05-30', '1234567890', 'sanu123@gmail.com', '1997-07-05', 'MTech', '2 Year', 'Appointed', 'Sinan', 'Kozhikode', 'Ulliery'),
('ST_0020', 'Navaneeth', '2022-07-01', '9446884682', 'navaneethsathyan0@gmail.com', '2022-06-29', 'pg', '3 Year', 'Appointed', 'Kizhakkedath', 'Kozhikode', 'Balussery'),
('ST_003', 'Santhosh', '2022-06-18', '123456', 'santhosh@gmail.com', '2022-06-11', 'MCA', '3 Year', 'Appointed', 'Nivas', 'Kozhikode', 'Nedumkandam'),
('ST_004', 'Kannan', '2022-06-30', '9988776650', 'kannan10@gmail.com', '2022-06-02', 'MCA', '11 month', 'Appointed', 'Kinnaram', 'Kozhikode', 'Balussery'),
('ST_005', 'Anjuna', '2022-06-29', '2213123', 'anjunaanju@gmail.com', '2022-06-02', 'MCA', '3 Year', 'Appointed', 'Anugrah', 'Kozhikode', 'Athani'),
('ST_006', 'Anupama', '2022-06-29', '1234567899', 'anupama110@gmail.com', '2022-06-02', 'MTech', '2 Year', 'Appointed', 'Kizhakkedath', 'Kozhikode', 'Edakkad'),
('ST_007', 'Kuttu', '2022-06-30', '7787996766', 'navaneethsathyan0@gmail.com', '2022-06-03', 'MTech', '3 Year', 'Appointed', 'Kinnaram', 'Kozhikode', 'Balussery');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_appli_id` varchar(90) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `admission_date` varchar(30) NOT NULL,
  `house_name` varchar(90) NOT NULL,
  `street` varchar(90) NOT NULL,
  `district` varchar(90) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(90) NOT NULL,
  `status` varchar(50) NOT NULL,
  `course_id_id` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_appli_id`, `student_name`, `admission_date`, `house_name`, `street`, `district`, `dob`, `phone`, `email`, `qualification`, `status`, `course_id_id`) VALUES
('STUD_001', 'Navaneeth S', '2022-05-31', 'Kolathur', 'Atholi', 'Kozhikode', '2000-04-04', '8592947539', 'navaneethsathyan0@gmail.com', 'MCA', 'Processed', 'CO_002'),
('STUD_0013', 'Razer', '2022-07-02', 'Kolathur', 'Atholi', 'Kozhikode', '2022-06-28', '2213123', 'navaneethsathyan0@gmail.com', 'mca', 'Pending', 'CO_002'),
('STUD_0017', 'Navaneeth', '2022-07-02', 'Kolathur', 'Balussery', 'Kozhikode', '2022-07-23', '9446884682', 'navaneethsathyan0@gmail.com', 'MCA', 'Pending', 'CO_001'),
('STUD_002', 'Sinu', '2022-06-02', 'Sargam', 'Balussery', 'Kozhikode', '1999-04-17', '4355623445', 'sinu223@gmail.com', 'MSC', 'Processed', 'CO_001'),
('STUD_0021', 'Navaneeth', '2022-07-02', 'Kolathur', 'Balussery', 'Kozhikode', '2022-06-27', '9446884682', 'navaneethsathyan0@gmail.com', 'MCA', 'Pending', 'CO_001'),
('STUD_003', 'Anu', '2022-06-12', 'Sree', 'Atholi', 'Kozhikode', '2000-05-04', '1234567890', 'anu123@gmail.com', 'BSc', 'Processed', 'CO_002'),
('STUD_004', 'Sinu', '2022-06-30', 'Kolathur', 'Balussery', 'Kozhikode', '2022-06-01', '1122334455', 'sinu11@gmail.com', 'BCA', 'Processed', 'CO_002'),
('STUD_005', 'Kiran', '2022-07-03', 'Sree', 'Balussery', 'Kozhikode', '2022-05-31', '9876543210', 'kiran0@gmail.com', 'Plus Two', 'Pending', 'CO_003'),
('STUD_007', 'Appu', '2022-07-02', 'Sree', 'Balussery', 'Kozhikode', '2022-07-08', '9876543210', 'navaneethsathyan0@gmail.com', 'MTech', 'Processed', 'CO_001');

-- --------------------------------------------------------

--
-- Table structure for table `student_admission`
--

CREATE TABLE `student_admission` (
  `student_id` varchar(90) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `admission_date` varchar(30) NOT NULL,
  `house_name` varchar(90) NOT NULL,
  `street` varchar(90) NOT NULL,
  `district` varchar(90) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(90) NOT NULL,
  `course_id_id` varchar(90) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_admission`
--

INSERT INTO `student_admission` (`student_id`, `student_name`, `admission_date`, `house_name`, `street`, `district`, `dob`, `phone`, `email`, `qualification`, `course_id_id`, `month`, `year`) VALUES
('STUD_001', 'Navaneeth S', '10-06-2022', 'Kolathur', 'Atholi', 'Kozhikode', '2000-04-04', '8592947539', 'navaneethsathyan0@gmail.com', 'MCA', 'CO_002', '6', '2022'),
('STUD_002', 'Sinu', '15-06-2022', 'Sargam', 'Balussery', 'Kozhikode', '1999-04-17', '4355623445', 'sinu223@gmail.com', 'MSC', 'CO_001', '6', '2022'),
('STUD_003', 'Anu', '03-07-2022', 'Sree', 'Atholi', 'Kozhikode', '2000-05-04', '1234567890', 'anu123@gmail.com', 'BSc', 'CO_002', '7', '2022'),
('STUD_004', 'Sinu', '05-07-2022', 'Kolathur', 'Balussery', 'Kozhikode', '2022-06-01', '1122334455', 'sinu11@gmail.com', 'BCA', 'CO_002', '7', '2022'),
('STUD_007', 'Appu', '05-07-2022', 'Sree', 'Balussery', 'Kozhikode', '2022-07-08', '9876543210', 'navaneethsathyan0@gmail.com', 'MTech', 'CO_001', '7', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_idgen`
--

CREATE TABLE `tbl_idgen` (
  `id` bigint(20) NOT NULL,
  `courseid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `studid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `qbankid` int(11) NOT NULL,
  `examid` int(11) NOT NULL,
  `qstid` int(11) NOT NULL,
  `studexamid` int(11) NOT NULL,
  `resultid` int(11) NOT NULL,
  `feeid` int(11) NOT NULL,
  `reviewid` int(11) NOT NULL,
  `errorid` int(11) NOT NULL,
  `ansid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_idgen`
--

INSERT INTO `tbl_idgen` (`id`, `courseid`, `staffid`, `studid`, `eventid`, `qbankid`, `examid`, `qstid`, `studexamid`, `resultid`, `feeid`, `reviewid`, `errorid`, `ansid`) VALUES
(1, 7, 20, 21, 8, 8, 4, 22, 133, 85, 7, 5, 0, 87);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_registration`
--
ALTER TABLE `exam_registration`
  ADD PRIMARY KEY (`student_exam_id`),
  ADD KEY `exam_registration_exam_id_id_58c057bd_fk_exam_exam_id` (`exam_id_id`),
  ADD KEY `exam_registration_student_id_id_7ea6543f_fk_student_a` (`student_id_id`);

--
-- Indexes for table `fee_payment`
--
ALTER TABLE `fee_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fee_payment_course_id_id_0b9fc106_fk_course_course_id` (`course_id_id`),
  ADD KEY `fee_payment_student_id_id_927d95df_fk_student_a` (`student_id_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `option_error`
--
ALTER TABLE `option_error`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `option_error_student_id_id_3466f4d1_fk_student_a` (`student_id_id`),
  ADD KEY `option_error_exam_id_id_27a47c1a_fk_exam_exam_id` (`exam_id_id`),
  ADD KEY `option_error_student_exam_id_id_0f6fb0ad_fk_exam_regi` (`student_exam_id_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `question_exam_id_id_461b3534_fk_exam_exam_id` (`exam_id_id`);

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`questionbank_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `result_exam_id_id_cdb600cb_fk_exam_exam_id` (`exam_id_id`),
  ADD KEY `result_student_id_id_ba07e335_fk_student_admission_student_id` (`student_id_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `review_student_id_id_ac7dacbd_fk_student_admission_student_id` (`student_id_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_appli_id`),
  ADD KEY `student_course_id_id_c306ec07_fk_course_course_id` (`course_id_id`);

--
-- Indexes for table `student_admission`
--
ALTER TABLE `student_admission`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_admission_course_id_id_094210ed_fk_course_course_id` (`course_id_id`);

--
-- Indexes for table `tbl_idgen`
--
ALTER TABLE `tbl_idgen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_idgen`
--
ALTER TABLE `tbl_idgen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `exam_registration`
--
ALTER TABLE `exam_registration`
  ADD CONSTRAINT `exam_registration_exam_id_id_58c057bd_fk_exam_exam_id` FOREIGN KEY (`exam_id_id`) REFERENCES `exam` (`exam_id`),
  ADD CONSTRAINT `exam_registration_student_id_id_7ea6543f_fk_student_a` FOREIGN KEY (`student_id_id`) REFERENCES `student_admission` (`student_id`);

--
-- Constraints for table `fee_payment`
--
ALTER TABLE `fee_payment`
  ADD CONSTRAINT `fee_payment_course_id_id_0b9fc106_fk_course_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `fee_payment_student_id_id_927d95df_fk_student_a` FOREIGN KEY (`student_id_id`) REFERENCES `student_admission` (`student_id`);

--
-- Constraints for table `option_error`
--
ALTER TABLE `option_error`
  ADD CONSTRAINT `option_error_exam_id_id_27a47c1a_fk_exam_exam_id` FOREIGN KEY (`exam_id_id`) REFERENCES `exam` (`exam_id`),
  ADD CONSTRAINT `option_error_student_exam_id_id_0f6fb0ad_fk_exam_regi` FOREIGN KEY (`student_exam_id_id`) REFERENCES `exam_registration` (`student_exam_id`),
  ADD CONSTRAINT `option_error_student_id_id_3466f4d1_fk_student_a` FOREIGN KEY (`student_id_id`) REFERENCES `student_admission` (`student_id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_exam_id_id_461b3534_fk_exam_exam_id` FOREIGN KEY (`exam_id_id`) REFERENCES `exam` (`exam_id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_exam_id_id_cdb600cb_fk_exam_exam_id` FOREIGN KEY (`exam_id_id`) REFERENCES `exam` (`exam_id`),
  ADD CONSTRAINT `result_student_id_id_ba07e335_fk_student_admission_student_id` FOREIGN KEY (`student_id_id`) REFERENCES `student_admission` (`student_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_student_id_id_ac7dacbd_fk_student_admission_student_id` FOREIGN KEY (`student_id_id`) REFERENCES `student_admission` (`student_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_course_id_id_c306ec07_fk_course_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `student_admission`
--
ALTER TABLE `student_admission`
  ADD CONSTRAINT `student_admission_course_id_id_094210ed_fk_course_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
