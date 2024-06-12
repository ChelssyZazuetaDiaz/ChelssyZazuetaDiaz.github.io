-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2024 a las 09:30:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Kenia Os', 'ÁLBUM \"PINK AURA\" YA DISPONIBLE \r\n\r\nKenia Guadalupe Flores Osuna, mejor conocida como Kenia Os y \"La mexa que tiene a to\' el mundo loco\" & \"La OG\" nació en Mazatlán, Sinaloa, México el 15 de julio de 1999.\r\n\r\n'),
(3, 'Natanael Cano', 'Cano nació en Hermosillo, en el estado de Sonora, en 2001. Aunque amó la música desde muy pequeño, sus padres no tenían idea de que esta se apoderaría por completo de ella. A los 13 años empezó a aprender por sí mismo a tocar la guitarra.'),
(4, 'Joy', 'JOY de una banda de K-Pop, Red Velvet, lanza su primera carrera en solitario en mayo con un álbum especial <안녕 (Hello)>. Debutó en agosto de 2014 como miembro de Red Velvet y es amada por su voz fresca y clara, que brinda alegría a sus oyentes.'),
(5, 'Stevie Nicks', 'Stevie Nicks proporcionó un contrapeso místico y esquivo al pop dulce y frenético y al blues básico de Fleetwood Mac, añadiendo espiritualidad y terror a los momentos más tiernos del grupo. Cuando se alejó del grupo después de Tusk.'),
(6, 'Ariana Grande ', 'Originaria de Boca Raton, Florida, donde nació en 1993, hija del diseñador gráfico Edward Butera y Joan Grande, Grande comenzó a cantar y actuar a una edad temprana, apareciendo en producciones teatrales locales. En 2008, cuando tenía 15 años, consiguió el papel de Charlotte en la producción de Broa'),
(7, 'Doris Day', 'Doris Mary Ann Kappelhoff nació el 3 de abril de 1922 en Cincinnati, Ohio. Su padre era profesor de música, director de coro y organista de iglesia. A su madre le encantaba la música popular, especialmente la música country. Tenía 12 años y Day vivía con su madre y su hermano mayor en Ohio.'),
(8, 'Ella Fitzgerald', 'Reconocida mundialmente como \"La Primera Dama de la Canción\", Ella Fitzgerald es posiblemente la mejor vocalista de jazz de todos los tiempos. Bendecida con una voz muy resonante, un amplio rango y una elocución casi perfecta.'),
(9, 'Snoop Dogg', 'Snoop Dogg, una de las figuras más icónicas que surgieron de la era del G-funk de principios de los 90, evolucionó más allá de sus inicios en el gangsta rap para convertirse en un adorable elemento de la cultura pop con incursiones en la televisión, el cine, el entrenamiento de fútbol y lucha libre.'),
(10, 'Shakira', 'La cantautora colombiana Shakira ha vendido más de 80 millones de discos en todo el mundo y ganó numerosos premios, incluidos tres GRAMMY y once Latin GRAMMY.'),
(11, 'Marconi Union', 'Marconi Union es en realidad un grupo musical originario del Reino Unido, en lugar de un cantante individual. Está compuesto por Richard Talbot, Jamie Crossley y Duncan Meadows. Se formó en 2002 en Manchester, Inglaterra. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Malas Decisiones', 2, '02:19:00', '2022-10-26', 1, 'https://cdn2.excelsior.com.mx/800x600/filters:format(jpg):quality(75)/media/pictures/2024/03/13/3088'),
(2, 'Rolling in the Deep', 2, '03:48:00', '2010-11-29', 1, 'foto 1'),
(3, 'Por siempre', 2, '03:05:00', '2018-08-17', 1, 'foto 2'),
(4, 'Tsunami', 2, '02:55:00', '2020-09-04', 1, 'foto 3'),
(5, 'Te odio', 2, '02:24:00', '2020-10-26', 1, 'foto 4\r\n'),
(6, 'Tu Peor Pesadilla', 2, '02:21:00', '2022-10-16', 1, 'foto 5'),
(7, 'Es Así', 2, '03:14:00', '2024-04-24', 1, 'foto 6'),
(8, 'Aún No Me He Ido', 2, '03:32:00', '2020-02-14', 1, 'foto 7'),
(9, 'Kwaheri', 2, '03:45:00', '2020-05-15', 1, 'foto 8'),
(10, 'Nataka Nikuone', 2, '04:12:00', '2019-07-27', 1, 'foto 9\r\n'),
(11, 'Nisaidie Kushare', 2, '03:58:00', '2018-09-10', 1, 'foto 10'),
(12, 'Te Amo', 2, '04:20:00', '2014-06-09', 1, 'foto 11'),
(13, 'Bonita', 2, '03:55:00', '2015-08-18', 1, 'foto 12'),
(14, 'No Crezcas Más', 2, '04:02:00', '2016-12-05', 1, 'foto 13'),
(15, 'Duele', 2, '03:30:00', '2017-03-22', 1, 'foto 14'),
(16, 'Say yes', 12, '03:45:00', '2017-05-12', 1, 'foto 15'),
(17, 'La Bachata', 9, '02:36:00', '2022-03-02', 1, 'foto 16'),
(18, 'Weightless', 23, '08:10:00', '2011-11-16', 1, 'foto 17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `cancion_id`) VALUES
(1, 1, 13),
(2, 2, 17),
(3, 3, 2),
(4, 4, 1),
(5, 5, 4),
(6, 6, 12),
(7, 7, 6),
(8, 8, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Funk'),
(5, 'Reggaetón'),
(6, 'Electrónica\r\n'),
(7, 'Rap'),
(8, 'Hip-Hop'),
(9, 'Bachata'),
(10, 'Salsa'),
(11, 'Cumbia'),
(12, 'K-pop'),
(13, 'Clásica'),
(14, 'Instrumental\r\n'),
(15, 'Country'),
(16, 'Contemporánea'),
(17, 'Metal'),
(18, 'Hyperpop'),
(19, 'Indie'),
(20, 'Flamenco'),
(21, 'Latina'),
(22, 'Punk'),
(23, 'Ambient');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Premium Individual', 129),
(2, ' Premium Familiar ', 199),
(3, 'Premium para Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`id`, `nombre`, `usuario_id`, `duracion`, `total_canciones`, `descripcion`, `publico`) VALUES
(1, 'Kdramas', 1, '10:00:00', 23, 'Música asiatica', 64),
(2, 'Música para dormir', 2, '03:00:00', 10, 'Es música ambiental para relajarse o descansar.', 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists_canciones`
--

CREATE TABLE `playlists_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlists_canciones`
--

INSERT INTO `playlists_canciones` (`id`, `playlist_id`, `cancion_id`, `usuario_id`) VALUES
(1, 1, 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Chelssy Zazueta', 'zazuetadiazchelssy@gmail.com', 1),
(2, 'Estrella Lugo', 'lugosánchezestrella@gmail.com', 2),
(3, 'Alfredo López ', 'lopezdiazalfredo@gmail,com', 3),
(4, 'Amanda Mendoza', 'mendozamorenoamanda@gmail.com', 1),
(5, 'Adela Ochoa ', 'quinteroochoaadela@gmail.com', 1),
(6, 'Valentina Aguilar', 'aguilarvalentina08@gmail.com', 2),
(7, 'Oscar Del Rey', 'oscardelrey45@gmail.com', 3),
(8, 'Azul Polanco', 'polancoazul300@hotmail.com', 2),
(9, 'Miranda Comunica', 'comunicamirandaa@hotmail.com', 3),
(10, 'Fernando Esquerra', 'esquerraescobarfernando@gmail.com', 1),
(11, 'Azul Contreras', 'contrerasazul@gmail.com', 2),
(12, 'Ximena Polanco', 'ximenapolan45e@gmail.com', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `playlist_id` (`playlist_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  ADD CONSTRAINT `playlists_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlists_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `playlists_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
