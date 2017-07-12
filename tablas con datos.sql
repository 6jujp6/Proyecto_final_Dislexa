-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: dislexa2
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
  `nombreJSP` varchar(255) NOT NULL,
  PRIMARY KEY (`idActividad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Interpretación de imagen','Interpretar la imagen dada. Campo visual','111libre'),(2,'Interpretación de imágenes','Campo visual','112lamina'),(3,'Interpretación de imagen y palabra','Interpretación de imagen y palabra','221palabra'),(4,'Lectura de texto','Lectura de texto','210lectura'),(5,'Lectura de oraciones','Lectura de oraciones','222oraciones'),(6,'Interpretacion de palabras leidas','Interpretacion de palabras leidas','113objetos');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_paciente`
--

DROP TABLE IF EXISTS `alumno_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno_paciente` (
  `idCurso` int(11) DEFAULT NULL,
  `idAlumnoPaciente` int(11) NOT NULL,
  KEY `alumnoPaciente_curso_idx` (`idCurso`),
  KEY `alumnoPaciente_persona` (`idAlumnoPaciente`),
  CONSTRAINT `alumnoPaciente_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `alumnoPaciente_persona` FOREIGN KEY (`idAlumnoPaciente`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_paciente`
--

LOCK TABLES `alumno_paciente` WRITE;
/*!40000 ALTER TABLE `alumno_paciente` DISABLE KEYS */;
INSERT INTO `alumno_paciente` VALUES (1,6),(1,7),(1,8),(2,9),(2,10),(3,12),(NULL,13);
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
  KEY `curso_institucion_idx` (`idInstitucion`),
  CONSTRAINT `curso_institucion` FOREIGN KEY (`idInstitucion`) REFERENCES `institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'1º A','MAÑANA',1,NULL,'2017-12-31',4),(2,'1º B','TARDE',1,NULL,'2017-12-31',4),(3,'1º A','TARDE',1,NULL,'2017-12-31',5);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejecucion_evaluacion`
--

DROP TABLE IF EXISTS `ejecucion_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejecucion_evaluacion` (
  `idEjecucionEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `resultado` varchar(45) DEFAULT NULL,
  `idAlumno_paciente` int(11) NOT NULL,
  `idEvaluacion` int(11) NOT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `pendiente_diagnostico` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`idEjecucionEvaluacion`),
  UNIQUE KEY `idEjecucionEvaluacion_UNIQUE` (`idEjecucionEvaluacion`),
  KEY `ID_idx` (`idAlumno_paciente`),
  KEY `ejecucionEvaluacion_idx` (`idEvaluacion`),
  CONSTRAINT `ejecucionEvaluacion_alumnoPaciente` FOREIGN KEY (`idAlumno_paciente`) REFERENCES `alumno_paciente` (`idAlumnoPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ejecucionEvaluacion_evaluacion` FOREIGN KEY (`idEvaluacion`) REFERENCES `evaluacion` (`idEvaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecucion_evaluacion`
--

LOCK TABLES `ejecucion_evaluacion` WRITE;
/*!40000 ALTER TABLE `ejecucion_evaluacion` DISABLE KEYS */;
INSERT INTO `ejecucion_evaluacion` VALUES (1,NULL,6,7,NULL,NULL,'\0'),(2,NULL,8,7,NULL,NULL,'\0'),(3,NULL,10,8,NULL,NULL,'\0');
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
  `resolucion` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idEjecucion_evaluacion_actividad`),
  KEY `ejecucionEvaluacionActividad_actividad_idx` (`idActividad`),
  KEY `ejecucionEvaluacionActividad_ejecucionEvaluacion_idx` (`idEjecucion_evaluacion`),
  CONSTRAINT `ejecucionEvaluacionActividad_actividad` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ejecucionEvaluacionActividad_ejecucionEvaluacion` FOREIGN KEY (`idEjecucion_evaluacion`) REFERENCES `ejecucion_evaluacion` (`idEjecucionEvaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecucion_evaluacion_actividad`
--

LOCK TABLES `ejecucion_evaluacion_actividad` WRITE;
/*!40000 ALTER TABLE `ejecucion_evaluacion_actividad` DISABLE KEYS */;
INSERT INTO `ejecucion_evaluacion_actividad` VALUES (1,2,1,NULL),(2,1,1,NULL),(3,2,2,NULL),(4,1,2,NULL),(5,2,3,NULL),(6,5,3,NULL),(7,1,3,NULL),(8,3,3,NULL),(9,6,3,NULL),(10,4,3,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
INSERT INTO `evaluacion` VALUES (7,'Evaluación detección PRIMER año'),(8,'2DA Evaluación detección PRIMER año');
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_actividad`
--

DROP TABLE IF EXISTS `evaluacion_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_actividad` (
  `idEvaluacion` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  PRIMARY KEY (`idEvaluacion`,`idActividad`),
  KEY `FK_fe6etch98so3c5079p8vw9gle` (`idActividad`),
  KEY `FK_othwk6l08nebwegnxny6q4u1d` (`idEvaluacion`),
  CONSTRAINT `FK_fe6etch98so3c5079p8vw9gle` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`),
  CONSTRAINT `FK_othwk6l08nebwegnxny6q4u1d` FOREIGN KEY (`idEvaluacion`) REFERENCES `evaluacion` (`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_actividad`
--

LOCK TABLES `evaluacion_actividad` WRITE;
/*!40000 ALTER TABLE `evaluacion_actividad` DISABLE KEYS */;
INSERT INTO `evaluacion_actividad` VALUES (7,1),(8,1),(7,2),(8,2),(8,3),(8,4),(8,5),(8,6);
/*!40000 ALTER TABLE `evaluacion_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idInstitucion` int(11) NOT NULL,
  KEY `institucion_usuario` (`idInstitucion`),
  CONSTRAINT `institucion_usuario` FOREIGN KEY (`idInstitucion`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES ('colegio numero 7','crovara 340','156989514',4),('Colegio Cervantes','vyetes 150','46528961',5);
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` bigint(20) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `idPersona` int(11) NOT NULL,
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  KEY `persona_usuario` (`idPersona`),
  CONSTRAINT `persona_usuario` FOREIGN KEY (`idPersona`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('Santiago','Perez',15458965,'lavalle 487','4897289',9),('Mariana','Sanchez',31268896,'esmeralda 897','111111',8),('Maximiliano','Rodriguez',34320389,'Peru 890','69859426',6),('Celeste','Ares',37125894,'Merlo 4580','4598412',12),('Juian','Perino',37985269,'corrientes 598','158969845',7),('Juan','Cruz',40152693,'San Pedro 1500','46558771',13),('Sol','Espindola',42589632,'maipu 45870','46528964',10);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesional`
--

DROP TABLE IF EXISTS `profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesional` (
  `matricula` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idProfesional` int(11) NOT NULL,
  KEY `profesional_persona` (`idProfesional`),
  CONSTRAINT `profesional_persona` FOREIGN KEY (`idProfesional`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (4,'info@escuela7.com','123',NULL),(5,'info@escuelaCervantes.com','123',NULL),(6,'maxi@gmail.com','1234',NULL),(7,'julian@gmail.com','123',NULL),(8,'mariana.sanchez@gmail.com','123',NULL),(9,'santiagoPerez@gmail.com','123',NULL),(10,'sol_espindola@gmail.com','123',NULL),(12,'celeste.ares@gmail.com','123',NULL),(13,'juan_cruz@gmail.com','123',NULL);
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

-- Dump completed on 2017-07-12 14:44:13
