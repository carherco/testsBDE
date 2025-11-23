CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcion_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcion_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcion_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opcion_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correcta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explicacion` TEXT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `temas` (`id`, `nombre`) VALUES
(1, 'Sistemas operativos'),
(2, 'Redes y comunicaciones'),
(3, 'Fundamentos de programación'),
(4, 'Bases de datos'),
(5, 'Arquitectura de sistemas y APIs'),
(6, 'Seguridad informática'),
(7, 'Fundamentos de ingeniería de software'),
(8, 'Diseño e implementación de Interfaces de usuario'),
(9, 'Lógica de negocio y backend'),
(10, 'La información económico-financiera de la empresa'),
(11, 'Fundamentos de soluciones ERP'),
(12, 'Fundamentos de blockchain y DLT'),
(13, 'Desarrollo de contratos inteligentes');

ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tema` (`id_tema`);

ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_tema`) REFERENCES `temas` (`id`);
