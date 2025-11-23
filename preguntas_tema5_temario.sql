-- 50 preguntas difíciles sobre Arquitectura de Sistemas (Tema 5) basadas en temario.txt
-- Diseño y arquitectura de sistemas: principios de diseño y patrones arquitectónicos
-- Integración de sistemas empresariales: Middleware, APIs y servicios web

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(5, '¿Qué principio de diseño establece que cada módulo debe tener una única responsabilidad?', 'DRY', 'SOLID - Single Responsibility', 'KISS', 'YAGNI', 'b', 'El principio de Single Responsibility (SRP) del acrónimo SOLID establece que cada clase/módulo debe tener una única razón para cambiar. Mejora mantenibilidad y reduce acoplamiento.'),

(5, 'En arquitectura de microservicios, ¿qué patrón se usa para gestionar transacciones distribuidas?', 'Two-Phase Commit', 'Saga Pattern', 'ACID', 'Singleton', 'b', 'El patrón Saga gestiona transacciones distribuidas mediante una secuencia de transacciones locales con compensaciones. Puede ser orquestado (coordinador central) o coreografiado (eventos). Two-Phase Commit es complejo y poco usado en microservicios.'),

(5, '¿Qué es el principio de bajo acoplamiento en diseño de software?', 'Módulos muy dependientes entre sí', 'Módulos con mínimas dependencias entre sí', 'Módulos sin interfaces', 'Módulos duplicados', 'b', 'Bajo acoplamiento significa que los módulos tienen mínimas dependencias entre sí, comunicándose a través de interfaces bien definidas. Facilita cambios, testing y mantenimiento. Se complementa con alta cohesión.'),

(5, '¿Qué patrón arquitectónico separa la aplicación en capas de presentación, lógica de negocio y datos?', 'Microservicios', 'Arquitectura en capas (n-tier)', 'Event-driven', 'Peer-to-peer', 'b', 'La arquitectura en capas (n-tier) separa responsabilidades: presentación (UI), lógica de negocio (business logic) y acceso a datos (data access). Cada capa solo se comunica con la adyacente, mejorando mantenibilidad.'),

(5, 'En REST API, ¿qué método HTTP se usa para actualizar parcialmente un recurso?', 'PUT', 'PATCH', 'UPDATE', 'MODIFY', 'b', 'PATCH actualiza parcialmente un recurso (solo campos especificados). PUT reemplaza el recurso completo. POST crea recursos. DELETE los elimina. PATCH es más eficiente para actualizaciones parciales.'),

(5, '¿Qué es un API Gateway?', 'Base de datos', 'Punto de entrada único para APIs que gestiona enrutamiento, autenticación y rate limiting', 'Servidor web', 'Balanceador de carga', 'b', 'Un API Gateway es un punto de entrada único para múltiples APIs backend. Gestiona: enrutamiento, autenticación, autorización, rate limiting, transformación de peticiones, agregación de respuestas y logging.'),

(5, '¿Qué protocolo usa SOAP para intercambio de mensajes?', 'JSON', 'XML', 'YAML', 'Protocol Buffers', 'b', 'SOAP (Simple Object Access Protocol) usa XML para mensajes estructurados. Define envelope, header y body. Soporta WS-Security, transacciones distribuidas. Es más pesado que REST pero más formal y con contratos estrictos (WSDL).'),

(5, 'En arquitectura de microservicios, ¿qué patrón permite que servicios descubran dinámicamente la ubicación de otros servicios?', 'Load Balancer', 'Service Discovery', 'API Gateway', 'Message Queue', 'b', 'Service Discovery permite que servicios se registren y descubran dinámicamente sin configuración hardcoded. Ejemplos: Consul, Eureka, etcd. Esencial en entornos cloud donde IPs cambian frecuentemente.'),

(5, '¿Qué es el principio DRY en diseño de software?', 'Do Repeat Yourself', 'Don\'t Repeat Yourself', 'Design Reusable Yearly', 'Data Redundancy Yearly', 'b', 'DRY (Don\'t Repeat Yourself) establece que cada pieza de conocimiento debe tener una representación única en el sistema. Evita duplicación de código, mejora mantenibilidad y reduce errores.'),

(5, '¿Qué tipo de middleware gestiona colas de mensajes asíncronos?', 'API Gateway', 'Message Broker', 'Load Balancer', 'Proxy', 'b', 'Un Message Broker (RabbitMQ, Apache Kafka, ActiveMQ) gestiona colas de mensajes para comunicación asíncrona entre servicios. Desacopla productores y consumidores, mejora escalabilidad y resiliencia.'),

(5, 'En REST, ¿qué código de estado HTTP indica que un recurso fue creado exitosamente?', '200 OK', '201 Created', '204 No Content', '202 Accepted', 'b', '201 Created indica que un recurso fue creado exitosamente. Típicamente incluye header Location con la URI del nuevo recurso. 200 OK es éxito genérico. 204 No Content es éxito sin cuerpo de respuesta.'),

(5, '¿Qué patrón arquitectónico usa eventos para comunicación entre componentes?', 'Monolito', 'Event-Driven Architecture', 'Layered Architecture', 'Client-Server', 'b', 'Event-Driven Architecture usa eventos para comunicación asíncrona entre componentes. Los productores publican eventos, los consumidores se suscriben. Mejora desacoplamiento y escalabilidad. Común con message brokers.'),

(5, '¿Qué es GraphQL?', 'Base de datos', 'Lenguaje de consulta para APIs que permite al cliente especificar exactamente qué datos necesita', 'Protocolo de red', 'Sistema operativo', 'b', 'GraphQL es un lenguaje de consulta para APIs desarrollado por Facebook. El cliente especifica exactamente qué campos necesita, evitando over-fetching y under-fetching. Alternativa a REST con un único endpoint.'),

(5, 'En integración de sistemas, ¿qué es un ESB (Enterprise Service Bus)?', 'Base de datos', 'Bus central que enruta, transforma y gestiona mensajes entre servicios', 'Servidor web', 'Sistema operativo', 'b', 'Un ESB es un bus central en arquitecturas SOA que enruta, transforma y aplica políticas a mensajes entre servicios. Proporciona integración, orquestación y mediación. Puede convertirse en cuello de botella si no se gestiona bien.'),

(5, '¿Qué principio SOLID establece que las clases deben estar abiertas para extensión pero cerradas para modificación?', 'Single Responsibility', 'Open/Closed', 'Liskov Substitution', 'Interface Segregation', 'b', 'El principio Open/Closed establece que las entidades deben estar abiertas para extensión (añadir funcionalidad) pero cerradas para modificación (no cambiar código existente). Se logra con herencia, interfaces y polimorfismo.'),

(5, 'En REST API, ¿qué es HATEOAS?', 'Protocolo de seguridad', 'Hypermedia As The Engine Of Application State - incluir enlaces en respuestas', 'Tipo de base de datos', 'Servidor web', 'b', 'HATEOAS es una restricción de REST donde las respuestas incluyen enlaces (hypermedia) que guían al cliente sobre acciones disponibles. Hace la API autodescriptiva y reduce acoplamiento cliente-servidor.'),

(5, '¿Qué patrón de diseño asegura que una clase tenga una única instancia?', 'Factory', 'Singleton', 'Observer', 'Strategy', 'b', 'El patrón Singleton garantiza que una clase tenga una única instancia global y proporciona un punto de acceso global. Útil para configuración, logging, pools de conexiones. Debe usarse con cuidado por problemas de testing y concurrencia.'),

(5, 'En arquitectura hexagonal, ¿cómo se llaman las interfaces que separan el dominio de la infraestructura?', 'Layers', 'Ports', 'Adapters', 'Services', 'b', 'En arquitectura hexagonal (Ports and Adapters), los ports son interfaces que definen cómo el dominio interactúa con el exterior. Los adapters son implementaciones concretas. Aísla lógica de negocio de detalles técnicos.'),

(5, '¿Qué protocolo usa gRPC para serialización de datos?', 'JSON', 'XML', 'Protocol Buffers', 'YAML', 'c', 'gRPC usa Protocol Buffers (protobuf) para serialización binaria eficiente. Es más rápido y compacto que JSON/XML. gRPC usa HTTP/2 para transporte, soporta streaming bidireccional y es ideal para comunicación entre microservicios.'),

(5, '¿Qué es el patrón Circuit Breaker?', 'Patrón de base de datos', 'Patrón que previene llamadas a servicios que fallan repetidamente', 'Patrón de UI', 'Patrón de seguridad', 'b', 'Circuit Breaker previene llamadas a servicios que fallan, evitando cascadas de fallos. Estados: Closed (normal), Open (bloqueado tras fallos), Half-Open (probando recuperación). Mejora resiliencia en sistemas distribuidos.'),

(5, 'En versionado de APIs, ¿qué estrategia incluye la versión en la URL?', 'Header versioning', 'URI versioning', 'Query parameter versioning', 'Content negotiation', 'b', 'URI versioning incluye la versión en la URL: /api/v1/users, /api/v2/users. Es simple y visible. Alternativas: header (Accept: application/vnd.api+json;version=1), query parameter (?version=1), content negotiation.'),

(5, '¿Qué es un monolito modular?', 'Aplicación sin módulos', 'Aplicación monolítica con módulos bien definidos internamente', 'Arquitectura de microservicios', 'Base de datos distribuida', 'b', 'Un monolito modular es una aplicación desplegada como unidad única pero con módulos internos bien definidos y bajo acoplamiento. Es un paso intermedio entre monolito tradicional y microservicios, más fácil de mantener.'),

(5, '¿Qué patrón permite agregar funcionalidad a objetos dinámicamente?', 'Singleton', 'Factory', 'Decorator', 'Observer', 'c', 'El patrón Decorator añade responsabilidades a objetos dinámicamente sin modificar su código. Envuelve el objeto original con decoradores que añaden funcionalidad. Alternativa flexible a la herencia.'),

(5, 'En REST, ¿qué método HTTP es idempotente?', 'POST', 'GET', 'Todos excepto POST', 'Ninguno', 'c', 'GET, PUT, DELETE son idempotentes: múltiples peticiones idénticas tienen el mismo efecto que una. POST no es idempotente (crea múltiples recursos). La idempotencia es importante para reintentos seguros.'),

(5, '¿Qué es CQRS (Command Query Responsibility Segregation)?', 'Base de datos', 'Patrón que separa operaciones de lectura y escritura', 'Protocolo de red', 'Lenguaje de programación', 'b', 'CQRS separa modelos de lectura (queries) y escritura (commands). Permite optimizar cada uno independientemente. A menudo se combina con Event Sourcing. Útil en sistemas con diferentes requisitos de lectura/escritura.'),

(5, '¿Qué es un BFF (Backend For Frontend)?', 'Base de datos', 'API específica para cada tipo de cliente (web, móvil)', 'Servidor web', 'Protocolo', 'b', 'BFF es un patrón donde cada tipo de cliente (web, móvil, IoT) tiene su propio backend optimizado. Evita que un API único intente satisfacer necesidades diferentes. Mejora experiencia de usuario y rendimiento.'),

(5, 'En OAuth 2.0, ¿qué flujo se usa para aplicaciones de servidor?', 'Implicit Flow', 'Authorization Code Flow', 'Client Credentials Flow', 'Password Flow', 'b', 'Authorization Code Flow es el más seguro para aplicaciones de servidor. El código de autorización se intercambia por token en el backend. Implicit Flow es para SPAs (menos seguro). Client Credentials es para comunicación máquina-a-máquina.'),

(5, '¿Qué es el patrón Strangler Fig para migración de sistemas?', 'Reescribir todo de una vez', 'Reemplazar gradualmente funcionalidad del sistema legacy', 'Eliminar el sistema antiguo inmediatamente', 'Mantener ambos sistemas indefinidamente', 'b', 'Strangler Fig reemplaza gradualmente un sistema legacy redirigiendo tráfico incrementalmente al nuevo sistema. Reduce riesgo, permite rollback y entrega valor continuo. Inspirado en higueras estranguladoras que crecen alrededor de árboles.'),

(5, '¿Qué es un webhook?', 'Base de datos', 'Callback HTTP que notifica eventos a URLs configuradas', 'Servidor web', 'Protocolo de red', 'b', 'Un webhook es un callback HTTP que notifica eventos en tiempo real a URLs configuradas. El servidor envía POST con datos del evento. Alternativa a polling. Usado en GitHub, Stripe, Slack para integraciones.'),

(5, 'En arquitectura de microservicios, ¿qué patrón centraliza configuración?', 'Service Discovery', 'Config Server', 'API Gateway', 'Load Balancer', 'b', 'Un Config Server centraliza configuración de microservicios. Los servicios obtienen su configuración al arrancar. Permite cambios sin redespliegue. Ejemplos: Spring Cloud Config, Consul, etcd. Mejora gestión en entornos con muchos servicios.'),

(5, '¿Qué es el principio de Liskov Substitution en SOLID?', 'Clases deben tener una responsabilidad', 'Objetos de subclases deben poder reemplazar objetos de superclases', 'Interfaces deben ser específicas', 'Depender de abstracciones', 'b', 'Liskov Substitution establece que objetos de subclases deben poder reemplazar objetos de superclases sin romper el programa. Las subclases deben cumplir el contrato de la superclase. Fundamental para polimorfismo correcto.'),

(5, '¿Qué formato usa OpenAPI (Swagger) para documentar APIs REST?', 'XML', 'JSON o YAML', 'Protocol Buffers', 'Plain text', 'b', 'OpenAPI Specification (antes Swagger) usa JSON o YAML para documentar APIs REST. Define endpoints, parámetros, respuestas, autenticación. Genera documentación interactiva y código cliente/servidor. Es el estándar de facto para APIs REST.'),

(5, 'En integración de sistemas, ¿qué patrón traduce entre formatos de datos diferentes?', 'Router', 'Transformer', 'Filter', 'Aggregator', 'b', 'El patrón Transformer (o Translator) convierte mensajes entre formatos diferentes. Esencial en integración de sistemas heterogéneos. Puede transformar estructura, protocolo o semántica. Común en ESB y pipelines de integración.'),

(5, '¿Qué es el patrón Bulkhead en arquitectura de sistemas?', 'Patrón de base de datos', 'Patrón que aísla recursos para prevenir fallos en cascada', 'Patrón de UI', 'Patrón de seguridad', 'b', 'Bulkhead aísla recursos (threads, conexiones, memoria) por servicio/funcionalidad. Si un componente falla, no consume todos los recursos. Inspirado en compartimentos de barcos. Mejora resiliencia en sistemas distribuidos.'),

(5, '¿Qué es un API RESTful?', 'API que usa SOAP', 'API que sigue principios REST: recursos, métodos HTTP, stateless', 'API con base de datos', 'API solo para móviles', 'b', 'Una API RESTful sigue principios REST: recursos identificados por URIs, uso de métodos HTTP estándar (GET, POST, PUT, DELETE), stateless, cacheable, interfaz uniforme. Es el estilo arquitectónico más común para APIs web.'),

(5, 'En JWT (JSON Web Token), ¿qué parte contiene los datos del usuario?', 'Header', 'Payload', 'Signature', 'Footer', 'b', 'El payload de un JWT contiene claims (datos del usuario): sub (subject), exp (expiration), iat (issued at), roles, etc. El header contiene tipo y algoritmo. La signature verifica integridad. JWT es stateless y usado en autenticación.'),

(5, '¿Qué es el patrón Retry en sistemas distribuidos?', 'Reintentar operaciones fallidas con backoff exponencial', 'Eliminar operaciones fallidas', 'Ignorar errores', 'Reiniciar el sistema', 'a', 'El patrón Retry reintenta operaciones fallidas automáticamente, típicamente con backoff exponencial y jitter para evitar tormentas de reintentos. Debe combinarse con idempotencia y límite de reintentos. Mejora resiliencia ante fallos transitorios.'),

(5, '¿Qué es un API First approach?', 'Desarrollar UI primero', 'Diseñar y documentar API antes de implementar', 'Desarrollar base de datos primero', 'Desarrollar backend primero', 'b', 'API First diseña y documenta la API (contrato) antes de implementar. Permite desarrollo paralelo de frontend/backend, mejora colaboración, facilita testing y genera documentación desde el inicio. Usa OpenAPI/Swagger.'),

(5, 'En arquitectura de microservicios, ¿qué base de datos debe tener cada servicio?', 'Compartir una base de datos central', 'Su propia base de datos (database per service)', 'No usar base de datos', 'Usar solo caché', 'b', 'El patrón Database per Service establece que cada microservicio debe tener su propia base de datos para independencia y desacoplamiento. La comunicación es vía APIs o eventos. Complica transacciones distribuidas pero mejora autonomía.'),

(5, '¿Qué es el patrón API Composition?', 'Combinar múltiples APIs en una', 'Agregar datos de múltiples servicios en una respuesta', 'Dividir una API', 'Versionar APIs', 'b', 'API Composition agrega datos de múltiples servicios en una respuesta. El API Gateway o BFF consulta varios servicios y combina resultados. Alternativa a joins en bases de datos distribuidas. Puede afectar rendimiento si no se optimiza.'),

(5, '¿Qué protocolo usa WebSocket?', 'HTTP request/response', 'Conexión bidireccional full-duplex sobre TCP', 'UDP', 'ICMP', 'b', 'WebSocket proporciona comunicación bidireccional full-duplex sobre una conexión TCP persistente. Inicia con handshake HTTP y luego mantiene conexión abierta. Ideal para aplicaciones en tiempo real: chat, notificaciones, juegos.'),

(5, '¿Qué es el principio de Dependency Inversion en SOLID?', 'Depender de implementaciones concretas', 'Depender de abstracciones, no de concreciones', 'No usar dependencias', 'Inyectar todas las dependencias', 'b', 'Dependency Inversion establece que módulos de alto nivel no deben depender de módulos de bajo nivel, ambos deben depender de abstracciones. Las abstracciones no deben depender de detalles. Facilita testing y cambios.'),

(5, '¿Qué es un sidecar pattern en arquitectura de microservicios?', 'Base de datos auxiliar', 'Contenedor auxiliar que proporciona funcionalidad compartida (logging, proxy)', 'Servidor de respaldo', 'API secundaria', 'b', 'Sidecar es un contenedor auxiliar desplegado junto al servicio principal que proporciona funcionalidad compartida: logging, monitorización, proxy, service mesh. Desacopla funcionalidad transversal del código de negocio. Común en Kubernetes.'),

(5, 'En REST API, ¿qué header se usa para especificar el formato de respuesta deseado?', 'Content-Type', 'Accept', 'Authorization', 'User-Agent', 'b', 'Accept especifica el formato que el cliente acepta: Accept: application/json. Content-Type especifica el formato enviado. Authorization contiene credenciales. User-Agent identifica el cliente. Content negotiation usa Accept.'),

(5, '¿Qué es el patrón Event Sourcing?', 'Almacenar solo el estado actual', 'Almacenar todos los eventos que cambiaron el estado', 'Eliminar eventos antiguos', 'Comprimir eventos', 'b', 'Event Sourcing almacena todos los eventos (cambios de estado) en lugar del estado actual. El estado se reconstruye reproduciendo eventos. Proporciona auditoría completa, permite time travel y proyecciones. A menudo se combina con CQRS.'),

(5, '¿Qué es un Service Mesh?', 'Base de datos distribuida', 'Capa de infraestructura que gestiona comunicación entre microservicios', 'Servidor web', 'Sistema operativo', 'b', 'Un Service Mesh (Istio, Linkerd) es una capa de infraestructura que gestiona comunicación entre microservicios: routing, load balancing, circuit breaking, observabilidad, seguridad. Usa sidecars (proxies) junto a cada servicio.'),

(5, '¿Qué es el patrón Saga coreografiado?', 'Coordinador central gestiona la saga', 'Cada servicio escucha eventos y publica los suyos', 'No hay compensaciones', 'Usa transacciones ACID', 'b', 'En Saga coreografiada, cada servicio escucha eventos, ejecuta su transacción local y publica eventos. No hay coordinador central. Es más desacoplado pero más difícil de entender y debuggear que Saga orquestada.'),

(5, '¿Qué es el principio YAGNI?', 'You Always Gonna Need It', 'You Aren\'t Gonna Need It - no implementar funcionalidad hasta que sea necesaria', 'You Are Getting New Ideas', 'You Always Generate New Instances', 'b', 'YAGNI (You Aren\'t Gonna Need It) establece no implementar funcionalidad hasta que sea realmente necesaria. Evita sobre-ingeniería, reduce complejidad y coste. Parte de metodologías ágiles y programación extrema (XP).'),

(5, 'En API design, ¿qué es rate limiting?', 'Limitar tamaño de respuestas', 'Limitar número de peticiones por tiempo', 'Limitar usuarios', 'Limitar datos', 'b', 'Rate limiting restringe el número de peticiones que un cliente puede hacer en un período (ej: 100 req/min). Previene abuso, protege recursos y garantiza disponibilidad. Se implementa con tokens, sliding windows o leaky bucket.');
