-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2015 a las 07:54:20
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `maze`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `algoritmo`
--

CREATE TABLE IF NOT EXISTS `algoritmo` (
`id` int(11) NOT NULL,
  `descripcion` varchar(60000) NOT NULL,
  `guia` varchar(600) NOT NULL,
  `id_desafio` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `algoritmo`
--

INSERT INTO `algoritmo` (`id`, `descripcion`, `guia`, `id_desafio`, `id_nivel`) VALUES
(1, 'public static void validarMultiplo(int numero) {\r\n    if(numero        17 ==       ) {\r\n        System.out.println("El numero es multiplo de 17");\r\n    }\r\n}', 'Algoritmo que determina si un numero es multiplo de 17.', 1, 1),
(2, 'public static void validarNaturales(int numero) {\r\n    if (numero                ) {\r\n        System.out.println("El numero es natural");\r\n    }\r\n}', 'Algoritmo que determina si un numero es parte del conjunto de los numeros naturales.', 1, 1),
(3, 'public static void validarImpar(int numero) {\r\n    if (numero        2        0) {\r\n        System.out.println("El numero es Par");\r\n    }\r\n}', 'Algoritmo que determina si un numero es impar.', 1, 2),
(4, 'public static void validarRango(int numero)  {\r\n    if (numero       10 && numero       100 )  {\r\n        System.out.println("Si esta entre 10 y 100");\r\n    } else {\r\n        System.out.println("No esta entre 10 y 100");\r\n    }  \r\n}', 'Algoritmo que determina si un numero esta comprendido entre 10 y 100 (Incluyendolos).', 1, 2),
(5, 'public static void validarParImpar(int numero) {\r\n    if(numero        2 ==       ) {\r\n        System.out.println("El numero es Par");\r\n    } else { \r\n        System.out.println("El numero es Impar");\r\n    }  \r\n}', 'Algoritmo que determina si un numero es par o impar.', 2, 1),
(6, 'public static void mayor(int A, int B, int C) {\r\n    if(A        B && A        C) {\r\n        System.out.println("El numero mayor es " + A);\r\n    } else {\r\n        if(B > A        B > C) {\r\n            System.out.println("El numero mayor es " + B);\r\n        } else {\r\n            System.out.println("El numero mayor es " + C);\r\n        }\r\n    }  \r\n}', 'Algoritmo que determina el mayor de tres numeros.', 2, 1),
(7, 'public static void validarMedio(int A, int B, int C) {\r\n    if (A        B && C        A) {\r\n        System.out.println("El valor medio es " + A);\r\n    } else {\r\n        if (B        A && C        B) {\r\n            System.out.println("El valor medio es " + B);\r\n        } else {\r\n            System.out.println("El valor medio es " + C);\r\n        }\r\n    }  \r\n}', 'Algoritmo que determina entre 3 numeros A, B y C cual es el valor medio.', 2, 2),
(8, 'public static void validarDivision(int A, int B) {\r\n    if (A        B == 0) {\r\n        System.out.println(A + "divide exactamente a " + B);\r\n    } else if (       % A ==       ) {\r\n        System.out.println(B + " divide exactamente a " + A);\r\n    } else {\r\n        System.out.println("Ninguno divide al otro                                                                \r\n        exactamente");\r\n    }\r\n}', 'Algoritmo que indica entre dos numeros, si uno de los dos divide al otro exactamente.', 2, 2),
(9, 'public static void obtenerImpares( ) {\r\n    for (int numero =        ; numero        10; numero++) \r\n    {\r\n        if (numero % 2        0)\r\n            System.out.println(numero); \r\n    }\r\n}', 'Algoritmo que obtiene los numeros impares del 1 al 10.', 3, 1),
(10, 'public static void obtenerPares( ) {\r\n    for (int numero = 2; numero  <=        ; numero++) {\r\n        if (numero        2        0) {\r\n            System.out.println(numero);\r\n        }\r\n    }\r\n}', 'Algoritmo que obtiene los numeros pares del 2 al 10.', 3, 1),
(11, 'public static void obtenerMultiplos( ) {\r\n    for (int numero = 3; numero        100;  numero        ) {\r\n        if (numero %        == 0) {\r\n            System.out.println(numero);\r\n        }\r\n    }\r\n}', 'Algoritmo que obtiene los multiplos de 3 menores que 100.', 3, 2),
(12, 'public static void factorial (int numero) {\r\n    int fac =        ;\r\n\r\n    for (int i = 2; i        numero; i++) {\r\n        fac *=        ;\r\n    }\r\n    System.out.println("El facorial es: " + fac);\r\n}', 'Algoritmo que determina el factorial de un numero.', 3, 2),
(13, 'public static void capturaNumeros( ) {\r\n    Scanner sc = new Scanner(System.in);\r\n    int n;\r\n    do {\r\n        System.out.print("Introduzca un número entero: ");\r\n        n = sc.nextInt();\r\n    } while (        %        ==        );\r\n}', 'Algoritmo que captura un numero por teclado hasta que se ingrese un multiplo de 11.', 4, 1),
(14, 'public static void calcularSuma(int n) {\r\n    int cont = 1, suma =        ;\r\n    while(cont <=        ) {\r\n        suma        cont++;\r\n    }\r\n}', 'Algoritmo que calcula la suma de los numeros del 1 al n.', 4, 1),
(15, 'public static void calcularTabla(int n) {\r\n    int cont = 1;\r\n    int r;\r\n    while(cont        10) \r\n    {\r\n        r =        * cont;\r\n        cont = cont +        ;\r\n        System.out.println(        );\r\n    }\r\n}', 'Algoritmo que calcula la tabla de multiplicar (hasta el 10) de un numero.', 4, 2),
(16, 'public static void evaluarPrimo(int numero) {\r\n    int i, cont =        ;\r\n\r\n    for (i = 1; i        numero; i++) {\r\n        if (numero %        ==0)\r\n            i++;\r\n    }  \r\n    if (i        2)\r\n        System.out.println("Es Primo");\r\n}', 'Algoritmo que determina si un numero es primo.', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_servidor`
--

CREATE TABLE IF NOT EXISTS `configuracion_servidor` (
`id` int(11) NOT NULL,
  `ip_publica` varchar(15) NOT NULL,
  `puertoHades` smallint(6) NOT NULL,
  `puertoShadow` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuracion_servidor`
--

INSERT INTO `configuracion_servidor` (`id`, `ip_publica`, `puertoHades`, `puertoShadow`) VALUES
(1, '192.168.0.28', 9595, 9090);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desafio`
--

CREATE TABLE IF NOT EXISTS `desafio` (
`id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `trampa` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `desafio`
--

INSERT INTO `desafio` (`id`, `descripcion`, `trampa`) VALUES
(1, 'Condicionales', 1),
(2, 'Condicionales compuestas', 2),
(3, 'Estructuras repetitivas', 3),
(4, 'Mixto', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logro`
--

CREATE TABLE IF NOT EXISTS `logro` (
`id` int(11) NOT NULL,
  `nombre` varchar(16) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logro`
--

INSERT INTO `logro` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Invencible', 'Gana en primer lugar 10, 20 y 30 partidas'),
(2, 'Resistente', 'Sal del laberinto con tres vidas durante 10, 20 y 30 partidas'),
(3, 'Eficaz', 'Supera 20, 40 y 60 desafíos de un solo intento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logro_usuario`
--

CREATE TABLE IF NOT EXISTS `logro_usuario` (
`id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_logro` int(11) NOT NULL,
  `id_medalla` int(11) DEFAULT NULL,
  `contador` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logro_usuario`
--

INSERT INTO `logro_usuario` (`id`, `id_usuario`, `id_logro`, `id_medalla`, `contador`) VALUES
(1, 2, 1, 3, 19),
(2, 2, 2, NULL, 4),
(3, 1, 3, NULL, 1),
(4, 1, 2, NULL, 1),
(5, 1, 1, NULL, 1),
(6, 10, 1, NULL, 1),
(7, 5, 1, NULL, 1),
(8, 2, 3, NULL, 1),
(9, 4, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medalla`
--

CREATE TABLE IF NOT EXISTS `medalla` (
`id` int(11) NOT NULL,
  `descripcion` varchar(16) NOT NULL,
  `orden` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medalla`
--

INSERT INTO `medalla` (`id`, `descripcion`, `orden`) VALUES
(1, 'Oro', 1),
(2, 'Plata', 2),
(3, 'Bronce', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE IF NOT EXISTS `nivel` (
`id` int(11) NOT NULL,
  `descripcion` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `descripcion`) VALUES
(1, 'Novato'),
(2, 'Experto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango`
--

CREATE TABLE IF NOT EXISTS `rango` (
`id` int(11) NOT NULL,
  `descripcion` varchar(16) NOT NULL,
  `puntos_requeridos` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rango`
--

INSERT INTO `rango` (`id`, `descripcion`, `puntos_requeridos`) VALUES
(1, 'Senior', 1000),
(2, 'Semi senior', 500),
(3, 'Junior', 200),
(4, 'Amateur', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_rango` int(11) NOT NULL,
  `general_points` smallint(6) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `password`, `id_nivel`, `id_rango`, `general_points`) VALUES
(1, 'santiago', '202cb962ac59075b964b07152d234b70', 1, 2, 1040),
(2, 'David', 'e26c062fedf6b32834e4de93f9c8b644', 2, 1, 1220),
(3, 'marta', '827ccb0eea8a706c4c34a16891f84e7b', 1, 4, 0),
(4, 'sofi', '9f6e6800cfae7749eb6c486619254b9c', 1, 4, 0),
(5, 'manuel', '698d51a19d8a121ce581499d7b701668', 1, 4, 0),
(6, 'julian', '9f6e6800cfae7749eb6c486619254b9c', 1, 4, 30),
(7, 'Lord', '9f6e6800cfae7749eb6c486619254b9c', 1, 4, 0),
(8, 'zhero', '827ccb0eea8a706c4c34a16891f84e7b', 2, 4, 20),
(9, 'tito', '827ccb0eea8a706c4c34a16891f84e7b', 1, 4, 0),
(10, 'Cecilia', '202cb962ac59075b964b07152d234b70', 1, 3, 230);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variables_algoritmo`
--

CREATE TABLE IF NOT EXISTS `variables_algoritmo` (
`id` int(11) NOT NULL,
  `id_algoritmo` int(11) NOT NULL,
  `valor_variable` varchar(2) NOT NULL,
  `posicion_graficaX` smallint(6) NOT NULL,
  `posicion_graficaY` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `variables_algoritmo`
--

INSERT INTO `variables_algoritmo` (`id`, `id_algoritmo`, `valor_variable`, `posicion_graficaX`, `posicion_graficaY`) VALUES
(1, 1, '%', -90, 100),
(2, 1, '0', -23, 100),
(3, 2, '>', -86, 100),
(4, 2, '0', -55, 100),
(5, 3, '%', -88, 100),
(6, 3, '!=', -47, 100),
(7, 4, '>=', -89, 100),
(8, 4, '<=', 33, 100),
(9, 5, '%', -92, 100),
(10, 5, '0', -31, 100),
(11, 6, '>', -132, 100),
(12, 6, '>', -51, 100),
(13, 6, '&&', -89, 38),
(14, 7, '<', -128, 100),
(15, 7, '<', -47, 100),
(16, 7, '<', -112, 38),
(17, 7, '<', -30, 38),
(18, 8, '%', -128, 100),
(19, 8, 'B', -100, 58),
(20, 8, '0', -22, 58),
(21, 9, '1', -45, 100),
(22, 9, '<=', 45, 100),
(23, 9, '!=', -42, 58),
(24, 10, '10', 50, 100),
(25, 10, '%', -72, 80),
(26, 10, '==', -30, 80),
(27, 11, '<', 25, 100),
(28, 11, '++', 143, 100),
(29, 11, '3', -55, 80),
(30, 12, '1', -103, 100),
(31, 12, '<=', -70, 58),
(32, 12, 'i', -100, 37),
(33, 13, 'n', -104, -6),
(34, 13, '11', -58, -6),
(35, 13, '0', -8, -6),
(36, 14, '0', -24, 100),
(37, 14, 'n', -65, 80),
(38, 14, '+=', -100, 58),
(39, 15, '<=', -86, 58),
(40, 15, 'n', -120, 16),
(41, 15, '1', -52, 5),
(42, 15, 'r', -15, -27),
(43, 16, '0', -82, 100),
(44, 16, '<=', -88, 60),
(45, 16, 'i', -55, 38),
(46, 16, '==', -135, -25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `algoritmo`
--
ALTER TABLE `algoritmo`
 ADD PRIMARY KEY (`id`), ADD KEY `id_desafio` (`id_desafio`), ADD KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `configuracion_servidor`
--
ALTER TABLE `configuracion_servidor`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `desafio`
--
ALTER TABLE `desafio`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logro`
--
ALTER TABLE `logro`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logro_usuario`
--
ALTER TABLE `logro_usuario`
 ADD PRIMARY KEY (`id`), ADD KEY `id_logro` (`id_logro`), ADD KEY `id_usuario` (`id_usuario`), ADD KEY `id_medalla` (`id_medalla`);

--
-- Indices de la tabla `medalla`
--
ALTER TABLE `medalla`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rango`
--
ALTER TABLE `rango`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_rango` (`id_rango`), ADD KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `variables_algoritmo`
--
ALTER TABLE `variables_algoritmo`
 ADD PRIMARY KEY (`id`), ADD KEY `FOREIGN_KEY` (`id_algoritmo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `algoritmo`
--
ALTER TABLE `algoritmo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `configuracion_servidor`
--
ALTER TABLE `configuracion_servidor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `desafio`
--
ALTER TABLE `desafio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `logro`
--
ALTER TABLE `logro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `logro_usuario`
--
ALTER TABLE `logro_usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `medalla`
--
ALTER TABLE `medalla`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `rango`
--
ALTER TABLE `rango`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `variables_algoritmo`
--
ALTER TABLE `variables_algoritmo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `algoritmo`
--
ALTER TABLE `algoritmo`
ADD CONSTRAINT `algoritmo_ibfk_1` FOREIGN KEY (`id_desafio`) REFERENCES `desafio` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `algoritmo_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `logro_usuario`
--
ALTER TABLE `logro_usuario`
ADD CONSTRAINT `logro_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `logro_usuario_ibfk_2` FOREIGN KEY (`id_logro`) REFERENCES `logro` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `logro_usuario_ibfk_3` FOREIGN KEY (`id_medalla`) REFERENCES `medalla` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_rango`) REFERENCES `rango` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `variables_algoritmo`
--
ALTER TABLE `variables_algoritmo`
ADD CONSTRAINT `variables_algoritmo_ibfk_1` FOREIGN KEY (`id_algoritmo`) REFERENCES `algoritmo` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
