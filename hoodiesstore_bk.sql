-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: hoodiesstore
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `tb_administradores`
--

DROP TABLE IF EXISTS `tb_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_administradores` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_administrador` varchar(50) NOT NULL,
  `apellido_administrador` varchar(50) NOT NULL,
  `correo_administrador` varchar(59) NOT NULL,
  `clave_administrador` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL,
  PRIMARY KEY (`id_administrador`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administradores`
--

LOCK TABLES `tb_administradores` WRITE;
/*!40000 ALTER TABLE `tb_administradores` DISABLE KEYS */;
INSERT INTO `tb_administradores` VALUES (1,'Alenjandro','Rodas','0','0','2001-01-24'),(2,'Andrés','García','0','0','2002-12-24'),(3,'María','García','0','0','2002-02-24'),(4,'Carlos','Martínez','0','0','2003-03-24'),(5,'Laura','Hernández','0','0','2004-04-24'),(6,'Juan','López','0','0','2005-05-24'),(7,'Ana','Pérez','0','0','2006-06-24'),(8,'Pedro','Gómez','0','0','2007-07-24'),(9,'Sofía','Díaz','0','0','2008-08-24'),(10,'Diego','Torres','0','0','2009-09-24'),(11,'Elena','Ramírez','0','0','2010-10-24'),(12,'Javier','Fernández','0','0','2011-11-24'),(13,'Isabel','Sánchez','0','0','2012-12-24'),(14,'Raúl','Vargas','0','0','2013-01-25'),(15,'Carmen','Navarro','0','0','2014-02-25'),(16,'Fernando','Gutierrez','0','0','2015-03-25'),(17,'Luisa','Mendoza','0','0','2016-04-25'),(18,'Roberto','Salazar','0','0','2017-05-25'),(19,'Marta','Ortega','0','0','2018-06-25'),(20,'Ricardo','Dominguez','0','0','2019-07-25'),(21,'Lucía','Cabrera','0','0','2020-08-25'),(22,'Gabriel','Silva','0','0','2021-09-25'),(23,'Natalia','Herrera','0','0','2022-10-25'),(24,'Oscar','Cruz','0','0','2023-11-25'),(25,'Adriana','Lara','0','0','2024-12-25');
/*!40000 ALTER TABLE `tb_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categorias` (
  `id_categoria_hoodie` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_categoria` varchar(50) NOT NULL,
  `nombre_categoria` varchar(40) NOT NULL,
  PRIMARY KEY (`id_categoria_hoodie`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Exelente comodidad y estilo','NIKE');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(20) NOT NULL,
  `dui_cliente` int(11) NOT NULL,
  `telefono_cliente` int(11) NOT NULL,
  `direccion_cliente` varchar(250) NOT NULL,
  `clave_cliente` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES (1,'Andrés','García',7127790,7622,'San Salvador, San Salvador 17av norte #212','J8PFJlwM'),(2,'María Fernanda','López Ramírez',4568923,7854,'Ciudad de México, Calle Principal #123','8e9WcN5R'),(3,'Juan Carlos','Gómez Martínez',7896542,6248,'Bogotá, Calle 45 #567','Yh4lO7tA'),(4,'Ana Isabel','Herrera Díaz',3214587,7541,'San José, Avenida Central #789','6pQ2Mf9o'),(5,'Luis Alberto','Rivera Flores',9562147,6123,'Guadalajara, Calle Secundaria #456','Bn5L8zPd'),(6,'Carolina Andrea','Gómez Rodríguez',8741236,7458,'Medellín, Carrera Principal #789','3bV1Km7s'),(7,'José Manuel','Martínez Sánchez',6523987,6987,'Madrid, Calle Mayor #234','4jR6Dp2Q'),(8,'Sofía Alejandra','Ramírez González',3214578,7852,'Barcelona, Avenida Principal #876','9wY3Nh6G'),(9,'Miguel Ángel','García Ruiz',7895623,6325,'Sevilla, Calle Secundaria #789','2kU7Gv4W'),(10,'Paola Alexandra','Díaz Hernández',4587236,7845,'Buenos Aires, Avenida Principal #321','5nS9Zr8T'),(11,'Carlos Eduardo','López Gómez',7896523,6321,'Santiago, Calle Mayor #456','1uX5Ep3Y'),(12,'Andrea Patricia','Ramos Herrera',3215687,7452,'Lima, Avenida Principal #987','7tZ4Fq1O'),(13,'Juan Pablo','Martínez Ramírez',7896532,6985,'Montevideo, Calle Secundaria #654','3xV7Rp6Q'),(14,'Mariana Gabriela','Gómez Flores',9234587,7452,'Quito, Avenida Principal #123','6sT9Yw2N'),(15,'Pedro Antonio','Hernández Martínez',3218975,6123,'Caracas, Calle Mayor #789','8vX3Tk5P'),(16,'Laura Michelle','Sánchez Ramírez',6548723,7854,'La Paz, Avenida Principal #456','4rE7Wu9S'),(17,'Diego Andrés','Martínez López',7895632,6325,'Asunción, Calle Secundaria #789','1tR4Fg7U'),(18,'María José','González Hernández',8741236,7845,'Santo Domingo, Calle Principal #321','5yH8Jk3L'),(19,'Fernando José','Ramírez Gómez',4587236,6987,'Brasilia, Avenida Central #987','9pO2Ms5N'),(20,'Fernando José','Ramírez Gómez',4587236,6987,'Brasilia, Avenida Central #987','9pO2Ms5N'),(21,'María Isabel','Martínez González',6543210,7890,'Ciudad de México, CDMX, Calle Reforma #123','k9E3h7Pq'),(22,'Juan Carlos','Ramírez Sánchez',7894561,5678,'Bogotá, Colombia, Carrera 45 #67-89','Wp5nT2sU'),(23,'Ana Luisa','Rodríguez Lozano',9321478,3456,'Madrid, España, Calle Gran Vía #456','fB2eV1xZ'),(24,'Carlos Alberto','Gómez Mendoza',5236987,6789,'Lima, Perú, Avenida Javier Prado #789','sK6zW3nY'),(25,'Lucía','Fernández López',3591726,8901,'Santiago, Chile, Avenida Libertador Bernardo O Higgins #1010','aR7uP4bX');
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_color_productos`
--

DROP TABLE IF EXISTS `tb_color_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_color_productos` (
  `id_color` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_color` varchar(20) NOT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_color_productos`
--

LOCK TABLES `tb_color_productos` WRITE;
/*!40000 ALTER TABLE `tb_color_productos` DISABLE KEYS */;
INSERT INTO `tb_color_productos` VALUES (1,'Rojo'),(2,'azul cielo'),(3,'Azul'),(4,'Verde'),(5,'Amarillo'),(6,'Negro'),(7,'Blanco'),(8,'Morado'),(9,'Naranja'),(10,'Gris'),(11,'Rosa'),(12,'Cyan'),(13,'Marrón'),(14,'Turquesa'),(15,'Oro'),(16,'Plata'),(17,'Violeta'),(18,'Índigo'),(19,'Fucsia'),(20,'Verde limón'),(21,'Turmalina'),(22,'Ámbar'),(23,'Lila'),(24,'Cereza'),(25,'Celeste');
/*!40000 ALTER TABLE `tb_color_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalle_pedidos`
--

DROP TABLE IF EXISTS `tb_detalle_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalle_pedidos` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `id_detalle_producto` int(11) DEFAULT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `precio_producto` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_pedido` (`id_pedido`),
  KEY `fk_detalle_pedido_producto` (`id_detalle_producto`),
  CONSTRAINT `fk_detalle_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedidos` (`id_pedido`),
  CONSTRAINT `fk_detalle_pedido_producto` FOREIGN KEY (`id_detalle_producto`) REFERENCES `tb_detalle_productos` (`id_detalle_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalle_pedidos`
--

LOCK TABLES `tb_detalle_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_detalle_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detalle_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalle_productos`
--

DROP TABLE IF EXISTS `tb_detalle_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalle_productos` (
  `id_detalle_producto` int(11) NOT NULL AUTO_INCREMENT,
  `existencia_producto` int(11) NOT NULL CHECK (`existencia_producto` >= 0),
  `genero_producto` varchar(20) NOT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_talla` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_producto`),
  KEY `fk_detalle_color` (`id_color`),
  KEY `fk_detalle_producto` (`id_producto`),
  KEY `fk_detalle_talla` (`id_talla`),
  CONSTRAINT `fk_detalle_color` FOREIGN KEY (`id_color`) REFERENCES `tb_color_productos` (`id_color`),
  CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`),
  CONSTRAINT `fk_detalle_talla` FOREIGN KEY (`id_talla`) REFERENCES `tb_talla_productos` (`id_talla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalle_productos`
--

LOCK TABLES `tb_detalle_productos` WRITE;
/*!40000 ALTER TABLE `tb_detalle_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detalle_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_marcas`
--

DROP TABLE IF EXISTS `tb_marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_marcas` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(40) NOT NULL,
  `imagen_marca` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_marcas`
--

LOCK TABLES `tb_marcas` WRITE;
/*!40000 ALTER TABLE `tb_marcas` DISABLE KEYS */;
INSERT INTO `tb_marcas` VALUES (1,'NIKE','0X');
/*!40000 ALTER TABLE `tb_marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `estado_pedido` enum('En lista','Preparando pedido','Enviado') NOT NULL,
  `fecha_regristo_pedido` date NOT NULL,
  `direccion_pedido` varchar(200) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_cliente` (`id_cliente`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedidos`
--

LOCK TABLES `tb_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizacion_pedido

AFTER UPDATE ON tb_pedidos

FOR EACH ROW

BEGIN

    IF OLD.estado_pedido != NEW.estado_pedido THEN

        INSERT INTO tabla_log_pedidos (id_pedido, estado_anterior, estado_actual, fecha_actualizacion)

        VALUES (NEW.id_pedido, OLD.estado_pedido, NEW.estado_pedido, NOW());

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria_hoodie` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion_producto` varchar(50) NOT NULL,
  `precio_producto` int(11) NOT NULL,
  `id_administrador` int(11) DEFAULT NULL,
  `estado_producto` enum('en existencia','agotado') NOT NULL,
  `imagen_producto` varchar(25) NOT NULL,
  `existencia_producto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_producto_categoria` (`id_categoria_hoodie`),
  KEY `fk_producto_marca` (`id_marca`),
  KEY `fk_producto_administrador` (`id_administrador`),
  CONSTRAINT `fk_producto_administrador` FOREIGN KEY (`id_administrador`) REFERENCES `tb_administradores` (`id_administrador`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria_hoodie`) REFERENCES `tb_categorias` (`id_categoria_hoodie`),
  CONSTRAINT `fk_producto_marca` FOREIGN KEY (`id_marca`) REFERENCES `tb_marcas` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_talla_productos`
--

DROP TABLE IF EXISTS `tb_talla_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_talla_productos` (
  `id_talla` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_talla` varchar(5) NOT NULL,
  PRIMARY KEY (`id_talla`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_talla_productos`
--

LOCK TABLES `tb_talla_productos` WRITE;
/*!40000 ALTER TABLE `tb_talla_productos` DISABLE KEYS */;
INSERT INTO `tb_talla_productos` VALUES (1,'L'),(2,'L'),(3,'L'),(4,'L'),(5,'L'),(6,'L'),(7,'L'),(8,'L'),(9,'L'),(10,'L'),(11,'M'),(12,'M'),(13,'M'),(14,'M'),(15,'M'),(16,'M'),(17,'M'),(18,'M'),(19,'M'),(20,'M'),(21,'S'),(22,'S'),(23,'S'),(24,'S'),(25,'S'),(26,'S');
/*!40000 ALTER TABLE `tb_talla_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 18:13:28
