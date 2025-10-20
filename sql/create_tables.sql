CREATE DATABASE IF NOT EXISTS testsBDE CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE testsBDE;

CREATE TABLE IF NOT EXISTS temas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS preguntas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_tema INT NOT NULL,
  texto TEXT NOT NULL,
  opcion_a VARCHAR(255) NOT NULL,
  opcion_b VARCHAR(255) NOT NULL,
  opcion_c VARCHAR(255) NOT NULL,
  opcion_d VARCHAR(255) NOT NULL,
  correcta CHAR(1) NOT NULL,
  FOREIGN KEY (id_tema) REFERENCES temas(id)
);

-- Insert temas
INSERT INTO temas (nombre) VALUES
('Sistemas operativos'),
('Redes y comunicaciones'),
('Fundamentos de programación'),
('Bases de datos'),
('Arquitectura de sistemas y APIs'),
('Seguridad informática'),
('Computación en la nube'),
('Virtualización y contenedores'),
('CI/CD y DevSecOps'),
('Observabilidad y monitorización'),
('Gestión de vulnerabilidades y riesgos');

-- Insert preguntas (40)
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (1, '¿Cuál de las siguientes NO es una función principal de un sistema operativo?', 'Gestión de procesos', 'Gestión de memoria', 'Compilación de código fuente', 'Gestión de archivos', 'c');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (1, 'En Linux, el comando `ps` se utiliza para:', 'Mostrar procesos en ejecución', 'Cambiar permisos de archivos', 'Crear un nuevo usuario', 'Reiniciar el sistema', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (1, 'En Windows, el “Administrador de tareas” permite principalmente:', 'Ver y terminar procesos', 'Modificar registros DNS', 'Instalar actualizaciones', 'Editar el registro del sistema', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (1, '¿Qué es un “proceso zombi” en Linux?', 'Un proceso detenido manualmente', 'Un proceso que ha finalizado pero mantiene una entrada en la tabla de procesos', 'Un proceso que consume toda la CPU', 'Un proceso ejecutándose en segundo plano', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (2, 'El protocolo responsable de traducir nombres de dominio en direcciones IP es:', 'HTTP', 'DNS', 'FTP', 'SNMP', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (2, 'En el modelo OSI, la capa de transporte se encarga de:', 'Enrutar paquetes', 'Establecer comunicación extremo a extremo', 'Formatear los datos', 'Definir direcciones físicas', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (2, 'Una VPN permite:', 'Ampliar el ancho de banda', 'Conectarse a una red privada a través de Internet de forma segura', 'Eliminar firewalls', 'Crear VLANs', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (2, 'El subnetting se utiliza para:', 'Dividir una red grande en subredes más pequeñas', 'Aumentar la velocidad de conexión', 'Encriptar la red', 'Balancear la carga', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (3, 'En programación orientada a objetos, la herencia permite:', 'Reutilizar código de una clase en otra', 'Proteger variables privadas', 'Ejecutar múltiples hilos', 'Compilar código más rápido', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (3, '¿Qué estructura de datos sigue el principio “LIFO”?', 'Cola', 'Lista', 'Pila', 'Árbol', 'c');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (3, 'En Python, la palabra clave `class` sirve para:', 'Definir una función', 'Crear una variable', 'Definir una clase', 'Importar una librería', 'c');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (3, 'En Java, el polimorfismo permite:', 'Ejecutar el mismo método con diferentes implementaciones', 'Compilar sin errores', 'Crear clases abstractas', 'Evitar herencia múltiple', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (4, 'En una base de datos relacional, una “clave primaria” es:', 'Una columna que identifica de forma única cada fila', 'Un valor duplicado', 'Una restricción opcional', 'Un índice temporal', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (4, '¿Cuál de las siguientes es una base de datos NoSQL?', 'MySQL', 'PostgreSQL', 'MongoDB', 'Oracle', 'c');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (4, 'La sentencia SQL para eliminar filas que cumplan una condición es:', 'REMOVE FROM', 'DROP TABLE', 'DELETE FROM', 'CLEAR TABLE', 'c');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (4, 'En la normalización de bases de datos, el objetivo principal es:', 'Reducir redundancia y mejorar integridad', 'Aumentar el tamaño de las tablas', 'Crear más índices', 'Duplicar datos para consultas más rápidas', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (5, 'Un middleware sirve para:', 'Conectar sistemas y facilitar la comunicación entre aplicaciones', 'Reemplazar el hardware', 'Ejecutar consultas SQL', 'Aumentar la memoria RAM', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (5, 'Una API REST utiliza principalmente el protocolo:', 'FTP', 'HTTP', 'SMTP', 'SNMP', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (5, 'En una arquitectura monolítica:', 'Todos los componentes se ejecutan en un solo bloque', 'Cada módulo se despliega por separado', 'Se usa siempre Kubernetes', 'No existe una base de datos central', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (6, 'El principio CIA de la seguridad se refiere a:', 'Control, Integración, Aislamiento', 'Confidencialidad, Integridad, Disponibilidad', 'Cifrado, Identidad, Auditoría', 'Confianza, Interoperabilidad, Autenticación', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (6, 'Un ataque “phishing” consiste en:', 'Interceptar comunicaciones cifradas', 'Suplantar la identidad de un usuario mediante engaño', 'Explotar una vulnerabilidad en software', 'Cifrar datos de un sistema', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (6, 'Una firma digital garantiza principalmente:', 'El tamaño del archivo', 'La autenticidad y la integridad del mensaje', 'La disponibilidad del servidor', 'El cifrado de los datos en tránsito', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (6, 'La gestión de riesgos en seguridad informática consiste en:', 'Eliminar todos los riesgos', 'Identificar, evaluar y mitigar riesgos', 'Crear copias de seguridad', 'Instalar antivirus', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (7, 'IaaS significa:', 'Infrastructure as a Service', 'Internet as a System', 'Information as a Service', 'Interface and Application System', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (7, '¿Cuál de las siguientes es una característica de la nube híbrida?', 'Mezcla de recursos locales y en la nube pública', 'Solo accesible desde una red interna', 'Sin elasticidad', 'Sin automatización', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (7, 'Un proveedor principal de nube pública es:', 'VMware', 'Oracle Cloud', 'Cisco', 'Ubuntu', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (8, 'Un hipervisor tipo 1 se ejecuta:', 'Directamente sobre el hardware', 'Dentro de un sistema operativo', 'Solo en contenedores', 'En la red', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (8, 'Docker se utiliza para:', 'Crear máquinas virtuales completas', 'Ejecutar aplicaciones en contenedores aislados', 'Encriptar archivos', 'Diseñar bases de datos', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (8, 'Kubernetes se encarga de:', 'Compilar código fuente', 'Orquestar contenedores y gestionar su despliegue', 'Diseñar redes locales', 'Monitorizar el hardware', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (9, 'El propósito de CI/CD es:', 'Automatizar el desarrollo, prueba y despliegue del software', 'Reducir la colaboración entre equipos', 'Reemplazar los servidores físicos', 'Crear bases de datos distribuidas', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (9, 'Jenkins es una herramienta de:', 'Monitorización', 'Integración continua', 'Análisis de vulnerabilidades', 'Virtualización', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (9, 'DevSecOps incorpora la seguridad:', 'Solo al final del desarrollo', 'En todas las fases del ciclo de vida', 'Solo en la fase de pruebas', 'Solo en producción', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (10, 'La observabilidad se basa en:', 'Supervisar métricas, logs y trazas', 'Ejecutar pruebas unitarias', 'Configurar routers', 'Eliminar errores automáticamente', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (10, 'Prometheus se utiliza para:', 'Crear contenedores', 'Recoger y consultar métricas de sistemas', 'Configurar redes', 'Realizar backups', 'b');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (10, 'Grafana se usa principalmente para:', 'Visualizar datos y métricas en paneles', 'Compilar aplicaciones', 'Cifrar archivos', 'Crear redes virtuales', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (11, 'Un escáner de vulnerabilidades sirve para:', 'Detectar debilidades en sistemas y aplicaciones', 'Cifrar bases de datos', 'Crear redes seguras', 'Monitorizar CPU y RAM', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (11, 'Una prueba de penetración busca:', 'Verificar la seguridad mediante ataques controlados', 'Aumentar el rendimiento del servidor', 'Ampliar la capacidad de red', 'Instalar actualizaciones', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (11, 'ISO 27001 trata sobre:', 'Seguridad de la información', 'Desarrollo de software', 'Redes TCP/IP', 'Gestión de calidad industrial', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (11, 'El RGPD regula principalmente:', 'La protección de datos personales', 'El uso de software libre', 'La gestión de riesgos', 'El almacenamiento en la nube', 'a');
INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta) VALUES (11, 'Un firewall actúa como:', 'Filtro que controla el tráfico de red entrante y saliente', 'Sistema de backup automático', 'Balanceador de carga', 'Antivirus', 'a');
