-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 11:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caso_policia_jc`
--

-- --------------------------------------------------------

--
-- Table structure for table `banda`
--

CREATE TABLE `banda` (
  `Id_Banda` int(10) NOT NULL,
  `Nombre_de_la_Banda` varchar(30) DEFAULT NULL,
  `Numero_de_Integrantes` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banda`
--

INSERT INTO `banda` (`Id_Banda`, `Nombre_de_la_Banda`, `Numero_de_Integrantes`) VALUES
(1, 'Los_Pitufos', 3),
(2, 'Los_Piraña', 5),
(3, 'Las_Traviesas', 8),
(4, 'Las_Bandidas', 6);

-- --------------------------------------------------------

--
-- Table structure for table `banda_detenido`
--

CREATE TABLE `banda_detenido` (
  `Id_Banda1` int(10) DEFAULT NULL,
  `Id_Detenido2` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banda_detenido`
--

INSERT INTO `banda_detenido` (`Id_Banda1`, `Id_Detenido2`) VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `barrio`
--

CREATE TABLE `barrio` (
  `Id_Barrio` int(10) NOT NULL,
  `Nombre_Barrio` varchar(20) DEFAULT NULL,
  `Id_Municipio1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barrio`
--

INSERT INTO `barrio` (`Id_Barrio`, `Nombre_Barrio`, `Id_Municipio1`) VALUES
(1, 'Bosa', NULL),
(2, 'Suba', NULL),
(3, 'Los_Martires', NULL),
(4, 'Chapinero', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `caso`
--

CREATE TABLE `caso` (
  `Id_Caso` int(10) NOT NULL,
  `Nombre_del_Caso` varchar(30) DEFAULT NULL,
  `Id_Juez2` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caso`
--

INSERT INTO `caso` (`Id_Caso`, `Nombre_del_Caso`, `Id_Juez2`) VALUES
(1, 'Robo', NULL),
(2, 'Acoso', NULL),
(3, 'Secuestro', NULL),
(4, 'Extorción', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `Id_Departamento` int(10) NOT NULL,
  `Nombre_Departamento` varchar(20) DEFAULT NULL,
  `Id_Ubicacion2` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`Id_Departamento`, `Nombre_Departamento`, `Id_Ubicacion2`) VALUES
(1, 'Cundinamarca', NULL),
(2, 'Medellin', NULL),
(3, 'Boyaca', NULL),
(4, 'Santander', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detenido`
--

CREATE TABLE `detenido` (
  `Id_Detenido` int(20) NOT NULL,
  `Primer_Nombre_Detenido` varchar(20) DEFAULT NULL,
  `Segundo_Nombre_Detenido` varchar(20) DEFAULT NULL,
  `Primer_Apellido_Detenido` varchar(20) DEFAULT NULL,
  `Segundo_Apellido_Detenido` varchar(20) DEFAULT NULL,
  `Fecha_Atraco` varchar(20) DEFAULT NULL,
  `Tipo_del_Delito` varchar(30) DEFAULT NULL,
  `Condenado` varchar(10) DEFAULT NULL,
  `Tiempo_de_Condena` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detenido`
--

INSERT INTO `detenido` (`Id_Detenido`, `Primer_Nombre_Detenido`, `Segundo_Nombre_Detenido`, `Primer_Apellido_Detenido`, `Segundo_Apellido_Detenido`, `Fecha_Atraco`, `Tipo_del_Delito`, `Condenado`, `Tiempo_de_Condena`) VALUES
(1, 'Juan', 'Pablo', 'Perez', 'Murcia', '12/07/2024', 'Robo', 'No', '0'),
(2, 'Andres', 'Jose', 'Gonzalez', 'Acosta', '08/06/2024', 'Extorcion', 'SI', '36_meses'),
(3, 'Angela', 'Maria', 'Gomez', 'Perez', '01/06/2024', 'Secuestro', 'SI', '78_Meses'),
(4, 'Orlando', 'Antonio', 'Garavito', 'Acosta', '03/03/2024', 'Robo_mano_armada', 'SI', '12_meses');

-- --------------------------------------------------------

--
-- Table structure for table `detenido_sucursal`
--

CREATE TABLE `detenido_sucursal` (
  `Id_Detenido1` int(10) DEFAULT NULL,
  `Id_Sucursal3` int(10) DEFAULT NULL,
  `Fecha_Atraco` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detenido_sucursal`
--

INSERT INTO `detenido_sucursal` (`Id_Detenido1`, `Id_Sucursal3`, `Fecha_Atraco`) VALUES
(4, 1, '0.001284584980237154'),
(3, 2, '0.001646903820652173'),
(2, 3, '0.001235177865612648'),
(1, 4, '0.001411631846343873');

-- --------------------------------------------------------

--
-- Table structure for table `direccion`
--

CREATE TABLE `direccion` (
  `Id_Direccion` int(10) NOT NULL,
  `Nomenclatura_Urbana` varchar(20) DEFAULT NULL,
  `Numero` varchar(30) DEFAULT NULL,
  `Id_Barrio1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `direccion`
--

INSERT INTO `direccion` (`Id_Direccion`, `Nomenclatura_Urbana`, `Numero`, `Id_Barrio1`) VALUES
(1, 'Calle', '65_Sur_79C-50', NULL),
(2, 'Carrera', '91_130-39', NULL),
(3, 'Carrera', '27_12b-43', NULL),
(4, 'Calle', '72_10-83', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `Id_Empleados` int(10) NOT NULL,
  `Primer_Nombre_Empleado` varchar(20) DEFAULT NULL,
  `Segundo_Nombre_Empleado` varchar(20) DEFAULT NULL,
  `Primer_Apellido_Empleado` varchar(20) DEFAULT NULL,
  `Segundo_Apellido_Empleado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`Id_Empleados`, `Primer_Nombre_Empleado`, `Segundo_Nombre_Empleado`, `Primer_Apellido_Empleado`, `Segundo_Apellido_Empleado`) VALUES
(1, 'Andres', 'Pablo', 'Garzon', 'Rodriguez'),
(2, 'Felipe', 'Andres', 'Barrera', 'Ramirez'),
(3, 'Camilo', 'Patricio', 'Ruiz', 'Castro'),
(4, 'Gelma', 'Mercedes', 'Valenzuela', 'Lopez');

-- --------------------------------------------------------

--
-- Table structure for table `entidad`
--

CREATE TABLE `entidad` (
  `Id_Entidad` int(10) NOT NULL,
  `Nombre_entidad` varchar(20) DEFAULT NULL,
  `Id_Ubicacion1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entidad`
--

INSERT INTO `entidad` (`Id_Entidad`, `Nombre_entidad`, `Id_Ubicacion1`) VALUES
(1, 'Caja_Social', NULL),
(2, 'Bancolombia', NULL),
(3, 'Banco_Bogota', NULL),
(4, 'Banco_Popular', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entidad_vigilante`
--

CREATE TABLE `entidad_vigilante` (
  `Id_Entidad2` int(10) DEFAULT NULL,
  `Id_Vigilante2` int(10) DEFAULT NULL,
  `Fecha_Contrato_Entidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entidad_vigilante`
--

INSERT INTO `entidad_vigilante` (`Id_Entidad2`, `Id_Vigilante2`, `Fecha_Contrato_Entidad`) VALUES
(1, 4, '0.001129305476778656'),
(4, 1, '0.000988142292490118'),
(2, 3, '0.000411725955039525'),
(3, 2, '0.000988142292490118');

-- --------------------------------------------------------

--
-- Table structure for table `juez`
--

CREATE TABLE `juez` (
  `Id_Juez` int(10) NOT NULL,
  `Primer_Nombre_Juez` varchar(20) DEFAULT NULL,
  `Segundo_Nombre_Juez` varchar(20) DEFAULT NULL,
  `Primer_Apellido_Juez` varchar(20) DEFAULT NULL,
  `Segundo_Apellido_Juez` varchar(20) DEFAULT NULL,
  `Tiempo_de_Experiencia` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `juez`
--

INSERT INTO `juez` (`Id_Juez`, `Primer_Nombre_Juez`, `Segundo_Nombre_Juez`, `Primer_Apellido_Juez`, `Segundo_Apellido_Juez`, `Tiempo_de_Experiencia`) VALUES
(1, 'Jorge', 'Eparquio', 'Peña', 'Castiblanco', '100_meses'),
(2, 'Adriana', 'Vanesa', 'Sanchez', 'Ferreira', '190_meses'),
(3, 'Javier', 'Alfonso', 'Riveros', 'Restrepo', '250_meses'),
(4, 'Lina', 'Marina', 'Matiz', 'Moya', '388_meses');

-- --------------------------------------------------------

--
-- Table structure for table `juez_detenido`
--

CREATE TABLE `juez_detenido` (
  `Id_Juez1` int(10) DEFAULT NULL,
  `Id_Detenido3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `juez_detenido`
--

INSERT INTO `juez_detenido` (`Id_Juez1`, `Id_Detenido3`) VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `municipio`
--

CREATE TABLE `municipio` (
  `Id_Municipio` int(10) NOT NULL,
  `Nombre_Municipio` varchar(20) DEFAULT NULL,
  `Id_Departamento1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipio`
--

INSERT INTO `municipio` (`Id_Municipio`, `Nombre_Municipio`, `Id_Departamento1`) VALUES
(1, 'Bogota', NULL),
(2, 'Soacha', NULL),
(3, 'Mosquera', NULL),
(4, 'Chia', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sucursal`
--

CREATE TABLE `sucursal` (
  `Id_Sucursal` int(10) NOT NULL,
  `Nombre_Sucursal` varchar(20) DEFAULT NULL,
  `Numero_Empleados` int(15) DEFAULT NULL,
  `Id_Entidad1` int(10) DEFAULT NULL,
  `Id_Ubicacion3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucursal`
--

INSERT INTO `sucursal` (`Id_Sucursal`, `Nombre_Sucursal`, `Numero_Empleados`, `Id_Entidad1`, `Id_Ubicacion3`) VALUES
(1, 'Caja_Social_Bosa', 10, NULL, NULL),
(2, 'Bancolombia_Suba', 15, NULL, NULL),
(3, 'Banco_Bogota_Chapine', 12, NULL, NULL),
(4, 'Banco_Popular_Los_Ma', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sucursal_empleados`
--

CREATE TABLE `sucursal_empleados` (
  `Id_Sucursal1` int(10) DEFAULT NULL,
  `Id_Empleados1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucursal_empleados`
--

INSERT INTO `sucursal_empleados` (`Id_Sucursal1`, `Id_Empleados1`) VALUES
(3, 2),
(4, 1),
(2, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sucursal_vigilante`
--

CREATE TABLE `sucursal_vigilante` (
  `Id_Sucursal2` int(10) DEFAULT NULL,
  `Id_Vigilante1` int(10) DEFAULT NULL,
  `Fecha_Contrato_Sucursal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucursal_vigilante`
--

INSERT INTO `sucursal_vigilante` (`Id_Sucursal2`, `Id_Vigilante1`, `Fecha_Contrato_Sucursal`) VALUES
(3, 2, '0.000988142292490118'),
(2, 3, '0.000411725955039525'),
(4, 1, '0.000988142292490118'),
(1, 4, '0.001129305476778656');

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Id_Ubicacion` int(10) NOT NULL,
  `Codigo_Postal` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ubicacion`
--

INSERT INTO `ubicacion` (`Id_Ubicacion`, `Codigo_Postal`) VALUES
(1, 111111),
(2, 111411),
(3, 110211),
(4, 110711);

-- --------------------------------------------------------

--
-- Table structure for table `vigilante`
--

CREATE TABLE `vigilante` (
  `Id_Vigilante` int(20) NOT NULL,
  `Primer_Nombre_Vigilante` varchar(20) DEFAULT NULL,
  `Segundo_Nombre_Vigilante` varchar(20) DEFAULT NULL,
  `Primer_Apellido_Vigilante` varchar(20) DEFAULT NULL,
  `Segundo_Apellido_Vigilante` varchar(20) DEFAULT NULL,
  `Edad` int(10) DEFAULT NULL,
  `Arma` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vigilante`
--

INSERT INTO `vigilante` (`Id_Vigilante`, `Primer_Nombre_Vigilante`, `Segundo_Nombre_Vigilante`, `Primer_Apellido_Vigilante`, `Segundo_Apellido_Vigilante`, `Edad`, `Arma`) VALUES
(1, 'Jesus', 'Octavio', 'Gutierrez', 'Trujillo', 35, 'SI'),
(2, 'Leonor', 'Emilia', 'Narvaez', 'Rosso', 45, 'SI'),
(3, 'Cesar', 'Yimy', 'Harvey', 'Casto', 38, 'NO'),
(4, 'Marlen', 'Rogelia', 'Cabra', 'Neira', 48, 'SI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banda`
--
ALTER TABLE `banda`
  ADD PRIMARY KEY (`Id_Banda`);

--
-- Indexes for table `banda_detenido`
--
ALTER TABLE `banda_detenido`
  ADD KEY `FK_ID16` (`Id_Banda1`),
  ADD KEY `FK_ID17` (`Id_Detenido2`);

--
-- Indexes for table `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`Id_Barrio`),
  ADD KEY `FK_ID4` (`Id_Municipio1`);

--
-- Indexes for table `caso`
--
ALTER TABLE `caso`
  ADD PRIMARY KEY (`Id_Caso`),
  ADD KEY `FK_ID20` (`Id_Juez2`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Id_Departamento`),
  ADD KEY `FK_ID2` (`Id_Ubicacion2`);

--
-- Indexes for table `detenido`
--
ALTER TABLE `detenido`
  ADD PRIMARY KEY (`Id_Detenido`);

--
-- Indexes for table `detenido_sucursal`
--
ALTER TABLE `detenido_sucursal`
  ADD KEY `FK_ID14` (`Id_Detenido1`),
  ADD KEY `FK_ID15` (`Id_Sucursal3`);

--
-- Indexes for table `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`Id_Direccion`),
  ADD KEY `FK_ID5` (`Id_Barrio1`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Id_Empleados`);

--
-- Indexes for table `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`Id_Entidad`),
  ADD KEY `FK_ID1` (`Id_Ubicacion1`);

--
-- Indexes for table `entidad_vigilante`
--
ALTER TABLE `entidad_vigilante`
  ADD KEY `FK_ID12` (`Id_Entidad2`),
  ADD KEY `FK_ID13` (`Id_Vigilante2`);

--
-- Indexes for table `juez`
--
ALTER TABLE `juez`
  ADD PRIMARY KEY (`Id_Juez`);

--
-- Indexes for table `juez_detenido`
--
ALTER TABLE `juez_detenido`
  ADD KEY `FK_ID18` (`Id_Juez1`),
  ADD KEY `FK_ID19` (`Id_Detenido3`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `FK_ID3` (`Id_Departamento1`);

--
-- Indexes for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`Id_Sucursal`),
  ADD KEY `FK_ID6` (`Id_Entidad1`),
  ADD KEY `FK_ID7` (`Id_Ubicacion3`);

--
-- Indexes for table `sucursal_empleados`
--
ALTER TABLE `sucursal_empleados`
  ADD KEY `FK_ID8` (`Id_Sucursal1`),
  ADD KEY `FK_ID9` (`Id_Empleados1`);

--
-- Indexes for table `sucursal_vigilante`
--
ALTER TABLE `sucursal_vigilante`
  ADD KEY `FK_ID10` (`Id_Sucursal2`),
  ADD KEY `FK_ID11` (`Id_Vigilante1`);

--
-- Indexes for table `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Id_Ubicacion`);

--
-- Indexes for table `vigilante`
--
ALTER TABLE `vigilante`
  ADD PRIMARY KEY (`Id_Vigilante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banda`
--
ALTER TABLE `banda`
  MODIFY `Id_Banda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barrio`
--
ALTER TABLE `barrio`
  MODIFY `Id_Barrio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `caso`
--
ALTER TABLE `caso`
  MODIFY `Id_Caso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `Id_Departamento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detenido`
--
ALTER TABLE `detenido`
  MODIFY `Id_Detenido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `direccion`
--
ALTER TABLE `direccion`
  MODIFY `Id_Direccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `Id_Empleados` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `entidad`
--
ALTER TABLE `entidad`
  MODIFY `Id_Entidad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `juez`
--
ALTER TABLE `juez`
  MODIFY `Id_Juez` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `Id_Sucursal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `Id_Ubicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vigilante`
--
ALTER TABLE `vigilante`
  MODIFY `Id_Vigilante` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banda_detenido`
--
ALTER TABLE `banda_detenido`
  ADD CONSTRAINT `FK_ID16` FOREIGN KEY (`Id_Banda1`) REFERENCES `banda` (`Id_Banda`),
  ADD CONSTRAINT `FK_ID17` FOREIGN KEY (`Id_Detenido2`) REFERENCES `detenido` (`Id_Detenido`);

--
-- Constraints for table `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `FK_ID4` FOREIGN KEY (`Id_Municipio1`) REFERENCES `municipio` (`Id_Municipio`);

--
-- Constraints for table `caso`
--
ALTER TABLE `caso`
  ADD CONSTRAINT `FK_ID20` FOREIGN KEY (`Id_Juez2`) REFERENCES `juez` (`Id_Juez`);

--
-- Constraints for table `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `FK_ID2` FOREIGN KEY (`Id_Ubicacion2`) REFERENCES `ubicacion` (`Id_Ubicacion`);

--
-- Constraints for table `detenido_sucursal`
--
ALTER TABLE `detenido_sucursal`
  ADD CONSTRAINT `FK_ID14` FOREIGN KEY (`Id_Detenido1`) REFERENCES `detenido` (`Id_Detenido`),
  ADD CONSTRAINT `FK_ID15` FOREIGN KEY (`Id_Sucursal3`) REFERENCES `sucursal` (`Id_Sucursal`);

--
-- Constraints for table `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `FK_ID5` FOREIGN KEY (`Id_Barrio1`) REFERENCES `barrio` (`Id_Barrio`);

--
-- Constraints for table `entidad`
--
ALTER TABLE `entidad`
  ADD CONSTRAINT `FK_ID1` FOREIGN KEY (`Id_Ubicacion1`) REFERENCES `ubicacion` (`Id_Ubicacion`);

--
-- Constraints for table `entidad_vigilante`
--
ALTER TABLE `entidad_vigilante`
  ADD CONSTRAINT `FK_ID12` FOREIGN KEY (`Id_Entidad2`) REFERENCES `entidad` (`Id_Entidad`),
  ADD CONSTRAINT `FK_ID13` FOREIGN KEY (`Id_Vigilante2`) REFERENCES `vigilante` (`Id_Vigilante`);

--
-- Constraints for table `juez_detenido`
--
ALTER TABLE `juez_detenido`
  ADD CONSTRAINT `FK_ID18` FOREIGN KEY (`Id_Juez1`) REFERENCES `juez` (`Id_Juez`),
  ADD CONSTRAINT `FK_ID19` FOREIGN KEY (`Id_Detenido3`) REFERENCES `detenido` (`Id_Detenido`);

--
-- Constraints for table `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `FK_ID3` FOREIGN KEY (`Id_Departamento1`) REFERENCES `departamento` (`Id_Departamento`);

--
-- Constraints for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `FK_ID6` FOREIGN KEY (`Id_Entidad1`) REFERENCES `entidad` (`Id_Entidad`),
  ADD CONSTRAINT `FK_ID7` FOREIGN KEY (`Id_Ubicacion3`) REFERENCES `ubicacion` (`Id_Ubicacion`);

--
-- Constraints for table `sucursal_empleados`
--
ALTER TABLE `sucursal_empleados`
  ADD CONSTRAINT `FK_ID8` FOREIGN KEY (`Id_Sucursal1`) REFERENCES `sucursal` (`Id_Sucursal`),
  ADD CONSTRAINT `FK_ID9` FOREIGN KEY (`Id_Empleados1`) REFERENCES `empleados` (`Id_Empleados`);

--
-- Constraints for table `sucursal_vigilante`
--
ALTER TABLE `sucursal_vigilante`
  ADD CONSTRAINT `FK_ID10` FOREIGN KEY (`Id_Sucursal2`) REFERENCES `sucursal` (`Id_Sucursal`),
  ADD CONSTRAINT `FK_ID11` FOREIGN KEY (`Id_Vigilante1`) REFERENCES `vigilante` (`Id_Vigilante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
