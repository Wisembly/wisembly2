-- MySQL dump 10.13  Distrib 5.5.29, for osx10.6 (i386)
--
-- Host: localhost    Database: wisembly_en
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `client_logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` text,
  `type` varchar(255) NOT NULL,
  `illustration_image` varchar(255) DEFAULT NULL,
  `context` text NOT NULL,
  `usage` text NOT NULL,
  `results` text NOT NULL,
  `blockquote` text NOT NULL,
  `interviewed` varchar(255) NOT NULL,
  `illustration_type` varchar(20) NOT NULL,
  `blockquote_logo` varchar(255) DEFAULT NULL,
  `related_cases` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'la-poste','La Poste','/static/images/la-poste.png','Seminars at La Poste','<p>Each year, La Poste organizes a seminar to share their best practices. 120 managers of the finance department are invited to work on a theme defined in advance. </p>\r\n\r\n<p>Wisembly is open upstream to collect the managers expectations.</p>','seminaries','/static/images/la-poste.png','<ul> <li>An annual seminar day for the exchange of information on practice</li> <li>120 managers from the finance branch of La Poste</li> <li>Theme of the day: Successful decentralization</li> </ul>','<ul> <li>Opening of the platform upstream to collect questions from managers</li> <li>Live feedback via questions and comments sent from their phones (SMS and internet) </li> <li>Live keyword cloud</li> <li>Working in sub-groups of 15. Reporting and vote on the feasibility of their suggestions in survey form</li> </ul>','<table class=\'kpi-table\'>\r\n	<tr class=\'first\'>\r\n		<td class=\'first\'>\r\n			<span>95</span>\r\n			questions collected upstream\r\n		</td>\r\n		<td class=\'last\'>\r\n			<span>120</span>\r\n			questions asked on the day\r\n		</td>\r\n	</tr>\r\n	<tr class=\'last\'>\r\n		<td class=\'first\'>\r\n			<span>7</span>\r\n			online surveys to identify success factors\r\n		</td>\r\n		<td class=\'last\'>\r\n			<span>100%</span>\r\n			participation\r\n		</td>\r\n	</tr>\r\n</table>','Beyond the obvious element of fun created by Wisembly, it brings a spectacular increase in opportunities for interaction in the way we conduct meetings.','Olivier Lagrée, Consultant DELOITTE','logo','/static/images/lagree.png','4,3,2'),(2,'sncf','SNCF','/static/images/sncf.png','SNCF President’s fireside chat','<p>SNCF use Wisembly to animate the <strong>President Talk</strong>. It is a <strong>monthly call management of the COMEX</strong> that presents the results and strategic guidance to the 600 top managers.</p>\r\n\r\n<p>The use of Wisembly to display documents, collect live feedbacks from managers and gather their opinions has multiplied by 50 their commitment.</p>','confcalls','/static/images/sncf.png','<ul> <li>Monthly 90 minute Management Call </li> <li>600 top regional managers connected</li> <li>Presentation of results and strategic guidelines by Comex</li> </ul>','<ul> <li>Live presentation and slide sharing on the platform</li> <li>Live response and questions from managers via their computers</li> <li>Managers vote for the questions that interest them</li> <li>President’s response to questions in order of popularity</li><li>Satisfaction questionnaire completed by managers at the end</li> </ul>','<ul> <li>Structured and effective conference calls</li> <li>60% participation</li> <li>150 questions and comments</li> <li>900 likes of the questions on average</li> <li>75% response rate to satisfaction questionnaire</li></ul>','Wisembly has brought about a genuine U-turn in the company’s managerial relations.  We use the solution in all our meetings.','Patrick Ropert, Director of Communications, SNCF','logo','/static/images/ropert.png','2,4,1'),(3,'auchan','Auchan','/static/images/auchan.png','Conference Calls at Auchan','<p>Every 15 days, a <strong>2 hours conf-call</strong> is organized to provide an update on the progress of the ongoing projects. <strong>15 participants in different sites</strong> taking part.</p> \r\n\r\n<p>All participants follow in real time the different presentations. They can respond at any time <strong>without interrupting the speaker</strong> and give their views on decisions in one click.</p>\r\n\r\n<p>Wisembly involve absolutely everyone <strong>without exceed the time.</strong></p>','confcalls','/static/images/auchan.png','<ul> <li>Bi-monthly, 2 hr project progress meetings</li> <li>15 participants</li> <li>Participants spread over different sites and countries</li> </ul>','<ul> <li>Slide sharing in real time</li> <li>Participants on the platform were asked questions throughout the call</li> <li>Live responses of participants</li> <li>Definition of the agenda for the next call at the end of the call</li> <li>Media sharing at the end of the conference</li> </ul>','<ul> <li>100% participation</li> <li>50 questions and ideas on average</li> <li>3 documents shared</li> </ul>','Live control of questions and feedback leads to faster, shared, co-constructed decisions where a phone call alone often finds the leader talking to himself.','Emmanuel Le Bouille, Director of Innovation, AUCHAN','logo','/static/images/lebouille.png','1,2,3'),(4,'hec','HEC','/static/images/hec.png','Training at the HEC','<p>At HEC, Mr. Dias animated <strong>6 sessions of 3 hours</strong>, with 35 students about the Digital Marketing. The course was structured around guest speakers, case presentations and more theoretical parts.</p>\r\n\r\n<p><strong>All course materials were available on Wisembly</strong>, students could interact before, during and between classes.</p>\r\n\r\n<p>All <strong>knowledge tests</strong> and answers to the questions were centralized on Wisembly.</p>','trainings',NULL,'<ul> <li>6 x 3 hr course sessions</li> <li>35 students</li> <li>External speakers, case presentations </li> </ul>','<ul> <li>Uploading of course materials to the platform for students to download between each session</li> <li>Intervention by students during others’ presentations and input of their contributions</li> <li>Assessment of students’ level of knowledge and progress on Wisembly</li> <li>Answers to certain questions on the platform</li> </ul>','<ul> <li>944 questions and comments, 4,007 likes of those questions</li> <li>60 answers to questions directly on the platform</li> <li>20 quizzes during the sessions</li> <li>2 course evaluations  + 2 tests of knowledge</li> <li>50 documents shared</li> </ul>','Wisembly boosts the ROI of training and teaching. It has become an ‘interactive textbook’ supporting all participants as a community with their educators.','Georges-Edouard Dias, Professor at the HEC','wallpaper','/static/images/dias.png','1,2,3');
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_featured` tinyint(1) NOT NULL DEFAULT '0',
  `cases_featured` tinyint(1) NOT NULL DEFAULT '0',
  `client_category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `logo` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cases_featured` (`cases_featured`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,0,0,1,'Air Liquide','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/airliquide.png','http://www.airliquide.com/'),(5,0,0,1,'Altima','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/altima.png','http://www.altima.fr'),(6,0,0,1,'Atelier','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/atelier.png','http://www.atelier.net'),(7,0,0,1,'Atlantic','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/atlantic.png','http://www.atlantic2.org/'),(8,1,1,1,'Auchan','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/auchan.png','http://www.auchan.fr'),(9,0,0,1,'BeMyApp','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bemyapp.png','http://fr.bemyapp.com/'),(10,0,0,1,'Bioderma','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bioderma.gif','http://www.bioderma.com'),(11,0,1,1,'BNP Paribas','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bnp.jpg','http://www.bnpparibas.net/'),(12,0,0,1,'The Body Shop','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/body.png','http://www.thebodyshop.fr/'),(13,0,0,1,'Bouygues Telecom','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bouygues.jpg','http://www.bouyguestelecom.fr/'),(14,0,1,1,'Crédit Agricole','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/ca.png','http://www.credit-agricole.fr/'),(15,0,0,1,'Caisse d\'Allocations Familiales','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/caf.png','http://www.caf.fr/'),(16,0,0,1,'Accenture','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/accenture.png','http://www.accenture.com/'),(17,0,0,2,'Adetem','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/adetem.png','http://www.adetem.org'),(18,0,0,1,'Alior Bank','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/aliorbank.png','http://www.aliorbank.pl/'),(19,0,0,3,'Artea Communication','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/arteacommunication.png','http://www.artea-france.com/'),(20,0,0,2,'ASMEP','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/asmep.png','http://www.asmep-eti.fr/'),(21,0,0,2,'Avebe','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/avebe.png','http://www.avebe.com/'),(22,0,0,1,'Banque Populaire','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/banquepopulaire.png','http://www.banquepopulaire.fr/'),(23,0,0,1,'Bearing Point','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bearingpoint.png','http://www.bearingpoint.com/fr-fr/'),(24,0,0,1,'BPI','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bpi.png','http://www.groupe-bpi.com/'),(25,0,1,1,'Carrefour','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/carrefour.png','http://www.carrefour.com/'),(26,0,0,3,'Agence Carrément','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/carrement.png','http://www.agencecarrement.com/'),(27,0,0,3,'Chaïkana Event','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/chaikana.png','http://www.chaikanaevent.com/'),(28,0,0,2,'CNCC','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/cncc.png','http://www.cncc.fr/'),(29,0,0,3,'Comexposium','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/comexposium.png','http://www.comexposium.com/'),(30,0,0,3,'Covision','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/covision.png','http://www.covision.com/'),(31,0,0,2,'ECR Europe','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/ecreurope.png','http://www.ecr-europe.org/'),(32,0,0,1,'Egon Zender International','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/egonz.png','http://www.egonzehnder.com/'),(33,0,0,1,'Elle Magazine','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/elle.png','http://www.elle.fr/'),(34,0,0,1,'Eurocopter','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/eurocopter.png','http://www.eurocopter.com/'),(35,0,0,2,'EWEA','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/ewea.png','http://www.ewea.org/'),(36,0,0,1,'Fortuneo','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/fortuneo.png','http://www.fortuneo.fr/'),(37,0,0,1,'France Télévision','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/francetv.png','http://www.francetelevisions.fr/'),(38,0,0,1,'Gan Assurances','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/gan.png','http://www.gan.fr/'),(39,0,0,1,'Generali','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/generali.png','http://www.generali.fr/'),(40,0,1,1,'GRT Gaz','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/grtgaz.png','http://www.grtgaz.com/'),(41,0,0,3,'HappyChic','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/happychic.png','http://www.happychicgroup.com/'),(42,0,0,1,'Adisseo','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/adisseo.png','http://www.adisseo.com/'),(43,0,0,1,'Canal+','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/canal.png','http://www.canalplusfrance.fr/'),(44,1,1,1,'CapGemini','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/capgemini.png','http://www.fr.capgemini.com'),(45,0,0,1,'Casino','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/casino.png','http://www.groupe-casino.fr/'),(46,1,1,1,'Danone','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/danone.png','http://www.danone.com/'),(47,0,0,1,'DCNS','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/dcns.png','http://fr.dcnsgroup.com/'),(48,0,0,2,'EBG','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/ebg.jpg','http://www.ebg.net/'),(49,0,0,2,'Les Echos Conférence','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/lesechos.png','http://www.lesechos-conferences.fr/'),(50,0,0,3,'Editialis','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/editialis.png','http://www.editialis.fr/'),(51,0,0,4,'ESCP Université','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/escp.png','http://www.escpeurope.eu/fr/'),(52,0,0,2,'FEPEM','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/fepem.png','http://www.fepem.fr/accueil'),(53,0,0,2,'FERMA','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/ferma.png','http://www.ferma.eu/'),(54,0,0,2,'Federated Media','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/fm.png','http://www.federatedmedia.net/'),(55,0,1,1,'GDF Suez','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/gdf.png','http://www.gdfsuez.com/'),(56,1,0,1,'Google','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/google.png','https://www.google.fr/intl/fr/about/'),(57,0,0,1,'Groupama','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/groupama.png','http://www.groupama.fr/'),(58,0,0,1,'Groupon','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/groupon.png','http://www.groupon.fr/'),(59,0,0,2,'Hack FWD','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/hackfwd.png','http://hackfwd.com/'),(60,0,1,3,'Havas','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/havas.jpg','http://www.havasevent.com/'),(61,0,0,4,'HEC','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/hec.gif','http://www.hec.fr/'),(62,0,0,2,'Hub Forum','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/hubforum.png','http://www.hubforum.com/'),(63,0,0,3,'IDAOS','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/idaos.png','http://www.idaos.com/'),(64,0,0,1,'IFAS','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/ifas.png','http://www.ifas.net/'),(65,0,0,2,'Internet Week New-York','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/iwny.png','https://www.internetweekny.com/'),(66,0,0,1,'Kurt Salmon','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/kurt.png','http://www.kurtsalmon.com/'),(67,0,0,1,'Lenovo France','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/lenovo.png','http://www.lenovo.com/'),(68,0,1,1,'L\'Oréal','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/loreal.png','http://www.loreal.fr/'),(69,0,0,1,'L\'Oréal USA','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/lorealus.png','http://www.lorealusa.com/'),(70,0,0,2,'Medef','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/medef.png','http://www.medef.com/'),(71,0,1,1,'Microsoft','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/microsoft.png','http://www.microsoft.com/'),(72,0,0,3,'Midem','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/midem.gif','http://www.midem.com/'),(73,0,0,3,'MipTV','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/miptv.png','http://www.mipworld.com/miptv/'),(74,0,0,2,'MobileMonday','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/mmonday.jpeg','http://www.mobilemondayfrance.org/'),(75,0,0,1,'NBS','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/nbs.png','http://www.nbs-system.com/'),(76,0,0,1,'NEC','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/nec.png','http://www.nec.fr/'),(77,0,0,2,'NetExplorateur','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/netexplorateur.png','http://www.netexplo.org/'),(78,0,0,1,'NYSE Euronext','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/nyse.png','https://europeanequities.nyx.com/fr/welcome'),(79,0,0,1,'Oberthur','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/oberthur.png','http://www.oberthur.com/'),(80,1,0,1,'Orange','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/orange.png','http://orange-en-france.orange.fr/'),(81,0,0,1,'Paypal','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/paypal.png','https://www.paypal.com/fr/cgi-bin/webscr?cmd=_home'),(82,0,0,1,'Pole Emploi','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/pe.png','http://www.pole-emploi.fr/'),(83,0,0,3,'Prodeo','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/prodeo.png','http://www.prodeo.com/'),(84,0,0,1,'Prosodie','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/prosodie.png','http://www.prosodie.fr/'),(85,0,1,1,'PSA','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/psa.png','http://www.psa-peugeot-citroen.com/'),(86,0,0,3,'Publicis Groupe','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/publicis.png','http://www.publicisgroupe.com/'),(87,0,0,3,'Le Public System','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/publicsystem.png','http://www.lepublicsysteme.com/'),(88,0,0,1,'Redcats','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/redcats.png','http://www.redcats.com/'),(89,0,0,1,'RFF','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/rff.png','http://www.rff.fr/fr'),(90,0,0,1,'Rhodia','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/rhodia.png','http://www.rhodia.com/fr/'),(91,1,1,1,'Sanofi','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/sanofi.png','http://www.sanofi.fr/'),(92,0,0,4,'Science Po','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/sciencespo.gif','http://www.sciencespo.fr/'),(93,0,0,1,'Seloger.com','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/seloger.png','http://www.seloger.com/'),(94,0,0,2,'Silicon Sentier','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/siliconsentier.png','http://siliconsentier.org/'),(95,0,0,2,'Start In Paris','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/sip.png','http://www.startinparis.com/'),(96,0,0,2,'SMX','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/smx.png','http://smxmuenchen.de/'),(97,1,1,1,'SNCF','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/sncf.png','http://www.sncf.com/fr/'),(98,0,1,1,'Sodexo','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/sodexo.jpg','http://fr.sodexo.com/'),(99,1,1,1,'Solvay','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/solvay.png','http://www.solvay.fr/'),(100,0,0,1,'Soregor','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/soregor.png','http://www.soregor.fr/'),(101,0,0,3,'Strategic Event','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/strategicevent.png','http://www.sevent.fr/'),(102,0,0,2,'Startup Weekend','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/sw.png','http://startupweekend.org/'),(103,0,0,1,'Synergence','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/synergence.png','http://www.synergence.com/'),(104,0,0,2,'Techcrunch FR Remix','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/tcfremix.png','http://fr.techcrunch.com/'),(105,0,1,1,'TF1','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/tf1.png','http://www.tf1.fr/'),(106,0,0,1,'Areva','http://wisembly-content.s3.amazonaws.com/clients-logos/areva.png','http://www.areva.com/'),(107,0,0,1,'Vichy','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/vichy.gif','http://www.vichy.fr/'),(108,0,0,3,'Villadalésia&Co','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/villa.png','http://www.villadalesiaandco.com/'),(109,0,0,1,'Vinci Autoroutes','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/vincia.png','http://www.vinci-autoroutes.com/'),(110,0,0,1,'Weave','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/weave.png','http://weave.eu/'),(111,0,0,2,'Women\'s Forum','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/wf.jpg','http://www.womens-forum.com/'),(112,0,0,1,'Yahoo','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/yahoo.png','http://fr.yahoo.com/'),(113,0,0,1,'Galleries Lafayette','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/lafayette.png','http://www.galerieslafayette.com/'),(114,0,0,1,'Saint-Gobain','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/saintgobain.png','http://www.saint-gobain.com/'),(115,0,0,3,'La Fonderie','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/fonderie.png','http://www.lafonderie-idf.fr/'),(116,0,0,1,'Mobivia Groupe','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/mobivia.png','http://www.mobiviagroupe.com/'),(117,0,0,1,'Olivier Wyman','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/olivierwyman.png','http://www.oliverwyman.com/'),(118,0,0,3,'Manganelli','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/manganelli.png','http://www.manganelli.com/'),(119,0,0,2,'Mash-up','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/mashup.png','http://www.mash-up.fr/'),(120,1,1,1,'BMW','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/bmw.png','http://www.bmw.com/'),(121,1,0,1,'AXA','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/axa.jpg','http://axa.com'),(122,1,0,1,'Airbus','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/airbus.jpg','http://www.airbus.com'),(123,1,0,1,'La Poste','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/la-poste.png','http://www.laposte.fr'),(124,1,0,1,'Deloitte','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/deloitte.jpg','http://www.deloitte.com'),(125,1,0,1,'L\'Oreal','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/loreal.png','http://www.loreal.com'),(126,1,0,1,'Crédit Agricole','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/credit-agricole.jpg','http://www.credit-agricole.fr'),(127,1,1,1,'Societé Générale','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/clients-logos/societe-generale.png','http://www.societegenerale.fr/'),(128,0,0,2,'World Student Forum','http://wisembly-content.s3.amazonaws.com/clients-logos/worldstudentforum.png','http://www.worldstudentforum.com/');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_category`
--

DROP TABLE IF EXISTS `client_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `icon` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_category`
--

LOCK TABLES `client_category` WRITE;
/*!40000 ALTER TABLE `client_category` DISABLE KEYS */;
INSERT INTO `client_category` VALUES (1,'Entreprises','icon-briefcase'),(2,'Associations','icon-group'),(3,'Agences','icon-facetime-video'),(4,'Grandes Ecoles & Universités','icon-beaker');
/*!40000 ALTER TABLE `client_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_event`
--

DROP TABLE IF EXISTS `features_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_event` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_event`
--

LOCK TABLES `features_event` WRITE;
/*!40000 ALTER TABLE `features_event` DISABLE KEYS */;
INSERT INTO `features_event` VALUES ('event_seminaries_desc','Wisembly gives everyone at your seminar the chance to speak.  Collect all the questions and provide a better response!'),('event_seminaries_title','Get your audience to join in'),('event_stream_item_1_author','Sébastien F. via email'),('event_stream_item_1_text','Should we change the top management to become digital ?'),('event_stream_item_2_author','Cédric E. via mobile'),('event_stream_item_2_text','Being Digital Ready for our businesses is it not a matter of survival?'),('event_stream_item_3_author','Cécile D. via Web'),('event_stream_item_3_text','What place for innovation in companies run by 1.0 profiles?'),('event_stream_item_4_author','Mohamed M. via Twitter'),('event_stream_item_4_text','Finally a true reflection on a business that could change .....Change management is hard .... bravo!'),('event_stream_item_5_author','Christina D. via SMS'),('event_stream_item_5_text','Thank you for answering all our questions, that\'s great!'),('feedback_survey_desc','<p>Wisembly has an integrated feedback survey so you can collect feedback at any time, directly via our platform.  Unlike paper questionnaires or emails sent after the event, Wisembly surveys guarantee a maximum response rate.p> <p>Collect feedback at each event and monitor progress on Wisembly to better adapt content to audience expectations. </p>'),('feedback_survey_link','Feedback survey'),('feedback_survey_title','Make your events better and better'),('fullscreen_desc','Display messages from the audience in the room to boost interaction whilst highlighting audience reactions.  You can toggle between slides and questions, choose the display method, and customize the colors and logo of your screen.'),('fullscreen_link','Full screen'),('fullscreen_title','Display a 100% interactive screen'),('interaction_analysis_desc1','Wisembly collates and analyzes all your data after each event: questions, comments, votes, number of participants, word cloud, etc.'),('interaction_analysis_desc2','You can visualize the highlights of your event from the GUI and export them in different formats.'),('interaction_analysis_link','Interaction analysis'),('interaction_analysis_title','Visualize the content of your event'),('moderation_desc','You can moderate messages from the audience before publication, if you wish, then only messages that you approve will be published.  You can also moderate messages after publication, if you change your mind.'),('moderation_link','Moderation'),('moderation_title','Moderate messages from the audience'),('multi_devices_desc1','Why change the habits of your audience by making them use cumbersome vote boxes or keypads?'),('multi_devices_desc2','<p>Web, cellphone, tablet, Twitter, email, SMS, etc.</p> <p>Wisembly works with all modern devices.</p>'),('multi_devices_desc3','Participants can use the device that they feel most comfortable with – the one they already have in their purses and pockets.'),('multi_devices_link','Multi-device'),('multi_devices_title','Wisembly works everywhere…and we mean everywhere.'),('qna_desc1','<p>Your audience can share questions and reactions, whether anonymously or otherwise, via their cell phones without interrupting you.</p> <p>We took part in all kinds of events before we designed Wisembly.</p>'),('qna_desc2','<p>Just like us you must be tired of those who are too shy to ask questions and those who love the sound of their own voices and won’t shut up!</p>\r\n<p>With Wisembly everyone gets to have their say and you select the best questions.</p>'),('qna_link','Collect questions'),('qna_title','Give your audience the chance to speak'),('question_answers_desc','Of course, you won’t have time to answer all of the audience’s questions during the seminar.  Why not answer questions directly on Wisembly?  As they come in or straight after the event, you can continue your dialog with your audience and provide satisfactory answers.'),('question_answers_link','Answers to questions'),('question_answers_title','Continue the dialog with your audience'),('votes_desc','Do you usually hand out vote boxes to your participants?  Do you have to take care of the rental, the deposit, and their distribution? Go digital and let your participants use the devices they’ve already got in their pockets and purses.  It’s simpler, it’s cheaper, and it’s definitely more modern!'),('votes_link','Votes'),('votes_title','Forget about vote boxes!');
/*!40000 ALTER TABLE `features_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_meeting`
--

DROP TABLE IF EXISTS `features_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_meeting` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_meeting`
--

LOCK TABLES `features_meeting` WRITE;
/*!40000 ALTER TABLE `features_meeting` DISABLE KEYS */;
INSERT INTO `features_meeting` VALUES ('decision_taking_desc1','<p>Meetings are the perfect place to make shared decisions.</p> <p>No need to keep going round and round the table without reaching a clear decision. You can organize a vote on Wisembly with a single click.</p>'),('decision_taking_desc2','<p>The result is immediate.</p> <p>You can keep track of every decision taken in all your meetings.</p>'),('decision_taking_link','Decision making'),('decision_taking_title','Make real decisions during your meetings'),('documents_desc1','No need to juggle all your different PowerPoint presentations and documents to email to participants.'),('documents_desc2','It’s all there on your Wisembly interface and you decide in one click what to screen and what to make available to everyone. Your content is 100% secure. Only approved users can access it.'),('documents_link','Document sharing'),('documents_title','All the materials for your meeting all together in one place'),('feedback_survey_desc1','Why not get the most out of your participants by gathering feedback at the end of your meeting?'),('feedback_survey_desc2','With Wisembly you can get their opinions on how the meeting went, the subjects covered, and the decisions taken – fast.'),('feedback_survey_desc3','You can identify unresolved issues with a few clicks and improve future meetings.'),('feedback_survey_link','Feedback survey'),('feedback_survey_title','Make your meetings better and better'),('meeting_confcalls_desc','Wisembly now helps hundreds of companies to prepare, facilitate, and monitor their meetings and conference calls.'),('meeting_confcalls_title','Give your meetings a boost'),('meeting_poll_choice_1','What every manager must know about Wisembly'),('meeting_poll_choice_2','To the Manager who Hates Meetings'),('meeting_poll_choice_3','Confidential for innovative Managers'),('meeting_poll_title','Which subject line for the next newsletter?'),('meeting_stream_item_1_author','Tristan D. via Twitter'),('meeting_stream_item_1_text','How to avoid the meeting mania?'),('meeting_stream_item_2_author','Mathieu G. via Mobile'),('meeting_stream_item_2_text','Is it true that managers spend a third of their time in meetings? '),('meeting_stream_item_3_author','Baptiste C. via Web'),('meeting_stream_item_3_text','What is your advice to improve the quality of our meetings?'),('meeting_stream_item_4_author','Rémy G. via email'),('meeting_stream_item_4_text','The meeting mania reveals a communication problem'),('meeting_stream_item_5_author','Gabriel M. via SMS'),('meeting_stream_item_5_text','How to involve everyone without running out of time?'),('multi_devices_desc_1','<p>Why waste time on endless explanations at the start of your meetings?</p>'),('multi_devices_desc_2','<p>Your participants connect with the device of their choice (phone, Smartphone, tablet, or PC). No need to create an account, no software to download.</p>'),('multi_devices_desc_3','<p>Access is immediate and intuitive.</p>'),('multi_devices_link','Multi-device'),('multi_devices_title','Your participants are already equipped'),('questions_and_ideas_desc1','<p>Every participant can react or ask a question on the subject in hand at any point without interrupting the presentation.</p> <p>You don’t miss any bright ideas.</p>'),('questions_and_ideas_desc2','<p>Participants feel involved and that their ideas are heard during your meetings.</p> <p>Everyone can follow the meeting and remain involved.</p>'),('questions_and_ideas_link','Collect ideas'),('questions_and_ideas_title','Your participants are involved and stay focused'),('schedule_link','Schedule'),('schedule_meetings_desc','<p>Prepare the agenda for your meeting according to the subjects to be handled.</p> <p>Share it with everyone who will participate in the meeting.</p> <p>Keep track of ideas, suggestions, and decisions taken on each subject with ease.</p>'),('schedule_meetings_title','Organize your meetings point by point'),('statistics_desc_1','<p>Wisembly remembers everything that happens during your meeting.</p>'),('statistics_desc_2','<p>Find the subjects discussed, documents shared, questions raised, and decisions made - fast.</p>'),('statistics_desc_3','<p>Wisembly becomes the record of your meetings.</p>'),('statistics_link','Statistics and reports'),('statistics_title','Keep track of all your meetings');
/*!40000 ALTER TABLE `features_meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_training`
--

DROP TABLE IF EXISTS `features_training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_training` (
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_training`
--

LOCK TABLES `features_training` WRITE;
/*!40000 ALTER TABLE `features_training` DISABLE KEYS */;
INSERT INTO `features_training` VALUES ('classes_trainings_desc1','Wisembly breathes life into your training sessions.'),('classes_trainings_desc2','Your students take ownership of the content. You follow their progress.'),('classes_trainings_title','Classes and training'),('documents_management_desc','No need to sort through all your PowerPoint presentations and documents to be distributed to students.  It’s all together on a single interface.  Screen them or share them with your students with a single click.'),('documents_management_link','Document management'),('documents_management_title','All your training materials together in one place'),('multi_device_desc1','Why change the habits of your students by making them use cumbersome vote boxes or keypads?'),('multi_device_desc2','<p>Web, cellphone, tablet, Twitter, email, SMS, etc.</p> <p>Wisembly works on all modern devices.</p>'),('multi_device_desc3','Your students can use the device they feel most comfortable with – the one they already have in their purses and pockets.'),('multi_device_title','Your students are already equipped'),('multi_devices_link','Multi-platform'),('qna_desc','<p>There’s no such thing as a stupid question or comment. Every question should be dealt with.</p> <p>With Wisembly your students can ask questions at any time without interrupting the class.</p> <p>They can also react to other students’ presentations and maybe share additional information.</p> <p>You can deal with questions live, at the end of class, or afterwards, directly on your Wiz.</p>'),('qna_link','Q&A'),('qna_title','Answer all your students’ questions'),('quiz_link','Quizzes'),('quizzes_desc','Break up your class with quick quizzes. You can check that the topics presented have been understood and that everyone is keeping up.  Prepared in advance, these quizzes are a great way to focus attention and bring your training to life.'),('quizzes_title','Check that everyone has understood'),('stats_reporting_desc1','After each session, you can access a detailed analysis of your class: number and type of interactions, content, grading of students, average grades, etc.'),('stats_reporting_desc2','<p>Finding your questions, slides, and notes from a class from a few months ago is child’s play and only takes seconds.  You can even ‘replay’ the class.</p> <p>Wisembly becomes the record of all your classes and training.</p>'),('stats_reporting_link','Statistics and reports'),('stats_reporting_title','The record of all your training'),('students_evaluation_desc1','<p>You shouldn’t be wasting precious time correcting multiple choice questionnaires. With Wisembly it’s all automatic.</p> <p>You only have to design your questions: open questions, multiple or single choice questions, etc.</p> <p>Your students answer directly via their phones, tablets or PCs.</p>'),('students_evaluation_desc2','<p>Correction is done automatically.</p> <p>Your students access their results immediately as well as the list of correct answers.</p> <p>You can access everyone’s answers and grades as well as overall class results.</p>'),('students_evaluation_link','Student Evaluation'),('students_evaluation_title','Your evaluations are automatically corrected'),('training_evaluation_desc','<p>You can ask your students to give feedback on your class. </p> <p>Results are collated directly on the platform and you don’t have to transfer them from paper forms. All results can be exported in Excel.</p> <p>You get a complete overview of your class and you can adapt content to match the profiles and expectations of participants.</p>'),('training_evaluation_title','Improve your training with your students'),('training_poll_choice_1','A collaborative solution for business meetings'),('training_poll_choice_2','A voting boxes system'),('training_poll_choice_3','A professional social network'),('training_poll_title','What is Wisembly for you?\r\n'),('training_stream_item_1_author','Yoann L. via mobile'),('training_stream_item_1_text','How can we measure the influence of social media on a purchase?'),('training_stream_item_2_author','Ludovic B. via SMS'),('training_stream_item_2_text','Grégory, how much cost a viral campaign and how to break down the investment?'),('training_stream_item_3_author','Charlotte B. via email'),('training_stream_item_3_text','Do brands neglect forum because they are unable to master the content (risk of bad buzz ...)?'),('training_stream_item_4_author','Amaury D. via mobile'),('training_stream_item_4_text','How much does it cost to develop an application for a brand?'),('training_stream_item_5_author','Jules B. via Web'),('training_stream_item_5_text','Some brands such as Apple seem to have a real affinity with their customers,thank\'s to social media?'),('trainings_evaluation_link','Evaluation of training');
/*!40000 ALTER TABLE `features_training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'June 2010','Balloon is founded by Andreï, Pierre and Romain','Balloon\'s first idea is a local social network: to allow people in the same location to exchange messages from their mobile phones.<br/><br/>\r\n\r\nAfter several test phases during student campaigns, enterprise forums or evenings, Balloon is used during a conference to allow participants and contributors to have exchanges in a completely new way.<br/><br/>\r\n\r\nBalloon, as it exists today, is born.',NULL,'http://wisembly.com/static/img-story/story1.jpg'),(2,'August 2010','Guillaume joins Balloon and becomes CTO','Following the departure of Pierre, Guillaume arrives to complete the team and begins work to develop the new version of Balloon.',NULL,'http://wisembly.com/static/img-story/story2.jpg'),(3,'September 2010','Integration with the HEC incubator','Following a successful start and the success of the new version, Balloon integrates with the HEC incubator for a year of support.','http://www.hec.fr/incubateur-hec/','http://wisembly.com/static/img-story/story3.jpeg'),(4,'March 2011','Launch of the online version of Balloon','Balloon is directly available online and becomes useable in a stand-alone manner by our customers. It is the start of hundreds of events produced around the world without our direct involvement.',NULL,'http://wisembly.com/static/img-story/Story4.png'),(5,'September 2011','The 100,000<sup>th</sup> question is asked on Balloon','100,000 questions have been asked on Balloon in a little over one year. An important step for the whole team, that demonstrates the change that Balloon has brought to its customers\' events.',NULL,'http://wisembly.com/static/img-story/story5.jpeg'),(6,'February 2012','Balloon grows','Balloon moves to 10, rue Thérèse, very close to Opéra, to accommodate the 10 team members.',NULL,'http://wisembly.com/static/img-story/story6.jpeg'),(7,'May 2012','Now is the time for change','Launch of the new version of Balloon, brought about by the latest technological innovations: Symfony2 for the PHP framework, Backbone.js for the applicative interaction client and real-time push via socket.io and node.js',NULL,'http://wisembly.com/static/img-story/story7.jpeg'),(8,'September 2012','Balloon becomes Wisembly','Balloon becomes Wisembly and attacks the training and professional meetings markets.',NULL,'http://wisembly.com/static/logo.png');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage`
--

DROP TABLE IF EXISTS `homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage`
--

LOCK TABLES `homepage` WRITE;
/*!40000 ALTER TABLE `homepage` DISABLE KEYS */;
INSERT INTO `homepage` VALUES ('discover_our_happy_clients','See our<strong>400</strong> happy customers and what they think'),('discover_wisembly_for','Use Wisembly for:'),('events','Events'),('formations','Trainings'),('homepage_baseline','Wisembly is a web & mobile solution that allows you to prepare, facilitate and monitor your meetings.'),('homepage_poll_choice_1','Concrete figures'),('homepage_poll_choice_2','A clear overall vision'),('homepage_poll_choice_3','An accurate roadmap'),('homepage_poll_question','What do you expect from today\'s presentation?'),('homepage_title','Work together in meetings'),('meetings','Meetings'),('quote_dias','Everybody loved it – it’s a brand new way to contribute [...]Wisembly lets you go beyond the presentation and open a dialog.'),('testimonials','Testimonials');
/*!40000 ALTER TABLE `homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('about','About'),('about_in_the_press','In the press'),('about_our_story','Our story'),('about_press_page_desc','They’re singing our praises'),('about_press_page_title','What the press has to say about Wisembly'),('about_resources','Resources'),('about_team_page_desc','The best team in Paris by far'),('about_team_page_title','Our team'),('about_the_team','The team'),('about_wisembly_page_desc','How it all began…'),('about_wisembly_page_title','About Wisembly'),('api','APIs'),('ask_for_quote','Ask for a quote'),('back','Back'),('call_us','Call us'),('case_context_title','The solution'),('case_results_title','The results'),('case_studies','Case studies'),('case_studies_global_page_desc','Wisembly helps hundreds of companies to work together in their meetings and boost productivity.'),('case_studies_global_page_title','Be like our clients and make your meetings more productive'),('case_studies_menu_title','Case studies'),('case_usage_title','How they used Wisembly'),('choose_your_wiz','Choose your Wiz'),('choose_your_wiz_help','No long-term contract, fair price - ideal for your need!'),('classes_an_trainings_menu_title','Classes & training'),('clients','Clients'),('clients_page_desc','Happy with Wisembly'),('clients_page_title','Our clients'),('company','Company'),('contact','Contact'),('contact_founders','Contact the founders'),('contact_page_baseline','Do you need a quote fast?  Do you have a question? We’ll reply immediately.'),('contact_page_desc','Do you need more information?  Would you like a detailed quote? Contact us, we’re always happy to help and we’ll reply immediately.'),('contact_page_title','Contact us'),('contact_us_number','Contact us at <strong>%number%</strong>'),('developers','Developers'),('email','E-mail'),('email_sent_error','We did not manage to send your email, please contact us directly at <a href=\'mailto:contact@wisembly.com?subject=message de wisembly.com\'>contact@wisembly.com</a>'),('email_sent_success','Thanks, we have received your email, we will reply to you as soon as possible!'),('event_keyword','Event keyword'),('events','Events'),('events_afterworks','Afterworks'),('events_and_seminaries_menu_title','Events & seminars'),('events_baseline','Join us for our events'),('events_breakfasts','Breakfasts'),('events_passed','Passed events'),('events_webinars','Webinars'),('free_trial','Free trial'),('free_trial_incentive','Give Wisembly a try. Free. No credit card required.'),('fullname','Full name'),('goto_app','Go to the application'),('head_office_address','73 boulevard St Germain <br/>75005 Paris France'),('homepage_slide_info','Wisembly presentation.ppt'),('incentive_to_contact_for_pricing','Contact us for subscription rates'),('jobs','Recruitment'),('jobs_page_baseline','Here at Wisembly, we’re building a product with and for our clients. Are you interested?'),('jobs_page_baseline_desc','<p>Here at Wisembly, we make the quality of the work/life balance of our teams a priority. Weekly team meetings, beer on Fridays, team-building, tickets-restaurant (meal vouchers), company health scheme.  All the advantages of a big corporation but in a booming Parisian startup! </p>'),('jobs_page_desc','We’re changing the way people meet and work together'),('jobs_page_location_title','In the center of Paris open to the whole world'),('jobs_page_open_positions_title','We’re hiring'),('jobs_page_title','Join Wisembly'),('jobs_page_why_wisembly_desc','<p>Here at Wisembly, we make the quality of the work/life balance of our teams a priority. Weekly team meetings, beer on Fridays, team-building, tickets-restaurant (meal vouchers), company health scheme.  All the advantages of a big corporation but in a booming Parisian startup! </p>'),('jobs_page_why_wisembly_title','Why work at Wisembly?'),('join_an_event','Join a Wiz'),('join_event_button','Join'),('journalists_download_kit_button','Download them here'),('journalists_download_kit_title','Journalists – are you looking for images or photos for your articles?'),('login','Login'),('login_button','Login'),('logo','Logo'),('looking_for_something_else','Didn’t find what you were looking for?'),('meetings_and_confcalls_menu_title','Meetings & conference calls'),('more_information','Request for more information'),('office_address','10 rue thérèse <br/>75001 Paris France'),('office_hours','<p class=\'label\'>Office hours</p>\r\n<p class=\'hours\'>Monday to Friday</p>\r\n<p class=\'hours\'>10am to 6pm</p>'),('organizer','Organizer'),('other','Other'),('our_clients_menu_title','Our clients'),('participant','Participant'),('password','Password'),('phone_number','Phone number'),('pictures','Photos'),('plan_classes_training_baseline','Get a complete overview of your class and improve your trainings.'),('plan_classes_training_items','<li><i class=\'list-dot\'></i> Quizzes and feedback </li> <li> <i class=\'list-dot\'></i> Document sharing and visualization </li> <li> <i class=\'list-dot\'></i> Statistics and ranking of participants </li>'),('plan_classes_training_title','Education and training'),('plan_demo_version_footnotes','No Credit cards required.'),('plan_events_seminaries_baseline','Give everyone at your seminar the chance to speak.'),('plan_events_seminaries_items','<li><i class=\'list-dot\'></i> Q&A </li> <li> <i class=\'list-dot\'></i> SMS, Twitter, votes </li> <li> <i class=\'list-dot\'></i> Moderation and customization </li>'),('plan_events_seminaries_title','Events and seminars'),('plan_meetings_conf_calls_baseline','Prepare, facilitate, and monitor your meetings and conference calls.'),('plan_meetings_conf_calls_items','<li><i class=\'list-dot\'></i> Q&A, surveys and questionnaires </li> <li> <i class=\'list-dot\'></i> Document sharing and visualization</li> <li> <i class=\'list-dot\'></i> Responses and comments </li>'),('plan_meetings_conf_calls_title','Meetings and conference calls'),('plans_menu_title','Plans'),('plans_page_desc','It costs nothing to try. Boost your productivity and impress your colleagues at your next conference call, training session, or seminar.'),('plans_page_title','Create a demo account in 3 clicks'),('plans_try','Try it'),('please_select','Please select...'),('poll_button_sending','Sending'),('poll_button_sent','Sent'),('poll_button_submit','Submit'),('press','Press'),('read_case_study_link','Read the case study'),('reason','Subject'),('resources','Resources'),('resources_page_desc','Press kit'),('resources_page_title','Resources'),('send_button','Send'),('social','Community'),('suscribe','Subscribe'),('telephone_info','<p class=\'label\'>Phone</p>\r\n<p class=\'phone\'>%number%</p>'),('try_for_free','Free trial'),('we_are_hiring','We are hiring!'),('widget','Widget'),('write_an_article','Write an article about Wisembly'),('write_to_us','Write to us'),('you','You via website'),('your_message','Your message');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta`
--

DROP TABLE IF EXISTS `meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta` (
  `page` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  UNIQUE KEY `page` (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta`
--

LOCK TABLES `meta` WRITE;
/*!40000 ALTER TABLE `meta` DISABLE KEYS */;
INSERT INTO `meta` VALUES ('about','Wisembly - À propos de Wisembly',NULL,NULL),('about_press','Wisembly - Dans la presse',NULL,NULL),('about_team','Wisembly - L\'équipe',NULL,NULL),('assurez_vous_que_tout_le_monde_suit','Assurez-vous que tout le monde suit',NULL,NULL),('casestudies','Wisembly - Comme nos clients, gagnez en productivité durant vos meetings',NULL,NULL),('classes_trainings','Wisembly - Cours et formations',NULL,NULL),('clients','Our awesome clients!','Our awesome clients',NULL),('contact','Wisembly - Contactez nous',NULL,NULL),('events','Wisembly - Events',NULL,NULL),('events_seminaries','Wisembly - Faites participer votre public',NULL,NULL),('index','Wisembly - Collaborez en réunion',NULL,NULL),('jobs','Wisembly - Emplois',NULL,NULL),('laissez_sexprimer_votre_public','Wisembly - Laissez s\'exprimer votre public',NULL,NULL),('meetings_confcalls','Wisembly - Boostez vos réunions',NULL,NULL),('oubliez_les_boitiers_de_vote','Wisembly - Oubliez les boitiers de vote',NULL,NULL),('plans','Wisembly - Créez un compte de démonstration en 3 clics',NULL,NULL),('prenez_de_vraies_decisions_durant_vos_reunions','Wisembly - Prenez de vraies décisions durant vos réunions',NULL,NULL),('resources','Wisembly - Ressources',NULL,NULL),('vos_evaluations_sont_corrigees_immediatement','Wisembly - Vos évaluations sont corrigées immédiatement',NULL,NULL);
/*!40000 ALTER TABLE `meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `press`
--

DROP TABLE IF EXISTS `press`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `press` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_bin NOT NULL,
  `support` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press`
--

LOCK TABLES `press` WRITE;
/*!40000 ALTER TABLE `press` DISABLE KEYS */;
INSERT INTO `press` VALUES (1,0,NULL,'15/06/2010',NULL,'Connaissez-vous Romain David from Paris ? La conférence traditionnelle se met au 2.0','http://billaut.typepad.com/jm/2010/06/connaissezvous-romain-david-from-paris-.html'),(2,0,'http://www.teddytruchot.com/wp-content/uploads/2011/05/logo-tcfr.jpg','09/09/2010','Techcrunch','Avec Balloon, Rendez vos conférences et événements plus interactifs','http://fr.techcrunch.com/2010/09/09/avec-balloon-rendez-vos-conferences-et-evenements-plus-interactifs/'),(3,0,'http://www.pourquoi-entreprendre.fr/wp-content/uploads/2012/07/logo-locita-officiel.jpeg','22/09/2010','Locita','Balloon qui rend vos événements plus interactifs','http://fr.locita.com/business/interviews/interview-de-romain-david-de-balloon-qui-rend-vos-evenements-plus-interactifs/'),(4,0,'http://www.teddytruchot.com/wp-content/uploads/2011/05/logo-tcfr.jpg','18/11/2010','Techcrunch','#TCFRemix : le Bilan des intéractions live avec Balloon','http://fr.techcrunch.com/2010/11/18/tcfremix-le-bilan-des-interactions-live-avec-balloon/'),(5,0,'http://bordeaux.startupweekend.org/files/2012/11/logo-frenchweb-10.55.04.jpeg','12/01/2011','Frenchweb','Balloon, solution d\'interactivité pour vos événements','http://frenchweb.fr/balloon-solution-interactivite-evenement'),(6,0,'http://estherbenbassa.eelv.fr/files/2012/11/I-tele.gif','20/01/2011','I-Télé','\"C\'est une très très bonne idée...\" : analyse de Marc Simoncini à propos de Balloon lors de l\'émission iL@b sur iTélé le 20 janvier dernier.',NULL),(7,0,'http://mycareertopia.com/wp-content/uploads/2013/11/business-insider.jpg','26/02/2011','Business Insider','Balloon Helps You Handle The Zillion Questions You Get During An Event','http://www.businessinsider.com/balloon-2011-2'),(8,0,'https://encrypted-tbn3.google.com/images?q=tbn:ANd9GcRw33IkqidzbtgXHv-3jxBTKZ6n9LXRrgjM0L1k0WvPCRO4SSCo9Q','08/04/2011','Twist','Balloon, vainqueur du TWIST Paris grâce à Jason Calacanis','http://www.twistparis.com/startups-pitches/03-meetup-april-8th-2011/balloon/'),(9,0,'http://www.groupe-alpha.com/data/photo/93.jpg','06/05/2011','BFM','Balloon en quart de finale de la BFM Académie 2011','http://www.radiobfm.com/front_office/static/BFM_Academie/candidats/saison4/episode_24.html'),(10,0,'http://www.consostatic.com/wp-content/uploads/2010/06/challenges_logo.png','12/05/2011','Challenges','Balloon classé parmi les \"100 startup où investir\" par le magazine Challenges',NULL),(11,1,'http://www.consostatic.com/wp-content/uploads/2010/06/challenges_logo.png','06/11/2011','Challenges','Balloon cité en exemple pour tirer les leçons de ses tests dans le n°271 de Challenges',NULL),(12,1,'http://www.ls-chemise.com/style/logo_management.jpg','07/11/2011','Management','Balloon cité en exemple pour avoir de l\'aplomb et savoir bluffer dans le magazine Management',NULL),(13,1,'http://upload.wikimedia.org/wikipedia/fr/e/ed/Logo-les-echos.gif','30/11/2011','Les Echos','Balloon met du \"social\" dans les conférences - Édition du 30 novembre 2011 du journal Les Échos',NULL),(14,0,'http://www.guilhembertholet.com/blog/wp-content/uploads/2012/04/logo-welovesaas-square-404x300.png','07/09/2012','WeLoveSaaS','Balloon devient Wisembly et s\'attaque au marché de la formation et des réunions professionnelles','http://mag.welovesaas.com/index.php/2012/balloon-devient-wisembly/'),(15,0,'http://www.teddytruchot.com/wp-content/uploads/2011/05/logo-tcfr.jpg','12/09/2012','Techcrunch','Balloon devient Wisembly et propose de nouvelles offres spéciales entreprises','http://fr.techcrunch.com/2012/09/12/balloon-devient-wisembly-et-propose-de-nouvelles-offres-speciales-entreprises/'),(16,0,'http://www.documation.net/wp-content/uploads/logo_collaboratif-info.png','18/09/2012','Collaboratif.info','Balloon devient Wisembly et adresse de nouveaux usages en entreprise','http://www.collaboratif-info.fr/actualite/balloon-devient-wisembly-et-adresse-de-nouveaux-usages-en-entreprise'),(17,0,'http://www.cbnews.fr/var/media/97/original/la-tribune-logo-2012-595png-96318.jpg','05/10/2012','La Tribune','\"Désormais, le modèle c’est un peu Balloon qui est devenu Wisembly\"','http://www.latribune.fr/actualites/economie/20121005trib000722993/start-up-il-n-y-a-pas-que-l-argent-qui-compte.html'),(18,0,'http://lol.net/p/journaldunet-com-mini.jpg','24/10/2012','Journal Du Net','5 start-up françaises du SaaS à suivre en 2013','http://www.journaldunet.com/solutions/cloud-computing/start-up-francaises-du-saas.shtml'),(19,0,'http://www.testntrust.fr/images/itemimages/avis/610000/601598/191279991333552_comment-ca-marche--ccm----communaute-informatique.jpg','14/11/2012','Comment ca marche','Pour des conférences 2.0, Wisembly sait créer une vraie interaction avec le public','http://www.commentcamarche.net/news/5861381-pour-des-conferences-2-0-wisembly-sait-creer-une-vraie-interaction-avec-le-public'),(20,0,'http://blog.wisembly.com/wp-content/uploads/2013/01/europas.png','10/01/2013','The europas','The Europas: Wisembly in the shortlist for Best French Startup!','http://blog.wisembly.com/2013/01/wisembly-nomine-dans-la-categorie-meilleure-startup-francaise/'),(21,0,'http://techbaguette.files.wordpress.com/2012/04/logo_techbaguette2.png','7/03/2013','Techbaguette','THE 2013 LIST: 20 HOT FRENCH ENTREPRENEURS UNDER 30','http://techbaguette.com/2013/03/06/hot-2-2013/'),(22,0,'http://williamlegrand.files.wordpress.com/2012/06/welovesaas_big_logo.png','16/05/2013','WeLoveSaaS','Wisembly : la collaboration et l’intéractivité entrent dans les salles de cours et de formation…','http://mag.welovesaas.com/index.php/2013/wisembly-la-collaboration-et-linteractivite-entre-dans-les-salles-de-cours-et-de-formation/'),(23,0,'http://www.i-entreprise.com/templates/theme560/images/logo.gif','17/05/2013','i-entreprise','Wisembly : optimisez la productivité de vos réunions','http://www.i-entreprise.com/index.php/rubriques/services/340-wisembly-optimisez-la-productivite-de-vos-reunions'),(24,0,'http://pics.2012.lesechos.com/css/2012/img/logo-business.png','20/06/2013','Les Echos Business','L\'idée business : avec Wisembly, solution collaborative, des réunions enfin interactives !','http://business.lesechos.fr/entrepreneurs/idees-de-business/10030273-l-idee-business-avec-wisembly-solution-collaborative-des-reunions-enfin-interactives-26611.php'),(25,0,'http://www.classementgrandesecoles.com/wp-content/uploads/2013/07/logo3.png','20/06/2013','Classement Grandes-Ecoles','Wisembly – le futur de l’enseignement en école de commerce','http://www.classementgrandesecoles.com/wisembly-le-future-de-lenseignement-en-ecole-de-commerce/'),(26,0,'http://www.aressy-rp.com/wp-content/uploads/2013/05/Article-16.jpg','05/09/2013','01 Business','Dans ses amphis, HEC combine cours de marketing et réseau social','https://scontent-a-fra.xx.fbcdn.net/hphotos-prn2/t1/1239672_671335969561413_1892852719_n.jpg'),(27,0,'http://www.additeam.com/SSII/wp-content/uploads/2012/10/bfm-business.jpg','17/09/2013','BFM Business','Interview de Romain David - Co-fondateur de Wisembly','http://www.dailymotion.com/video/x14t5k5_made-in-paris-romain-david-co-fondateur-de-wisembly-dans-paris-est-a-vous-17-09_news'),(28,0,'http://www.maddyness.com/wp-content/themes/volt/images/logo.png','31/10/2013','Maddyness','Wisembly, la meilleure solution pour préparer, animer et assurer le suivi de vos réunions','http://www.maddyness.com/outils/2013/10/31/wisembly-outil-preparation-animation-reunion/'),(29,0,'http://frenchweb.fr/wp-content/uploads/2013/04/logo-frenchweb-2013-300x591_2.png','9/12/2013','Frenchweb','Wisembly, une solution pour dynamiser ses réunions','http://frenchweb.fr/la-startup-du-jour-wisembly-pour-dynamiser-ses-reunions-grace-aux-reseaux-sociaux/134971'),(30,0,'http://static.lentreprise.com/images/logo_372x79.png','23/01/2013','L\'express','Start-up: sept conseils pour faire du business avec les grands comptes','http://lentreprise.lexpress.fr/trouver-des-nouveaux-clients/start-up-sept-conseils-pour-faire-du-business-avec-les-grands-comptes_45502.html');
/*!40000 ALTER TABLE `press` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `job` varchar(255) COLLATE utf8_bin NOT NULL,
  `job_category_id` int(11) NOT NULL,
  `main_pic` varchar(255) COLLATE utf8_bin NOT NULL,
  `secondary_pic` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `twitter` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Guillaume Potier','Co-founder',1,'http://wisembly-content.s3.amazonaws.com/corpo/team/guillaume.jpg','https://si0.twimg.com/profile_images/1226148948/gui_reasonably_small.png','Technical Director, Guillaume is the genius behind the millions of lines of code written since the creation of Wisemby. Outside the Blue Room, he is a renowned skier and a great lover of single malt Scotch whiskies, as well as the South of France. It seems that, now, he prefers Paris...','guillaumepotier','guillaume@wisembly.com','http://www.imctobitch.com/'),(2,'Romain David','Co-founder',1,'http://wisembly-content.s3.amazonaws.com/corpo/team/romain.jpg','https://si0.twimg.com/profile_images/1169535523/Incubateur_HEC_2010_001_17_reasonably_small.jpg','A product guy, Romain stands behind Wisembly\'s product vision and does everything to make using our solutions a real pleasure. He downloads around 30 new applis every day and has between 2 and 3 million profiles recorded on different services.....”just for testing”.\r\nOutside the office, it\'s the piano, guitar and photos.','Romaind','romain@wisembly.com','http://www.romaindavid.fr'),(3,'Andreï Vestemeanu','Co-founder',1,'http://wisembly-content.s3.amazonaws.com/corpo/team/andrei.jpg','https://si0.twimg.com/profile_images/562299389/12152_193369436530_681606530_3642796_7351367_n_reasonably_small.jpg','In charge of business, it is Andrei\'s job to control the army of Wisemby salespeople! He understands our customers and their needs, how to open the right doors and never gives up. He is a lover of good beer, travel and, of course, Paris St Germain!','avestemeanu','andrei@wisembly.com',NULL),(4,'Cédric Esposito-Farese','Business Developer',2,'http://wisembly-content.s3.amazonaws.com/corpo/team/cedric.jpg','https://si0.twimg.com/profile_images/1268689072/Tweet_reasonably_small.jpg','Cedric was Wisembly\'s first employee. Effective and a good listener, he rapidly became the go-to person for the whole team and, above all, our customers.! A great Roller Hockey player and ecology convert, he takes care of preaching the good word to the whole team.','CeD_EF','cedric@wisemby.com',NULL),(5,'Christina Dago','Office Manager',3,'http://wisembly-content.s3.amazonaws.com/corpo/team/christina.jpg','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/369588_515024832_1433490751_n.jpg','Available, generous and attentive, Christina is mother to us all! She moves easily between recruitment, invoices, suppliers and internal event organisation. She is great follower of funny stories, so don\'t forget to tell her a joke from time to time!',NULL,'christina@wisembly.com',NULL),(6,'Nicolas Chenet','Frontend Developer',4,'http://wisembly-content.s3.amazonaws.com/corpo/team/nicolas.jpg','https://si0.twimg.com/profile_images/1790376121/c846143c4a9111e1abb01231381b65e3_7_reasonably_small.jpg','Nico is half designer, half developer. Passionate about clean, intuitive interfaces, he uses his talents to the benefit of all Wisembly\'s features. When he goes home, he becomes an unconditional cat lover, all cats!','nicolaschenet','nicolas@wisembly.com',NULL),(7,'Baptiste Clavié','Back-end Developer',4,'http://wisembly-content.s3.amazonaws.com/corpo/team/baptiste.jpg','https://si0.twimg.com/profile_images/1399907993/2824ef746269b35091240ed6e66e21a5_reasonably_small.jpeg','Baptiste is a passionate developer with a pronounced affection for open-source and the mastery of the subtile art of Trolling. He switches its geek / otaku personality on work hours to be our quality guy, PR reviewer, and a little bit troller too.','talus_','baptiste@wisembly.com','http://baptiste.clavié.net/'),(8,'Mohamed Mauranne','In Charge of Events',4,'http://wisembly-content.s3.amazonaws.com/corpo/team/mohamed.jpg','https://si0.twimg.com/profile_images/2472511653/3mrvuq0f50lk07tqg3tw_reasonably_small.jpeg','He links Photoshop keyboard shortcuts quicker than his shadow and can handle any situation on the ground. This is our event man-in-charge. A workaholic, he still finds time for his personal projects as actor, producer and creator of a web magazine.','momauranne','mohamed@wisembly.com',NULL),(9,'Rémy Gazelot','Back-end Developer',4,'http://wisembly-content.s3.amazonaws.com/corpo/team/remy.jpg','https://si0.twimg.com/profile_images/2543466831/w4i1gv7jvrxa6ey80kla_reasonably_small.jpeg','Rémy is mad about coding. He spends hours, a smile on his face, in front of his terminal. He is, above all, very gifted and very productive. He spends his weekends at Princes park, where he has been a subscriber since the creation of the club, if not before.','remygazelot','remy@wisembly.com',NULL),(10,'Gabriel Majoulet','Front-end Developer',4,'http://wisembly-content.s3.amazonaws.com/corpo/team/gabriel.jpg','https://si0.twimg.com/profile_images/1782603381/gabriel-majoulet_reasonably_small.jpg','Gabriel started as an intern and quickly became indispensible. His technical skills and his effectiveness are quickly becoming legendary in the famous Blue Room. When he leaves the office, he often goes to the gym, which makes him Wisembly\'s BMI record holder.','gmajoulet','gabriel@wisembly.com','http://www.gabriel-majoulet.fr/'),(18,'Christel Van-Isacker','Business Developer',0,'http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/christel.jpg','','',NULL,NULL,NULL),(19,'Cécile Decrulle','Business Developer',0,'http://wisembly-content.s3.amazonaws.com/corpo/team/cecile.jpg','','',NULL,NULL,NULL),(20,'Mathieu Ghaleb','Front-end developer',0,'http://wisembly-content.s3.amazonaws.com/corpo/team/mathieu.jpg','','',NULL,NULL,NULL),(21,'Tristan Daeschner','Product Designer',0,'http://wisembly-content.s3.amazonaws.com/corpo/team/tristan.jpg','','',NULL,NULL,NULL),(22,'Arnaud Gagne','Business Developer',0,'http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/arnaud.jpg','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/arnaud.jpg','arnaud',NULL,NULL,NULL),(23,'Vincent Jammes','Product Evangelist',0,'http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/vincent.jpg','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/vincent.jpg','vincent',NULL,NULL,NULL),(25,'Alexandre Broudin','Front-end Developer',0,'http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/alex.jpg','http://wisembly-content.s3-website-eu-west-1.amazonaws.com/corpo/team/alex.jpg','alex',NULL,NULL,NULL),(26,'Adeline Braescu-Kerlan','Customer Success Manager',0,'http://wisembly-content.s3.amazonaws.com/corpo/team/adeline.jpg','http://wisembly-content.s3.amazonaws.com/corpo/team/adeline.jpg','Adeline Braescu-Kerlan',NULL,NULL,NULL),(27,'Laura Thierry','Customer Success Manager',0,'http://wisembly-content.s3.amazonaws.com/corpo/team/laura.jpg','http://wisembly-content.s3.amazonaws.com/corpo/team/laura.jpg','Laura Thierry',NULL,NULL,NULL);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `quote` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `home_featured` tinyint(1) NOT NULL DEFAULT '0',
  `cases_featured` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `home_featured` (`home_featured`,`cases_featured`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (1,'Beyond the obvious fun dynamic that creates Wisembly, it restores our intervention practices a significant gain in the ability to interact.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/lagree.png','Olivier Lagrée','Consultant, Deloitte','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/logo/la-poste.png',0,1),(2,'Wisembly created a genuine U-turn in the company’s managerial relationship. Their solution assists us in all our meetings.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/ropert.png','Patrick Ropert','Communication Director, SNCF','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/logo/sncf.png',0,1),(3,'The control of live questions and evaluations has quickly led to share decision making, where the only conference call often sent the host back into loneliness.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/lebouille.png','Emmanuel Le Bouille','Directeur Innovation, AUCHAN','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/logo/auchan.png',0,1),(4,'Wisembly is a training and education booster. It becomes an \"interactive manual\" which accompanies of all participants, in line with their trainers.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/dias.jpg','Georges-Edouard Dias','Prof at the HEC','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/logo/hec.png',0,1),(5,'Everybody loved it – it’s a brand new way to contribute [...] Wisembly lets you go beyond the presentation and open a dialog.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/dias.jpg','Georges-Edouard Dias','L\'Oréal','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/logo/hec.png',0,0),(6,'Wisembly has allowed freedom of speech of our employees. Our internal meetings have become much more participative with a number of questions multiplied by 5!','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/guillaumevraux.png','Guillaume Vraux','Cofely Services, Groupe GDF SUEZ',NULL,1,0),(7,'Wisembly facilitates speaking and boosts animation conferences. It also offers the opportunity to prepare in advance the questions and keep after the event ended. It is the memory of our animations.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/clairebussac.png','Claire Bussac','Head of Marketing and RH Innovation, Crédit Agricole S.A',NULL,1,0),(8,'We use it to discuss ideas, gather feedback and arrive at collective solutions.','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/stelmaszyk.jpg','Patric Stelmaszyk','Capgemini Consulting',NULL,0,0),(9,'Wisembly has deeply changed the conduct of our meetings by introducing the interactivity that we all expected more or less consciously. We were dreaming about it, Wisembly made it happen !','http://wisembly-content.s3.amazonaws.com/corpo/testimonial/picture/dominiquelefebvre.png','Dominique Lefebvre','Intern consultant','http://wisembly-content.s3.amazonaws.com/clients-logos/total_logo.png',1,0);
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-17 17:12:28
