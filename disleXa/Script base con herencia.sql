CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `institucion` (
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idInstitucion` int(11) NOT NULL,
  CONSTRAINT `institucion_usuario` FOREIGN KEY (`idInstitucion`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `persona` (
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` bigint(20) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `idPersona` int(11) NOT NULL,
  CONSTRAINT `persona_usuario` FOREIGN KEY (`idPersona`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `alumno_paciente` (
  `idCurso` int(11) DEFAULT NULL,
  `idAlumnoPaciente` int(11) NOT NULL,
  KEY `alumnoPaciente_curso_idx` (`idCurso`),
  CONSTRAINT `alumnoPaciente_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `alumnoPaciente_persona` FOREIGN KEY (`idAlumnoPaciente`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `profesional` (
  `matricula` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idProfesional` int(11) NOT NULL,
  CONSTRAINT `profesional_persona` FOREIGN KEY (`idProfesional`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `actividad` (
  `idActividad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `objetivo` varchar(45) NOT NULL,
  PRIMARY KEY (`idActividad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;




CREATE TABLE `evaluacion` (
  `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idEvaluacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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

CREATE TABLE `evaluacion_actividad` (
  `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `idActividad` int(11) NOT NULL,
  PRIMARY KEY (`idEvaluacion`,`idActividad`),
  KEY `evaluacionActividad_Actividad_idx` (`idActividad`),
  CONSTRAINT `evaluacionActividad_Actividad` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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






