-- 50 preguntas difíciles sobre Lógica de Negocio y Backend (Tema 9) basadas en temario.txt
-- Diseño de bases de datos y gestión de datos
-- Desarrollo de APIs y servicios web
-- Seguridad en el desarrollo de software (encriptación, autenticación, autorización)

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(9, 'En diseño de bases de datos, ¿qué es la normalización?', 'Proceso de cifrado', 'Proceso de organizar datos para reducir redundancia', 'Proceso de backup', 'Proceso de indexación', 'b', 'La normalización organiza datos en tablas para reducir redundancia y dependencias. Formas normales: 1NF (valores atómicos), 2NF (elimina dependencias parciales), 3NF (elimina dependencias transitivas), BCNF. Mejora integridad pero puede afectar rendimiento.'),

(9, '¿Qué método HTTP es idempotente y se usa para actualizar recursos completos?', 'POST', 'PUT', 'PATCH', 'DELETE', 'b', 'PUT es idempotente (múltiples peticiones = mismo resultado) y actualiza recursos completos. PATCH actualiza parcialmente. POST no es idempotente (crea múltiples recursos). DELETE es idempotente. La idempotencia permite reintentos seguros.'),

(9, 'En OAuth 2.0, ¿qué es un access token?', 'Contraseña del usuario', 'Token que permite acceso a recursos protegidos', 'Clave de cifrado', 'Certificado digital', 'b', 'Un access token es credencial que permite acceso a recursos protegidos. Tiene alcance (scope) y tiempo de vida limitado. El cliente lo incluye en peticiones (header Authorization: Bearer token). Refresh token permite obtener nuevos access tokens.'),

(9, '¿Qué es un ORM (Object-Relational Mapping)?', 'Base de datos', 'Herramienta que mapea objetos a tablas de base de datos', 'Protocolo de red', 'Lenguaje de programación', 'b', 'Un ORM mapea objetos de programación a tablas de base de datos, abstrayendo SQL. Ejemplos: Hibernate (Java), Entity Framework (.NET), Sequelize (Node.js), SQLAlchemy (Python). Ventajas: productividad, portabilidad. Desventajas: rendimiento en consultas complejas.'),

(9, 'En REST API, ¿qué código de estado indica que el recurso no fue encontrado?', '400 Bad Request', '401 Unauthorized', '404 Not Found', '500 Internal Server Error', 'c', '404 Not Found indica que el recurso solicitado no existe. 400 es petición malformada. 401 es no autenticado. 403 es no autorizado. 500 es error del servidor. Los códigos 2xx son éxito, 3xx redirección, 4xx error cliente, 5xx error servidor.'),

(9, '¿Qué es JWT (JSON Web Token)?', 'Base de datos', 'Token compacto y autónomo para transmitir información entre partes', 'Framework', 'Protocolo de red', 'b', 'JWT es un token compacto y autónomo (contiene toda la información necesaria) para transmitir claims entre partes. Estructura: header.payload.signature. Usado en autenticación stateless. Se verifica con clave secreta (HMAC) o pública (RSA).'),

(9, 'En diseño de APIs, ¿qué es versionado semántico (SemVer)?', 'Versión aleatoria', 'MAJOR.MINOR.PATCH - cambios incompatibles.funcionalidad.bugs', 'Solo números', 'Fechas', 'b', 'SemVer usa MAJOR.MINOR.PATCH: MAJOR para cambios incompatibles, MINOR para funcionalidad compatible, PATCH para bugs. Ejemplo: 2.3.1. Comunica impacto de cambios. Usado en APIs, librerías, paquetes.'),

(9, '¿Qué es una transacción ACID en bases de datos?', 'Tipo de cifrado', 'Conjunto de operaciones con Atomicidad, Consistencia, Aislamiento, Durabilidad', 'Protocolo de red', 'Tipo de índice', 'b', 'ACID garantiza fiabilidad de transacciones: Atomicidad (todo o nada), Consistencia (estado válido), Aislamiento (transacciones concurrentes no interfieren), Durabilidad (cambios persisten). Fundamental en bases de datos relacionales.'),

(9, 'En autenticación, ¿qué es el hashing de contraseñas?', 'Cifrado reversible', 'Transformación unidireccional de contraseña a hash', 'Almacenar en texto plano', 'Comprimir contraseña', 'b', 'El hashing transforma contraseñas en hash irreversible. Nunca almacenar contraseñas en texto plano. Usar algoritmos lentos (bcrypt, Argon2, PBKDF2) con salt único. Verificar comparando hashes, no descifrando.'),

(9, '¿Qué patrón arquitectónico separa lógica de negocio de acceso a datos?', 'MVC', 'Repository Pattern', 'Singleton', 'Observer', 'b', 'El Repository Pattern abstrae acceso a datos, separando lógica de negocio de persistencia. El repositorio proporciona interfaz para operaciones CRUD. Facilita testing (mock repositories) y cambio de tecnología de persistencia.'),

(9, 'En APIs REST, ¿qué es CORS?', 'Base de datos', 'Cross-Origin Resource Sharing - mecanismo para permitir peticiones entre dominios', 'Protocolo de cifrado', 'Framework', 'b', 'CORS permite que recursos de un dominio sean solicitados desde otro dominio. El servidor responde con headers Access-Control-Allow-Origin. Previene ataques pero permite integraciones legítimas. Configurar correctamente para seguridad.'),

(9, '¿Qué es un índice en bases de datos?', 'Tabla principal', 'Estructura que mejora velocidad de búsqueda', 'Backup', 'Usuario', 'b', 'Un índice es estructura de datos que mejora velocidad de búsqueda (como índice de libro). Tipos: B-Tree (rangos), Hash (igualdad), Full-text (texto). Trade-off: mejora lectura pero ralentiza escritura y usa espacio. Indexar columnas frecuentemente consultadas.'),

(9, 'En seguridad, ¿qué es el principio de defensa en profundidad?', 'Un solo control', 'Múltiples capas de seguridad', 'No usar seguridad', 'Solo cifrado', 'b', 'Defensa en profundidad usa múltiples capas de controles de seguridad. Si una falla, otras protegen. Capas: red (firewall), aplicación (validación), datos (cifrado), autenticación (MFA). Reduce riesgo de compromiso total.'),

(9, '¿Qué es un middleware en desarrollo backend?', 'Base de datos', 'Función que procesa peticiones antes de llegar al handler final', 'Frontend', 'Servidor', 'b', 'Un middleware es función que procesa peticiones HTTP antes del handler final. Puede: autenticar, loggear, validar, transformar datos, manejar errores. Se encadenan en pipeline. Común en Express, ASP.NET, Django.'),

(9, 'En bases de datos, ¿qué es una vista (VIEW)?', 'Tabla física', 'Consulta almacenada que se comporta como tabla virtual', 'Índice', 'Usuario', 'b', 'Una vista es consulta SELECT almacenada que se comporta como tabla virtual. No almacena datos (excepto vistas materializadas). Útil para: seguridad (ocultar columnas), simplificar consultas complejas, abstracción.'),

(9, '¿Qué es rate limiting en APIs?', 'Limitar tamaño', 'Limitar número de peticiones por tiempo', 'Limitar usuarios', 'Limitar datos', 'b', 'Rate limiting restringe peticiones por tiempo (ej: 100 req/min) para prevenir: abuso, DDoS, scraping, fuerza bruta. Implementaciones: token bucket, leaky bucket, sliding window. Responde con 429 Too Many Requests.'),

(9, 'En diseño de APIs, ¿qué es idempotencia?', 'Operación rápida', 'Múltiples peticiones idénticas tienen mismo efecto que una', 'Operación lenta', 'Operación que falla', 'b', 'Idempotencia significa que múltiples peticiones idénticas tienen el mismo efecto que una. GET, PUT, DELETE son idempotentes. POST no lo es. Permite reintentos seguros ante fallos de red.'),

(9, '¿Qué es SQL Injection?', 'Tipo de base de datos', 'Vulnerabilidad que permite ejecutar SQL malicioso', 'Protocolo de red', 'Framework', 'b', 'SQL Injection inyecta código SQL malicioso en campos de entrada para manipular consultas. Puede extraer, modificar o eliminar datos. Prevención: prepared statements, validación de entrada, ORM, principio de menor privilegio en BD.'),

(9, 'En autenticación, ¿qué es MFA (Multi-Factor Authentication)?', 'Múltiples contraseñas', 'Autenticación con dos o más factores diferentes', 'Múltiples usuarios', 'Múltiples bases de datos', 'b', 'MFA requiere dos o más factores: algo que sabes (contraseña), algo que tienes (token, smartphone), algo que eres (biometría). Aumenta significativamente seguridad. 2FA es caso específico con dos factores.'),

(9, '¿Qué es un stored procedure?', 'Tabla', 'Conjunto de sentencias SQL almacenadas que se pueden ejecutar', 'Índice', 'Vista', 'b', 'Un stored procedure es conjunto de sentencias SQL almacenadas en el servidor que se ejecutan con parámetros. Ventajas: rendimiento (precompilado), seguridad (encapsula lógica), reutilización. Desventajas: acoplamiento a BD específica.'),

(9, 'En REST API, ¿qué método HTTP se usa para crear recursos?', 'GET', 'POST', 'PUT', 'DELETE', 'b', 'POST crea nuevos recursos. Devuelve 201 Created con header Location. PUT actualiza recursos existentes (o crea si no existe). GET lee. DELETE elimina. PATCH actualiza parcialmente.'),

(9, '¿Qué es el patrón DTO (Data Transfer Object)?', 'Base de datos', 'Objeto que transporta datos entre capas sin lógica de negocio', 'Protocolo', 'Framework', 'b', 'Un DTO transporta datos entre capas (ej: API → cliente) sin lógica de negocio. Separa modelo de dominio de representación externa. Permite: versionado, ocultar campos internos, optimizar transferencia.'),

(9, 'En seguridad, ¿qué es HTTPS?', 'HTTP rápido', 'HTTP sobre TLS/SSL para comunicación cifrada', 'HTTP sin seguridad', 'HTTP comprimido', 'b', 'HTTPS es HTTP sobre TLS/SSL que cifra comunicación. Proporciona: confidencialidad (cifrado), integridad (HMAC), autenticación (certificados). Usa puerto 443. Esencial para proteger datos sensibles. Let\'s Encrypt ofrece certificados gratuitos.'),

(9, '¿Qué es un trigger en bases de datos?', 'Tabla', 'Procedimiento que se ejecuta automáticamente ante eventos', 'Índice', 'Usuario', 'b', 'Un trigger es código que se ejecuta automáticamente antes o después de INSERT, UPDATE o DELETE. Útil para: auditoría, validación, sincronización, cálculos automáticos. Debe usarse con cuidado por complejidad y rendimiento.'),

(9, 'En APIs, ¿qué es pagination?', 'Cifrado', 'Dividir resultados grandes en páginas', 'Autenticación', 'Versionado', 'b', 'Pagination divide resultados grandes en páginas para mejorar rendimiento y UX. Métodos: offset/limit (simple pero inconsistente), cursor-based (consistente), keyset (eficiente). Incluir metadata: total, página actual, siguiente/anterior.'),

(9, '¿Qué es el patrón Service Layer?', 'Base de datos', 'Capa que encapsula lógica de negocio', 'Frontend', 'Protocolo', 'b', 'Service Layer encapsula lógica de negocio entre controladores y repositorios. Coordina operaciones, aplica reglas de negocio, gestiona transacciones. Promueve reutilización y separación de responsabilidades.'),

(9, 'En OAuth 2.0, ¿qué es el scope?', 'Base de datos', 'Permisos que define qué puede hacer un access token', 'Usuario', 'Servidor', 'b', 'El scope define permisos del access token: qué recursos puede acceder y qué operaciones realizar. Ejemplos: read:users, write:posts. Implementa principio de menor privilegio. El usuario autoriza scopes específicos.'),

(9, '¿Qué es una API RESTful stateless?', 'Mantiene estado en servidor', 'No mantiene estado de cliente en servidor', 'Usa cookies', 'Usa sesiones', 'b', 'Stateless significa que el servidor no mantiene estado de cliente entre peticiones. Cada petición contiene toda la información necesaria (token, parámetros). Mejora escalabilidad (no sincronizar sesiones). JWT es stateless.'),

(9, 'En bases de datos, ¿qué es una clave foránea?', 'Clave primaria', 'Campo que referencia clave primaria de otra tabla', 'Índice', 'Vista', 'b', 'Una clave foránea referencia la clave primaria de otra tabla, estableciendo relaciones. Garantiza integridad referencial: no puede haber valores que no existan en tabla referenciada. Puede configurarse con CASCADE, SET NULL, RESTRICT.'),

(9, '¿Qué es el patrón Circuit Breaker en microservicios?', 'Base de datos', 'Patrón que previene llamadas a servicios que fallan', 'Frontend', 'Protocolo', 'b', 'Circuit Breaker previene llamadas a servicios que fallan repetidamente. Estados: Closed (normal), Open (bloqueado tras fallos), Half-Open (probando). Evita cascadas de fallos, mejora resiliencia. Implementaciones: Hystrix, Resilience4j.'),

(9, 'En seguridad, ¿qué es el principio de menor privilegio?', 'Dar todos los permisos', 'Dar solo permisos mínimos necesarios', 'No dar permisos', 'Permisos aleatorios', 'b', 'Least Privilege da a usuarios/procesos solo permisos mínimos necesarios. Reduce superficie de ataque y limita daño de compromisos. Aplicar en: usuarios BD, APIs, sistemas operativos, aplicaciones.'),

(9, '¿Qué es un API Gateway?', 'Base de datos', 'Punto de entrada único que gestiona enrutamiento, autenticación y rate limiting', 'Frontend', 'Servidor de archivos', 'b', 'Un API Gateway es punto de entrada único para APIs backend. Gestiona: enrutamiento, autenticación, autorización, rate limiting, transformación, agregación, logging. Ejemplos: Kong, AWS API Gateway, Azure API Management.'),

(9, 'En bases de datos, ¿qué es una transacción?', 'Tabla', 'Conjunto de operaciones que se ejecutan como unidad atómica', 'Índice', 'Usuario', 'b', 'Una transacción es conjunto de operaciones que se ejecutan como unidad atómica (todo o nada). Comandos: BEGIN, COMMIT (confirmar), ROLLBACK (deshacer). Garantiza ACID. Esencial para mantener consistencia.'),

(9, '¿Qué es CSRF (Cross-Site Request Forgery)?', 'Tipo de base de datos', 'Ataque que fuerza a usuario autenticado a ejecutar acciones no deseadas', 'Protocolo', 'Framework', 'b', 'CSRF fuerza a usuario autenticado a ejecutar acciones no deseadas (transferir dinero, cambiar email). Prevención: tokens CSRF únicos por sesión, SameSite cookies, validar origen/referer, requerir confirmación para acciones críticas.'),

(9, 'En APIs, ¿qué es content negotiation?', 'Negociar precio', 'Seleccionar formato de respuesta según preferencias del cliente', 'Negociar permisos', 'Negociar velocidad', 'b', 'Content negotiation selecciona formato de respuesta (JSON, XML, HTML) según header Accept del cliente. El servidor responde con Content-Type apropiado. Permite misma API servir múltiples formatos.'),

(9, '¿Qué es un connection pool?', 'Tabla', 'Conjunto de conexiones reutilizables a base de datos', 'Usuario', 'Índice', 'b', 'Un connection pool mantiene conjunto de conexiones abiertas a BD que se reutilizan. Crear conexiones es costoso. El pool mejora rendimiento y gestiona recursos. Configurar: tamaño mínimo/máximo, timeout, validación.'),

(9, 'En REST API, ¿qué es HATEOAS?', 'Base de datos', 'Hypermedia As The Engine Of Application State - incluir enlaces en respuestas', 'Protocolo', 'Framework', 'b', 'HATEOAS es restricción de REST donde respuestas incluyen enlaces (hypermedia) que guían al cliente sobre acciones disponibles. Hace API autodescriptiva y reduce acoplamiento. Ejemplo: respuesta incluye links a recursos relacionados.'),

(9, '¿Qué es el patrón Unit of Work?', 'Base de datos', 'Patrón que mantiene lista de objetos afectados por transacción', 'Frontend', 'Protocolo', 'b', 'Unit of Work mantiene lista de objetos afectados por transacción y coordina escritura de cambios. Agrupa operaciones en transacción única. Usado en ORMs (Entity Framework, Hibernate). Mejora rendimiento y consistencia.'),

(9, 'En seguridad, ¿qué es el salt en hashing de contraseñas?', 'Algoritmo', 'Valor aleatorio único añadido antes de hashear', 'Tipo de hash', 'Longitud', 'b', 'El salt es valor aleatorio único añadido a cada contraseña antes de hashear. Previene ataques con rainbow tables. Cada usuario debe tener salt diferente. Se almacena junto al hash. Bcrypt y Argon2 incluyen salt automáticamente.'),

(9, '¿Qué es GraphQL?', 'Base de datos', 'Lenguaje de consulta para APIs donde cliente especifica datos necesarios', 'Protocolo de red', 'Framework CSS', 'b', 'GraphQL es lenguaje de consulta para APIs donde el cliente especifica exactamente qué datos necesita. Un único endpoint. Evita over-fetching y under-fetching. Alternativa a REST. Desarrollado por Facebook.'),

(9, 'En bases de datos, ¿qué es un deadlock?', 'Tabla bloqueada', 'Dos transacciones esperan recursos que la otra tiene', 'Índice corrupto', 'Usuario bloqueado', 'b', 'Un deadlock ocurre cuando dos o más transacciones esperan indefinidamente por recursos que otras tienen. Ejemplo: T1 bloquea A y espera B, T2 bloquea B y espera A. El SGBD detecta y aborta una transacción. Prevenir con orden consistente de bloqueos.'),

(9, '¿Qué es el patrón Saga en microservicios?', 'Base de datos', 'Patrón para gestionar transacciones distribuidas con compensaciones', 'Frontend', 'Protocolo', 'b', 'Saga gestiona transacciones distribuidas mediante secuencia de transacciones locales con compensaciones. Si una falla, ejecuta compensaciones para deshacer. Tipos: orquestada (coordinador) o coreografiada (eventos). Alternativa a 2PC.'),

(9, 'En APIs, ¿qué es throttling?', 'Cifrado', 'Limitar velocidad de peticiones para proteger recursos', 'Autenticación', 'Versionado', 'b', 'Throttling limita velocidad de peticiones para proteger recursos del servidor. Similar a rate limiting pero más gradual (ralentiza en lugar de bloquear). Puede ser por usuario, IP, API key. Responde con 429 o ralentiza respuestas.'),

(9, '¿Qué es un webhook?', 'Base de datos', 'Callback HTTP que notifica eventos a URLs configuradas', 'Frontend', 'Protocolo', 'b', 'Un webhook es callback HTTP que notifica eventos en tiempo real a URLs configuradas. El servidor envía POST con datos del evento. Alternativa a polling. Usado en GitHub, Stripe, Slack para integraciones.'),

(9, 'En seguridad, ¿qué es XSS (Cross-Site Scripting)?', 'Base de datos', 'Inyectar scripts maliciosos en páginas web', 'Protocolo', 'Framework', 'b', 'XSS inyecta scripts maliciosos (JavaScript) en páginas web que se ejecutan en navegadores de usuarios. Tipos: Reflected, Stored, DOM-based. Puede robar cookies, sesiones. Prevención: escapar salida, CSP, HttpOnly cookies, validación.'),

(9, '¿Qué es el patrón CQRS?', 'Base de datos', 'Command Query Responsibility Segregation - separar lectura y escritura', 'Frontend', 'Protocolo', 'b', 'CQRS separa modelos de lectura (queries) y escritura (commands). Permite optimizar cada uno independientemente. A menudo con Event Sourcing. Útil en sistemas con diferentes requisitos de lectura/escritura. Aumenta complejidad.'),

(9, 'En bases de datos, ¿qué es sharding?', 'Backup', 'Particionamiento horizontal de datos entre múltiples servidores', 'Índice', 'Vista', 'b', 'Sharding divide datos horizontalmente entre múltiples servidores (shards). Cada shard contiene subconjunto de datos. Mejora escalabilidad horizontal. Desafíos: consultas entre shards, transacciones distribuidas, rebalanceo. Común en NoSQL.'),

(9, '¿Qué es el principio de fail-safe en desarrollo backend?', 'Nunca fallar', 'Diseñar para que fallos no causen daño catastrófico', 'Ignorar errores', 'Fallar siempre', 'b', 'Fail-safe diseña sistemas para que fallos no causen daño catastrófico. Incluye: validación, transacciones, rollback, circuit breakers, timeouts, degradación elegante. Asumir que componentes fallarán y diseñar resiliencia.');
