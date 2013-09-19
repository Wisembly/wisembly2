-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wisembly2_fr
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.10.1

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
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `client` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `client_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `illustration_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `context` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usage` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `results` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `blockquote` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `interviewed` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'la-poste','La Poste','/static/images/clients/la-poste.png','Séminaires à La Poste','seminaries',NULL,'<ul>\r\n							<li>Une journée de séminaire annuel d’échanges de pratiques</li>\r\n							<li>120 managers de la direction financière de La Poste</li>\r\n							<li>Thème de travail: Réussir la décentralisation</li>\r\n						</ul>','<ul>\r\n							<li>Ouverture de la plateforme en amont pour recueillir les questions des \r\n	managers</li>\r\n							<li>Feedback en live via questions et commentaires envoyés depuis leur téléphone \r\n	(SMS et web) </li>\r\n							<li>Nuage de mots clés en live</li>\r\n							<li>Travail en sous-groupes de 15. Restitution et vote de la faisabilité de ses \r\n	propositions sous forme de sondage</li>\r\n						</ul>','<ul>\r\n							<li>95 questions réunies en amont</li>\r\n							<li>120 questions posées en direct</li>\r\n							<li>7 sondages en direct pour identifier les facteurs de succès</li>\r\n							<li>100% de participation</li>\r\n						</ul>','Au-delà de l’évidente dynamique ludique que crée Wisembly, il redonne à nos pratiques d’intervention un gain spectaculaire dans la capacité d’interaction.','Olivier Lagrée, Consultant DELOITTE'),(2,'sncf','SNCF','/static/images/clients/sncf.png','Le Tchat du président à la SNCF','confcalls',NULL,'<ul> <li>Management Call mensuel d’1h30</li> <li>600 top managers connectés en région</li> <li>Présentation des résultats et des orientations stratégiques par le Comex</li> </ul>','<ul> <li>Présentation et partage des slides sur la plateforme en live</li> <li>Réaction et questions en live des managers depuis leur ordinateur</li> <li>Vote des managers pour les questions qui les intéressent</li> <li>Réponses du président aux questions par ordre de popularité</li><li>Questionnaire de satisfaction auquel les managers répondent à la fin</li> </ul>','<ul> <li>Conf-calls structurés et efficaces</li> <li>60% de participation</li> <li>150 questions et commentaires</li> <li>900 likes sur les questions en moyenne</li> <li>75% de taux de réponse au questionnaire de satisfaction</li></ul>','Wisembly a créé un véritable u-turn dans la relation managériale de l\'entreprise. La solution nous accompagne dans toutes nos réunions.','Patrick Ropert, Directeur de la Communication, SNCF'),(3,'auchan','Auchan','/static/images/clients/auchan.png','Conference Calls chez Auchan','confcalls',NULL,'<ul>\r\n							<li>Réunions bimensuelles de 2h d’avancement de projet</li> \r\n							<li>15 participants</li>\r\n							<li>Participants répartis dans différents sites et pays</li>\r\n						</ul>','<ul>\r\n							<li>Partage des slides en temps réel</li>\r\n							<li>Questions posées tout au long du call aux participants sur la plateforme</li>\r\n							<li>Réactions des participants en direct</li>\r\n							<li>Définition de l’agenda du prochain call à la fin du call</li>\r\n							<li>Partage des supports à la fin de la conférence</li>\r\n						</ul>','<ul>\r\n							<li>100% de participation</li>\r\n							<li>50 questions et idées en moyenne</li>\r\n							<li>3 documents partagés</li>\r\n						</ul>','Le pilotage des questions live et évaluations permet d\'aboutir facilement et rapidement à des décisions partagées, co-construites, là où la conversation téléphonique seule renvoie souvent l\'animateur à sa solitude.','Emmanuel Le Bouille, Directeur Innovation, AUCHAN'),(4,'hec','HEC','/static/images/clients/hec.png','Formations à HEC','trainings','/static/images/wallpapers/hec.jpg','<ul>\r\n							<li>6 sessions de 3h de cours</li>\r\n							<li>35 étudiants</li>\r\n							<li>Intervenants extérieurs, présentations de cas</li>\r\n						</ul>','<ul>\r\n							<li>Mise en ligne des supports de cours sur la plateforme que les étudiants \r\ntéléchargent entre chaque session</li>\r\n							<li>Intervention des étudiants pendant les présentations des autres et apport de \r\nleurs contributions</li>\r\n							<li>Evaluation du niveau de connaissances et de progression des étudiants sur \r\nWisembly</li>\r\n							<li>Réponses à certaines questions sur la plateforme</li>\r\n						</ul>','<ul>\r\n							<li>944 questions et commentaires, 4007 likes sur ces questions</li>\r\n							<li>60 réponses à des questions directement sur la plateforme</li>\r\n							<li>20 quiz durant les sessions</li>\r\n							<li>2 évaluations du cours + 2 tests de connaissance</li>\r\n							<li>50 documents partagés</li>\r\n						</ul>','Wisembly est un booster de ROI des formations et de l\'enseignement. Cela devient \"le manuel interactif\" qui accompagne l\'ensemble des participants, en communauté avec leurs formateurs.','Georges-Edouard Dias, Professeur à HEC');
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
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `logo` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
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
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_event`
--

LOCK TABLES `features_event` WRITE;
/*!40000 ALTER TABLE `features_event` DISABLE KEYS */;
INSERT INTO `features_event` VALUES ('event_seminaries_desc','Wisembly donne la parole à tous les participants de votre séminaire. Collectez toutes les questions et répondez mieux à leurs attentes !'),('event_seminaries_title','Faites participer votre public'),('event_stream_item_1_author','Sébastien F. via email'),('event_stream_item_1_text','Faut-il changer le top management pour devenir digital ?'),('event_stream_item_2_author','Cédric E. via mobile'),('event_stream_item_2_text','Etre Digital Ready pour nos entreprises n\'est elle pas une question de survie a moyen terme ?'),('event_stream_item_3_author','Cécile D. via Web'),('event_stream_item_3_text','Quelle place pour l\'innovation dans les sociétés dirigées par des profils 1.0 ?'),('event_stream_item_4_author','Mohamed M. via Twitter\r\n'),('event_stream_item_4_text','Enfin une vrai réflexion de fonds sur un métier qui pourrait changer.....une conduite de changement pas simple....bravo!'),('event_stream_item_5_author','Christina D. via SMS'),('event_stream_item_5_text','Merci de prendre en compte toutes nos questions, c\'est génial !'),('feedback_survey_desc','<p>Wisembly intègre un editeur d’enquête de satisfaction qui vous permet de collecter du feedback à tout moment directement via notre plateforme. Contrairement aux questionnaires “papier” ou aux mails envoyés après coup, les enquêtes de satisfaction Wisembly vous assure d’un taux de réponse maximum.</p>\r\n						<p>Collectez du feedback à chaque événement et suivez l’évolution sur Wisembly afin d’adapter au mieux le contenu aux attentes du public.</p>'),('feedback_survey_link','Enquête de satisfaction'),('feedback_survey_title','Améliorez vos événements au fur et à mesure'),('fullscreen_desc','Afficher les messages du public en salle permet de booster les interactions tout en mettant en valeur les réactions de l’audience. Vous pouvez jongler entre les slides et les questions, choisir le mode d’affichage et personnaliser les couleurs et le logo de votre écran.'),('fullscreen_link','Fullscreen'),('fullscreen_title','Affichez un écran 100% interactif'),('interaction_analysis_desc1','Après chaque événement, Wisembly compile et analyse toutes vos données: questions, commentaires, votes, nombre de participants, nuage de mots, etc.'),('interaction_analysis_desc2','Depuis cette interface graphique, vous pourrez visualiser les faits marquants de votre événement et les exporter sous différents formats.'),('interaction_analysis_link','Analyse des interactions'),('interaction_analysis_title','Visualisez le contenu de votre événement'),('moderation_desc','Si vous le souhaitez, vous pouvez modérer les messages du public à priori. Dans ce cas, seuls les messages que vous validez seront publiés. Vous pouvez également modérer les messages a posteriori si vous changez d’avis.'),('moderation_link','Modération'),('moderation_title','Modérez les messages du public'),('multi_devices_desc1','Pourquoi changer les habitudes de votre public en leur distribuant des boîtiers ou autres appareils encombrant ?'),('multi_devices_desc2','<p>Web, mobile, tablette, Twitter, email, SMS...</p>\r\n						<p>Wisembly fonctionne depuis tous les appareils nés après le minitel.</p>'),('multi_devices_desc3','L’audience peut utiliser le device avec lequel il se sent à l’aise c’est à dire celui qui est déjà dans leur poche.'),('multi_devices_link','Multi-devices'),('multi_devices_title','Wisembly marche partout. Point.'),('qna_desc1','<p>Sans vous interrompre, de manière anonyme ou non, le public peut partager ses questions et ses réactions avec son téléphone mobile.</p>\r\n									<p>Nous avons participé à beaucoup d’événements avant de concevoir Wisembly.</p>'),('qna_desc2','<p>Comme nous, vous devez en avoir marre des timides qui n’osent pas poser de questions ou de ceux qui monopolisent le micro pendant de longues minutes...</p>\r\n<p>Avec Wisembly, tout le monde peut s’exprimer, c’est vous qui selectionnez les meilleures questions.</p>'),('qna_link','Questions & commentaires'),('qna_title','Laissez s’exprimer votre public'),('question_answers_desc','Vous n’aurez sûrement pas le temps de répondre à toutes les questions de l’audience durant le séminaire. Pourquoi ne pas répondre au questions directement sur Wisembly? Au fur et à mesure ou après l’événement, vous continuez ainsi le dialogue avec votre public et répondez totalement à leurs attentes.'),('question_answers_link','Réponses'),('question_answers_title','Continuez le dialogue avec votre audience'),('votes_desc','Vous avez l’habitude de distribuer des boîtiers de vote à vos participants ? Vous vous occupez de la location, de la caution, de la distribution ? Passez au numérique et permettez enfin à votre public d’utiliser l’appareil qu’ils ont déjà dans la poche. C’est beaucoup plus simple, moins cher et résolument plus moderne !'),('votes_link','Votes'),('votes_title','Oubliez les boîtiers de vote!');
/*!40000 ALTER TABLE `features_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_meeting`
--

DROP TABLE IF EXISTS `features_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_meeting` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_meeting`
--

LOCK TABLES `features_meeting` WRITE;
/*!40000 ALTER TABLE `features_meeting` DISABLE KEYS */;
INSERT INTO `features_meeting` VALUES ('decision_taking_desc1','<p>Les réunions sont de parfaits moments pour prendre des décisions communes.</p>\r\n									<p>Pas la peine de faire un tour de table interminable sans arriver à une décision claire. Un simple clic sur Wisembly vous permet d’organiser un vote.</p>'),('decision_taking_desc2','<p>Le résultat est immédiat.</p>\r\n									<p>Vous gardez une trace de chacune des décisions prises dans vos différentes réunions.</p>'),('decision_taking_link','Prise de décision'),('decision_taking_title','Prenez de vraies décisions durant vos réunions'),('documents_desc1','Arrêtez de jongler entre vos différentes présentations PowerPoint et les documents à envoyer par mail aux participants.'),('documents_desc2','Tout est rassemblé sur votre interface Wisembly, décidez en un clic de les projeter ou de les mettre à disposition de tous. Votre contenu est totalement sécurisé. Seuls les utilisateurs accrédités peuvent y accéder.'),('documents_link','Partage de documents'),('documents_title','Tous les supports de votre réunion centralisés à un même endroit'),('feedback_survey_desc1','Pourquoi ne pas profiter de vos participants pour continuer à récolter du feedback à la fin de votre réunion ?'),('feedback_survey_desc2','Avec Wisembly, vous pouvez très rapidement récolter leur opinion sur le déroulé de la réunion, sur les sujets abordés et les décisions qui ont été prises.'),('feedback_survey_desc3','Quelques clics suffisent à identifier les points encore flous et à améliorer vos prochaines réunions.'),('feedback_survey_link','Enquête de satisfaction'),('feedback_survey_title','Améliorez vos réunions au fur et à mesure'),('meeting_confcalls_desc','Wisembly aide des centaines d’entreprises à mieux préparer, animer et assurer le suivi de leurs réunions & conf-call.'),('meeting_confcalls_title','Boostez vos réunions'),('meeting_poll_choice_1','Ce que tous les managers doivent savoir sur Wisembly'),('meeting_poll_choice_2','A tous les managers qui souffrent de réunionite'),('meeting_poll_choice_3','Information exclusive pour les managers en avance sur leur temps'),('meeting_poll_title','Quel titre pour la prochaine newsletter ?'),('meeting_stream_item_1_author','Tristan D.via Twitter'),('meeting_stream_item_1_text','Comment éviter le syndrome de la réunionite ?'),('meeting_stream_item_2_author','Mathieu G.via mobile'),('meeting_stream_item_2_text','Est-il vrai que les cadres passent un tiers de leur temps en réunion ?'),('meeting_stream_item_3_author','Baptiste C. via Web'),('meeting_stream_item_3_text','Quels sont vos conseils pour améliorer la qualité de nos réunions ?'),('meeting_stream_item_4_author','Rémy G. via email'),('meeting_stream_item_4_text','La réunionite révèle un problème de communication'),('meeting_stream_item_5_author','Gabriel M. via SMS'),('meeting_stream_item_5_text','Comment faire participer tout le monde sans déborder sur le timing ?'),('multi_devices_desc_1','<p>Pourquoi perdre du temps avec des explications interminables en début de réunion?</p>'),('multi_devices_desc_2','<p>Vos participants se connectent avec le device de leur choix (téléphone, smartphone, tablette, PC). Aucun compte à créer, pas de logiciel à télécharger.</p>\r\n'),('multi_devices_desc_3','<p>L’accès est immédiat et intuitif.</p>'),('multi_devices_link','Multi-devices'),('multi_devices_title','Vos participants sont déjà équipés'),('questions_and_ideas_desc1','<p>Chaque participant peut à tout moment réagir ou poser une question sur le sujet traité sans interrompre la présentation.</p>\r\n									<p>Vous ne passez à côté d’aucune idée pertinente.</p>'),('questions_and_ideas_desc2','<p>Les participants se sentent impliqués et écoutés lors de vos réunions.</p>\r\n									<p>Tout le monde suit la réunion et reste impliqué.</p>'),('questions_and_ideas_link','Idées et questions'),('questions_and_ideas_title','Vos participants sont impliqués et restent concentrés'),('schedule_link','Ordre du jour'),('schedule_meetings_desc','<p>Préparez l’agenda de votre réunion en fonction des sujets à traiter.</p>\r\n						<p>Partagez l’ordre du jour avec l’ensemble des personnes qui participent à la réunion.</p>\r\n						<p>Retrouvez facilement les idées, propositions et décisions prises sur les différents sujets traités.</p>'),('schedule_meetings_title','Organisez vos réunions point par point'),('statistics_desc_1','<p>Wisembly garde en mémoire tout ce qui s’est passé durant votre réunion.</p>'),('statistics_desc_2','<p>Retrouvez rapidement les sujets traités, les documents partagés, les questions soulevées et les décisions qui ont été prises.</p>'),('statistics_desc_3','<p>Wisembly devient la mémoire de vos réunions.</p>'),('statistics_link','Statistiques et analytics'),('statistics_title','Gardez une trace de chacune de vos réunions');
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
INSERT INTO `features_training` VALUES ('classes_trainings_desc1','Wisembly vous permet de rythmer vos formations.'),('classes_trainings_desc2','Vos élèves s\'approprient le contenu. Vous suivez leur évolution.'),('classes_trainings_title','Cours et formations'),('documents_management_desc','Arrêtez de jongler entre vos différentes présentations PowerPoint et les documents à distribuer aux élèves. Tout est centralisé sur une seule interface. Projetez les ou partagez les avec vos élèves en un seul clic.'),('documents_management_link','Gestion des documents'),('documents_management_title','Tous les supports de votre formation centralisés à un même endroit'),('multi_device_desc1','Pourquoi changer les habitudes de vos élèves en leur distribuant des boîtiers ou autres appareils encombrants ?'),('multi_device_desc2','<p>Web, mobile, tablette, Twitter, email, SMS...</p>\r\n						<p>Wisembly fonctionne depuis tous les appareils nés après le minitel.</p>'),('multi_device_desc3','Vos élèves peuvent utiliser le device avec lequel ils se sentent à l’aise c’est à dire celui qu’ils ont sur eux.'),('multi_device_title','Vos élèves sont déjà équipés'),('multi_devices_link','Multi-device'),('qna_desc','<p>Il n’y a pas de commentaire ou de question bête. Chaque question devrait être traitée.</p>\r\n						<p>Avec Wisembly, vos élèves peuvent à tout moment poser leurs questions sans interrompre le cours.</p>\r\n						<p>Ils peuvent aussi réagir aux présentations des autres élèves et éventuellement partager des informations complémentaires.</p>\r\n						<p>Vous pouvez traiter les questions en direct, à la fin du cours, ou bien après le cours directement sur votre Wiz.</p>'),('qna_link','Q&A'),('qna_title','Répondez à toutes les questions de vos élèves'),('quiz_link','Quiz'),('quizzes_desc','Ponctuez votre cours à l’aide de questions rapides. Assurez-vous que les notions présentées ont bien été comprises et que tout le monde suit. Préparées à l’avance, ces questions sont très efficaces pour booster l’attention et rythmer votre formation.'),('quizzes_title','Assurez-vous que tout le monde suit'),('stats_reporting_desc1','Après chaque session, vous avez accès à une analyse détaillée de votre formation: volume et type d’interactions, contenus, classement des élèves, notes moyenne etc.'),('stats_reporting_desc2','<p>Il devient facile de retrouver les questions, les slides et les notes d’une formation vieille d’il y a plusieurs mois en quelques secondes et de “rejouer” le cours.</p>\r\n						<p>Wisembly devient la mémoire de toutes vos formations.</p>'),('stats_reporting_link','Stats & reporting'),('stats_reporting_title','La mémoire de vos formations'),('students_evaluation_desc1','<p>Il n’est pas normal que vous perdiez un temps précieux à corriger vos QCM d\'évaluation. Grâce à Wisembly, tout est automatique.</p>\r\n									<p>Vous concevez simplement vos évaluations: questions ouvertes, questions à choix multiples, questions à choix unique...</p>\r\n									<p>Vos élèves y répondent directement depuis leur téléphone, tablette ou PC.</p>'),('students_evaluation_desc2','<p>La correction est effectuée automatiquement.</p>\r\n									<p>Vos étudiants accèdent immédiatement à leurs résultats ainsi qu’à la liste de bonnes réponses.</p>\r\n									<p>Vous avez accès aux réponses et aux notes de chacun ainsi qu’aux résultats de l’ensemble de la classe.</p>'),('students_evaluation_link','Evaluations des élèves'),('students_evaluation_title','Vos évaluations sont corrigées immédiatement'),('training_evaluation_desc','<p>Vous pouvez demander à vos élèves de donner leur opinion sur votre cours.</p>\r\n						<p>Les résultats sont directement compilés sur la plateforme et vous n’avez pas à les retranscrire depuis des formulaires papiers. Tous les résultats sont exportables sous excel.</p>\r\n						<p>Vous avez ainsi une vision d’ensemble sur votre cours et pouvez adapter le contenu aux attentes et profils des particpants.</p>'),('training_evaluation_title','Améliorez vos formations avec vos élèves'),('training_poll_choice_1','Une solution collaborative pour réunion d\'entreprise'),('training_poll_choice_2','Un système de boîtiers de vote'),('training_poll_choice_3','Un réseau social professionnel'),('training_poll_title','Qu\'est ce que Wisembly pour vous?'),('training_stream_item_1_author','Yoann L. via mobile'),('training_stream_item_1_text','Comment peut-on mesurer l\'influence de l\'internet sur un achat ?'),('training_stream_item_2_author','Ludovic B. via SMS'),('training_stream_item_2_text','Grégory, combien coute une campagne virale et comment se décomposent les investissements ?'),('training_stream_item_3_author','Charlotte B. via email'),('training_stream_item_3_text','Les marques ne négligent-elles pas les forums car elles sont incapables d\'en maîtriser le contenu (risque de buzz négatif...) ?'),('training_stream_item_4_author','Amaury D. via mobile'),('training_stream_item_4_text','Combien cela coûte-t-il de développer une application de \"qualité\" pour une marque ?'),('training_stream_item_5_author','Jules B. via web'),('training_stream_item_5_text','Certaines marques comme Apple semblent avoir une vraie affinité avec leurs consommateurs, est-ce grâce aux social médias ?'),('trainings_evaluation_link','Evaluation des formations');
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
INSERT INTO `history` VALUES (1,'Juin 2010','Balloon est fondé par Andreï, Pierre et Romain','L’idée de départ de Balloon était un réseau social géolocalisé: permettre à des gens se trouvant dans un même lieu d’échanger des messages depuis leur téléphone portable.<br/><br/>\r\n\r\nAprès plusieurs phases de test lors de campagnes étudiantes, forums entreprises ou soirée, Balloon est utilisé lors d’un conférence permettant aux participants et aux intervenants d’échanger de manière complètement nouvelle.<br/><br/>\r\n\r\nBalloon tel qu’il existe aujourd’hui était né.',NULL,'http://wisembly.com/static/img-story/story1.jpg'),(2,'Août 2010','Guillaume accepte de s’associer à Balloon et devient CTO','Suite au départ de Pierre, Guillaume vient complèter l’équipe et se met au travail pour développer la nouvelle version de Balloon.',NULL,'http://wisembly.com/static/img-story/story2.jpg'),(3,'Septembre 2010','Intégration à l’incubateur d’HEC','Suite à une rentrée réussie et au succès de la nouvelle version, Balloon intègre l’incubateur d’HEC pour une année d’accompagnement.','http://www.hec.fr/incubateur-hec/','http://wisembly.com/static/img-story/story3.jpeg'),(4,'Mars 2011','Lancement de la version en ligne de Balloon','Balloon est disponible directement en ligne et devient utilisable de manière autonome par nos clients. C’est le début de centaines d’événements réalisés à travers le monde sans notre intervention directe.',NULL,'http://wisembly.com/static/img-story/Story4.png'),(5,'Septembre 2011','La 100 000 ème question est posée sur Balloon','100 000 questions ont été posées sur Balloon en un peu plus d’un an. Une étape importante pour toute l’équipe qui montre le changement qu’a apporté Balloon dans les événements de nos clients.',NULL,'http://wisembly.com/static/img-story/story5.jpeg'),(6,'Février 2012','Balloon s’agrandit','Balloon emménage 10 rue thérèse, à deux pas d’Opéra pour accueillir les 10 membres de l’équipe.',NULL,'http://wisembly.com/static/img-story/story6.jpeg'),(7,'Mai 2012','Le changement, c’est maintenant','Lancement de la nouvelle version de Balloon portée par les toutes dernières innovations technologiques: Symfony2 pour le framework PHP, Backbonejs pour l\'intéraction applicative client et du push en temps réel via socket.io et node.js.',NULL,'http://wisembly.com/static/img-story/story7.jpeg'),(8,'Septembre 2012','Balloon devient Wisembly','Balloon devient Wisembly et s’attaque au marché de la formation et des réunions professionnelles.',NULL,'http://wisembly.com/static/logo.png');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage`
--

DROP TABLE IF EXISTS `homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage` (
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage`
--

LOCK TABLES `homepage` WRITE;
/*!40000 ALTER TABLE `homepage` DISABLE KEYS */;
INSERT INTO `homepage` VALUES ('discover_our_happy_clients','Découvrez nos <strong>400</strong> heureux clients et leurs avis'),('discover_wisembly_for','Découvrez Wisembly pour les :'),('events','Evénements'),('formations','Formations'),('homepage_baseline','Wisembly est une solution web & mobile qui vous permet de préparer, d’animer et d’assurer le suivi de vos réunions.'),('homepage_poll_choice_1','Des chiffres concrets'),('homepage_poll_choice_2','Une vision globale claire'),('homepage_poll_choice_3','Une roadmap précise'),('homepage_poll_question','Qu\'attendez vous de la présentation d\'aujourd\'hui?'),('homepage_title','Collaborez en réunion'),('meetings','Réunions'),('quote_dias','Tout le monde a adoré : c\'est une manière d\'intervenir qui n\'existait pas avant [...] Wisembly permet d\'aller au-delà de la présentation et d\'ouvrir le dialogue.'),('testimonials','Témoignages');
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
INSERT INTO `messages` VALUES ('about','À propos'),('about_in_the_press','Dans la presse'),('about_our_story','Notre histoire'),('about_press_page_desc','Ils chantent nos éloges'),('about_press_page_title','Wisembly dans la presse'),('about_resources','Ressources'),('about_team_page_desc','De loin la meilleure équipe à Paris'),('about_team_page_title','Notre équipe'),('about_the_team','L\'équipe'),('about_wisembly_page_desc','Comment cette belle histoire a commencé...'),('about_wisembly_page_title','À propos de Wisembly'),('api','APIs'),('ask_for_quote','Demande de devis'),('back','Retour'),('call_us','Contactez nous'),('case_context_title','Le contexte'),('case_results_title','Les résultats'),('case_studies','Etudes de cas'),('case_studies_global_page_desc','Wisembly aide des centaines d’entreprise à collaborer en réunion et à booster leur productivité.'),('case_studies_global_page_title','Comme nos clients: gagnez en productivité durant vos meetings'),('case_studies_menu_title','Etudes de cas'),('case_usage_title','L\'utilisation de Wisembly'),('choose_your_wiz','Choisissez le Wiz qui vous convient'),('choose_your_wiz_help','Que vous ayez un ou plusieurs événements, vous payez au mois et sans aucun engagement. C\'est simple et flexible !'),('classes_an_trainings_menu_title','Cours et formations'),('clients','Clients'),('company','Company'),('contact','Contact'),('contact_founders','Contacter les fondateurs'),('contact_page_baseline','Vous avez besoin d’un devis en urgence ? Vous avez une simple question ? Nous vous répondons immédiatement.'),('contact_page_desc','Il vous manque une information ? Vous avez besoin d’un devis détaillé ? Contactez-nous, nous sommes à votre disposition. Nous vous répondons immédiatement.'),('contact_page_title','Prenez contact avec nous'),('contact_us_number','Contactez nous au <strong>%number%</strong>'),('developers','Développeurs'),('email','E-mail'),('email_sent_error','Nous n\'avons pas réussi à envoyer votre email, veuillez nous contacter directement à <a href=\'mailto:contact@wisembly.com?subject=message de wisembly.com\'>contact@wisembly.com</a>'),('email_sent_success','Merci, nous avons bien reçu votre email, nous vous y répondrons au plus vite !'),('event_keyword','Mot-clé de votre Wiz'),('events_and_seminaries_menu_title','Événements et séminaires'),('free_trial','Essai gratuit'),('free_trial_incentive','Essayez Wisembly. Gratuit. Pas besoin de carte de crédit.'),('fullname','Nom complet'),('homepage_slide_info','Présentation Wisembly.ppt'),('jobs','Recrutement'),('jobs_page_baseline','Chez Wisembly, nous construisons un produit avec et pour nos clients. Ca vous intéresse?'),('jobs_page_baseline_desc','<p>Faites ce que vous aimez le plus et venez travailler chez Wisembly. Nous ne recrutons pas sur CV, nous ne sommes pas intéressés par vos diplômes ou votre mention au bac. Nous recrutons des gens passionnés capables de résoudre des problèmes, de relever des défis et de créer quelque chose de grand. Ca vous ressemble ? Rejoignez l’équipe ! </p>'),('jobs_page_desc','Nous transformons la manière dont les gens se réunissent et collaborent.'),('jobs_page_location_title','En plein de centre de Paris, pour le monde entier'),('jobs_page_open_positions_title','Positions ouvertes'),('jobs_page_title','Rejoignez Wisembly'),('jobs_page_why_wisembly_desc','<p>Chez Wisembly, nous accordons une place fondamentale à la qualité de vie et de travail de nos équipes. Réunions d’équipe hebdomadaires, bière du vendredi, teambuilding, tickets-restaurant, mutuelle d’entreprise… Tous les avantages d’une grosse boîte au sein d’une startup parisienne en pleine croissance !</p>'),('jobs_page_why_wisembly_title','Pourquoi travailler chez Wisembly ?'),('join_an_event','Rejoignez un Wiz'),('join_event_button','Rejoindre'),('journalists_download_kit_button','Téléchargez-les ici'),('journalists_download_kit_title','Journalistes, vous recherchez des images, des photos pour illustrer vos articles ?'),('login','Login'),('login_button','Login'),('logo','Logo'),('looking_for_something_else','Vous recherchez quelque chose d\'autre que ce qui est ici ?'),('meetings_and_confcalls_menu_title','Réunions et conf-calls'),('more_information','Demande de renseignements'),('office_hours','<p class=\'label\'>Office hours</p> <p class=\'hours\'>Du lundi au vendredi</p> <p class=\'hours\'>De 9h à 20h</p>'),('organizer','Organisateur'),('other','Autre'),('participant','Participant'),('password','Mot de passe'),('phone_number','Numéro de téléphone'),('pictures','Photos'),('plan_classes_training_baseline','Rythmez vos formations et suivez l\'évolution de vos élèves.'),('plan_classes_training_items','<li> <i class=\'list-dot\'></i> Quiz et évaluations </li> <li> <i class=\'list-dot\'></i> Partage et visualisation de documents </li> <li> <i class=\'list-dot\'></i> Statistiques et classement des participants </li>'),('plan_classes_training_title','Enseignement & formations'),('plan_events_seminaries_baseline','Donnez la parole à tous les participants de votre séminaire.'),('plan_events_seminaries_items','<li> <i class=\'list-dot\'></i> Q&A </li> <li> <i class=\'list-dot\'></i> SMS, Twitter, votes </li> <li> <i class=\'list-dot\'></i> Modération et personnalisation </li>'),('plan_events_seminaries_title','Evénements & séminaires'),('plan_meetings_conf_calls_baseline','Préparez, animez et assurez le suivi de vos réunions & conf-call.'),('plan_meetings_conf_calls_items','<li> <i class=\'list-dot\'></i> Q&A, sondages et questionnaires </li> <li> <i class=\'list-dot\'></i> Partage et visualisation de documents </li> <li> <i class=\'list-dot\'></i> Réponses et commentaires </li>'),('plan_meetings_conf_calls_title','Réunions et conf-calls'),('plans_menu_title','Plans'),('plans_page_desc','Cela ne coûte rien d’essayer. Boostez votre productivité et impressionnez vos collaborateurs lors de votre prochain conf-call, formation ou séminaire.'),('plans_page_title','Créez un compte de démonstration en 3 clics'),('plans_try','Essayer'),('please_select','Veuillez choisir...'),('poll_button_sending','Envoi en cours'),('poll_button_sent','Envoyé'),('poll_button_submit','Envoyer'),('press','Presse'),('quote_stelmaszyk','Nous l\'utilisons pour débattre des idées, collecter du feedback et arriver à des solutions collectives.'),('read_case_study_link','Lire l\'étude de cas'),('reason','Motif'),('resources','Ressources'),('resources_page_desc','Pour vos besoins de journalisme'),('resources_page_title','Ressources'),('send_button','Envoyer'),('social','Communauté'),('stream_textarea_placeholder','Entrer votre question'),('suscribe','S\'abonner'),('telephone_info','<p class=\'label\'>Telephone</p>\r\n<p class=\'phone\'>%number%</p>'),('try_for_free','Essayez gratuitement'),('widget','Widget'),('write_an_article','Écrire un article sur Wisembly'),('write_to_us','Ecrivez-nous'),('you','Vous via site web'),('your_message','Votre message');
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
INSERT INTO `meta` VALUES ('about','Wisembly - À propos de Wisembly',NULL,NULL),('about_press','Wisembly - Dans la presse',NULL,NULL),('about_team','Wisembly - L\'équipe',NULL,NULL),('assurez_vous_que_tout_le_monde_suit','Assurez-vous que tout le monde suit','Animez vos formations et impliquez vos formés à 100%.','animateur formation, animation formation, animer une formation, animer formation'),('casestudies','Wisembly - Comme nos clients, gagnez en productivité durant vos meetings',NULL,NULL),('classes_trainings','Wisembly - Cours et formations','Animez vos formations.','animateur formation, animation formation, animer une formation, animer formation'),('contact','Wisembly - Contactez nous',NULL,NULL),('events_seminaries','Wisembly - Faites participer votre public','Organisez des conférences et des événements 2.0.  Q&A, votes, sondages... votre événement va devenir 100% interactifs.','organisation conférence, organiser conférence, organisation événement, organiser événement, conférence interactive, événement interactif, séminaire interactif'),('index','Wisembly - Collaborez en réunion',NULL,NULL),('jobs','Wisembly - Emplois',NULL,NULL),('laissez_sexprimer_votre_public','Wisembly - Laissez s\'exprimer votre public','Faites participer le public par SMS afin de collecter toutes les questions de la salle.','Questions par SMS, Q&A, Q&A conference, séance de questions réponses, questions réponses SMS, questions SMS séminaire, Questions SMS événement'),('meetings_confcalls','Wisembly - Boostez vos réunions','Combattez la réunionite et boostez vos réunions.','réunionite, reunionite, reunionites, réunionites'),('oubliez_les_boitiers_de_vote','Wisembly - Oubliez les boitiers de vote',NULL,NULL),('plans','Wisembly - Créez un compte de démonstration en 3 clics',NULL,NULL),('prenez_de_vraies_decisions_durant_vos_reunions','Wisembly - Prenez de vraies décisions durant vos réunions','Wisembly est un logiciel qui vous permet d\'animer toutes vos réunions.','animer une réunion, conduite de réunion, technique de réunion, animation de réunion, conduire une réunion'),('resources','Wisembly - Ressources',NULL,NULL),('vos_evaluations_sont_corrigees_immediatement','Wisembly - Vos évaluations sont corrigées immédiatement','Wisembly est un logiciel qui vous permet d\'évaluer en temps réel vos formés grâce à différents modules (Q&A, questionnaires, sondages...).','evaluation formation, évaluation formation, évaluer une formation, questionnaire d\'évaluation, évaluer la formation, outils évaluation, évaluation en formation');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press`
--

LOCK TABLES `press` WRITE;
/*!40000 ALTER TABLE `press` DISABLE KEYS */;
INSERT INTO `press` VALUES (1,0,'http://wisembly.com/static/logos-presse/romain-vimeo.png','15/06/2010',NULL,'Connaissez-vous Romain David from Paris ? La conférence traditionnelle se met au 2.0','http://billaut.typepad.com/jm/2010/06/connaissezvous-romain-david-from-paris-.html'),(2,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','09/09/2010',NULL,'Avec Balloon, Rendez vos conférences et événements plus interactifs','http://fr.techcrunch.com/2010/09/09/avec-balloon-rendez-vos-conferences-et-evenements-plus-interactifs/'),(3,0,'http://wisembly.com/static/logos-presse/logo-locita.jpeg','22/09/2010',NULL,'Balloon qui rend vos événements plus interactifs','http://fr.locita.com/business/interviews/interview-de-romain-david-de-balloon-qui-rend-vos-evenements-plus-interactifs/'),(4,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','18/11/2010',NULL,'#TCFRemix : le Bilan des intéractions live avec Balloon','http://fr.techcrunch.com/2010/11/18/tcfremix-le-bilan-des-interactions-live-avec-balloon/'),(5,0,'http://wisembly.com/static/logos-presse/logo-frenchweb.png','12/01/2011',NULL,'Balloon, solution d\'interactivité pour vos événements','http://frenchweb.fr/balloon-solution-interactivite-evenement'),(6,0,'http://wisembly.com/static/logos-presse/iteleilab.png','20/01/2011',NULL,'\"C\'est une très très bonne idée...\" : analyse de Marc Simoncini à propos de Balloon lors de l\'émission iL@b sur iTélé le 20 janvier dernier.','http://fr.techcrunch.com/2010/09/09/avec-balloon-rendez-vos-conferences-et-evenements-plus-interactifs/'),(7,0,'http://wisembly.com/static/logos-presse/logo-businessinsider.png','26/02/2011',NULL,'Balloon Helps You Handle The Zillion Questions You Get During An Event','http://www.businessinsider.com/balloon-2011-2'),(8,0,'http://wisembly.com/static/logos-presse/twist.png','08/04/2011',NULL,'Balloon, vainqueur du TWIST Paris grâce à Jason Calacanis','http://www.twistparis.com/startups-pitches/03-meetup-april-8th-2011/balloon/'),(9,0,'http://wisembly.com/static/logos-presse/logo-bfmacademie.png','06/05/2011',NULL,'Balloon en quart de finale de la BFM Académie 2011','http://www.radiobfm.com/front_office/static/BFM_Academie/candidats/saison4/episode_24.html'),(10,0,'http://wisembly.com/static/logos-presse/challenges.png','12/05/2011',NULL,'Balloon classé parmi les \"100 startup où investir\" par le magazine Challenges','http://corpo.votrequestion.com/fr/about'),(11,1,'http://wisembly.com/static/logos-presse/challenges.png','06/11/2011',NULL,'Balloon cité en exemple pour tirer les leçons de ses tests dans le n°271 de Challenges',NULL),(12,1,'http://wisembly.com/static/logos-presse/management.png','07/11/2011',NULL,'Balloon cité en exemple pour avoir de l\'aplomb et savoir bluffer dans le magazine Management',NULL),(13,1,'http://wisembly.com/static/logos-presse/lesechos.png','30/11/2011',NULL,'Balloon met du \"social\" dans les conférences - Édition du 30 novembre 2011 du journal Les Échos',NULL),(14,0,'http://wisembly.com/static/logos-presse/logo-welovesaas.png','07/09/2012',NULL,'Balloon devient Wisembly et s\'attaque au marché de la formation et des réunions professionnelles','http://mag.welovesaas.com/index.php/2012/balloon-devient-wisembly/'),(15,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','12/09/2012',NULL,'Balloon devient Wisembly et propose de nouvelles offres spéciales entreprises','http://fr.techcrunch.com/2012/09/12/balloon-devient-wisembly-et-propose-de-nouvelles-offres-speciales-entreprises/'),(16,0,'http://wisembly.com/static/logos-presse/logo_collaboratif-info.png','18/09/2012',NULL,'Balloon devient Wisembly et adresse de nouveaux usages en entreprise','http://www.collaboratif-info.fr/actualite/balloon-devient-wisembly-et-adresse-de-nouveaux-usages-en-entreprise'),(17,0,'http://wisembly.com/static/logos-presse/latribune.jpeg','05/10/2012',NULL,'\"Désormais, le modèle c’est un peu Balloon qui est devenu Wisembly\"','http://www.latribune.fr/actualites/economie/20121005trib000722993/start-up-il-n-y-a-pas-que-l-argent-qui-compte.html'),(18,0,'http://wisembly.com/static/logos-presse/jdn.jpeg','24/10/2012',NULL,'5 start-up françaises du SaaS à suivre en 2013','http://www.journaldunet.com/solutions/cloud-computing/start-up-francaises-du-saas.shtml'),(19,0,'http://wisembly.com/static/logos-presse/ccm.png','14/11/2012',NULL,'Pour des conférences 2.0, Wisembly sait créer une vraie interaction avec le public','http://www.commentcamarche.net/news/5861381-pour-des-conferences-2-0-wisembly-sait-creer-une-vraie-interaction-avec-le-public'),(20,0,'http://blog.wisembly.com/wp-content/uploads/2013/01/europas.png','10/01/2013',NULL,'The Europas: Wisembly in the shortlist for Best French Startup!','http://blog.wisembly.com/2013/01/wisembly-nomine-dans-la-categorie-meilleure-startup-francaise/');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Guillaume Potier','Co-fondateur',1,'/static/images/team/guillaume.jpg','','Directeur Technique, Guillaume est le génie qui se cache derrière les millions de lignes de codes écrites depuis la création de Wisembly. \r\nHors de la salle Bleue, c\'est un skieur de renom ainsi qu\'un grand amateur de single malts écossais et du sud de la France. Il paraît que maintenant il préfère Paris...','guillaumepotier','guillaume@wisembly.com','http://www.imctobitch.com/'),(2,'Romain David','Co-fondateur',1,'/static/images/team/romain.jpg','','Product guy, Romain est le grand garant de la vision produit de Wisembly et fait tout en sorte pour que ce soit toujours un vrai plaisir d\'utiliser nos solutions.\r\nIl télecharge environ 30 nouvelles applis tous les jours et a entre 2 et 3 millions de profils enregistrés sur différents services... \"pour tester\".\r\nEn dehors du bureau, c\'est piano, guitare et photos!','Romaind','romain@wisembly.com','http://www.romaindavid.fr'),(3,'Andrei Vestemeanu','Co-fondateur',1,'/static/images/team/andrei.jpg','','En charge du Business, Andreï mène de mains de maître l\'armée de commerciaux Wisembly! Il comprend nos clients et leurs besoins, sait ouvrir les bonnes portes et n\'abandonne jamais! \r\nC\'est un amateur de bonnes bières, de voyages et du PSG bien sûr.','avestemeanu','andrei@wisembly.com',NULL),(4,'Cédric Esposito-Farese','Business developer',2,'/static/images/team/cedric.jpg','','Cédric est le premier employé de Wisembly. Efficace et à l\'écoute, il est rapidement devenu incontournable pour toute l\'équipe et surtout pour nos clients!\r\nGrand joueur de Roller Hockey et écologiste convaincu, il se charge de prêcher la bonne parole auprès de toute l\'équipe.','CeD_EF','cedric@wisembly.com',NULL),(5,'Christina Dago','Office manager',3,'/static/images/team/christina.jpg','','Disponible, généreuse et attentive, Christina est notre maman à tous!\r\nElle navigue aisément entre recrutements, factures, fournisseurs et organisation d\'événements internes.\r\nC\'est une grande adepte des fous rires, alors n\'oubliez pas de lui raconter une petite blague de temps en temps!',NULL,'christina@wisembly.com',NULL),(6,'Nicolas Chenet','Front-end developer',4,'/static/images/team/nicolas.jpg','','Nico est moitié designer, moitié développeur. Passionné par les interfaces propres et intuitives, il met son talent au profit de toutes les fonctionnalités de Wisembly.\r\nQuand il rentre chez lui, il devient un amoureux inconditionnel des chats, de tous les chats!','nicolaschenet','nicolas@wisembly.com',NULL),(7,'Baptiste Clavié','QA developer',4,'/static/images/team/baptiste.jpg','','Baptiste est un développeur curieux et open-source addict. Il troque temporairement son costume de doux rêveur, otaku et geek trolleur la journée pour endosser chez Wisembly celui de Quality man, PR reviewer et un petit peu trolleur quand même..','talus_','baptiste@wisembly.com','http://baptiste.clavié.net/'),(8,'Mohamed Mauranne','Responsable évenementiel',3,'/static/images/team/mohamed.jpg','','Il enchaîne les raccourcis clavier de Photoshop plus vite que son ombre et sait gérer à peu près toutes les situations sur le terrain. Voici notre responsable événementiel. \r\nDrogué de travail, il trouve tout de même le temps pour ses projets perso : comédien, réalisateur et créateur d\'un web-magazine!','momauranne','mohamed@wisembly.com',NULL),(9,'Rémy Gazelot','Dev intern',4,'/static/images/team/remy.jpg','','Rémy est un codeur fou. Il passe des heures, sourire aux lèvres, devant son terminal. Eternel enthousiaste,   il est surtout très doué et très productif.\r\nIl passe ses week-end au parc des Princes auquel il est abonné depuis la création du club, si ce n\'est pas avant.','remygazelot','remy@wisembly.com',NULL),(10,'Gabriel Majoulet','Dev intern',4,'/static/images/team/gabriel.jpg','','Gabriel a commencé par un stage et s\'est vite rendu essentiel. Ses compétences techniques et son efficacité sont en passe de devenir légendaire dans la fameuse salle bleue.\r\nQuand il quitte le bureau, c\'est souvent pour aller à la salle de muscu, ce qui fait de lui le \"recordman IMC\" de Wisembly!','gmajoulet','gabriel@wisembly.com','http://www.gabriel-majoulet.fr/'),(11,'Sébastien Fosset','Directeur commercial',0,'/static/images/team/sebastien.jpg','','',NULL,NULL,NULL),(12,'Cecile Decrulle','Business developer',0,'/static/images/team/cecile.jpg','','',NULL,NULL,NULL),(20,'Mathieu Ghaleb','Front-end developer',0,'/static/images/team/mathieu.jpg','','',NULL,NULL,NULL),(21,'Tristan Daeschner','Product designer',0,'/static/images/team/tristan.jpg','','',NULL,NULL,NULL);
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

-- Dump completed on 2013-09-19 16:57:35
