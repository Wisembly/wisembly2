-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wisembly2_it
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
INSERT INTO `cases` VALUES (1,'la-poste','La Poste','/static/images/clients/la-poste.png','Seminari a La Poste','Seminari',NULL,'<ul> <li>Un giorno di seminario, una volta l’anno, per lo scambio di informazioni sulle procedure</li> <li>120 manager del comparto finanza de La Poste</li> <li>Tema del giorno: Decentralizzazione di successo</li> </ul>','<ul> <li>Apertura della piattaforma in anticipo per la raccolta delle domande da parte dei manager</li> <li>Riscontri in diretta e commenti spediti dai loro smartphone (SMS e internet) </li> <li>Live keyword cloud</li> <li>Lavori in sotto-gruppi di 15. Relazione e votazione sulla fattibilità dei loro suggerimenti attraverso il modulo di sondaggio</li> </ul>','<ul> <li>95 domande raccolte in anticipo</li> <li>120 domande fatte durante il seminario</li> <li>7 sondaggi online per identificare i fattori di successo</li> <li>100% di participazione</li> </ul>','Oltre agli ovvii elementi di divertimento generati da Wisembly, si è creato un notevole increamento di opportunità di interazione per il modo in cui è stato condotto il seminario.','Olivier Lagrée, Consulente DELOITTE'),(2,'sncf','SNCF','/static/images/clients/sncf.png','SNCF Discorso del Presidente','confcalls',NULL,'<ul> <li>Tutti i mesi 90 minuti di Management Call </li> <li>600 top manager regionali connessi</li> <li>Presentazione dei risultati e line guida strategiche a cura di  Comex</li> </ul>','<ul> <li>Presentazione in diretta e condivisione delle slide sulla piattaforma</li> <li>Commenti e domande in diretta da parte dei manager attraverso i loro computer</li> <li>I manager votano le domande di loro interesse</li> <li>Il Presidente risponde alle domande e ai commenti dei manager in ordine di popolarità</li><li>Alla fine della call, i manager compilano un questionario di soddisfazione</li> </ul>','<ul> <li>Conference call strutturate ed efficienti</li> <li>60% di partecipazione</li> <li>150 domande e commenti</li> <li>media di 900 voti di popolarità a commenti e domande</li> <li>75% di tasso di risposta al questionario di soddisfazione</li></ul>','Wisembly ha portato una svolta genuine nelle relazioni inter-manageriali dell’azienda. Ora usiamo la soluzione in tutte le nostre riunioni.','Patrick Ropert, Directtore Comunicazioni, SNCF'),(3,'auchan','Auchan','/static/images/clients/auchan.png','Conference call in Auchan','confcalls',NULL,'<ul> <li>Rriunioni di stato avanzamento progetti bimestrali di 2 ore</li> <li>15 participanti</li> <li>I partecipanti sono dislocati in luoghi e paesi diversi</li> </ul>','<ul> <li>Condivisione delle slide in tempo reale</li> <li>Ai partecipanti sulla piattaforma vengono inviate domande nel corso della call</li> <li>Risposte in diretta dei partecipanti</li> <li>Alla fine di ogni call, definizione dell’agenda per la call successiva</li> <li>Condivisione dei media alla fine della conference call</li> </ul>','<ul> <li>100% di partecipazione</li> <li>Media di 50 domande e nuove idee per riunione</li> <li>3 documenti condivisi</li> </ul>','Il controllo live delle domande e dei feedback permette di prendere decisioni veloci, condivise e in collaborazione, dove invece la sola telefonata, spesso corrisponde a un leader che parla a se stesso.','Emmanuel Le Bouille, Direttore dell’Innovazione, AUCHAN'),(4,'hec','HEC','/static/images/clients/hec.png','Formazione in HEC','trainings','/static/images/wallpapers/hec.jpg','<ul> <li>6 seesioni di corsi da 3 ore</li> <li>35 studenti</li> <li>Relatori esterni, presentazioni di casi </li> </ul>','<ul> <li>Caricamento sulla piattaforma delle dispense del corso per gli studenti scaricabili tra una sessione e l’altra</li> <li>Interventi degli studenti durante le presentazioni dei colleghi e input dei loro contributi</li> <li>Contributo al livello di conoscenza e ai progressi degli studenti grazie a Wisembly</li> <li>Risposte a domande selezionate sulla piattaforma</li> </ul>','<ul> <li>944 domande e commenti, con 4.007 voti di popolarità</li> <li>60 risposte a domande direttamente sulla piattaforma</li> <li>20 quiz durante le sessioni</li> <li>2 corsi di valutazione + 2 test di conoscenza</li> <li>50 documenti condivisi</li> </ul>','Wisembly potenzia il ROI dei corsi di formazione e dell’insegnamento. E’ diventato un “libro di testo interattivo” per supportare tutti i partecipanti insieme ai loro educatori.','Georges-Edouard Dias, Professore della business school HEC');
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
INSERT INTO `features_event` VALUES ('event_seminaries_desc','Con Wisembly offri la possibilità a tutti i partecipanti di intervenire. Raccogli i loro commenti e dai loro un riscontro!'),('event_seminaries_title','Fai partecipare l’audience'),('event_stream_item_1_author','Sébastien F. via email'),('event_stream_item_1_text','Faut-il changer le top management pour devenir digital ?'),('event_stream_item_2_author','Cédric E. via mobile'),('event_stream_item_2_text','Etre Digital Ready pour nos entreprises n\'est elle pas une question de survie a moyen terme ?'),('event_stream_item_3_author','Cécile D. via Web'),('event_stream_item_3_text','Quelle place pour l\'innovation dans les sociétés dirigées par des profils 1.0 ?'),('event_stream_item_4_author','Mohamed M. via Twitter\r\n'),('event_stream_item_4_text','Enfin une vrai réflexion de fonds sur un métier qui pourrait changer.....une conduite de changement pas simple....bravo!'),('event_stream_item_5_author','Christina D. via SMS'),('event_stream_item_5_text','Merci de prendre en compte toutes nos questions, c\'est génial !'),('feedback_survey_desc','<p>Attraverso un modulo integrato per generare sondaggi, Wisembly ti permette di raccogliere i feedback del pubblico direttamente e in qualsiasi momento. I sondaggi di Wisembly garantiscono un tasso di risposta molto elevato perchè sono immediati e proposti durante l’evento.</p> <p>Raccogli i feedback del pubblico ad ogni evento e verifica i tuoi progressi su Wisembly per adattare meglio i contenuti in base alle aspettative dell’audience. </p>'),('feedback_survey_link','Sondaggi di feedback'),('feedback_survey_title','Rendi i tuoi eventi sempre migliori'),('fullscreen_desc','Proietti i commenti dell’audience per potenziare l’interazione ed evidenziare le reazioni agli argomenti trattati. Puoi alternare tra slide e commenti, scegliere la modalità di visualizzazione e personalizzare la proiezione con i tuoi colori e il tuo logo.'),('fullscreen_link','Schermo intero'),('fullscreen_title','Proietti uno schermo interattivo al 100%'),('interaction_analysis_desc1','Alla fine di ogni evento, Wisembly raccoglie ed analizza tutti i dati pervenuti: domande, commenti, voti, numero dei partecipanti, word cloud, ecc.'),('interaction_analysis_desc2','Puoi vedere gli highlight del tuo evento attraverso l’interfaccia grafica ed esportarli in diversi formati.'),('interaction_analysis_link','Analisi di interazione'),('interaction_analysis_title','Vsualizzi il contenuto del tuo evento'),('moderation_desc','Se lo desideri, puoi moderare i commenti da parte dell’audience in modo tale che vengano pubblicati solo quelli che tu hai approvato. Se hai cambiato idea, potrai moderare i commenti anche dopo la loro pubblicazione.'),('moderation_link','Moderazione'),('moderation_title','Modera i commenti da parte dell’audience'),('multi_devices_desc1','Perchè cambiare le abitudini della tua audience facendogli usare votatori antiquati e inaffidabili?'),('multi_devices_desc2','<p>Web, cellulare, smartphone, tablet, Twitter, email, SMS, ecc.</p> <p>Wisembly funziona con tutti i moderni dispositivi.</p>'),('multi_devices_desc3','I partecipanti potranno usare il dispositivo con il quale si sentono di più a loro agio – quello che si trova già nelle loro tasce e nelle loro borse.'),('multi_devices_link','Multi-device'),('multi_devices_title','Wisembly funziona dovunque … e intendiamo davvero dovunque.'),('qna_desc1','<p>Senza interromperti e grazie ai propri smartphone, la tua audience può condividere domande e reazioni sia in forma anonima che pubblica.</p> <p>Prima di aver progettato Wisembly abbiamo partecipato a diversi tipi di evento e in ognuno c’erano sempre persone dell’audience troppo timide per fare domande e altre troppo logorroiche che non finivano mai di parlare! </p>'),('qna_desc2','Con Wisembly ognuno può esprimersi e tu potrai selezionare le domande migliori.'),('qna_link','Domande e commenti'),('qna_title','Offri alla tua audience la possibilità di esprimersi'),('question_answers_desc','Naturalmente, durante l’evento, non avrai il tempo di rispondere a tutte le domande dell’audience. Perchè non farlo direttamente su Wisembly? Mentre arrivano sulla piattaforma o adddirittura anche dopo l’evento, potrai continuare il dialogo con i partecipanti ed offrire loro risposte soddisfacenti.'),('question_answers_link','Risposte alle domande'),('question_answers_title','Mantieni il dialogo con la tua audience'),('votes_desc','Per i tuoi eventi utilizzi votatori da distribuire ad ogni partecipante? Devi prenderti cura del noleggio, del deposito e della distribuzione? Passa al digitale e lascia che i partecipanti utilizzino i dispositivi che hanno già in tasca e in borsa. E’ più facile, più economico e sicuramente più moderno!'),('votes_link','Votazioni'),('votes_title','Dimentica i votatori!');
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
INSERT INTO `features_meeting` VALUES ('decision_taking_desc1','<p>Le riunioni sono i luoghi ideali per prendere decisioni condivise.</p> <p>Al posto di dilungarsi tra i partecipanti senza prendere una chiara decisione, potrai organizzare una votazione su Wisembly con un singolo click.</p>'),('decision_taking_desc2','<p>Il risultato è immediato.</p> <p>Puoi tenere traccia di ogni decisione presa durante le tue riunioni.</p>'),('decision_taking_link','prendere decisioni'),('decision_taking_title','Prendi vere decisioni nel corso delle tue riunioni'),('documents_desc1','Non è più necessario destreggiarsi tra presentazioni Power Point e documenti da inviare via email ai partecipanti.'),('documents_desc2','E’ tutto lì, disponibile sulla tua interfaccia Wisembly e puoi decidere con un solo click cosa proiettare e cosa rendere disponibile a tutti. I tuoi contenuti sono sicuri al 100% perchè solo gli utenti approvati potranno accedervi.'),('documents_link','Condivisione dei documenti'),('documents_title','Tutti i contenuti della tua riunione insieme in un unico posto'),('feedback_survey_desc1','Perchè non ottenere il massimo dai partecipanti chiedendo loro un feedback alla fine della riunione?'),('feedback_survey_desc2','Con Wisembly puoi ottenere velocemente le loro opinioni su come è andata la riunione, gli argomenti trattati e le decisioni prese.'),('feedback_survey_desc3','In pochi click puoi identificare problemi irrisolti e migliorare le tue riunioni future.'),('feedback_survey_link','Sondaggi di feedback'),('feedback_survey_title','Rendi i tuoi eventi sempre migliori'),('meeting_confcalls_desc','Wisembly aiuta centinaia di aziende e organizzazioni a preparare, facilitare e analizzare le loro riunioni e conference call.'),('meeting_confcalls_title','Potenzia le tue riunioni'),('meeting_poll_choice_1','Ce que tous les managers doivent savoir sur Wisembly'),('meeting_poll_choice_2','A tous les managers qui souffrent de réunionite'),('meeting_poll_choice_3','Information exclusive pour les managers en avance sur leur temps'),('meeting_poll_title','Quel titre pour la prochaine newsletter ?'),('meeting_stream_item_1_author','Tristan D.via Twitter'),('meeting_stream_item_1_text','Comment éviter le syndrome de la réunionite ?'),('meeting_stream_item_2_author','Mathieu G.via mobile'),('meeting_stream_item_2_text','Est-il vrai que les cadres passent un tiers de leur temps en réunion ?'),('meeting_stream_item_3_author','Baptiste C. via Web'),('meeting_stream_item_3_text','Quels sont vos conseils pour améliorer la qualité de nos réunions ?'),('meeting_stream_item_4_author','Rémy G. via email'),('meeting_stream_item_4_text','La réunionite révèle un problème de communication'),('meeting_stream_item_5_author','Gabriel M. via SMS'),('meeting_stream_item_5_text','Comment faire participer tout le monde sans déborder sur le timing ?'),('multi_devices_desc_1','<p>Perchè perdere tempo in spiegazioni infinite all’inizio delle tue riunioni?</p>'),('multi_devices_desc_2','<p>I partecipanti si connettono con il dispositivo che preferiscono (cellulare, Smartphone, tablet, o PC), senza la necessità registrarsi o di scaricare un software.</p> <p>L’accesso è immediato e intuitivo.</p>'),('multi_devices_desc_3','<p>L’accesso è immediato e intuitivo.</p>'),('multi_devices_link','Multi-device'),('multi_devices_title','I tuoi partecipanti sono già equipaggiati'),('questions_and_ideas_desc1','<p>In qualsiasi momento ogni partecipante può reagire o fare una domanda in merito all’argomento trattato, senza interrompere la presentazione.</p> <p>Nessuna idea brillante andrà persa.</p>'),('questions_and_ideas_desc2','<p>I partecipanti si sentono coinvolti e le loro idee vengono ascoltate durante la riunione.</p> <p>Chiunque può seguire la riunione e restare coinvolto.</p>'),('questions_and_ideas_link','Stimola idee e domande'),('questions_and_ideas_title','I tuoi partecipanti sono coinvolti e focalizzati'),('schedule_link','Programma'),('schedule_meetings_desc','<p>Prepara l’agenda della tua riunione in base agli argomenti che verranno trattati.</p> <p>Condividila con ciascuno dei partecipanti.</p> <p>Tieni traccia delle idee, suggerimenti e decisioni prese in merito ad ogni argomento, con facilità.</p>'),('schedule_meetings_title','Organizza le tue riunioni punto per punto'),('statistics_desc_1','<p>Wisembly ricorda tutto quello che è successo durante la tua riunione.</p>'),('statistics_desc_2','<p>Trova velocemente gli argomenti discussi, i documenti condivisi, le domande fatte e le decisioni prese.</p>'),('statistics_desc_3','<p>Wisembly diventa il registro delle tue riunioni.</p>'),('statistics_link','Statistiche e report'),('statistics_title','Tieni traccia di tutte le tue riunioni');
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
INSERT INTO `features_training` VALUES ('classes_trainings_desc1','Wisembly ravviva i tuoi corsi di formazione e addestramento.'),('classes_trainings_desc2','Gli studenti si appropriano dei contenuti e tu segui i loro progressi.'),('classes_trainings_title','Formazione e addestramento'),('documents_management_desc','Non è più necessario gestire la distribuzione di Power Point e documenti agli studenti. Tutto è disponibile su un’unica interfaccia. Con un singolo click è possibile proiettare o condividere qualsiasi documento.'),('documents_management_link','Gestione documenti'),('documents_management_title','Documenti e file insieme in un unico posto'),('multi_device_desc1','Perchè cambiare le abitudini dei tuoi studenti facendogli usare votatori antiquati e inaffidabili?'),('multi_device_desc2','<p>Web, cellulari, smartphone, tablet, Twitter, email, SMS, ecc.</p> <p>Wisembly funziona con tutti i moderni dispositivi.</p>'),('multi_device_desc3','I tuoi studenti potranno usare il dispositivo con il quale si sentono di più a loro agio – quello che si trova già nelle loro tasce e nelle loro borse.'),('multi_device_title','I tuoi studenti sono già equipaggiati'),('multi_devices_link','Multi-device'),('qna_desc','<p>Nessuna domanda o commento sono stupidi. Ogni domanda dovrebbe avere una risposta.</p> <p>Con Wisembly i tuoi studenti possono fare domande in qualsiasi momento senza interrompere la lezione.</p> <p>Possono anche replicare alle presentazioni di altri studenti ed eventualmente condividere informazioni aggiuntive.</p> <p>Puoi replicare alle domande in diretta, alla fine della lezione o successivamente sul Wiz.</p>'),('qna_link','Q&A'),('qna_title','Rispondi alle domande dei tuoi studenti'),('quiz_link','Quiz'),('quizzes_desc','Durante la lezione rompi il ghiaccio con qualche quiz veloce per verificare che gli argomenti presentati siano stati capiti e che tutti stiano al passo. Se preparati in anticipo, i quiz aiutano a mantenere l’attenzione e ravvivano la formazione.'),('quizzes_title','Verifica che tutti abbiano capito'),('stats_reporting_desc1','Alla fine di ogni sessione puoi accedere ad analisi dettagliate sulla tua lezione: numero e tipo di interazioni, contenuto, preparazione degli studenti, preparazione media, ecc.'),('stats_reporting_desc2','<p>Ritrovare le domande, le slide e le note di una lezione tenuta qualche mese fa è un giocho da ragazzi e richiede solo qualche secondo. Addirittura è possibile ‘ripetere’ la stessa lezione.</p> <p>Wisembly diventa il registro di tutti i tuoi corsi di formazione e addestramento.</p>'),('stats_reporting_link','Statistiche e report'),('stats_reporting_title','Il registro di tutti i tuoi corsi'),('students_evaluation_desc1','<p>Non dovresti sprecare tempo prezioso a correggere questionari con scelte multiple. Con Wisembly è tutto automatico.</p> <p>Devi solo impostare le tue domande: aperte, chiuse single, chiuse multiple, ecc.</p> <p>Gli studenti riponderanno direttamente con i loro telefoni, smartphone, tablet o PC.</p>'),('students_evaluation_desc2','<p>La correzione avviene automaticamente.</p> <p>Una volta concluso il questionario, gli studenti accedono immediatamente ai loro risultati e alla lista delle risposte corrette.</p> <p>Tu puoi accedere alle risposte di ogni singolo studente e alla valutazione generale della classe.</p>'),('students_evaluation_link','Feedback studenti'),('students_evaluation_title','Il tuo feedback viene corretto automaticamente'),('training_evaluation_desc','<p>Puoi chiedere agli studenti un feedback sulla lezione. </p> <p>I risultati vengono raccolti direttamente sulla piattaforma, senza la necessità di doverli ricopiare da un modulo in carta. Tutti i risultati possono essere esportati in formato Excel.</p> <p>Puoi ottenere una panoramica completa sulla classe e in futuro addattare i contenuti affinchè incontrino le aspettative dei partecipanti.</p>'),('training_evaluation_title','Migliora i tuoi corsi grazie ai tuoi studenti'),('training_poll_choice_1','Une solution collaborative pour réunion d\'entreprise'),('training_poll_choice_2','Un système de boîtiers de vote'),('training_poll_choice_3','Un réseau social professionnel'),('training_poll_title','Qu\'est ce que Wisembly pour vous?'),('training_stream_item_1_author','Yoann L. via mobile'),('training_stream_item_1_text','Comment peut-on mesurer l\'influence de l\'internet sur un achat ?'),('training_stream_item_2_author','Ludovic B. via SMS'),('training_stream_item_2_text','Grégory, combien coute une campagne virale et comment se décomposent les investissements ?'),('training_stream_item_3_author','Charlotte B. via email'),('training_stream_item_3_text','Les marques ne négligent-elles pas les forums car elles sont incapables d\'en maîtriser le contenu (risque de buzz négatif...) ?'),('training_stream_item_4_author','Amaury D. via mobile'),('training_stream_item_4_text','Combien cela coûte-t-il de développer une application de \"qualité\" pour une marque ?'),('training_stream_item_5_author','Jules B. via web'),('training_stream_item_5_text','Certaines marques comme Apple semblent avoir une vraie affinité avec leurs consommateurs, est-ce grâce aux social médias ?'),('trainings_evaluation_link','Valutazioni dei corsi');
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
INSERT INTO `history` VALUES (1,'Juin 2010','Balloon est fondé par Andreï, Pierre et Romain','L’idée de départ de Balloon était un réseau social géolocalisé. Son but : permettre à des gens se trouvant dans un même lieu d’échanger des messages depuis leur téléphone portable.<br/><br/>\r\n\r\nAprès plusieurs phases de test lors de campagnes étudiantes, forums entreprises ou soirée, Balloon est utilisé lors d’une conférence permettant aux participants et aux intervenants d’échanger d\'une manière complètement nouvelle.<br/><br/>\r\n\r\nBalloon tel qu’il existe aujourd’hui était né.',NULL,'http://wisembly.com/static/img-story/story1.jpg'),(2,'Août 2010','Guillaume accepte de s’associer à Balloon et devient CTO','Suite au départ de Pierre, Guillaume vient complèter l’équipe et se met au travail pour développer la nouvelle version de Balloon.',NULL,'http://wisembly.com/static/img-story/story2.jpg'),(3,'Septembre 2010','Intégration à l’incubateur d’HEC','Suite à une rentrée réussie et au succès de la nouvelle version, Balloon intègre l’incubateur d’HEC pour une année d’accompagnement.','http://www.hec.fr/incubateur-hec/','http://wisembly.com/static/img-story/story3.jpeg'),(4,'Mars 2011','Lancement de la version en ligne de Balloon','Balloon est disponible directement en ligne et devient utilisable de manière autonome par nos clients. C’est le début de centaines d’événements réalisés à travers le monde sans notre intervention directe.',NULL,'http://wisembly.com/static/img-story/Story4.png'),(5,'Septembre 2011','La 100 000 ème question est posée sur Balloon','100 000 questions ont été posées sur Balloon en un peu plus d’un an. Une étape importante pour toute l’équipe qui montre le changement qu’a apporté Balloon dans les événements de nos clients.',NULL,'http://wisembly.com/static/img-story/story5.jpeg'),(6,'Février 2012','Balloon s’agrandit','Balloon emménage 10 rue thérèse, à deux pas d’Opéra, pour accueillir les 10 membres de l’équipe.',NULL,'http://wisembly.com/static/img-story/story6.jpeg'),(7,'Mai 2012','Le changement, c’est maintenant','Lancement de la nouvelle version de Balloon portée par les toutes dernières innovations technologiques : Symfony2 pour le framework PHP, Backbonejs pour l\'intéraction applicative client et du push en temps réel via socket.io et node.js.',NULL,'http://wisembly.com/static/img-story/story7.jpeg'),(8,'Septembre 2012','Balloon devient Wisembly','Balloon devient Wisembly et s’attaque au marché de la formation et des réunions professionnelles.',NULL,'http://wisembly.com/static/logo.png');
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
INSERT INTO `homepage` VALUES ('discover_our_happy_clients','Ecco i nostri <strong>400</strong> clienti soddisfatti e le loro opinioni'),('discover_wisembly_for','Wisembly è l’ideale per:'),('events','Eventi'),('formations','Training e formazione'),('homepage_baseline','Wisembly è una soluzione web & mobile per preparare, gestire e controllare le tue riunioni.'),('homepage_poll_choice_1','Des chiffres concrets'),('homepage_poll_choice_2','Une vision globale claire'),('homepage_poll_choice_3','Une roadmap précise'),('homepage_poll_question','Qu\'attendez vous de la présentation d\'aujourd\'hui?'),('homepage_title','Riunioni collaborative'),('meetings','Riunioni'),('quote_dias','Tutti quanti hanno apprezzato Wisembly: è un nuovo modo di interagire [...]Wisembly ti permette di andare oltre la presentazione e iniziare la conversazione.'),('testimonials','Testimonial');
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
INSERT INTO `messages` VALUES ('about','Info'),('about_in_the_press','La stampa'),('about_our_story','La nostra storia'),('about_press_page_desc','Cantano le nostre lodi'),('about_press_page_title','Dicono di noi'),('about_resources','Risorse'),('about_team_page_desc','Il miglior team a Parigi'),('about_team_page_title','Il nostro team'),('about_the_team','Il team'),('about_wisembly_page_desc','Così tutto iniziò…'),('about_wisembly_page_title','Info Wisembly'),('api','APIs'),('ask_for_quote','Chiedi un’offerta'),('back','Indietro'),('call_us','Chiamaci'),('case_context_title','Contesto'),('case_results_title','I risultati'),('case_studies','Case study'),('case_studies_global_page_desc','Wisembly aiuta centinaia di aziende a migliorare la produttività, creando collaborazione nelle loro riunioni.'),('case_studies_global_page_title','Fai come i nostri clienti e rendi le tue riunioni più produttive'),('case_studies_menu_title','Case study'),('case_usage_title','Come è stato usato Wisembly?'),('choose_your_wiz','Scegli il tuo Wiz'),('choose_your_wiz_help','Se si dispone di uno o più eventi, si paga il mese e senza alcun impegno. È semplice e flessibile!'),('classes_an_trainings_menu_title','Corsi e addestramento'),('clients','Clienti'),('company','Azienda'),('contact','Contatto'),('contact_founders','Contatta i fondatori'),('contact_page_baseline','Vuoi un’offerta immediata? Hai una domanda? Ti risponderemo subito.'),('contact_page_desc','Vuoi maggiori informazioni? Vorresti un’offerta dettagliata? Contattaci, siamo qui per aiutarti e ti risponderemo subito.'),('contact_page_title','Contattaci'),('contact_us_number','Contattaci al n. <strong>%number%</strong>'),('developers','Sviluppatori'),('email','Email'),('email_sent_error','Non è stato possibile inviare una e-mail, vi preghiamo di contattarci direttamente al<a href=\'mailto:contact@wisembly.com?subject=message de wisembly.com\'>contact@wisembly.com</a>'),('email_sent_success','Grazie, abbiamo ricevuto una e-mail, vi risponderemo al più presto possibile!'),('event_keyword','Parola chiave'),('events_and_seminaries_menu_title','Eventi e seminari'),('free_trial','Prova ora'),('free_trial_incentive','Fai una prova gratuita di Wisembly senza usare la carta di credito.'),('fullname','Nome completo'),('homepage_slide_info','Présentation Wisembly.ppt'),('jobs','Opportunità di lavoro'),('jobs_page_baseline','In Wisembly stiamo costruendo un prodotto con e per i nostri clienti. Vuoi approfondire?'),('jobs_page_baseline_desc','<p>Segui le tue passioni e lavora per Wisembly. Noi non assumiamo le persone in base al loro CV, non siamo interessati al tuo diploma o a quello che dicevano di te gli insegnanti alle superiori. Stiamo cercando persone entusiaste, problem solver, persone che amino le sfide e che vogliano creare qualcosa di grande. Ti ci ritrovi? Entra nella nostra squadra! </p>'),('jobs_page_desc','Stiamo cambiando il modo di far riunire e collaborare le persone'),('jobs_page_location_title','Nel centro di Parigi apri il mondo intero'),('jobs_page_open_positions_title','Perchè lavorare in Wisembly?'),('jobs_page_title','Lavora in Wisembly'),('jobs_page_why_wisembly_desc','<p>In Wisembly la priorità è di ottenere il giusto equilibrio tra vita e lavoro. Riunioni di team settimanali, birra il Venerdì, team-building, ticket-restaurant e uno schema aziendale sano. Tutti i vantaggi di una multinazionale in una start-up parigina di successo! </p>'),('jobs_page_why_wisembly_title','Perchè lavorare in Wisembly?'),('join_an_event','Entra in un evento'),('join_event_button','Entra'),('journalists_download_kit_button','Scaricateli qui'),('journalists_download_kit_title','Giornalisti – cercate immagini o fotografie per i vostri articoli?'),('login','Login'),('login_button','Login'),('logo','Logo'),('looking_for_something_else','Non trovi ciò che stavi cercando?'),('meetings_and_confcalls_menu_title','Riunioni e conference call'),('more_information','Richiedi più informazioni'),('office_hours','<p class=\'label\'>Office hours</p> <p class=\'hours\'>Du lundi au vendredi</p> <p class=\'hours\'>De 9h à 20h</p>'),('organizer','Promotore'),('other','Altro'),('participant','partecipante'),('password','Password'),('phone_number','Telefono'),('pictures','Immagini'),('plan_classes_training_baseline','Perfetto per conferenze e seminari'),('plan_classes_training_items','<li> <i class=\'list-dot\'></i> Quiz e feedback </li> <li> <i class=\'list-dot\'></i> Condivisione e visualizzazione documenti </li> <li> <i class=\'list-dot\'></i> Statistiche e classifiche dei partecipanti </li>'),('plan_classes_training_title','Formazione e addestramento'),('plan_events_seminaries_baseline','Perfetto per conferenze e seminari'),('plan_events_seminaries_items','<li> <i class=\'list-dot\'></i> Q&A </li> <li> <i class=\'list-dot\'></i> SMS, Twitter, votazioni </li> <li> <i class=\'list-dot\'></i> Moderazione e personalizzazione </li>'),('plan_events_seminaries_title','Eventi e seminari'),('plan_meetings_conf_calls_baseline','Perfetto per riunioni e conference call'),('plan_meetings_conf_calls_items','<li> <i class=\'list-dot\'></i> Q&A, sondaggi e questionari </li> <li> <i class=\'list-dot\'></i> Visualizzazione e condivisione documenti</li> <li> <i class=\'list-dot\'></i> Risposte e commenti </li>'),('plan_meetings_conf_calls_title','Riunioni e conference call'),('plans_menu_title','Pianifica'),('plans_page_desc','Provare non costa nulla. Potenzia la tua produttività e stupisci i tuoi colleghi durante la tua prossima conference call, sessione di addestramento o seminario.'),('plans_page_title','Crea un account dimostrativo in 3 click'),('plans_try','Provalo'),('please_select','Si prega di selezionare ...'),('poll_button_sending','Invio'),('poll_button_sent','Inviati'),('poll_button_submit','Invia'),('press','Stampa'),('quote_stelmaszyk','Lo usiamo per discutere idee, raccogliere feedback e arrivare a soluzioni collettive.'),('read_case_study_link','Leggi la case study'),('reason','Oggetto'),('resources','Risorse'),('resources_page_desc','Per le vostre esigenze di giornalismo'),('resources_page_title','Risorse'),('send_button','Invia'),('social','Community'),('stream_textarea_placeholder','Inserisci la tua domanda'),('suscribe','Iscriviti'),('telephone_info','<p class=\'label\'>Telefono</p>\r\n<p class=\'phone\'>%number%</p>'),('try_for_free','Prova ora'),('widget','Widget'),('write_an_article','Scrivi una recensione su Wisembly'),('write_to_us','Scrivici'),('you','Tuo messaggio'),('your_message','Il tuo messaggio');
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
INSERT INTO `press` VALUES (1,0,'http://wisembly.com/static/logos-presse/romain-vimeo.png','15/06/2010',NULL,'Connaissez-vous Romain David from Paris ? La conférence traditionnelle se met au 2.0','http://billaut.typepad.com/jm/2010/06/connaissezvous-romain-david-from-paris-.html'),(2,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','09/09/2010','Techcrunch','Avec Balloon, Rendez vos conférences et événements plus interactifs','http://fr.techcrunch.com/2010/09/09/avec-balloon-rendez-vos-conferences-et-evenements-plus-interactifs/'),(3,0,'http://wisembly.com/static/logos-presse/logo-locita.jpeg','22/09/2010','Locita','Balloon qui rend vos événements plus interactifs','http://fr.locita.com/business/interviews/interview-de-romain-david-de-balloon-qui-rend-vos-evenements-plus-interactifs/'),(4,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','18/11/2010','Techcrunch','#TCFRemix : le Bilan des intéractions live avec Balloon','http://fr.techcrunch.com/2010/11/18/tcfremix-le-bilan-des-interactions-live-avec-balloon/'),(5,0,'http://wisembly.com/static/logos-presse/logo-frenchweb.png','12/01/2011','Frenchweb','Balloon, solution d\'interactivité pour vos événements','http://frenchweb.fr/balloon-solution-interactivite-evenement'),(6,0,'http://wisembly.com/static/logos-presse/iteleilab.png','20/01/2011','I-Télé','\"C\'est une très très bonne idée...\" : analyse de Marc Simoncini à propos de Balloon lors de l\'émission iL@b sur iTélé le 20 janvier dernier.',NULL),(7,0,'http://wisembly.com/static/logos-presse/logo-businessinsider.png','26/02/2011','Business Insider','Balloon Helps You Handle The Zillion Questions You Get During An Event','http://www.businessinsider.com/balloon-2011-2'),(8,0,'http://wisembly.com/static/logos-presse/twist.png','08/04/2011','Twist','Balloon, vainqueur du TWIST Paris grâce à Jason Calacanis','http://www.twistparis.com/startups-pitches/03-meetup-april-8th-2011/balloon/'),(9,0,'http://wisembly.com/static/logos-presse/logo-bfmacademie.png','06/05/2011','BFM','Balloon en quart de finale de la BFM Académie 2011','http://www.radiobfm.com/front_office/static/BFM_Academie/candidats/saison4/episode_24.html'),(10,0,'http://wisembly.com/static/logos-presse/challenges.png','12/05/2011','Challenges','Balloon classé parmi les \"100 startup où investir\" par le magazine Challenges',NULL),(11,1,'http://wisembly.com/static/logos-presse/challenges.png','06/11/2011','Challenges','Balloon cité en exemple pour tirer les leçons de ses tests dans le n°271 de Challenges',NULL),(12,1,'http://wisembly.com/static/logos-presse/management.png','07/11/2011','Management','Balloon cité en exemple pour avoir de l\'aplomb et savoir bluffer dans le magazine Management',NULL),(13,1,'http://wisembly.com/static/logos-presse/lesechos.png','30/11/2011','Les Echos','Balloon met du \"social\" dans les conférences - Édition du 30 novembre 2011 du journal Les Échos',NULL),(14,0,'http://wisembly.com/static/logos-presse/logo-welovesaas.png','07/09/2012','WeLoveSaaS','Balloon devient Wisembly et s\'attaque au marché de la formation et des réunions professionnelles','http://mag.welovesaas.com/index.php/2012/balloon-devient-wisembly/'),(15,0,'http://wisembly.com/static/logos-presse/logo-techcrunch.jpeg','12/09/2012','Techcrunch','Balloon devient Wisembly et propose de nouvelles offres spéciales entreprises','http://fr.techcrunch.com/2012/09/12/balloon-devient-wisembly-et-propose-de-nouvelles-offres-speciales-entreprises/'),(16,0,'http://wisembly.com/static/logos-presse/logo_collaboratif-info.png','18/09/2012','Collaboratif.info','Balloon devient Wisembly et adresse de nouveaux usages en entreprise','http://www.collaboratif-info.fr/actualite/balloon-devient-wisembly-et-adresse-de-nouveaux-usages-en-entreprise'),(17,0,'http://wisembly.com/static/logos-presse/latribune.jpeg','05/10/2012','La Tribune','\"Désormais, le modèle c’est un peu Balloon qui est devenu Wisembly\"','http://www.latribune.fr/actualites/economie/20121005trib000722993/start-up-il-n-y-a-pas-que-l-argent-qui-compte.html'),(18,0,'http://wisembly.com/static/logos-presse/jdn.jpeg','24/10/2012','Journal Du Net','5 start-up françaises du SaaS à suivre en 2013','http://www.journaldunet.com/solutions/cloud-computing/start-up-francaises-du-saas.shtml'),(19,0,'http://wisembly.com/static/logos-presse/ccm.png','14/11/2012','Comment ca marche','Pour des conférences 2.0, Wisembly sait créer une vraie interaction avec le public','http://www.commentcamarche.net/news/5861381-pour-des-conferences-2-0-wisembly-sait-creer-une-vraie-interaction-avec-le-public'),(20,0,'http://blog.wisembly.com/wp-content/uploads/2013/01/europas.png','10/01/2013','The europas','The Europas: Wisembly in the shortlist for Best French Startup!','http://blog.wisembly.com/2013/01/wisembly-nomine-dans-la-categorie-meilleure-startup-francaise/');
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

-- Dump completed on 2013-10-06 17:33:00
