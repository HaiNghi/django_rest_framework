-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: DjangoRestFrameworkDB
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add snippet',7,'add_snippet'),(20,'Can change snippet',7,'change_snippet'),(21,'Can delete snippet',7,'delete_snippet');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$qtWpJKtQArEF$G4ut/gEYDynGsyh5ZavMBA6WVFdNcWJZje/JXiSwfOQ=','2017-12-29 04:07:05.707594',1,'nickie','','','nickie@enclave.vn',1,1,'2017-12-26 04:47:05.701717');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'snippets','snippet');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-12-26 04:46:08.434728'),(2,'auth','0001_initial','2017-12-26 04:46:08.818890'),(3,'admin','0001_initial','2017-12-26 04:46:08.935929'),(4,'admin','0002_logentry_remove_auto_add','2017-12-26 04:46:08.958606'),(5,'contenttypes','0002_remove_content_type_name','2017-12-26 04:46:09.051156'),(6,'auth','0002_alter_permission_name_max_length','2017-12-26 04:46:09.064320'),(7,'auth','0003_alter_user_email_max_length','2017-12-26 04:46:09.101523'),(8,'auth','0004_alter_user_username_opts','2017-12-26 04:46:09.116129'),(9,'auth','0005_alter_user_last_login_null','2017-12-26 04:46:09.152051'),(10,'auth','0006_require_contenttypes_0002','2017-12-26 04:46:09.155477'),(11,'auth','0007_alter_validators_add_error_messages','2017-12-26 04:46:09.171890'),(12,'auth','0008_alter_user_username_max_length','2017-12-26 04:46:09.250194'),(13,'auth','0009_alter_user_last_name_max_length','2017-12-26 04:46:09.268510'),(14,'sessions','0001_initial','2017-12-26 04:46:09.300305'),(15,'snippets','0001_initial','2017-12-26 04:46:09.369360');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('awgtwcucjer84hv98hu54ll2lrv8o7mb','NmE0YTU3MDE2ODYwNjdlZDM3NTFjMGFmOTUxN2MwOGI5NzIyMzM1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjRlZWJiZDk1YTZmMjE0MWNjNDJhZjA0NGViNzNlMTcyZjY5NWQyIn0=','2018-01-12 04:07:05.716758'),('n58ut1yj31p6ev2edqs15hqgnh8kt2wa','NmE0YTU3MDE2ODYwNjdlZDM3NTFjMGFmOTUxN2MwOGI5NzIyMzM1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjRlZWJiZDk1YTZmMjE0MWNjNDJhZjA0NGViNzNlMTcyZjY5NWQyIn0=','2018-01-09 08:48:24.171973');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets_snippet`
--

DROP TABLE IF EXISTS `snippets_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippets_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `code` longtext NOT NULL,
  `linenos` tinyint(1) NOT NULL,
  `language` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  `highlighted` longtext NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `snippets_snippet_owner_id_20604299_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `snippets_snippet_owner_id_20604299_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets_snippet`
--

LOCK TABLES `snippets_snippet` WRITE;
/*!40000 ALTER TABLE `snippets_snippet` DISABLE KEYS */;
INSERT INTO `snippets_snippet` VALUES (1,'2017-12-26 06:48:35.307672','','print(\"hello world\")',0,'python','paraiso-light','<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n   \"http://www.w3.org/TR/html4/strict.dtd\">\n\n<html>\n<head>\n  <title></title>\n  <meta http-equiv=\"content-type\" content=\"text/html; charset=None\">\n  <style type=\"text/css\">\ntd.linenos { background-color: #f0f0f0; padding-right: 10px; }\nspan.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }\npre { line-height: 125%; }\nbody .hll { background-color: #a39e9b }\nbody  { background: #e7e9db; color: #2f1e2e }\nbody .c { color: #8d8687 } /* Comment */\nbody .err { color: #ef6155 } /* Error */\nbody .k { color: #815ba4 } /* Keyword */\nbody .l { color: #f99b15 } /* Literal */\nbody .n { color: #2f1e2e } /* Name */\nbody .o { color: #5bc4bf } /* Operator */\nbody .p { color: #2f1e2e } /* Punctuation */\nbody .ch { color: #8d8687 } /* Comment.Hashbang */\nbody .cm { color: #8d8687 } /* Comment.Multiline */\nbody .cp { color: #8d8687 } /* Comment.Preproc */\nbody .cpf { color: #8d8687 } /* Comment.PreprocFile */\nbody .c1 { color: #8d8687 } /* Comment.Single */\nbody .cs { color: #8d8687 } /* Comment.Special */\nbody .gd { color: #ef6155 } /* Generic.Deleted */\nbody .ge { font-style: italic } /* Generic.Emph */\nbody .gh { color: #2f1e2e; font-weight: bold } /* Generic.Heading */\nbody .gi { color: #48b685 } /* Generic.Inserted */\nbody .gp { color: #8d8687; font-weight: bold } /* Generic.Prompt */\nbody .gs { font-weight: bold } /* Generic.Strong */\nbody .gu { color: #5bc4bf; font-weight: bold } /* Generic.Subheading */\nbody .kc { color: #815ba4 } /* Keyword.Constant */\nbody .kd { color: #815ba4 } /* Keyword.Declaration */\nbody .kn { color: #5bc4bf } /* Keyword.Namespace */\nbody .kp { color: #815ba4 } /* Keyword.Pseudo */\nbody .kr { color: #815ba4 } /* Keyword.Reserved */\nbody .kt { color: #fec418 } /* Keyword.Type */\nbody .ld { color: #48b685 } /* Literal.Date */\nbody .m { color: #f99b15 } /* Literal.Number */\nbody .s { color: #48b685 } /* Literal.String */\nbody .na { color: #06b6ef } /* Name.Attribute */\nbody .nb { color: #2f1e2e } /* Name.Builtin */\nbody .nc { color: #fec418 } /* Name.Class */\nbody .no { color: #ef6155 } /* Name.Constant */\nbody .nd { color: #5bc4bf } /* Name.Decorator */\nbody .ni { color: #2f1e2e } /* Name.Entity */\nbody .ne { color: #ef6155 } /* Name.Exception */\nbody .nf { color: #06b6ef } /* Name.Function */\nbody .nl { color: #2f1e2e } /* Name.Label */\nbody .nn { color: #fec418 } /* Name.Namespace */\nbody .nx { color: #06b6ef } /* Name.Other */\nbody .py { color: #2f1e2e } /* Name.Property */\nbody .nt { color: #5bc4bf } /* Name.Tag */\nbody .nv { color: #ef6155 } /* Name.Variable */\nbody .ow { color: #5bc4bf } /* Operator.Word */\nbody .w { color: #2f1e2e } /* Text.Whitespace */\nbody .mb { color: #f99b15 } /* Literal.Number.Bin */\nbody .mf { color: #f99b15 } /* Literal.Number.Float */\nbody .mh { color: #f99b15 } /* Literal.Number.Hex */\nbody .mi { color: #f99b15 } /* Literal.Number.Integer */\nbody .mo { color: #f99b15 } /* Literal.Number.Oct */\nbody .sa { color: #48b685 } /* Literal.String.Affix */\nbody .sb { color: #48b685 } /* Literal.String.Backtick */\nbody .sc { color: #2f1e2e } /* Literal.String.Char */\nbody .dl { color: #48b685 } /* Literal.String.Delimiter */\nbody .sd { color: #8d8687 } /* Literal.String.Doc */\nbody .s2 { color: #48b685 } /* Literal.String.Double */\nbody .se { color: #f99b15 } /* Literal.String.Escape */\nbody .sh { color: #48b685 } /* Literal.String.Heredoc */\nbody .si { color: #f99b15 } /* Literal.String.Interpol */\nbody .sx { color: #48b685 } /* Literal.String.Other */\nbody .sr { color: #48b685 } /* Literal.String.Regex */\nbody .s1 { color: #48b685 } /* Literal.String.Single */\nbody .ss { color: #48b685 } /* Literal.String.Symbol */\nbody .bp { color: #2f1e2e } /* Name.Builtin.Pseudo */\nbody .fm { color: #06b6ef } /* Name.Function.Magic */\nbody .vc { color: #ef6155 } /* Name.Variable.Class */\nbody .vg { color: #ef6155 } /* Name.Variable.Global */\nbody .vi { color: #ef6155 } /* Name.Variable.Instance */\nbody .vm { color: #ef6155 } /* Name.Variable.Magic */\nbody .il { color: #f99b15 } /* Literal.Number.Integer.Long */\n\n  </style>\n</head>\n<body>\n<h2></h2>\n\n<div class=\"highlight\"><pre><span></span><span class=\"k\">print</span><span class=\"p\">(</span><span class=\"s2\">&quot;hello world&quot;</span><span class=\"p\">)</span>\n</pre></div>\n</body>\n</html>\n',1),(2,'2017-12-26 09:11:34.190493','','d d fgd fdf gghkkhj',0,'boo','fruity','<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n   \"http://www.w3.org/TR/html4/strict.dtd\">\n\n<html>\n<head>\n  <title></title>\n  <meta http-equiv=\"content-type\" content=\"text/html; charset=None\">\n  <style type=\"text/css\">\ntd.linenos { background-color: #f0f0f0; padding-right: 10px; }\nspan.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }\npre { line-height: 125%; }\nbody .hll { background-color: #333333 }\nbody  { background: #111111; color: #ffffff }\nbody .c { color: #008800; font-style: italic; background-color: #0f140f } /* Comment */\nbody .err { color: #ffffff } /* Error */\nbody .esc { color: #ffffff } /* Escape */\nbody .g { color: #ffffff } /* Generic */\nbody .k { color: #fb660a; font-weight: bold } /* Keyword */\nbody .l { color: #ffffff } /* Literal */\nbody .n { color: #ffffff } /* Name */\nbody .o { color: #ffffff } /* Operator */\nbody .x { color: #ffffff } /* Other */\nbody .p { color: #ffffff } /* Punctuation */\nbody .ch { color: #008800; font-style: italic; background-color: #0f140f } /* Comment.Hashbang */\nbody .cm { color: #008800; font-style: italic; background-color: #0f140f } /* Comment.Multiline */\nbody .cp { color: #ff0007; font-weight: bold; font-style: italic; background-color: #0f140f } /* Comment.Preproc */\nbody .cpf { color: #008800; font-style: italic; background-color: #0f140f } /* Comment.PreprocFile */\nbody .c1 { color: #008800; font-style: italic; background-color: #0f140f } /* Comment.Single */\nbody .cs { color: #008800; font-style: italic; background-color: #0f140f } /* Comment.Special */\nbody .gd { color: #ffffff } /* Generic.Deleted */\nbody .ge { color: #ffffff } /* Generic.Emph */\nbody .gr { color: #ffffff } /* Generic.Error */\nbody .gh { color: #ffffff; font-weight: bold } /* Generic.Heading */\nbody .gi { color: #ffffff } /* Generic.Inserted */\nbody .go { color: #444444; background-color: #222222 } /* Generic.Output */\nbody .gp { color: #ffffff } /* Generic.Prompt */\nbody .gs { color: #ffffff } /* Generic.Strong */\nbody .gu { color: #ffffff; font-weight: bold } /* Generic.Subheading */\nbody .gt { color: #ffffff } /* Generic.Traceback */\nbody .kc { color: #fb660a; font-weight: bold } /* Keyword.Constant */\nbody .kd { color: #fb660a; font-weight: bold } /* Keyword.Declaration */\nbody .kn { color: #fb660a; font-weight: bold } /* Keyword.Namespace */\nbody .kp { color: #fb660a } /* Keyword.Pseudo */\nbody .kr { color: #fb660a; font-weight: bold } /* Keyword.Reserved */\nbody .kt { color: #cdcaa9; font-weight: bold } /* Keyword.Type */\nbody .ld { color: #ffffff } /* Literal.Date */\nbody .m { color: #0086f7; font-weight: bold } /* Literal.Number */\nbody .s { color: #0086d2 } /* Literal.String */\nbody .na { color: #ff0086; font-weight: bold } /* Name.Attribute */\nbody .nb { color: #ffffff } /* Name.Builtin */\nbody .nc { color: #ffffff } /* Name.Class */\nbody .no { color: #0086d2 } /* Name.Constant */\nbody .nd { color: #ffffff } /* Name.Decorator */\nbody .ni { color: #ffffff } /* Name.Entity */\nbody .ne { color: #ffffff } /* Name.Exception */\nbody .nf { color: #ff0086; font-weight: bold } /* Name.Function */\nbody .nl { color: #ffffff } /* Name.Label */\nbody .nn { color: #ffffff } /* Name.Namespace */\nbody .nx { color: #ffffff } /* Name.Other */\nbody .py { color: #ffffff } /* Name.Property */\nbody .nt { color: #fb660a; font-weight: bold } /* Name.Tag */\nbody .nv { color: #fb660a } /* Name.Variable */\nbody .ow { color: #ffffff } /* Operator.Word */\nbody .w { color: #888888 } /* Text.Whitespace */\nbody .mb { color: #0086f7; font-weight: bold } /* Literal.Number.Bin */\nbody .mf { color: #0086f7; font-weight: bold } /* Literal.Number.Float */\nbody .mh { color: #0086f7; font-weight: bold } /* Literal.Number.Hex */\nbody .mi { color: #0086f7; font-weight: bold } /* Literal.Number.Integer */\nbody .mo { color: #0086f7; font-weight: bold } /* Literal.Number.Oct */\nbody .sa { color: #0086d2 } /* Literal.String.Affix */\nbody .sb { color: #0086d2 } /* Literal.String.Backtick */\nbody .sc { color: #0086d2 } /* Literal.String.Char */\nbody .dl { color: #0086d2 } /* Literal.String.Delimiter */\nbody .sd { color: #0086d2 } /* Literal.String.Doc */\nbody .s2 { color: #0086d2 } /* Literal.String.Double */\nbody .se { color: #0086d2 } /* Literal.String.Escape */\nbody .sh { color: #0086d2 } /* Literal.String.Heredoc */\nbody .si { color: #0086d2 } /* Literal.String.Interpol */\nbody .sx { color: #0086d2 } /* Literal.String.Other */\nbody .sr { color: #0086d2 } /* Literal.String.Regex */\nbody .s1 { color: #0086d2 } /* Literal.String.Single */\nbody .ss { color: #0086d2 } /* Literal.String.Symbol */\nbody .bp { color: #ffffff } /* Name.Builtin.Pseudo */\nbody .fm { color: #ff0086; font-weight: bold } /* Name.Function.Magic */\nbody .vc { color: #fb660a } /* Name.Variable.Class */\nbody .vg { color: #fb660a } /* Name.Variable.Global */\nbody .vi { color: #fb660a } /* Name.Variable.Instance */\nbody .vm { color: #fb660a } /* Name.Variable.Magic */\nbody .il { color: #0086f7; font-weight: bold } /* Literal.Number.Integer.Long */\n\n  </style>\n</head>\n<body>\n<h2></h2>\n\n<div class=\"highlight\"><pre><span></span><span class=\"n\">d</span> <span class=\"n\">d</span> <span class=\"n\">fgd</span> <span class=\"n\">fdf</span> <span class=\"n\">gghkkhj</span>\n</pre></div>\n</body>\n</html>\n',1);
/*!40000 ALTER TABLE `snippets_snippet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-29 15:47:10
