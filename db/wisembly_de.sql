-- MySQL dump 10.13  Distrib 5.5.29, for osx10.6 (i386)
--
-- Host: localhost    Database: wisembly_de
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
  `client_logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `illustration_image` varchar(255) DEFAULT NULL,
  `context` text NOT NULL,
  `usage` text NOT NULL,
  `results` text NOT NULL,
  `blockquote` text NOT NULL,
  `interviewed` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'la-poste','/static/images/clients/la-poste.png','Seminars at La Poste','seminaries',NULL,'<ul> <li>An annual seminar day for the exchange of information on practice</li> <li>120 managers from the finance branch of La Poste</li> <li>Theme of the day: Successful decentralization</li> </ul>','<ul> <li>Opening of the platform upstream to collect questions from managers</li> <li>Live feedback via questions and comments sent from their phones (SMS and internet) </li> <li>Live keyword cloud</li> <li>Working in sub-groups of 15. Reporting and vote on the feasibility of their suggestions in survey form</li> </ul>','<ul> <li>95 questions collected upstream</li> <li>120 questions asked on the day</li> <li>7 online surveys to identify success factors</li> <li>100% participation</li> </ul>','Beyond the obvious element of fun created by Wisembly, it brings a spectacular increase in opportunities for interaction in the way we conduct meetings.','Olivier Lagrée, Consultant DELOITTE'),(2,'sncf','/static/images/clients/sncf.png','SNCF President’s fireside chat','confcalls',NULL,'<ul> <li>Monthly 90 minute Management Call </li> <li>600 top regional managers connected</li> <li>Presentation of results and strategic guidelines by Comex</li> </ul>','<ul> <li>Live presentation and slide sharing on the platform</li> <li>Live response and questions from managers via their computers</li> <li>Managers vote for the questions that interest them</li> <li>President’s response to questions in order of popularity</li><li>Satisfaction questionnaire completed by managers at the end</li> </ul>','<ul> <li>Structured and effective conference calls</li> <li>60% participation</li> <li>150 questions and comments</li> <li>900 likes of the questions on average</li> <li>75% response rate to satisfaction questionnaire</li></ul>','Wisembly has brought about a genuine U-turn in the company’s managerial relations.  We use the solution in all our meetings.','Patrick Ropert, Director of Communications, SNCF'),(3,'auchan','/static/images/clients/auchan.png','Conference Calls at Auchan','confcalls',NULL,'<ul> <li>Bi-monthly, 2 hr project progress meetings</li> <li>15 participants</li> <li>Participants spread over different sites and countries</li> </ul>','<ul> <li>Slide sharing in real time</li> <li>Participants on the platform were asked questions throughout the call</li> <li>Live responses of participants</li> <li>Definition of the agenda for the next call at the end of the call</li> <li>Media sharing at the end of the conference</li> </ul>','<ul> <li>100% participation</li> <li>50 questions and ideas on average</li> <li>3 documents shared</li> </ul>','Live control of questions and feedback leads to faster, shared, co-constructed decisions where a phone call alone often finds the leader talking to himself.','Emmanuel Le Bouille, Director of Innovation, AUCHAN'),(4,'hec','/static/images/clients/hec.png','Training at the HEC','trainings',NULL,'<ul> <li>6 x 3 hr course sessions</li> <li>35 students</li> <li>External speakers, case presentations </li> </ul>','<ul> <li>Uploading of course materials to the platform for students to download between each session</li> <li>Intervention by students during others’ presentations and input of their contributions</li> <li>Assessment of students’ level of knowledge and progress on Wisembly</li> <li>Answers to certain questions on the platform</li> </ul>','<ul> <li>944 questions and comments, 4,007 likes of those questions</li> <li>60 answers to questions directly on the platform</li> <li>20 quizzes during the sessions</li> <li>2 course evaluations  + 2 tests of knowledge</li> <li>50 documents shared</li> </ul>','Wisembly boosts the ROI of training and teaching. It has become an ‘interactive textbook’ supporting all participants as a community with their educators.','Georges-Edouard Dias, Professor at the HEC');
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
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `client_category_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,1,1,'Air Liquide','http://wisembly.com/static/logos-clients/airliquide.png','http://www.airliquide.com/'),(5,0,1,'Altima','http://wisembly.com/static/logos-clients/altima.png','http://www.altima.fr'),(6,0,1,'Atelier','http://wisembly.com/static/logos-clients/atelier.png','http://www.atelier.net'),(7,0,1,'Atlantic','http://wisembly.com/static/logos-clients/atlantic.png','http://www.atlantic2.org/'),(8,0,1,'Auchan','http://wisembly.com/static/logos-clients/auchan.png','http://www.auchan.fr'),(9,0,1,'BeMyApp','http://wisembly.com/static/logos-clients/bemyapp.png','http://fr.bemyapp.com/'),(10,0,1,'Bioderma','http://wisembly.com/static/logos-clients/bioderma.gif','http://www.bioderma.com'),(11,1,1,'BNP Paribas','http://wisembly.com/static/logos-clients/bnp.jpg','http://www.bnpparibas.net/'),(12,0,1,'The Body Shop','http://wisembly.com/static/logos-clients/body.png','http://www.thebodyshop.fr/'),(13,1,1,'Bouygues Telecom','http://wisembly.com/static/logos-clients/bouygues.jpg','http://www.bouyguestelecom.fr/'),(14,0,1,'Crédit Agricole','http://wisembly.com/static/logos-clients/ca.png','http://www.credit-agricole.fr/'),(15,0,1,'Caisse d\'Allocations Familiales','http://wisembly.com/static/logos-clients/caf.png','http://www.caf.fr/'),(16,1,1,'Accenture','http://wisembly.com/static/logos-clients/accenture.png','http://www.accenture.com/'),(17,0,2,'Adetem','http://wisembly.com/static/logos-clients/adetem.png','http://www.adetem.org'),(18,0,1,'Alior Bank','http://wisembly.com/static/logos-clients/aliorbank.png','http://www.aliorbank.pl/'),(19,0,3,'Artea Communication','http://wisembly.com/static/logos-clients/arteacommunication.png','http://www.artea-france.com/'),(20,0,2,'ASMEP','http://wisembly.com/static/logos-clients/asmep.png','http://www.asmep-eti.fr/'),(21,0,2,'Avebe','http://wisembly.com/static/logos-clients/avebe.png','http://www.avebe.com/'),(22,0,1,'Banque Populaire','http://wisembly.com/static/logos-clients/banquepopulaire.png','http://www.banquepopulaire.fr/'),(23,1,1,'Bearing Point','http://wisembly.com/static/logos-clients/bearingpoint.png','http://www.bearingpoint.com/fr-fr/'),(24,0,1,'BPI','http://wisembly.com/static/logos-clients/bpi.png','http://www.groupe-bpi.com/'),(25,1,1,'Carrefour','http://wisembly.com/static/logos-clients/carrefour.png','http://www.carrefour.com/'),(26,0,3,'Agence Carrément','http://wisembly.com/static/logos-clients/carrement.png','http://www.agencecarrement.com/'),(27,0,3,'Chaïkana Event','http://wisembly.com/static/logos-clients/chaikana.png','http://www.chaikanaevent.com/'),(28,0,2,'CNCC','http://wisembly.com/static/logos-clients/cncc.png','http://www.cncc.fr/'),(29,0,3,'Comexposium','http://wisembly.com/static/logos-clients/comexposium.png','http://www.comexposium.com/'),(30,0,3,'Covision','http://wisembly.com/static/logos-clients/covision.png','http://www.covision.com/'),(31,0,2,'ECR Europe','http://wisembly.com/static/logos-clients/ecreurope.png','http://www.ecr-europe.org/'),(32,0,1,'Egon Zender International','http://wisembly.com/static/logos-clients/egonz.png','http://www.egonzehnder.com/'),(33,0,1,'Elle Magazine','http://wisembly.com/static/logos-clients/elle.png','http://www.elle.fr/'),(34,0,1,'Eurocopter','http://wisembly.com/static/logos-clients/eurocopter.png','http://www.eurocopter.com/'),(35,0,2,'EWEA','http://wisembly.com/static/logos-clients/ewea.png','http://www.ewea.org/'),(36,0,1,'Fortuneo','http://wisembly.com/static/logos-clients/fortuneo.png','http://www.fortuneo.fr/'),(37,1,1,'France Télévision','http://wisembly.com/static/logos-clients/francetv.png','http://www.francetelevisions.fr/'),(38,0,1,'Gan Assurances','http://wisembly.com/static/logos-clients/gan.png','http://www.gan.fr/'),(39,0,1,'Generali','http://wisembly.com/static/logos-clients/generali.png','http://www.generali.fr/'),(40,0,1,'GRT Gaz','http://wisembly.com/static/logos-clients/grtgaz.png','http://www.grtgaz.com/'),(41,0,3,'HappyChic','http://wisembly.com/static/logos-clients/happychic.png','http://www.happychicgroup.com/'),(42,0,1,'Adisseo','http://wisembly.com/static/logos-clients/adisseo.png','http://www.adisseo.com/'),(43,0,1,'Canal+','http://wisembly.com/static/logos-clients/canal.png','http://www.canalplusfrance.fr/'),(44,0,1,'CapGemini','http://wisembly.com/static/logos-clients/capgemini.png','http://www.fr.capgemini.com'),(45,0,1,'Casino','http://wisembly.com/static/logos-clients/casino.png','http://www.groupe-casino.fr/'),(46,0,1,'Danone','http://wisembly.com/static/logos-clients/danone.png','http://www.danone.com/'),(47,0,1,'DCNS','http://wisembly.com/static/logos-clients/dcns.png','http://fr.dcnsgroup.com/'),(48,0,2,'EBG','http://wisembly.com/static/logos-clients/ebg.jpg','http://www.ebg.net/'),(49,1,2,'Les Echos Conférence','http://wisembly.com/static/logos-clients/lesechos.png','http://www.lesechos-conferences.fr/'),(50,0,3,'Editialis','http://wisembly.com/static/logos-clients/editialis.png','http://www.editialis.fr/'),(51,1,4,'ESCP Université','http://wisembly.com/static/logos-clients/escp.png','http://www.escpeurope.eu/fr/'),(52,0,2,'FEPEM','http://wisembly.com/static/logos-clients/fepem.png','http://www.fepem.fr/accueil'),(53,0,2,'FERMA','http://wisembly.com/static/logos-clients/ferma.png','http://www.ferma.eu/'),(54,0,2,'Federated Media','http://wisembly.com/static/logos-clients/fm.png','http://www.federatedmedia.net/'),(55,0,1,'GDF Suez','http://wisembly.com/static/logos-clients/gdf.png','http://www.gdfsuez.com/'),(56,0,1,'Google','http://wisembly.com/static/logos-clients/google.png','https://www.google.fr/intl/fr/about/'),(57,0,1,'Groupama','http://wisembly.com/static/logos-clients/groupama.png','http://www.groupama.fr/'),(58,0,1,'Groupon','http://wisembly.com/static/logos-clients/groupon.png','http://www.groupon.fr/'),(59,0,2,'Hack FWD','http://wisembly.com/static/logos-clients/hackfwd.png','http://hackfwd.com/'),(60,0,3,'Havas','http://wisembly.com/static/logos-clients/havas.jpg','http://www.havasevent.com/'),(61,0,4,'HEC','http://wisembly.com/static/logos-clients/hec.gif','http://www.hec.fr/'),(62,0,2,'Hub Forum','http://wisembly.com/static/logos-clients/hubforum.png','http://www.hubforum.com/'),(63,0,3,'IDAOS','http://wisembly.com/static/logos-clients/idaos.png','http://www.idaos.com/'),(64,0,1,'IFAS','http://wisembly.com/static/logos-clients/ifas.png','http://www.ifas.net/'),(65,0,2,'Internet Week New-York','http://wisembly.com/static/logos-clients/iwny.png','https://www.internetweekny.com/'),(66,0,1,'Kurt Salmon','http://wisembly.com/static/logos-clients/kurt.png','http://www.kurtsalmon.com/'),(67,0,1,'Lenovo France','http://wisembly.com/static/logos-clients/lenovo.png','http://www.lenovo.com/'),(68,0,1,'L\'Oréal','http://wisembly.com/static/logos-clients/loreal.png','http://www.loreal.fr/'),(69,0,1,'L\'Oréal USA','http://wisembly.com/static/logos-clients/lorealus.png','http://www.lorealusa.com/'),(70,0,2,'Medef','http://wisembly.com/static/logos-clients/medef.png','http://www.medef.com/'),(71,0,1,'Microsoft','http://wisembly.com/static/logos-clients/microsoft.png','http://www.microsoft.com/'),(72,0,3,'Midem','http://wisembly.com/static/logos-clients/midem.gif','http://www.midem.com/'),(73,0,3,'MipTV','http://wisembly.com/static/logos-clients/miptv.png','http://www.mipworld.com/miptv/'),(74,0,2,'MobileMonday','http://wisembly.com/static/logos-clients/mmonday.jpeg','http://www.mobilemondayfrance.org/'),(75,0,1,'NBS','http://wisembly.com/static/logos-clients/nbs.png','http://www.nbs-system.com/'),(76,0,1,'NEC','http://wisembly.com/static/logos-clients/nec.png','http://www.nec.fr/'),(77,0,2,'NetExplorateur','http://wisembly.com/static/logos-clients/netexplorateur.png','http://www.netexplo.org/'),(78,0,1,'NYSE Euronext','http://wisembly.com/static/logos-clients/nyse.png','https://europeanequities.nyx.com/fr/welcome'),(79,0,1,'Oberthur','http://wisembly.com/static/logos-clients/oberthur.png','http://www.oberthur.com/'),(80,0,1,'Orange','http://wisembly.com/static/logos-clients/orange.png','http://orange-en-france.orange.fr/'),(81,0,1,'Paypal','http://wisembly.com/static/logos-clients/paypal.png','https://www.paypal.com/fr/cgi-bin/webscr?cmd=_home'),(82,0,1,'Pole Emploi','http://wisembly.com/static/logos-clients/pe.png','http://www.pole-emploi.fr/'),(83,0,3,'Prodeo','http://wisembly.com/static/logos-clients/prodeo.png','http://www.prodeo.com/'),(84,0,1,'Prosodie','http://wisembly.com/static/logos-clients/prosodie.png','http://www.prosodie.fr/'),(85,0,1,'PSA','http://wisembly.com/static/logos-clients/psa.png','http://www.psa-peugeot-citroen.com/'),(86,0,3,'Publicis Groupe','http://wisembly.com/static/logos-clients/publicis.png','http://www.publicisgroupe.com/'),(87,0,3,'Le Public System','http://wisembly.com/static/logos-clients/publicsystem.png','http://www.lepublicsysteme.com/'),(88,0,1,'Redcats','http://wisembly.com/static/logos-clients/redcats.png','http://www.redcats.com/'),(89,0,1,'RFF','http://wisembly.com/static/logos-clients/rff.png','http://www.rff.fr/fr'),(90,0,1,'Rhodia','http://wisembly.com/static/logos-clients/rhodia.png','http://www.rhodia.com/fr/'),(91,0,1,'Sanofi','http://wisembly.com/static/logos-clients/sanofi.png','http://www.sanofi.fr/'),(92,0,4,'Science Po','http://wisembly.com/static/logos-clients/sciencespo.gif','http://www.sciencespo.fr/'),(93,0,1,'Seloger.com','http://wisembly.com/static/logos-clients/seloger.png','http://www.seloger.com/'),(94,0,2,'Silicon Sentier','http://wisembly.com/static/logos-clients/siliconsentier.png','http://siliconsentier.org/'),(95,0,2,'Start In Paris','http://wisembly.com/static/logos-clients/sip.png','http://www.startinparis.com/'),(96,0,2,'SMX','http://wisembly.com/static/logos-clients/smx.png','http://smxmuenchen.de/'),(97,1,1,'SNCF','http://wisembly.com/static/logos-clients/sncf.png','http://www.sncf.com/fr/'),(98,0,1,'Sodexo','http://wisembly.com/static/logos-clients/sodexo.jpg','http://fr.sodexo.com/'),(99,0,1,'Solvay','http://wisembly.com/static/logos-clients/solvay.png','http://www.solvay.fr/'),(100,0,1,'Soregor','http://wisembly.com/static/logos-clients/soregor.png','http://www.soregor.fr/'),(101,0,3,'Strategic Event','http://wisembly.com/static/logos-clients/strategicevent.png','http://www.sevent.fr/'),(102,0,2,'Startup Weekend','http://wisembly.com/static/logos-clients/sw.png','http://startupweekend.org/'),(103,0,1,'Synergence','http://wisembly.com/static/logos-clients/synergence.png','http://www.synergence.com/'),(104,0,2,'Techcrunch FR Remix','http://wisembly.com/static/logos-clients/tcfremix.png','http://fr.techcrunch.com/'),(105,1,1,'TF1','http://wisembly.com/static/logos-clients/tf1.png','http://www.tf1.fr/'),(106,1,1,'Total','http://wisembly.com/static/logos-clients/total.png','http://www.total.com/'),(107,0,1,'Vichy','http://wisembly.com/static/logos-clients/vichy.gif','http://www.vichy.fr/'),(108,0,3,'Villadalésia&Co','http://wisembly.com/static/logos-clients/villa.png','http://www.villadalesiaandco.com/'),(109,0,1,'Vinci Autoroutes','http://wisembly.com/static/logos-clients/vincia.png','http://www.vinci-autoroutes.com/'),(110,0,1,'Weave','http://wisembly.com/static/logos-clients/weave.png','http://weave.eu/'),(111,1,2,'Women\'s Forum','http://wisembly.com/static/logos-clients/wf.jpg','http://www.womens-forum.com/'),(112,1,1,'Yahoo','http://wisembly.com/static/logos-clients/yahoo.png','http://fr.yahoo.com/'),(113,1,1,'Galleries Lafayette','http://wisembly.com/static/logos-clients/lafayette.png','http://www.galerieslafayette.com/'),(114,0,1,'Saint-Gobain','http://wisembly.com/static/logos-clients/saintgobain.png','http://www.saint-gobain.com/'),(115,0,3,'La Fonderie','http://wisembly.com/static/logos-clients/fonderie.png','http://www.lafonderie-idf.fr/'),(116,0,1,'Mobivia Groupe','http://wisembly.com/static/logos-clients/mobivia.png','http://www.mobiviagroupe.com/'),(117,0,1,'Olivier Wyman','http://wisembly.com/static/logos-clients/olivierwyman.png','http://www.oliverwyman.com/'),(118,0,3,'Manganelli','http://wisembly.com/static/logos-clients/manganelli.png','http://www.manganelli.com/'),(119,0,2,'Mash-up','http://wisembly.com/static/logos-clients/mashup.png','http://www.mash-up.fr/');
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
INSERT INTO `features_event` VALUES ('event_seminaries_desc','Wisembly gives everyone at your seminar the chance to speak.  Collect all the questions and provide a better response!'),('event_seminaries_title','Get your audience to join in'),('feedback_survey_desc','<p>Wisembly has an integrated feedback survey so you can collect feedback at any time, directly via our platform.  Unlike paper questionnaires or emails sent after the event, Wisembly surveys guarantee a maximum response rate.p> <p>Collect feedback at each event and monitor progress on Wisembly to better adapt content to audience expectations. </p>'),('feedback_survey_link','Feedback survey'),('feedback_survey_title','Make your events better and better'),('fullscreen_desc','Display messages from the audience in the room to boost interaction whilst highlighting audience reactions.  You can toggle between slides and questions, choose the display method, and customize the colors and logo of your screen.'),('fullscreen_link','Full screen'),('fullscreen_title','Display a 100% interactive screen'),('interaction_analysis_desc1','Wisembly collates and analyzes all your data after each event: questions, comments, votes, number of participants, word cloud, etc.'),('interaction_analysis_desc2','You can visualize the highlights of your event from the GUI and export them in different formats.'),('interaction_analysis_link','Interaction analysis'),('interaction_analysis_title','Visualize the content of your event'),('moderation_desc','You can moderate messages from the audience before publication, if you wish, then only messages that you approve will be published.  You can also moderate messages after publication, if you change your mind.'),('moderation_link','Moderation'),('moderation_title','Moderate messages from the audience'),('multi_devices_desc1','Why change the habits of your audience by making them use cumbersome vote boxes or keypads?'),('multi_devices_desc2','<p>Web, cellphone, tablet, Twitter, email, SMS, etc.</p> <p>Wisembly works with all modern devices.</p>'),('multi_devices_desc3','Participants can use the device that they feel most comfortable with – the one they already have in their purses and pockets.'),('multi_devices_link','Multi-device'),('multi_devices_title','Wisembly works everywhere…and we mean everywhere.'),('qna_desc1','<p>Your audience can share questions and reactions, whether anonymously or otherwise, via their cell phones without interrupting you.</p> <p>We took part in all kinds of events before we designed Wisembly.  Just like us you must be tired of those who are too shy to ask questions and those who love the sound of their own voices and won’t shut up! </p>'),('qna_desc2','With Wisembly everyone gets to have their say and you select the best questions.'),('qna_link','Questions and comments'),('qna_title','Give your audience the chance to speak'),('question_answers_desc','Of course, you won’t have time to answer all of the audience’s questions during the seminar.  Why not answer questions directly on Wisembly?  As they come in or straight after the event, you can continue your dialog with your audience and provide satisfactory answers.'),('question_answers_link','Answers to questions'),('question_answers_title','Continue the dialog with your audience'),('votes_desc','Do you usually hand out vote boxes to your participants?  Do you have to take care of the rental, the deposit, and their distribution? Go digital and let your participants use the devices they’ve already got in their pockets and purses.  It’s simpler, it’s cheaper, and it’s definitely more modern!'),('votes_link','Votes'),('votes_title','Forget about vote boxes!');
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
INSERT INTO `features_meeting` VALUES ('decision_taking_desc1','<p>Meetings are the perfect place to make shared decisions.</p> <p>No need to keep going round and round the table without reaching a clear decision. You can organize a vote on Wisembly with a single click.</p>'),('decision_taking_desc2','<p>The result is immediate.</p> <p>You can keep track of every decision taken in all your meetings.</p>'),('decision_taking_link','Votes / decision making'),('decision_taking_title','Make real decisions during your meetings'),('documents_desc1','No need to juggle all your different PowerPoint presentations and documents to email to participants.'),('documents_desc2','It’s all there on your Wisembly interface and you decide in one click what to screen and what to make available to everyone. Your content is 100% secure. Only approved users can access it.'),('documents_link','Document sharing and visualization'),('documents_title','All the materials for your meeting all together in one place'),('feedback_survey_desc1','Why not get the most out of your participants by gathering feedback at the end of your meeting?'),('feedback_survey_desc2','With Wisembly you can get their opinions on how the meeting went, the subjects covered, and the decisions taken – fast.'),('feedback_survey_desc3','You can identify unresolved issues with a few clicks and improve future meetings.'),('feedback_survey_link','Feedback survey'),('feedback_survey_title','Make your meetings better and better'),('meeting_confcalls_desc','Wisembly now helps hundreds of companies to prepare, facilitate, and monitor their meetings and conference calls.'),('meeting_confcalls_title','Give your meetings a boost'),('multi_devices_desc','<p>Why waste time on endless explanations at the start of your meetings?</p> <p>Your participants connect with the device of their choice (phone, Smartphone, tablet, or PC). No need to create an account, no software to download.</p> <p>Access is immediate and intuitive.</p>'),('multi_devices_link','Multi-device'),('multi_devices_title','Your participants are already equipped'),('questions_and_ideas_desc1','<p>Every participant can react or ask a question on the subject in hand at any point without interrupting the presentation.</p> <p>You don’t miss any bright ideas.</p>'),('questions_and_ideas_desc2','<p>Participants feel involved and that their ideas are heard during your meetings.</p> <p>Everyone can follow the meeting and remain involved.</p>'),('questions_and_ideas_link','Ideas and questions are encouraged'),('questions_and_ideas_title','Your participants are involved and stay focused'),('schedule_link','Schedule'),('schedule_meetings_desc','<p>Prepare the agenda for your meeting according to the subjects to be handled.</p> <p>Share it with everyone who will participate in the meeting.</p> <p>Keep track of ideas, suggestions, and decisions taken on each subject with ease.</p>'),('schedule_meetings_title','Organize your meetings point by point'),('statistics_desc','<p>Wisembly remembers everything that happens during your meeting.</p> <p>Find the subjects discussed, documents shared, questions raised, and decisions made - fast.</p> <p>Wisembly becomes the record of your meetings.</p>'),('statistics_link','Statistics and reports'),('statistics_title','Keep track of all your meetings');
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
INSERT INTO `features_training` VALUES ('classes_trainings_desc1','Wisembly breathes life into your training sessions.'),('classes_trainings_desc2','Your students take ownership of the content. You follow their progress.'),('classes_trainings_title','Classes and training'),('documents_management_desc','No need to sort through all your PowerPoint presentations and documents to be distributed to students.  It’s all together on a single interface.  Screen them or share them with your students with a single click.'),('documents_management_link','Document management'),('documents_management_title','All your training materials together in one place'),('multi_device_desc1','Why change the habits of your students by making them use cumbersome vote boxes or keypads?'),('multi_device_desc2','<p>Web, cellphone, tablet, Twitter, email, SMS, etc.</p> <p>Wisembly works on all modern devices.</p>'),('multi_device_desc3','Your students can use the device they feel most comfortable with – the one they already have in their purses and pockets.'),('multi_device_title','Your students are already equipped'),('multi_devices_link','Multi-platform'),('qna_desc','<p>There’s no such thing as a stupid question or comment. Every question should be dealt with.</p> <p>With Wisembly your students can ask questions at any time without interrupting the class.</p> <p>They can also react to other students’ presentations and maybe share additional information.</p> <p>You can deal with questions live, at the end of class, or afterwards, directly on your Wiz.</p>'),('qna_link','Q&A'),('qna_title','Answer all your students’ questions'),('quiz_link','Quizzes'),('quizzes_desc','Break up your class with quick quizzes. You can check that the topics presented have been understood and that everyone is keeping up.  Prepared in advance, these quizzes are a great way to focus attention and bring your training to life.'),('quizzes_title','Check that everyone has understood'),('stats_reporting_desc1','After each session, you can access a detailed analysis of your class: number and type of interactions, content, grading of students, average grades, etc.'),('stats_reporting_desc2','<p>Finding your questions, slides, and notes from a class from a few months ago is child’s play and only takes seconds.  You can even ‘replay’ the class.</p> <p>Wisembly becomes the record of all your classes and training.</p>'),('stats_reporting_link','Statistics and reports'),('stats_reporting_title','The record of all your training'),('students_evaluation_desc1','<p>You shouldn’t be wasting precious time correcting multiple choice questionnaires. With Wisembly it’s all automatic.</p> <p>You only have to design your questions: open questions, multiple or single choice questions, etc.</p> <p>Your students answer directly via their phones, tablets or PCs.</p>'),('students_evaluation_desc2','<p>Correction is done automatically.</p> <p>Your students access their results immediately as well as the list of correct answers.</p> <p>You can access everyone’s answers and grades as well as overall class results.</p>'),('students_evaluation_link','Student Evaluation'),('students_evaluation_title','Your evaluations are automatically corrected'),('training_evaluation_desc','<p>You can ask your students to give feedback on your class. </p> <p>Results are collated directly on the platform and you don’t have to transfer them from paper forms. All results can be exported in Excel.</p> <p>You get a complete overview of your class and you can adapt content to match the profiles and expectations of participants.</p>'),('training_evaluation_title','Improve your training with your students'),('trainings_evaluation_link','Evaluation of training');
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
INSERT INTO `homepage` VALUES ('discover_our_happy_clients','See our<strong>400</strong> happy customers and what they think'),('discover_wisembly_for','Use Wisembly for:'),('events','Events'),('formations','Trainings'),('homepage_baseline','Wisembly is a web & mobile solution that allows you to prepare, facilitate and monitor your meetings.'),('homepage_title','Work together in meetings'),('meetings','Meetings'),('quote_dias','Everybody loved it – it’s a brand new way to contribute [...]Wisembly lets you go beyond the presentation and open a dialog.'),('testimonials','Testimonials');
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
INSERT INTO `messages` VALUES ('about','About'),('about_in_the_press','In the press'),('about_our_story','Our story'),('about_press_page_desc','They’re singing our praises'),('about_press_page_title','What the press has to say about Wisembly'),('about_resources','Resources'),('about_team_page_desc','The best team in Paris by far'),('about_team_page_title','Our team'),('about_the_team','The team'),('about_wisembly_page_desc','How it all began…'),('about_wisembly_page_title','About Wisembly'),('api','APIs'),('ask_for_quote','Ask for a quote'),('back','Back'),('call_us','Call us'),('case_context_title','The context'),('case_results_title','The results'),('case_studies_global_page_desc','Wisembly helps hundreds of companies to work together in their meetings and boost productivity.'),('case_studies_global_page_title','Be like our clients and make your meetings more productive'),('case_studies_menu_title','Case studies'),('case_usage_title','How they used Wisembly'),('choose_your_wiz','Choose your Wiz'),('classes_an_trainings_menu_title','Classes and training'),('clients','Clients'),('company','Company'),('contact','Contact'),('contact_founders','Contact the founders'),('contact_page_baseline','Do you need a quote fast?  Do you have a question? We’ll reply immediately.'),('contact_page_desc','Do you need more information?  Would you like a detailed quote? Contact us, we’re always happy to help and we’ll reply immediately.'),('contact_page_title','Contact us'),('contact_us_number','Contact us at <strong>%number%</strong>'),('developers','Developers'),('email','E-mail'),('email_sent_error','We did not manage to send your email, please contact us directly at <a href=\'mailto:contact@wisembly.com?subject=message de wisembly.com\'>contact@wisembly.com</a>'),('email_sent_success','Thanks, we have received your email, we will reply to you as soon as possible!'),('event_keyword','Event keyword'),('events_and_seminaries_menu_title','Events and seminars'),('free_trial','Free trial'),('fullname','Full name'),('jobs','Recruitment'),('jobs_page_baseline','Here at Wisembly, we’re building a product with and for our clients. Are you interested?'),('jobs_page_baseline_desc','<p>Here at Wisembly, we make the quality of the work/life balance of our teams a priority. Weekly team meetings, beer on Fridays, team-building, tickets-restaurant (meal vouchers), company health scheme.  All the advantages of a big corporation but in a booming Parisian startup! </p>'),('jobs_page_desc','We’re changing the way people meet and work together'),('jobs_page_location_title','In the center of Paris open to the whole world'),('jobs_page_open_positions_title','We’re hiring'),('jobs_page_title','Join Wisembly'),('jobs_page_why_wisembly_desc','<p>Here at Wisembly, we make the quality of the work/life balance of our teams a priority. Weekly team meetings, beer on Fridays, team-building, tickets-restaurant (meal vouchers), company health scheme.  All the advantages of a big corporation but in a booming Parisian startup! </p>'),('jobs_page_why_wisembly_title','Why work at Wisembly?'),('join_an_event','Join a Wiz'),('join_event_button','Join'),('journalists_download_kit_button','Download them here'),('journalists_download_kit_title','Journalists – are you looking for images or photos for your articles?'),('login','Login'),('login_button','Login'),('logo','Logo'),('looking_for_something_else','Didn’t find what you were looking for?'),('meetings_and_confcalls_menu_title','Meetings and conference calls'),('more_information','Request for more information'),('office_hours','<p class=\'label\'>Office hours</p>\r\n<p class=\'hours\'>Monday to Friday</p>\r\n<p class=\'hours\'>10am to 6pm</p>'),('other','Other'),('password','Password'),('phone_number','Phone number'),('pictures','Photos'),('plan_classes_training_baseline','Perfect for classes and training'),('plan_classes_training_items','<li><i class=\'list-dot\'></i> Quizzes and feedback </li> <li> <i class=\'list-dot\'></i> Document sharing and visualization </li> <li> <i class=\'list-dot\'></i> Statistics and ranking of participants </li>'),('plan_classes_training_title','Education and training'),('plan_events_seminaries_baseline','Perfect for conferences and seminars'),('plan_events_seminaries_items','<li><i class=\'list-dot\'></i> Q&A </li> <li> <i class=\'list-dot\'></i> SMS, Twitter, votes </li> <li> <i class=\'list-dot\'></i> Moderation and customization </li>'),('plan_events_seminaries_title','Events and seminars'),('plan_meetings_conf_calls_baseline','Perfect for small meetings and conference calls.'),('plan_meetings_conf_calls_items','<li><i class=\'list-dot\'></i> Q&A, surveys and questionnaires </li> <li> <i class=\'list-dot\'></i> Document sharing and visualization</li> <li> <i class=\'list-dot\'></i> Responses and comments </li>'),('plan_meetings_conf_calls_title','Meetings and conference calls'),('plans_menu_title','Plans'),('plans_page_desc','It costs nothing to try. Boost your productivity and impress your colleagues at your next conference call, training session, or seminar.'),('plans_page_title','Create a demo account in 3 clicks'),('plans_try','Try it'),('please_select','Please select...'),('read_case_study_link','Read the case study'),('reason','Subject'),('resources','Resources'),('resources_page_desc','Press kit'),('resources_page_title','Resources'),('send_button','Send'),('social','Community'),('suscribe','Subscribe'),('telephone_info','<p class=\'label\'>Phone</p>\r\n<p class=\'phone\'>%number%</p>'),('try_for_free','Free trial'),('widget','Widget'),('write_an_article','Write an article about Wisembly'),('write_to_us','Write to us'),('your_message','Your message');
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
INSERT INTO `meta` VALUES ('about','Wisembly - À propos de Wisembly',NULL,NULL),('about_press','Wisembly - Dans la presse',NULL,NULL),('about_team','Wisembly - L\'équipe',NULL,NULL),('casestudies','Wisembly - Comme nos clients, gagnez en productivité durant vos meetings',NULL,NULL),('classes_trainings','Wisembly - Cours et formations',NULL,NULL),('contact','Wisembly - Contactez nous',NULL,NULL),('events_seminaries','Wisembly - Faites participer votre public',NULL,NULL),('index','Wisembly - Collaborez en réunion',NULL,NULL),('jobs','Wisembly - Emplois',NULL,NULL),('meetings_confcalls','Wisembly - Boostez vos réunions',NULL,NULL),('plans','Wisembly - Créez un compte de démonstration en 3 clics',NULL,NULL),('resources','Wisembly - Ressources',NULL,NULL);
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
  `logo` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` varchar(255) COLLATE utf8_bin NOT NULL,
  `support` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press`
--

LOCK TABLES `press` WRITE;
/*!40000 ALTER TABLE `press` DISABLE KEYS */;
INSERT INTO `press` VALUES (1,0,'http://wisembly.com/static/logos-presse/romain-vimeo.png','15/06/2010','','Do you know Romain David from Paris? Traditional conferences just went to 2.0','http://billaut.typepad.com/jm/2010/06/connaissezvous-romain-david-from-paris-.html'),(2,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','09/09/2010','','With Balloon, make your conferences and events more interactive','http://fr.techcrunch.com/2010/09/09/avec-balloon-rendez-vos-conferences-et-evenements-plus-interactifs/'),(3,0,'http://wisembly.com/static/logos-presse/logo-locita.jpeg','22/09/2010','','Balloon, that makes your events more interactive','http://fr.locita.com/business/interviews/interview-de-romain-david-de-balloon-qui-rend-vos-evenements-plus-interactifs/'),(4,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','18/11/2010','','##TCFRemix : the live interaction results with Balloon','http://fr.techcrunch.com/2010/11/18/tcfremix-le-bilan-des-interactions-live-avec-balloon/'),(5,0,'http://wisembly.com/static/logos-presse/logo-frenchweb.png','12/01/2011','','Balloon, interaction solution for your events','http://frenchweb.fr/balloon-solution-interactivite-evenement'),(6,0,'http://wisembly.com/static/logos-presse/iteleilab.png','20/01/2011','','“It is a very, very good idea.....” analyses Marc Simoncini about Balloon during the iL@b broadcast on Itélé on 20 January last','http://fr.techcrunch.com/2010/09/09/avec-balloon-rendez-vos-conferences-et-evenements-plus-interactifs/'),(7,0,'http://wisembly.com/static/logos-presse/logo-businessinsider.png','26/02/2011','','Balloon Helps You Handle The Zillion Questions You Get During An Event','http://www.businessinsider.com/balloon-2011-2'),(8,0,'http://wisembly.com/static/logos-presse/twist.png','08/04/2011','','Balloon, winner of the Paris TWIST, thanks to Jason Calacanis','http://www.twistparis.com/startups-pitches/03-meetup-april-8th-2011/balloon/'),(9,0,'http://wisembly.com/static/logos-presse/logo-bfmacademie.png','06/05/2011','','Balloon in the quarter final of the BFM Academie 2011','http://www.radiobfm.com/front_office/static/BFM_Academie/candidats/saison4/episode_24.html'),(10,0,'http://wisembly.com/static/logos-presse/challenges.png','12/05/2011','','Balloon ranked among the “100 start-ups to invest in” by Challenges magazine','http://wisembly.com/en/about'),(11,1,'http://wisembly.com/static/logos-presse/challenges.png','06/11/2011','','Balloon quoted as an example of learning lessons from tests, in issue 271 of Challenges','http://wisembly.com/en/about'),(12,1,'http://wisembly.com/static/logos-presse/management.png','07/11/2011','','Balloon quoted as an example of nerve and bluff, in Management magazine','http://wisembly.com/en/about'),(13,1,'http://wisembly.com/static/logos-presse/lesechos.png','30/11/2011','','Balloon puts “social” into conferences Les Échos, 30 November 2011','http://wisembly.com/en/about'),(14,0,'http://wisembly.com/static/logos-presse/logo-welovesaas.png','07/09/2012','','Balloon becomes Wisembly and attacks the training and professional meetings market','http://mag.welovesaas.com/index.php/2012/balloon-devient-wisembly/'),(15,0,'http://blog.wisembly.com/wp-content/uploads/2013/01/europas.png','10/01/2013','','The Europas: Wisembly in the shortlist for Best French Startup!','http://blog.wisembly.com/2013/01/wisembly-nomine-dans-la-categorie-meilleure-startup-francaise/');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Guillaume Potier','Co-founder',1,'https://si0.twimg.com/profile_images/1226148948/gui_reasonably_small.png','https://si0.twimg.com/profile_images/1226148948/gui_reasonably_small.png','Technical Director, Guillaume is the genius behind the millions of lines of code written since the creation of Wisemby. Outside the Blue Room, he is a renowned skier and a great lover of single malt Scotch whiskies, as well as the South of France. It seems that, now, he prefers Paris...','guillaumepotier','guillaume@wisembly.com','http://www.imctobitch.com/'),(2,'Romain David','Co-founder',1,'https://si0.twimg.com/profile_images/1169535523/Incubateur_HEC_2010_001_17_reasonably_small.jpg','https://si0.twimg.com/profile_images/1169535523/Incubateur_HEC_2010_001_17_reasonably_small.jpg','A product guy, Romain stands behind Wisembly\'s product vision and does everything to make using our solutions a real pleasure. He downloads around 30 new applis every day and has between 2 and 3 million profiles recorded on different services.....”just for testing”.\r\nOutside the office, it\'s the piano, guitar and photos.','Romaind','romain@wisembly.com','http://www.romaindavid.fr'),(3,'Andreï Vestemeanu','Co-founder',1,'https://si0.twimg.com/profile_images/562299389/12152_193369436530_681606530_3642796_7351367_n_reasonably_small.jpg','https://si0.twimg.com/profile_images/562299389/12152_193369436530_681606530_3642796_7351367_n_reasonably_small.jpg','In charge of business, it is Andrei\'s job to control the army of Wisemby salespeople! He understands our customers and their needs, how to open the right doors and never gives up. He is a lover of good beer, travel and, of course, Paris St Germain!','avestemeanu','andrei@wisembly.com',NULL),(5,'Cédric Esposito-Farese','Business Developer',2,'https://si0.twimg.com/profile_images/1268689072/Tweet_reasonably_small.jpg','https://si0.twimg.com/profile_images/1268689072/Tweet_reasonably_small.jpg','Cedric was Wisembly\'s first employee. Effective and a good listener, he rapidly became the go-to person for the whole team and, above all, our customers.! A great Roller Hockey player and ecology convert, he takes care of preaching the good word to the whole team.','CeD_EF','cedric@wisemby.com',NULL),(6,'Amaury de Granvilliers','Business Developer',2,'https://mug0.assets-yammer.com/mugshot/images/75x75/5kcWL1WRsrVpX79MZVnVPBXK2NmSt6LJ','https://mug0.assets-yammer.com/mugshot/images/75x75/5kcWL1WRsrVpX79MZVnVPBXK2NmSt6LJ','Passionate and enthusiastic, every day Amaury communicates his energy to our customers and prospects! When he leaves Wisembly, he plays tennis and football and frequents all the VIP events in the capital.','adegranvilliers','amaury@wisembly.com',NULL),(7,'Charlotte Brunet','Business Developer',2,'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc4/174042_501866846_1481368364_n.jpg','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc4/174042_501866846_1481368364_n.jpg','A ray of sunshine at Wisembly, Charlotte knows how to keep our customers loyal and they appreciate her patience and good humour. A great lover of Spanish culture, she can advise you on the best tapas bars in the capital.','chabrunett','charlotte@wisembly.com',NULL),(8,'Christina Dago','Office Manager',3,'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/369588_515024832_1433490751_n.jpg','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/369588_515024832_1433490751_n.jpg','Available, generous and attentive, Christina is mother to us all! She moves easily between recruitment, invoices, suppliers and internal event organisation. She is great follower of funny stories, so don\'t forget to tell her a joke from time to time!',NULL,'christina@wisembly.com',NULL),(9,'Nicolas Chenet','Frontend Developer',4,'https://si0.twimg.com/profile_images/1790376121/c846143c4a9111e1abb01231381b65e3_7_reasonably_small.jpg','https://si0.twimg.com/profile_images/1790376121/c846143c4a9111e1abb01231381b65e3_7_reasonably_small.jpg','Nico is half designer, half developer. Passionate about clean, intuitive interfaces, he uses his talents to the benefit of all Wisembly\'s features. When he goes home, he becomes an unconditional cat lover, all cats!','nicolaschenet','nicolas@wisembly.com',NULL),(10,'Yoann Losbar','PHP \"Brazilian\" Developper',4,'https://si0.twimg.com/profile_images/1336672649/2011-05-02-155713.jpg','https://si0.twimg.com/profile_images/1336672649/2011-05-02-155713.jpg','Talented, self-taught developer, Yoan is always looking for technical challenges and has a true thirst for knowledge. When he is not coding, he codes, and when he needs a change, he codes...','YoannLosbar','yoann@wisembly.com',NULL),(11,'Baptiste Clavié','QA Developer',4,'https://si0.twimg.com/profile_images/1399907993/2824ef746269b35091240ed6e66e21a5_reasonably_small.jpeg','https://si0.twimg.com/profile_images/1399907993/2824ef746269b35091240ed6e66e21a5_reasonably_small.jpeg','Baptiste is a passionate developer with a pronounced affection for open-source and the mastery of the subtile art of Trolling. He switches its geek / otaku personality on work hours to be our quality guy, PR reviewer, and a little bit troller too.','talus_','baptiste@wisembly.com','http://baptiste.clavié.net/'),(12,'Mohamed Mauranne','In Charge of Events',4,'https://si0.twimg.com/profile_images/2472511653/3mrvuq0f50lk07tqg3tw_reasonably_small.jpeg','https://si0.twimg.com/profile_images/2472511653/3mrvuq0f50lk07tqg3tw_reasonably_small.jpeg','He links Photoshop keyboard shortcuts quicker than his shadow and can handle any situation on the ground. This is our event man-in-charge. A workaholic, he still finds time for his personal projects as actor, producer and creator of a web magazine.','momauranne','mohamed@wisembly.com',NULL),(13,'Kathleen Alcini','Communication Officer Intern',3,'http://remixjobs.com/upload/pics/a662ba7a017e7de0954bf1905f85ec38.jpg','http://remixjobs.com/upload/pics/a662ba7a017e7de0954bf1905f85ec38.jpg','She knows the web like the back of her hand and you will soon make her acquaintance since she is responsible for keeping you up to date with all that is happening at Wisembly.\r\nWhen out of the office she continues to blog on fashion and culture.','kate_lollipops','kathleen@wisembly.com','http://kathleen-alcini.fr/'),(14,'Emmanuel Cousin','Tech support',3,'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/368778_640604549_1986755409_n.jpg','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/368778_640604549_1986755409_n.jpg','Reactive and always listening, Emmanuel is in charge of support : you have a question about using Wisembly? He will reply to you and give you the means to make your events and meetings a great success. A great lover of table tennis, he has progressed brilliantly whilst at Wisembly.','emcousin','emmanuel@wisembly.com','http://www.emmanuel-cousin.com'),(15,'Selma Baboka','Commercial Assistant',2,'https://dl.dropbox.com/u/10702277/selma.png','https://dl.dropbox.com/u/10702277/selma.png','Although still a student of Master Management, Selma is already capable of explaining Wisembly in several languages! She is passionate about new technology, gastronomy and interior decoration.',NULL,'selma@wisembly.com',NULL),(16,'Rémy Gazelot','Developer Intern',4,'https://si0.twimg.com/profile_images/2543466831/w4i1gv7jvrxa6ey80kla_reasonably_small.jpeg','https://si0.twimg.com/profile_images/2543466831/w4i1gv7jvrxa6ey80kla_reasonably_small.jpeg','Rémy is mad about coding. He spends hours, a smile on his face, in front of his terminal. He is, above all, very gifted and very productive. He spends his weekends at Princes park, where he has been a subscriber since the creation of the club, if not before.','remygazelot','remy@wisembly.com',NULL),(17,'Gabriel Majoulet','Developer Intern',4,'https://si0.twimg.com/profile_images/1782603381/gabriel-majoulet_reasonably_small.jpg','https://si0.twimg.com/profile_images/1782603381/gabriel-majoulet_reasonably_small.jpg','Gabriel started as an intern and quickly became indispensible. His technical skills and his effectiveness are quickly becoming legendary in the famous Blue Room. When he leaves the office, he often goes to the gym, which makes him Wisembly\'s BMI record holder.','gmajoulet','gabriel@wisembly.com','http://www.gabriel-majoulet.fr/');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-11 18:02:40
