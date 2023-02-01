-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: TEST
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB-1:10.4.27+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `LifebookStore`
--

DROP TABLE IF EXISTS `LifebookStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifebookStore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(50) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Theme` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `Created_by` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifebookStore`
--

LOCK TABLES `LifebookStore` WRITE;
/*!40000 ALTER TABLE `LifebookStore` DISABLE KEYS */;
INSERT INTO `LifebookStore` VALUES (1,'b3c9061b80',2,1,'<p>hello</p><figure class=\"table\"><table><tbody><tr><td>hwlop</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>',1,'2023-02-01 08:21:53'),(2,'3ddb3d57bf',2,1,'<pre><code class=\"language-plaintext\">hekopensldslds\nok&lt;script&gt;&lt;/script&gt; hello world</code></pre>',1,'2023-02-01 08:26:54'),(3,'747ef7f68d',1,1,'<p>IDK WHAT TOWRITE</p><p>&nbsp;</p>',1,'2023-02-01 08:51:01'),(4,'e6fbddca11',1,2,'<pre class=\"chroma\" style=\"-webkit-text-stroke-width:0px;background-color:transparent;border-width:0px;box-sizing:border-box;color:rgb(33, 37, 41);direction:ltr;display:block;font-family:var(--bs-font-monospace);font-size:0.875em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:0.65rem;margin-top:0.65rem;orphans:2;overflow:auto;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;unicode-bidi:bidi-override;white-space:pre;widows:2;word-spacing:0px;\" tabindex=\"0\"><code class=\"language-html\" style=\"box-sizing:border-box;color:rgb(33, 37, 41);direction:ltr;font-family:var(--bs-font-monospace);font-size:inherit;overflow-wrap:normal;unicode-bidi:bidi-override;word-break:normal;\" data-lang=\"html\">&lt;nav aria-label=\"breadcrumb\"&gt;\n  &lt;ol class=\"breadcrumb\"&gt;\n    &lt;li class=\"breadcrumb-item active\" aria-current=\"page\"&gt;Home&lt;/li&gt;\n  &lt;/ol&gt;\n&lt;/nav&gt;\n\n&lt;nav aria-label=\"breadcrumb\"&gt;\n  &lt;ol class=\"breadcrumb\"&gt;\n    &lt;li class=\"breadcrumb-item\"&gt;&lt;a href=\"#\"&gt;Home&lt;/a&gt;&lt;/li&gt;\n    &lt;li class=\"breadcrumb-item active\" aria-current=\"page\"&gt;Library&lt;/li&gt;\n  &lt;/ol&gt;\n&lt;/nav&gt;\n\n&lt;nav aria-label=\"breadcrumb\"&gt;\n  &lt;ol class=\"breadcrumb\"&gt;\n    &lt;li class=\"breadcrumb-item\"&gt;&lt;a href=\"#\"&gt;Home&lt;/a&gt;&lt;/li&gt;\n    &lt;li class=\"breadcrumb-item\"&gt;&lt;a href=\"#\"&gt;Library&lt;/a&gt;&lt;/li&gt;\n    &lt;li class=\"breadcrumb-item active\" aria-current=\"page\"&gt;Data&lt;/li&gt;\n  &lt;/ol&gt;\n&lt;/nav&gt;</code></pre>',1,'2023-02-01 09:37:56'),(5,'56d9828c2f',1,1,'<p>New Thing</p>',1,'2023-02-01 09:50:54'),(6,'fcdfb6e772',1,2,'<p>Theme 2 Fullediting</p>',1,'2023-02-01 09:54:36');
/*!40000 ALTER TABLE `LifebookStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifebookThemes`
--

DROP TABLE IF EXISTS `LifebookThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifebookThemes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifebookThemes`
--

LOCK TABLES `LifebookThemes` WRITE;
/*!40000 ALTER TABLE `LifebookThemes` DISABLE KEYS */;
INSERT INTO `LifebookThemes` VALUES (1,'Theme 1','2023-02-01 04:56:10'),(2,'Theme 2','2023-02-01 04:56:10');
/*!40000 ALTER TABLE `LifebookThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifebookType`
--

DROP TABLE IF EXISTS `LifebookType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifebookType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifebookType`
--

LOCK TABLES `LifebookType` WRITE;
/*!40000 ALTER TABLE `LifebookType` DISABLE KEYS */;
INSERT INTO `LifebookType` VALUES (1,'Baby Lifebook','2023-02-01 03:50:54'),(2,'School Lifebook','2023-02-01 03:50:54'),(3,'Campus Lifebook','2023-02-01 03:50:54');
/*!40000 ALTER TABLE `LifebookType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(12) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(12) NOT NULL,
  `is_logged` int(1) NOT NULL DEFAULT 0,
  `updated_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `token` text DEFAULT NULL,
  `conn_id` text DEFAULT NULL,
  `in_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Harry','Potter','admin@123.com','admin123',1,1,'2023-02-01 15:01:28','2022-05-17 09:25:00','4facbbfa855cb74ca2193a61e8b87331','',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 10:25:26
