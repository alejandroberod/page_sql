-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 02:28:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividad_sql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `flag` varchar(500) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `flag`, `capital`) VALUES
(1, 'Estados Unidos', 'https://static.vecteezy.com/system/resources/previews/010/870/761/original/american-flag-of-united-states-of-america-png.png', 'Washington'),
(2, 'Brasil', 'https://static.vecteezy.com/system/resources/thumbnails/018/923/995/small/brazil-flag-icons-png.png', 'Rio de Janeiro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `countries_id`) VALUES
(1, 'Alabama', 1),
(2, 'Alaska', 1),
(3, 'Arizona', 1),
(4, 'Arkansas', 1),
(5, 'California', 1),
(6, 'Carolina del Norte', 1),
(7, 'Carolina del Sur', 1),
(8, 'Colorado', 1),
(9, 'Connecticut', 1),
(10, 'Dakota del Norte', 1),
(11, 'Dakota del sur', 1),
(12, 'Delaware', 1),
(13, 'Florida', 1),
(14, 'Georgia', 1),
(15, 'Hawai', 1),
(16, 'Idaho', 1),
(17, 'Illinois', 1),
(18, 'Indiana', 1),
(19, 'Iowa', 1),
(20, 'Kansas', 1),
(21, 'Acre', 2),
(22, 'Alagoas', 2),
(23, 'Amapá', 2),
(24, 'Amazonas', 2),
(25, 'Bahía', 2),
(26, 'Ceará', 2),
(27, 'Espírito Santo', 2),
(28, 'Goiás', 2),
(29, 'Maranhão', 2),
(30, 'Mato Grosso del Sur', 2),
(31, 'Mato Grosso', 2),
(32, 'Minas Gerais', 2),
(33, 'Pará', 2),
(34, 'Paraíba', 2),
(35, 'Paraná', 2),
(36, 'Pernambuco', 2),
(37, 'Piauí', 2),
(38, 'Rio de Janeiro', 2),
(39, 'Río Grande del Norte', 2),
(40, 'Río Grande del Sur', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `phone`, `countries_id`) VALUES
(1, 'Thomas Jefferson', '6560 Braddock Rd, Alexandria, VA 22312, EE. U', '703-750-8300', 1),
(2, 'School for Advanced Studies ', '11011 SW 104th St #4103, Miami, FL 33176, EE.', '305-237-5062', 1),
(3, 'Walter Payton College Preparatory High School', '1034 N Wells St, Chicago, IL 60610', '773-534-0034', 1),
(4, 'Davidson Academy ', 'P.O. Box 9119 Reno, Nevada 89507', '775-682-5800', 1),
(5, 'Gwinnett School of Mathematics, Science and T', '970 McElvaney Lane  Lawrenceville, GA 30044', '678-518-6700', 1),
(6, 'Whitney High School ', '16800 Shoemaker Ave, Cerritos, CA 90703', '562-229-7745', 1),
(7, 'Oxford Academy', '5172 Orange Ave., Cypress, CA 90630', '714-220-3055 ', 1),
(8, 'City High Middle School ', '1720 Plainfield Ave NE, Grand Rapids, MI 4950', '616-819-2380', 1),
(9, 'Townsend Harris High School', '149-11 MELBOURNE AVE., FLUSHING, NY 11367', '718-575-5580', 1),
(10, 'Queens High School for the Sciences at York C', '94-50 159th Street Jamaica, NY 11451', '718-657-3181', 1),
(11, 'FIA Business School - Profuturo', 'Avenida das Nações Unidas, 7.221 - Pinheiros, 05425-902, São Paulo', '05425-902', 2),
(12, 'ESPM – Brasil', 'Rua Dr. Álvaro Alvim, 123 Vila Mariana - São Paulo, , São Paulo', '1234-5678', 2),
(13, 'Colégio Anchieta Porto Alegre', 'Av. Nilo Peçanha, 1521 Bairro Três Figueiras', '3382 6000', 2),
(14, 'Avenues São Paulo', 'Rua Pedro Avancine, 73, São Paulo, Brazil', '456-123', 2),
(15, 'Colégio Bandeirantes de São Paulo\r\n', ' R. Estela, 268 - Vila Mariana, São Paulo - SP, 04011-001, Brasil', '11 5087-3500', 2),
(16, 'Colégio Paulino e Paulino\r\n', ' Rua João Passalaqua, 181 - Bela Vista, São Paulo - SP, 01326-020, Brasil', '11 2667-5543', 2),
(17, 'Colegio Serafico Nossa Senhora do Brasil\r\n', 'Av. Frei Cirilo, 4454 - A - Messejana, Fortaleza - CE, 60840-285', '85 3274-2112', 2),
(18, 'Instituto de Educação Paulo Moody Davidson\r\n', '99, Avenida, R. São Vicente de Paula, 348 - José Rosa, Boa Viagem - CE,', ' 63870-000', 2),
(19, 'Colégio Educallis\r\n', 'Av. João Pessoa, 437 - Anil, São Luís - MA, 65040-003', '98 3878-7878', 2),
(20, 'Escola Universo do Aprender\r\n', '65052-050 - Cohab Anil I, São Luís - MA, Brasil', '98 3245-1208', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `names` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_birth` varchar(45) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `names`, `lastname`, `email`, `password`, `date_birth`, `departments_id`, `school_id`) VALUES
(1, 'Michael', 'Jackson', 'michaelj@gmail.com', '123456', '1-04-1985', 1, 1),
(2, 'Adriana', 'Otalora', 'adriana@gmail.com', '123456', '20-06-2000', 2, 2),
(3, 'Emily', 'Wattson', 'emilyw@gmail.com', '123456', '09-09-1999', 3, 3),
(4, 'Jane', 'Doe', 'janed@gmail.com', '123456', '11-12-1998', 4, 4),
(5, 'Jacob', 'Sanders', 'jacob@gmail.com', '123456', '20-12-2000', 5, 5),
(6, 'Matthew', 'Airons', 'matthew@gmail.com', '123456', '15-04-2001', 6, 6),
(7, 'William', 'Smith', 'william@outlook.com', '123456', '11-11-1998', 7, 7),
(8, 'Jenna', 'Black', 'jenna@outlook.com', '123456', '06-12-2002', 8, 8),
(9, 'Cristopher', 'Nolan', 'cristopher@gmail.com', '123456', '12-08-1982', 9, 9),
(10, 'Chloe', 'Ting', 'chloe@outlook.com', '123456', '06-07-1995', 10, 10),
(11, 'Faith', 'Moore', 'faith@gmail.com', '123456', '02-03-2003', 11, 9),
(12, 'Katherine', 'Douglas', 'katherine@outlook.com', '123456', '10-10-1996', 12, 8),
(13, 'Emma', 'Stone', 'emma@gmail.com', '123456', '08-05-2000', 13, 7),
(14, 'Liam', 'Payne', 'liam@outlook.com', '123456', '03-09-1999', 14, 6),
(15, 'Oliver', 'Wood', 'oliver@gmail.com', '123456', '14-02-1989', 15, 5),
(16, 'María', 'Pereira', 'maría@outlook.com', '123456', '10-02-1998', 21, 11),
(17, 'José', 'Alves', 'josé@gmail.com', '123456', '17-09-2000', 22, 12),
(18, 'Beatriz', 'Ferreira', 'beatriz@gmail.com', '123456', '05-05-1995', 23, 13),
(19, 'Jessica', 'Silva', 'jessica@outlook.com', '123456', '13-01-1992', 24, 14),
(20, 'Felipe', 'de Oliveira', 'felipe@gmail.com', '123456', '08-08-1990', 25, 15),
(21, 'João', 'Ribeiro', 'joão@gmail.com', '123456', '06-01-2001', 26, 16),
(22, 'Gustavo', 'da Silva', 'gustavo@outlook.com', '123456', '14-10-1999', 27, 17),
(23, 'Vittoria', 'Vieira', 'vittoria@gmail.com', '123456', '24-12-2000', 28, 18),
(24, 'Marcos', 'Costa', 'marcos@gmail.com', '123456', '19-09-1988', 29, 19),
(25, 'Aline', 'De sousa', 'aline@outlook.com', '123456', '01-10-2001', 30, 20),
(26, 'Ana', 'Moreira', 'ana@gmail.com', '123456', '20-06-1996', 31, 19),
(27, 'Camilla', 'Marques', 'camila@gmail.com', '123456', '27-02-1998', 32, 18),
(28, 'Daniel', 'De Almeida', 'daniel@gmail.com', '123456', '14-09-2000', 33, 17),
(29, 'Francisca', 'Carvalho', 'francisca@outlook.com', '123456', '03-03-2003', 34, 16),
(30, 'Teressa', 'Pinheiro', 'teressa@gmail.com', '123456', '18-12-1993', 35, 15),
(31, 'Walter', 'smith', 'walter@gmail.com', '123456', '20-06-2000', 29, 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `departments_id` (`departments_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
