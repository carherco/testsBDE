-- 50 preguntas difíciles sobre Seguridad Informática (Tema 6) basadas en temario.txt
-- Fundamentos de ciberseguridad: amenazas, vulnerabilidades, principios de seguridad (CIA)
-- Criptografía: algoritmos de cifrado, firmas digitales y gestión de claves
-- Gestión de riesgos y vulnerabilidades: evaluación de riesgos y pruebas de penetración

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(6, '¿Qué representa la "C" en la tríada CIA de seguridad?', 'Compliance', 'Confidentiality', 'Cryptography', 'Control', 'b', 'CIA representa Confidentiality (confidencialidad), Integrity (integridad) y Availability (disponibilidad). Son los tres pilares fundamentales de la seguridad de la información. Confidencialidad asegura que solo usuarios autorizados accedan a la información.'),

(6, 'En criptografía simétrica, ¿qué característica define este tipo de cifrado?', 'Usa claves públicas y privadas', 'Usa la misma clave para cifrar y descifrar', 'No usa claves', 'Solo cifra texto', 'b', 'La criptografía simétrica usa la misma clave para cifrar y descifrar. Es rápida y eficiente (AES, DES, 3DES). El desafío es la distribución segura de claves. La asimétrica usa pares de claves pública/privada.'),

(6, '¿Qué algoritmo de cifrado simétrico es el estándar actual?', 'DES', '3DES', 'AES', 'RSA', 'c', 'AES (Advanced Encryption Standard) es el estándar actual de cifrado simétrico. Soporta claves de 128, 192 y 256 bits. DES está obsoleto (56 bits), 3DES está en desuso. RSA es asimétrico, no simétrico.'),

(6, 'En criptografía asimétrica, ¿qué clave se usa para cifrar un mensaje que solo el destinatario puede descifrar?', 'Clave privada del emisor', 'Clave pública del destinatario', 'Clave privada del destinatario', 'Clave simétrica', 'b', 'Para confidencialidad, se cifra con la clave pública del destinatario. Solo su clave privada puede descifrar. Para autenticación/firma digital, se cifra con clave privada del emisor y se verifica con su clave pública.'),

(6, '¿Qué es una función hash criptográfica?', 'Cifrado reversible', 'Función que genera un resumen de longitud fija e irreversible', 'Algoritmo de compresión', 'Protocolo de red', 'b', 'Una función hash criptográfica (SHA-256, SHA-3) genera un resumen de longitud fija a partir de datos de cualquier tamaño. Es unidireccional (irreversible) y resistente a colisiones. Usada para integridad, firmas digitales y almacenar contraseñas.'),

(6, '¿Qué algoritmo de criptografía asimétrica se basa en la factorización de números primos?', 'AES', 'RSA', 'SHA-256', 'Blowfish', 'b', 'RSA se basa en la dificultad de factorizar números primos grandes. Usa pares de claves pública/privada. Es más lento que cifrado simétrico pero permite intercambio seguro de claves y firmas digitales.'),

(6, '¿Qué es una firma digital?', 'Escaneo de firma manuscrita', 'Hash cifrado con clave privada que garantiza autenticidad e integridad', 'Contraseña', 'Certificado digital', 'b', 'Una firma digital es el hash de un mensaje cifrado con la clave privada del emisor. Garantiza autenticidad (quién lo firmó), integridad (no modificado) y no repudio (no puede negar haberlo firmado). Se verifica con la clave pública.'),

(6, 'En gestión de riesgos, ¿cómo se calcula el riesgo?', 'Amenaza + Vulnerabilidad', 'Probabilidad × Impacto', 'Vulnerabilidad - Control', 'Amenaza / Impacto', 'b', 'Riesgo = Probabilidad × Impacto. La probabilidad es la posibilidad de que ocurra el evento. El impacto es el daño potencial. Esta fórmula ayuda a priorizar riesgos y asignar recursos de mitigación.'),

(6, '¿Qué es un ataque de fuerza bruta?', 'Ataque físico', 'Probar sistemáticamente todas las combinaciones posibles', 'Inyección SQL', 'Phishing', 'b', 'Un ataque de fuerza bruta prueba sistemáticamente todas las combinaciones posibles de contraseñas o claves hasta encontrar la correcta. Se mitiga con: contraseñas fuertes, límite de intentos, CAPTCHA, MFA y bloqueo temporal.'),

(6, '¿Qué vulnerabilidad permite ejecutar código SQL malicioso en una base de datos?', 'XSS', 'SQL Injection', 'CSRF', 'Buffer Overflow', 'b', 'SQL Injection inyecta código SQL malicioso en campos de entrada para manipular consultas. Puede extraer, modificar o eliminar datos. Se previene con: prepared statements, validación de entrada, principio de menor privilegio en BD.'),

(6, '¿Qué es XSS (Cross-Site Scripting)?', 'Ataque de red', 'Inyectar scripts maliciosos en páginas web', 'Cifrado débil', 'Ataque físico', 'b', 'XSS inyecta scripts maliciosos (JavaScript) en páginas web que se ejecutan en navegadores de otros usuarios. Tipos: Reflected, Stored, DOM-based. Puede robar cookies, sesiones o redirigir. Se previene con: escapar salida, CSP, HttpOnly cookies.'),

(6, '¿Qué principio de seguridad establece que los usuarios deben tener solo los permisos mínimos necesarios?', 'Defense in Depth', 'Least Privilege', 'Separation of Duties', 'Need to Know', 'b', 'Least Privilege (menor privilegio) establece que usuarios y procesos deben tener solo los permisos mínimos necesarios para sus funciones. Reduce superficie de ataque y limita daño potencial de compromisos.'),

(6, '¿Qué es un certificado digital?', 'Contraseña cifrada', 'Documento electrónico que vincula una clave pública con una identidad', 'Firma manuscrita', 'Token de acceso', 'b', 'Un certificado digital (X.509) vincula una clave pública con una identidad (persona, organización, servidor). Emitido por una CA (Certificate Authority). Usado en HTTPS, firma de código, email seguro. Contiene: clave pública, identidad, firma de CA.'),

(6, 'En HTTPS, ¿qué protocolo proporciona el cifrado?', 'HTTP', 'SSL/TLS', 'TCP', 'DNS', 'b', 'HTTPS usa SSL/TLS (actualmente TLS 1.2 o 1.3) para cifrar comunicación HTTP. TLS proporciona: confidencialidad (cifrado), integridad (HMAC), autenticación (certificados). SSL está obsoleto por vulnerabilidades.'),

(6, '¿Qué es un ataque de phishing?', 'Ataque de red', 'Engañar a usuarios para obtener información sensible mediante suplantación', 'Cifrado débil', 'Ataque DDoS', 'b', 'Phishing usa ingeniería social para engañar a usuarios y obtener credenciales o información sensible mediante emails, sitios web o mensajes falsos que suplantan entidades legítimas. Variantes: spear-phishing (dirigido), whaling (ejecutivos), vishing (voz), smishing (SMS).'),

(6, '¿Qué es MFA (Multi-Factor Authentication)?', 'Múltiples contraseñas', 'Autenticación usando dos o más factores diferentes', 'Cifrado múltiple', 'Múltiples usuarios', 'b', 'MFA requiere dos o más factores de autenticación: algo que sabes (contraseña), algo que tienes (token, smartphone), algo que eres (biometría). Aumenta significativamente la seguridad. 2FA es un caso específico con dos factores.'),

(6, 'En gestión de vulnerabilidades, ¿qué es un CVE?', 'Certificado de seguridad', 'Common Vulnerabilities and Exposures - identificador único de vulnerabilidades', 'Tipo de malware', 'Protocolo de cifrado', 'b', 'CVE (Common Vulnerabilities and Exposures) es un identificador único para vulnerabilidades conocidas públicamente. Ejemplo: CVE-2021-44228 (Log4Shell). Facilita compartir información sobre vulnerabilidades entre organizaciones y herramientas.'),

(6, '¿Qué es un ataque DDoS?', 'Cifrado de datos', 'Ataque distribuido de denegación de servicio', 'Inyección SQL', 'Phishing', 'b', 'DDoS (Distributed Denial of Service) satura un servicio con tráfico masivo desde múltiples fuentes (botnet), haciéndolo inaccesible. Tipos: volumétrico (saturar ancho de banda), de protocolo (agotar recursos), de aplicación (agotar servidor).'),

(6, '¿Qué es el principio de Defense in Depth?', 'Un solo control de seguridad', 'Múltiples capas de controles de seguridad', 'Cifrado fuerte', 'Firewall único', 'b', 'Defense in Depth (defensa en profundidad) usa múltiples capas de controles de seguridad. Si una capa falla, otras protegen. Capas: perímetro (firewall), red (segmentación), host (antivirus), aplicación (validación), datos (cifrado).'),

(6, '¿Qué tipo de malware cifra archivos y exige rescate?', 'Virus', 'Ransomware', 'Troyano', 'Spyware', 'b', 'Ransomware cifra archivos de la víctima y exige pago (generalmente en criptomonedas) para descifrarlos. Ejemplos: WannaCry, Ryuk. Prevención: backups offline, segmentación de red, actualizaciones, formación de usuarios, EDR.'),

(6, 'En pruebas de penetración, ¿qué es un pentest de caja negra?', 'Sin conocimiento previo del sistema', 'Con conocimiento completo del sistema', 'Solo pruebas automatizadas', 'Solo pruebas físicas', 'a', 'Pentest de caja negra (black box) simula un atacante externo sin conocimiento previo del sistema. Caja blanca (white box) tiene conocimiento completo. Caja gris (grey box) tiene conocimiento parcial. Cada tipo tiene ventajas según objetivos.'),

(6, '¿Qué es OWASP Top 10?', 'Lista de herramientas', 'Lista de las 10 vulnerabilidades más críticas en aplicaciones web', 'Lista de certificaciones', 'Lista de algoritmos', 'b', 'OWASP Top 10 es una lista de las vulnerabilidades más críticas en aplicaciones web, actualizada periódicamente. Incluye: Broken Access Control, Cryptographic Failures, Injection, Insecure Design, Security Misconfiguration, etc. Es referencia estándar en seguridad web.'),

(6, '¿Qué es un firewall?', 'Antivirus', 'Sistema que filtra tráfico de red según reglas', 'Cifrado de datos', 'Backup', 'b', 'Un firewall filtra tráfico de red entrante/saliente según reglas definidas. Tipos: de red (hardware), de host (software), de aplicación (WAF). Puede ser stateless (sin estado) o stateful (con estado de conexiones).'),

(6, 'En criptografía, ¿qué es un ataque de fuerza bruta contra hashes?', 'Modificar el hash', 'Probar todas las combinaciones hasta encontrar el texto original', 'Eliminar el hash', 'Cifrar el hash', 'b', 'Un ataque de fuerza bruta contra hashes prueba todas las combinaciones posibles hasta encontrar una que genere el mismo hash. Se mitiga con: hashes lentos (bcrypt, Argon2), salt (valor aleatorio único), pepper (secreto del servidor).'),

(6, '¿Qué es un IDS (Intrusion Detection System)?', 'Sistema de cifrado', 'Sistema que detecta actividad maliciosa o anómala', 'Firewall', 'Antivirus', 'b', 'Un IDS detecta actividad maliciosa o anómala en red o host. Tipos: basado en firmas (patrones conocidos) o en anomalías (desviaciones del comportamiento normal). IPS (Intrusion Prevention System) además bloquea el tráfico malicioso.'),

(6, '¿Qué es el salt en almacenamiento de contraseñas?', 'Algoritmo de cifrado', 'Valor aleatorio único añadido antes de hashear', 'Tipo de hash', 'Longitud de contraseña', 'b', 'El salt es un valor aleatorio único añadido a cada contraseña antes de hashearla. Previene ataques con rainbow tables (tablas precalculadas de hashes). Cada usuario debe tener un salt diferente. Se almacena junto al hash.'),

(6, '¿Qué es un ataque Man-in-the-Middle (MITM)?', 'Ataque de fuerza bruta', 'Interceptar comunicación entre dos partes', 'Inyección SQL', 'Phishing', 'b', 'MITM intercepta y potencialmente modifica comunicación entre dos partes sin que lo detecten. Puede capturar credenciales, sesiones o datos sensibles. Se previene con: cifrado (TLS), certificados, VPN, autenticación mutua.'),

(6, 'En gestión de claves, ¿qué es un HSM?', 'Algoritmo de hash', 'Hardware Security Module - dispositivo para almacenar claves de forma segura', 'Protocolo de red', 'Tipo de certificado', 'b', 'Un HSM (Hardware Security Module) es un dispositivo físico diseñado para generar, almacenar y proteger claves criptográficas. Proporciona operaciones criptográficas en hardware resistente a manipulación. Usado en PKI, bancos, datacenters.'),

(6, '¿Qué es CSRF (Cross-Site Request Forgery)?', 'Inyección SQL', 'Forzar a usuario autenticado a ejecutar acciones no deseadas', 'Ataque de red', 'Cifrado débil', 'b', 'CSRF fuerza a un usuario autenticado a ejecutar acciones no deseadas en una aplicación web (transferir dinero, cambiar email). Se previene con: tokens CSRF únicos por sesión, SameSite cookies, validar origen/referer.'),

(6, '¿Qué es un Zero-Day exploit?', 'Exploit conocido', 'Exploit de vulnerabilidad desconocida para el fabricante', 'Exploit antiguo', 'Exploit documentado', 'b', 'Un Zero-Day exploit aprovecha una vulnerabilidad desconocida para el fabricante (0 días para parchear). Son muy valiosos y peligrosos. Defensa: detección de anomalías, sandboxing, segmentación, principio de menor privilegio.'),

(6, 'En evaluación de riesgos, ¿qué es la superficie de ataque?', 'Tamaño del sistema', 'Suma de puntos de entrada y vulnerabilidades expuestas', 'Número de usuarios', 'Capacidad del servidor', 'b', 'La superficie de ataque es la suma de todos los puntos de entrada y vulnerabilidades expuestas que un atacante puede explotar. Incluye: puertos abiertos, servicios, APIs, interfaces de usuario. Reducirla minimiza riesgo.'),

(6, '¿Qué es un honeypot?', 'Firewall avanzado', 'Sistema señuelo para atraer y estudiar atacantes', 'Antivirus', 'Backup', 'b', 'Un honeypot es un sistema señuelo diseñado para atraer atacantes y estudiar sus técnicas. No tiene valor productivo real. Proporciona inteligencia sobre amenazas, distrae atacantes y detecta intrusiones. Tipos: baja interacción (simulado) o alta interacción (sistema real).'),

(6, '¿Qué es el principio de Separation of Duties?', 'Un usuario hace todo', 'Dividir tareas críticas entre múltiples personas', 'Separar redes', 'Separar datos', 'b', 'Separation of Duties divide tareas críticas entre múltiples personas para que ninguna tenga control completo. Previene fraude y errores. Ejemplo: quien aprueba pagos no puede ejecutarlos. Complementa Least Privilege.'),

(6, 'En criptografía, ¿qué es un ataque de colisión contra funciones hash?', 'Romper el cifrado', 'Encontrar dos entradas diferentes que produzcan el mismo hash', 'Descifrar el hash', 'Modificar el hash', 'b', 'Un ataque de colisión encuentra dos entradas diferentes que producen el mismo hash. Compromete integridad y firmas digitales. MD5 y SHA-1 son vulnerables. SHA-256 y SHA-3 son resistentes a colisiones.'),

(6, '¿Qué es un WAF (Web Application Firewall)?', 'Firewall de red', 'Firewall que protege aplicaciones web filtrando tráfico HTTP/HTTPS', 'Antivirus', 'VPN', 'b', 'Un WAF protege aplicaciones web filtrando y monitorizando tráfico HTTP/HTTPS. Detecta y bloquea ataques: SQL injection, XSS, CSRF, DDoS de aplicación. Puede ser: basado en red, host o cloud (Cloudflare, AWS WAF).'),

(6, '¿Qué es el principio de Fail Secure?', 'Fallar abierto', 'En caso de fallo, el sistema debe fallar de forma segura (denegar acceso)', 'Nunca fallar', 'Fallar silenciosamente', 'b', 'Fail Secure establece que ante fallos, el sistema debe fallar de forma segura, típicamente denegando acceso. Fail Open permite acceso ante fallos (menos seguro pero más disponible). La elección depende de prioridades: seguridad vs disponibilidad.'),

(6, '¿Qué es un ataque de inyección de comandos?', 'Inyección SQL', 'Ejecutar comandos del sistema operativo mediante entrada maliciosa', 'XSS', 'Phishing', 'b', 'Inyección de comandos ejecuta comandos del SO mediante entrada maliciosa. Ejemplo: ; rm -rf / en un campo que ejecuta comandos. Se previene con: validación estricta, escapar entrada, evitar llamadas al sistema, sandboxing.'),

(6, 'En PKI, ¿qué es una CA (Certificate Authority)?', 'Algoritmo de cifrado', 'Entidad que emite y firma certificados digitales', 'Tipo de certificado', 'Protocolo', 'b', 'Una CA (Certificate Authority) es una entidad confiable que emite y firma certificados digitales, verificando la identidad del solicitante. Ejemplos: DigiCert, Let\'s Encrypt. La cadena de confianza va desde CA raíz hasta certificados finales.'),

(6, '¿Qué es un ataque de replay?', 'Repetir un ataque', 'Capturar y retransmitir datos válidos para autenticarse', 'Ataque DDoS', 'Phishing', 'b', 'Un ataque de replay captura datos de autenticación válidos (tokens, credenciales) y los retransmite para autenticarse. Se previene con: timestamps, nonces (números únicos), tokens de un solo uso, cifrado con claves de sesión.'),

(6, '¿Qué es el CVSS (Common Vulnerability Scoring System)?', 'Lista de vulnerabilidades', 'Sistema de puntuación estándar para severidad de vulnerabilidades', 'Tipo de exploit', 'Certificación', 'b', 'CVSS es un sistema estándar para puntuar la severidad de vulnerabilidades (0-10). Considera: explotabilidad, impacto, alcance. Niveles: None (0), Low (0.1-3.9), Medium (4.0-6.9), High (7.0-8.9), Critical (9.0-10.0).'),

(6, '¿Qué es un rootkit?', 'Herramienta de administración', 'Malware que oculta su presencia y mantiene acceso privilegiado', 'Antivirus', 'Firewall', 'b', 'Un rootkit es malware que oculta su presencia y mantiene acceso privilegiado (root/admin). Puede operar en: userland, kernel o firmware. Muy difícil de detectar. Detección: análisis de memoria, comparación de integridad, arranque desde medio limpio.'),

(6, 'En seguridad de APIs, ¿qué es rate limiting?', 'Limitar tamaño', 'Limitar número de peticiones por tiempo para prevenir abuso', 'Limitar usuarios', 'Limitar datos', 'b', 'Rate limiting restringe el número de peticiones que un cliente puede hacer en un período. Previene: abuso, DDoS, scraping, fuerza bruta. Se implementa con: tokens, sliding windows, leaky bucket. Responde con HTTP 429 (Too Many Requests).'),

(6, '¿Qué es un ataque de escalada de privilegios?', 'Obtener más permisos de los asignados', 'Robar contraseñas', 'Inyección SQL', 'Phishing', 'a', 'Escalada de privilegios obtiene permisos superiores a los asignados. Vertical: usuario normal → admin. Horizontal: acceder a recursos de otro usuario del mismo nivel. Se explota mediante: vulnerabilidades, configuraciones incorrectas, credenciales débiles.'),

(6, '¿Qué es SIEM (Security Information and Event Management)?', 'Firewall', 'Sistema que centraliza logs, correlaciona eventos y detecta amenazas', 'Antivirus', 'VPN', 'b', 'SIEM centraliza logs de múltiples fuentes, correlaciona eventos, detecta anomalías y genera alertas. Proporciona visibilidad centralizada y análisis de seguridad. Ejemplos: Splunk, ELK Stack, QRadar. Esencial para detección y respuesta a incidentes.'),

(6, 'En gestión de vulnerabilidades, ¿qué es un patch?', 'Vulnerabilidad', 'Actualización que corrige vulnerabilidades o bugs', 'Exploit', 'Malware', 'b', 'Un patch es una actualización de software que corrige vulnerabilidades, bugs o mejora funcionalidad. Patch management es crítico: identificar, probar, desplegar y verificar patches. Priorizar según severidad (CVSS) y exposición.'),

(6, '¿Qué es el principio de Need to Know?', 'Todos deben saber todo', 'Acceso solo a información necesaria para el trabajo', 'Compartir toda la información', 'No compartir nada', 'b', 'Need to Know establece que los usuarios deben acceder solo a la información necesaria para realizar su trabajo. Complementa Least Privilege. Reduce riesgo de fuga de información y limita daño de compromisos.'),

(6, '¿Qué es un ataque de fuerza bruta distribuido?', 'Ataque desde una sola fuente', 'Ataque de fuerza bruta desde múltiples IPs', 'Inyección SQL', 'Phishing', 'b', 'Un ataque de fuerza bruta distribuido usa múltiples IPs (botnet) para probar contraseñas, evadiendo rate limiting por IP. Defensa: rate limiting global por cuenta, CAPTCHA, detección de patrones, MFA, bloqueo de cuenta tras intentos fallidos.'),

(6, 'En criptografía, ¿qué es el intercambio de claves Diffie-Hellman?', 'Algoritmo de cifrado', 'Protocolo para intercambiar claves de forma segura sobre canal inseguro', 'Función hash', 'Firma digital', 'b', 'Diffie-Hellman permite a dos partes establecer una clave compartida sobre un canal inseguro sin transmitirla directamente. Basado en logaritmos discretos. Vulnerable a MITM sin autenticación. Usado en TLS, VPN, SSH.'),

(6, '¿Qué es un ataque de ingeniería social?', 'Ataque técnico', 'Manipular personas para obtener información o acceso', 'Ataque de red', 'Cifrado débil', 'b', 'Ingeniería social manipula psicológicamente a personas para obtener información, acceso o que realicen acciones. Técnicas: phishing, pretexting, baiting, tailgating, quid pro quo. La defensa principal es formación y concienciación de usuarios.');
