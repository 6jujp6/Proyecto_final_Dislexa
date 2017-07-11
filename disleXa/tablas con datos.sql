-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: dislexa
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad` (
  `idActividad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `objetivo` varchar(45) NOT NULL,
  PRIMARY KEY (`idActividad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Memotest','Ejercitar la memoria visual');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_paciente`
--

DROP TABLE IF EXISTS `alumno_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno_paciente` (
  `idAlumnoPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) NOT NULL,
  `idCurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAlumnoPaciente`),
  UNIQUE KEY `UK_q61mcpl0804kgkb1yj9os8ikt` (`idPersona`),
  KEY `alumnoPaciente_persona_idx` (`idPersona`),
  KEY `alumnoPaciente_curso_idx` (`idCurso`),
  KEY `FK_5xb8j4ndf2fs753e5tc5j1pj6` (`idAlumnoPaciente`),
  CONSTRAINT `FK_5xb8j4ndf2fs753e5tc5j1pj6` FOREIGN KEY (`idAlumnoPaciente`) REFERENCES `persona` (`idPersona`),
  CONSTRAINT `alumnoPaciente_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `alumnoPaciente_persona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_paciente`
--

LOCK TABLES `alumno_paciente` WRITE;
/*!40000 ALTER TABLE `alumno_paciente` DISABLE KEYS */;
INSERT INTO `alumno_paciente` VALUES (1,1,1);
/*!40000 ALTER TABLE `alumno_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `turno` varchar(45) NOT NULL,
  `anio` int(11) NOT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `fecha_vigencia` date DEFAULT NULL,
  `idInstitucion` int(11) NOT NULL,
  PRIMARY KEY (`idCurso`),
  KEY `curso_institucion_idx` (`idInstitucion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'1º A','Tarde',2017,NULL,'2017-12-30',1);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejecucion_evaluacion`
--

DROP TABLE IF EXISTS `ejecucion_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejecucion_evaluacion` (
  `idEjecucion_evaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `resultado` varchar(45) DEFAULT NULL,
  `idAlumno_paciente` int(11) NOT NULL,
  `idEvaluacion` int(11) NOT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`idEjecucion_evaluacion`),
  KEY `ID_idx` (`idAlumno_paciente`),
  KEY `ejecucionEvaluacion_idx` (`idEvaluacion`),
  CONSTRAINT `ejecucionEvaluacion_alumnoPaciente` FOREIGN KEY (`idAlumno_paciente`) REFERENCES `alumno_paciente` (`idAlumnoPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ejecucionEvaluacion_evaluacion` FOREIGN KEY (`idEvaluacion`) REFERENCES `evaluacion` (`idEvaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecucion_evaluacion`
--

LOCK TABLES `ejecucion_evaluacion` WRITE;
/*!40000 ALTER TABLE `ejecucion_evaluacion` DISABLE KEYS */;
INSERT INTO `ejecucion_evaluacion` VALUES (1,NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `ejecucion_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejecucion_evaluacion_actividad`
--

DROP TABLE IF EXISTS `ejecucion_evaluacion_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejecucion_evaluacion_actividad` (
  `idEjecucion_evaluacion_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `idActividad` int(11) NOT NULL,
  `idEjecucion_evaluacion` int(11) NOT NULL,
  `resolucion` varchar(300) NOT NULL,
  PRIMARY KEY (`idEjecucion_evaluacion_actividad`),
  KEY `ejecucionEvaluacionActividad_actividad_idx` (`idActividad`),
  KEY `ejecucionEvaluacionActividad_ejecucionEvaluacion_idx` (`idEjecucion_evaluacion`),
  CONSTRAINT `ejecucionEvaluacionActividad_actividad` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ejecucionEvaluacionActividad_ejecucionEvaluacion` FOREIGN KEY (`idEjecucion_evaluacion`) REFERENCES `ejecucion_evaluacion` (`idEjecucion_evaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecucion_evaluacion_actividad`
--

LOCK TABLES `ejecucion_evaluacion_actividad` WRITE;
/*!40000 ALTER TABLE `ejecucion_evaluacion_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ejecucion_evaluacion_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion` (
  `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idEvaluacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
INSERT INTO `evaluacion` VALUES (1,'Test DIPLE de detección');
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_actividad`
--

DROP TABLE IF EXISTS `evaluacion_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_actividad` (
  `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `idActividad` int(11) NOT NULL,
  PRIMARY KEY (`idEvaluacion`,`idActividad`),
  KEY `evaluacionActividad_Actividad_idx` (`idActividad`),
  CONSTRAINT `evaluacionActividad_Actividad` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_actividad`
--

LOCK TABLES `evaluacion_actividad` WRITE;
/*!40000 ALTER TABLE `evaluacion_actividad` DISABLE KEYS */;
INSERT INTO `evaluacion_actividad` VALUES (1,1);
/*!40000 ALTER TABLE `evaluacion_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `idInstitucion` int(11) NOT NULL,
  PRIMARY KEY (`idInstitucion`),
  KEY `FK_451ijgp43u4wr139kg46o3wwc` (`idInstitucion`),
  CONSTRAINT `FK_451ijgp43u4wr139kg46o3wwc` FOREIGN KEY (`idInstitucion`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES ('crovara 340','colegio numero 7','156989514',9),('crovara 340','colegio numero 7','156989514',10),('crovara 340','colegio numero 7','156989514',11);
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion3`
--

DROP TABLE IF EXISTS `institucion3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion3` (
  `idInstitucion` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  KEY `instutucion_usuario` (`idInstitucion`),
  CONSTRAINT `instutucion_usuario` FOREIGN KEY (`idInstitucion`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion3`
--

LOCK TABLES `institucion3` WRITE;
/*!40000 ALTER TABLE `institucion3` DISABLE KEYS */;
INSERT INTO `institucion3` VALUES (8,'colegio numero 7','crovara 340','156989514');
/*!40000 ALTER TABLE `institucion3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` bigint(20) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE KEY `UK_ocfr7wmlm086fv7li5cl0ikis` (`idUsuario`),
  KEY `persona_usuario_idx` (`idUsuario`),
  KEY `FK_9712r79p2yhky0itcp85ij1yj` (`idPersona`),
  CONSTRAINT `FK_9712r79p2yhky0itcp85ij1yj` FOREIGN KEY (`idPersona`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `persona_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Analia','Reyes',34320389,'Cordoba 232','1537412285',1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesional`
--

DROP TABLE IF EXISTS `profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesional` (
  `idProfesional` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `idPersona` int(11) NOT NULL,
  PRIMARY KEY (`idProfesional`),
  KEY `profesional_persona_idx` (`idPersona`),
  CONSTRAINT `profesional_persona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesional`
--

LOCK TABLES `profesional` WRITE;
/*!40000 ALTER TABLE `profesional` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'analia.mreyes@gmail.com','123',NULL),(2,'julian.perino@gmail.com','123',NULL),(3,'info@colegiocervantes.edu.ar','123',NULL),(4,'colegio8@info.com','cole8',NULL),(7,'lasiete@info.com','cole7',NULL),(8,'lasiete@info.com','cole7',NULL),(9,'lasiete@info.com','cole7',NULL),(10,'info@escuela7.com','123',NULL),(11,'info@escuela7.com','123',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11 16:21:39
