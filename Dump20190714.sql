-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: myapp
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (4,'<p>This section provides a great collection of Java 8 &nbsp;(MCQs) on a single page along with their correct answers and explanation. If you select the right option, it turns green; else red. </p>','2019-07-31','java-8-mini-logo.jpg','Published','Java 8 Online Quiz'),(5,'<p>Computer is an advanced electronic device that takes raw data as an input from the user and processes it under the control of a set of instructions (called program), produces a result (output), and saves it for future use. </p>','2019-08-09','computer-mini-logo.jpg','Published','Computer Fundamentals Tutorial'),(6,'<p>A compiler translates the code written in one language to some other language without changing the meaning of the program. It is also expected that a compiler should make the target code efficient and optimized in terms of time and space. </p>',NULL,'compiler-design-mini-logo.jpg','Draft','Compiler Design Tutorial'),(7,'<p>An <strong>operating system (OS)</strong> is a collection of software that manages computer hardware resources and provides common services for computer programs. &nbsp;</p>',NULL,'os-mini-logo.jpg','Reject','Operating System Tutorial'),(8,'<p><strong>Data Structures </strong>are the programmatic way of storing data so that data can be used efficiently. Almost every enterprise application uses various types of data structures in one or the other way. </p>','2019-07-30','data-structure-mini-logo.jpg','Published','Data Structure and Algorithms Tutorial'),(9,'<p>Database Management System or DBMS in short refers to the technology of storing and retrieving users&rsquo; data with utmost efficiency along with appropriate security measures. </p>',NULL,'dbms-mini-logo.jpg','Ready to publish','Database Management System Tutorial'),(10,'<p>Data communications refers to the transmission of this digital data between two or more computers and a computer network or data network is a telecommunications network that allows computers to exchange data. </p>','2019-07-26','dcn-mini-logo.jpg','Published','Data Communication & Computer Network'),(12,'<p>HTML stands for Hyper Text Markup Language, which is the most widely used language on Web to develop web pages. HTML was created by Berners-Lee in late 1991 .</p>','2019-07-13','html-mini-logo.jpg','Archieved','HTML Tutorial'),(13,'<p>CSS is used to control the style of a web document in a simple and easy way.</p><p>CSS is the acronym for &quot;Cascading Style Sheet&quot;.&nbsp;</p>','2019-07-19','css-mini-logo.jpg','Published','CSS Tutorial'),(14,'<p>JavaScript is a lightweight, interpreted programming language. It is designed for creating network-centric applications. It is complimentary to and integrated with Java. </p>','2019-09-27','javascript-mini-logo.jpg','Published','Javascript'),(15,'<p>The PHP Hypertext Preprocessor (PHP) is a programming language that allows web developers to create dynamic content that interacts with databases. PHP is basically used for developing web based software applications. </p>','2019-07-26','php-mini-logo.jpg','Published','PHP Tutorial'),(16,'<p>Angular 4 is a JavaScript framework for building web applications and apps in JavaScript, html, and TypeScript, which is a superset of JavaScript. </p>','2019-07-26','angular-4-mini-logo.jpg','Published','Angular 4 Tutorial'),(17,'<p>MySQL is the most popular Open Source Relational SQL Database Management System. MySQL is one of the best RDBMS being used for developing various web-based software applications. </p>','2019-07-27','mysql-mini-logo.jpg','Published','MySQL Intro'),(18,'<p>C is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. </p>','2019-08-02','c-mini-logo.jpg','Published','C Tutorial'),(19,'<p>C++ is a middle-level programming language developed by Bjarne Stroustrup starting in 1979 at Bell Labs. C++ runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX. </p>',NULL,'cpp-mini-logo.jpg','Draft','C++ Intro'),(21,'<p>Python is a general-purpose interpreted, interactive, object-oriented, and high-level programming language. It was created by Guido van Rossum during 1985- 1990. Like Perl.</p>','2019-07-27','python-mini.jpg','Published','Python Intro'),(22,'<p>Scala is a modern multi-paradigm programming language designed to express common programming patterns in a concise, elegant, and type-safe way. Scala has been created by Martin Odersky and he released the first version in 2003. </p>',NULL,'scala-mini-logo.jpg','Ready to publish','Scala Intro'),(23,'<p>C# is a simple, modern, general-purpose, object-oriented programming language developed by Microsoft within its .NET initiative led by Anders Hejlsberg. </p>',NULL,'csharp-mini-logo.jpg','Archieved','C# Intro'),(24,'<p>JDBC API is a Java API that can access any kind of tabular data, especially data stored in a Relational Database. JDBC works with Java on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX. </p>','2019-07-23','jdbc-mini-logo.jpg','Published','JDBC Intro'),(25,'<p>Servlets provide a component-based, platform-independent method for building Webbased applications, without the performance limitations of CGI programs. </p>','2019-07-19','servlets-mini-logo.jpg','Published','Servlets Intro'),(26,'<p>Spring framework is an open source Java platform that provides comprehensive infrastructure support for developing robust Java applications very easily and very rapidly. &nbsp;</p>','2019-07-31','spring-mini-logo.jpg','Published','Spring Intro');
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (27),(27);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','active','admin','admin'),(2,'editor','active','editor','editor');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'myapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-14 22:35:13
