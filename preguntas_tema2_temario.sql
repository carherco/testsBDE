-- 50 preguntas difíciles sobre Redes y Comunicaciones (Tema 2) basadas en temario.txt
-- Fundamentos de redes: TCP/IP, DNS, HTTP, modelos OSI
-- Configuración y gestión de redes: VLANs, VPNs, subnetting, balanceo de carga

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(2, '¿En qué capa del modelo OSI opera el protocolo TCP?', 'Capa 3 (Red)', 'Capa 4 (Transporte)', 'Capa 5 (Sesión)', 'Capa 7 (Aplicación)', 'b', 'TCP (Transmission Control Protocol) opera en la capa 4 (Transporte) del modelo OSI. Proporciona comunicación confiable, orientada a conexión, con control de flujo y retransmisión de paquetes perdidos.'),

(2, '¿Qué protocolo se usa para traducir nombres de dominio a direcciones IP?', 'DHCP', 'DNS', 'ARP', 'NAT', 'b', 'DNS (Domain Name System) traduce nombres de dominio legibles (ejemplo.com) a direcciones IP (192.0.2.1). Funciona de forma jerárquica con servidores raíz, TLD y autoritativos.'),

(2, 'En el modelo OSI, ¿cuántas capas hay en total?', '5', '7', '4', '6', 'b', 'El modelo OSI tiene 7 capas: Física, Enlace de datos, Red, Transporte, Sesión, Presentación y Aplicación. El modelo TCP/IP tiene 4 capas. OSI es un modelo de referencia teórico.'),

(2, '¿Qué puerto TCP usa HTTP por defecto?', '21', '80', '443', '8080', 'b', 'HTTP usa el puerto TCP 80 por defecto. HTTPS usa el puerto 443. FTP usa 21. 8080 es un puerto alternativo común para HTTP (proxies, desarrollo).'),

(2, '¿Cuál es la máscara de subred en notación CIDR para una red clase C estándar?', '/8', '/16', '/24', '/32', 'c', 'Una red clase C tiene máscara 255.255.255.0, que en notación CIDR es /24 (24 bits para red, 8 bits para hosts). Clase A es /8, clase B es /16, /32 es una dirección individual.'),

(2, 'En una red /26, ¿cuántas direcciones IP utilizables hay?', '30', '62', '126', '254', 'b', 'Una red /26 tiene 6 bits para hosts (32-26=6). 2^6 = 64 direcciones totales. Restando red y broadcast: 64 - 2 = 62 direcciones utilizables.'),

(2, '¿Qué protocolo usa HTTPS para cifrar la comunicación?', 'SSH', 'SSL/TLS', 'IPsec', 'WPA2', 'b', 'HTTPS usa SSL/TLS (actualmente TLS 1.2 o 1.3) para cifrar la comunicación HTTP. SSL está obsoleto. TLS proporciona confidencialidad, integridad y autenticación mediante certificados.'),

(2, '¿Qué es una VLAN?', 'Red privada virtual', 'Red de área local virtual que segmenta una red física', 'Protocolo de enrutamiento', 'Tipo de cable', 'b', 'Una VLAN (Virtual LAN) segmenta lógicamente una red física en múltiples redes virtuales. Mejora seguridad, reduce dominios de broadcast y facilita gestión. Se configura en switches mediante etiquetado 802.1Q.'),

(2, 'En subnetting, ¿qué dirección IP NO puede asignarse a un host?', '192.168.1.1', '192.168.1.0', '192.168.1.254', '192.168.1.100', 'b', 'La primera dirección de una subred (todos los bits de host en 0) es la dirección de red y no puede asignarse a hosts. La última (todos los bits de host en 1) es la dirección de broadcast.'),

(2, '¿Qué protocolo permite a los hosts obtener automáticamente configuración de red?', 'DNS', 'DHCP', 'ARP', 'ICMP', 'b', 'DHCP (Dynamic Host Configuration Protocol) asigna automáticamente direcciones IP, máscara de subred, gateway, DNS y otros parámetros de red. Usa puertos UDP 67 (servidor) y 68 (cliente).'),

(2, '¿Qué tipo de VPN opera en la capa 3 del modelo OSI?', 'L2TP', 'IPsec', 'PPTP', 'SSL VPN', 'b', 'IPsec opera en la capa 3 (Red) cifrando paquetes IP. L2TP opera en capa 2. SSL VPN opera en capas superiores (4-7). IPsec puede usar modo túnel o transporte.'),

(2, 'En TCP, ¿qué mecanismo garantiza la entrega ordenada de paquetes?', 'Checksums', 'Números de secuencia', 'TTL', 'Flags', 'b', 'TCP usa números de secuencia para garantizar entrega ordenada. Cada byte tiene un número de secuencia. El receptor reordena segmentos y detecta duplicados o pérdidas.'),

(2, '¿Qué protocolo de la capa de aplicación usa UDP en lugar de TCP?', 'HTTP', 'FTP', 'DNS', 'SMTP', 'c', 'DNS usa UDP puerto 53 para consultas normales (rápidas, sin overhead de conexión). Usa TCP para transferencias de zona y respuestas >512 bytes. HTTP, FTP y SMTP usan TCP.'),

(2, '¿Cuál es el propósito del protocolo ARP?', 'Traducir nombres a IPs', 'Traducir IPs a direcciones MAC', 'Enrutar paquetes', 'Cifrar datos', 'b', 'ARP (Address Resolution Protocol) traduce direcciones IP a direcciones MAC en redes locales. Es necesario para la entrega de tramas en capa 2. Cada host mantiene una tabla ARP cache.'),

(2, 'En el modelo TCP/IP, ¿qué capa corresponde a las capas de Sesión, Presentación y Aplicación del modelo OSI?', 'Capa de Internet', 'Capa de Transporte', 'Capa de Aplicación', 'Capa de Acceso a Red', 'c', 'El modelo TCP/IP tiene 4 capas. La capa de Aplicación engloba las capas 5, 6 y 7 del modelo OSI (Sesión, Presentación y Aplicación). Es más simple y práctico que OSI.'),

(2, '¿Qué técnica de balanceo de carga distribuye peticiones basándose en la carga actual de los servidores?', 'Round Robin', 'Least Connections', 'IP Hash', 'Random', 'b', 'Least Connections envía peticiones al servidor con menos conexiones activas, balanceando la carga real. Round Robin distribuye secuencialmente. IP Hash usa hash de IP cliente. Random es aleatorio.'),

(2, '¿Qué protocolo se usa para gestionar dispositivos de red remotamente?', 'FTP', 'SNMP', 'HTTP', 'DNS', 'b', 'SNMP (Simple Network Management Protocol) permite monitorizar y gestionar dispositivos de red (routers, switches, servidores). Usa agentes que reportan al gestor. SNMPv3 añade seguridad.'),

(2, 'En una VPN, ¿qué es el tunneling?', 'Comprimir datos', 'Encapsular un protocolo dentro de otro', 'Balancear carga', 'Filtrar paquetes', 'b', 'Tunneling encapsula paquetes de un protocolo dentro de otro para transportarlos por una red. Ejemplo: encapsular tráfico privado en paquetes IP públicos. Usado en VPNs, IPv6 sobre IPv4, etc.'),

(2, '¿Qué campo del encabezado IP previene loops infinitos?', 'Version', 'TTL (Time To Live)', 'Protocol', 'Checksum', 'b', 'TTL se decrementa en cada salto (router). Cuando llega a 0, el paquete se descarta y se envía ICMP Time Exceeded. Previene que paquetes circulen indefinidamente por loops de enrutamiento.'),

(2, '¿Cuál es la diferencia principal entre TCP y UDP?', 'TCP es más rápido', 'TCP es orientado a conexión y confiable, UDP no', 'UDP usa más ancho de banda', 'TCP no tiene checksums', 'b', 'TCP es orientado a conexión, confiable (retransmite pérdidas), ordenado y con control de flujo. UDP es sin conexión, no confiable, sin orden garantizado, pero más rápido y con menos overhead.'),

(2, '¿Qué protocolo usa el comando ping?', 'TCP', 'UDP', 'ICMP', 'ARP', 'c', 'ping usa ICMP (Internet Control Message Protocol) Echo Request y Echo Reply. ICMP es parte de la capa de red (capa 3) y se usa para diagnóstico y mensajes de error.'),

(2, 'En subnetting, ¿cuántas subredes se pueden crear con 3 bits prestados?', '4', '6', '8', '16', 'c', 'Con 3 bits prestados se pueden crear 2^3 = 8 subredes. Cada bit adicional duplica el número de subredes pero reduce hosts por subred. Es un trade-off entre número de subredes y hosts.'),

(2, '¿Qué es NAT (Network Address Translation)?', 'Protocolo de enrutamiento', 'Técnica para traducir direcciones IP privadas a públicas', 'Sistema de nombres de dominio', 'Protocolo de cifrado', 'b', 'NAT traduce direcciones IP privadas (RFC 1918) a públicas para acceso a Internet. PAT (Port Address Translation) permite múltiples hosts compartir una IP pública usando diferentes puertos.'),

(2, '¿Qué puerto TCP usa HTTPS?', '80', '443', '8080', '8443', 'b', 'HTTPS usa el puerto TCP 443 por defecto. Es HTTP sobre TLS/SSL. El puerto 80 es para HTTP sin cifrar. 8443 es un puerto alternativo común para HTTPS.'),

(2, 'En VLANs, ¿qué protocolo se usa para etiquetar tramas en enlaces trunk?', '802.11', '802.1Q', '802.3', '802.1X', 'b', '802.1Q es el estándar IEEE para VLAN tagging en enlaces trunk. Añade un tag de 4 bytes a la trama Ethernet con el VLAN ID. ISL es el protocolo propietario de Cisco (obsoleto).'),

(2, '¿Qué es un gateway en redes?', 'Servidor DNS', 'Dispositivo que conecta redes diferentes', 'Switch', 'Hub', 'b', 'Un gateway (puerta de enlace) es un dispositivo que conecta redes diferentes, típicamente la red local con Internet. Suele ser un router que conoce rutas a otras redes.'),

(2, '¿Cuál es el rango de direcciones IP privadas de clase A?', '10.0.0.0 - 10.255.255.255', '172.16.0.0 - 172.31.255.255', '192.168.0.0 - 192.168.255.255', '169.254.0.0 - 169.254.255.255', 'a', 'RFC 1918 define rangos privados: Clase A: 10.0.0.0/8, Clase B: 172.16.0.0/12 (172.16-172.31), Clase C: 192.168.0.0/16. 169.254.0.0/16 es APIPA (auto-configuración).'),

(2, '¿Qué protocolo de enrutamiento es de tipo vector de distancia?', 'OSPF', 'RIP', 'IS-IS', 'BGP', 'b', 'RIP (Routing Information Protocol) es vector de distancia: comparte tablas de enrutamiento con vecinos. OSPF e IS-IS son link-state. BGP es path vector. RIP usa métrica de saltos (máx 15).'),

(2, 'En balanceo de carga, ¿qué algoritmo distribuye peticiones de forma circular?', 'Least Connections', 'Round Robin', 'IP Hash', 'Weighted', 'b', 'Round Robin distribuye peticiones secuencialmente entre servidores: 1, 2, 3, 1, 2, 3... Es simple pero no considera carga real. Weighted Round Robin asigna más peticiones a servidores más potentes.'),

(2, '¿Qué es el three-way handshake en TCP?', 'Proceso de cifrado', 'Proceso de establecimiento de conexión (SYN, SYN-ACK, ACK)', 'Proceso de enrutamiento', 'Proceso de DNS', 'b', 'El three-way handshake establece conexiones TCP: 1) Cliente envía SYN, 2) Servidor responde SYN-ACK, 3) Cliente envía ACK. Sincroniza números de secuencia y establece parámetros de conexión.'),

(2, '¿Qué protocolo permite configurar VLANs dinámicamente?', 'STP', 'VTP', 'DTP', 'LACP', 'b', 'VTP (VLAN Trunking Protocol) de Cisco permite propagar configuración de VLANs entre switches. Tiene modos: server, client, transparent. Cuidado: puede sobrescribir configuraciones si no se gestiona bien.'),

(2, '¿Cuál es el propósito del protocolo ICMP?', 'Transferir archivos', 'Mensajes de control y error en IP', 'Resolver nombres', 'Cifrar datos', 'b', 'ICMP (Internet Control Message Protocol) envía mensajes de control y error: Destination Unreachable, Time Exceeded, Echo Request/Reply (ping), Redirect. Es parte integral de IP.'),

(2, 'En IPv6, ¿cuántos bits tiene una dirección?', '32 bits', '64 bits', '128 bits', '256 bits', 'c', 'IPv6 usa direcciones de 128 bits (vs 32 bits de IPv4), proporcionando 2^128 direcciones. Se representa en hexadecimal separado por dos puntos: 2001:0db8:85a3::8a2e:0370:7334.'),

(2, '¿Qué es un dominio de broadcast?', 'Red donde todos los dispositivos reciben broadcasts', 'Red privada', 'Red cifrada', 'Red inalámbrica', 'a', 'Un dominio de broadcast es un segmento de red donde todos los dispositivos reciben tramas broadcast. Los routers separan dominios de broadcast. Las VLANs crean dominios de broadcast lógicos.'),

(2, '¿Qué protocolo se usa para sincronización de tiempo en redes?', 'FTP', 'NTP', 'SMTP', 'SNMP', 'b', 'NTP (Network Time Protocol) sincroniza relojes de sistemas en redes. Usa jerarquía de estratos. Crítico para logs, certificados, transacciones. SNTP es versión simplificada.'),

(2, 'En VPN, ¿qué protocolo combina L2TP con IPsec para seguridad?', 'PPTP', 'L2TP/IPsec', 'SSL VPN', 'OpenVPN', 'b', 'L2TP/IPsec combina L2TP (tunneling de capa 2) con IPsec (cifrado y autenticación). L2TP solo no proporciona cifrado. Es común en VPNs corporativas y móviles.'),

(2, '¿Qué es el MTU (Maximum Transmission Unit)?', 'Velocidad máxima', 'Tamaño máximo de paquete que puede transmitirse', 'Número máximo de hosts', 'Tiempo máximo de vida', 'b', 'MTU es el tamaño máximo de paquete (en bytes) que puede transmitirse sin fragmentación. Ethernet estándar: 1500 bytes. Jumbo frames: hasta 9000 bytes. Path MTU Discovery evita fragmentación.'),

(2, '¿Qué comando muestra la tabla de enrutamiento en Linux?', 'ifconfig', 'route', 'netstat -r', 'Ambas b y c', 'd', 'route y "netstat -r" muestran la tabla de enrutamiento. "ip route show" es el comando moderno. La tabla contiene destinos, gateways, interfaces y métricas.'),

(2, '¿Qué es QoS (Quality of Service)?', 'Protocolo de seguridad', 'Técnicas para priorizar tráfico de red', 'Sistema de nombres', 'Protocolo de enrutamiento', 'b', 'QoS prioriza tráfico según tipo/importancia: VoIP > video > datos. Usa técnicas como clasificación, marcado (DSCP), queuing, shaping y policing. Crítico para aplicaciones en tiempo real.'),

(2, 'En HTTP, ¿qué método se usa para enviar datos de formularios?', 'GET', 'POST', 'PUT', 'DELETE', 'b', 'POST envía datos en el cuerpo de la petición, adecuado para formularios y datos sensibles. GET envía datos en la URL (query string), visible y con límite de tamaño. PUT actualiza recursos, DELETE los elimina.'),

(2, '¿Qué es un proxy inverso?', 'Servidor que actúa en nombre de clientes', 'Servidor que actúa en nombre de servidores backend', 'Firewall', 'Router', 'b', 'Un proxy inverso (reverse proxy) recibe peticiones de clientes y las reenvía a servidores backend. Proporciona balanceo de carga, caché, SSL termination y seguridad. Nginx y HAProxy son ejemplos.'),

(2, '¿Qué protocolo usa SSH para conexiones seguras?', 'Telnet', 'TCP con cifrado', 'UDP', 'ICMP', 'b', 'SSH (Secure Shell) usa TCP puerto 22 con cifrado fuerte. Reemplaza Telnet (sin cifrado). Proporciona autenticación, cifrado y túneles seguros. Usado para administración remota y transferencia segura (SCP, SFTP).'),

(2, 'En subnetting, ¿qué máscara se usa para dividir una red /24 en 4 subredes?', '/25', '/26', '/27', '/28', 'b', 'Para 4 subredes se necesitan 2 bits (2^2=4). /24 + 2 bits = /26. Cada subred /26 tiene 62 hosts utilizables (64 - 2). /25 da 2 subredes, /27 da 8 subredes, /28 da 16 subredes.'),

(2, '¿Qué es DHCP snooping?', 'Protocolo de enrutamiento', 'Característica de seguridad que previene servidores DHCP no autorizados', 'Tipo de VPN', 'Protocolo de cifrado', 'b', 'DHCP snooping es una característica de seguridad en switches que previene servidores DHCP falsos. Crea una tabla de bindings (IP-MAC-puerto) y filtra mensajes DHCP no autorizados.'),

(2, '¿Qué protocolo permite descubrir dispositivos en redes Cisco?', 'LLDP', 'CDP', 'STP', 'VTP', 'b', 'CDP (Cisco Discovery Protocol) es propietario de Cisco y descubre dispositivos vecinos en capa 2. LLDP (Link Layer Discovery Protocol) es el estándar IEEE 802.1AB equivalente, multi-vendor.'),

(2, 'En TCP, ¿qué flag se usa para finalizar una conexión?', 'SYN', 'ACK', 'FIN', 'RST', 'c', 'FIN (Finish) inicia el cierre ordenado de conexión TCP (four-way handshake). RST (Reset) cierra abruptamente. SYN inicia conexión. ACK confirma recepción. El cierre es: FIN, ACK, FIN, ACK.'),

(2, '¿Qué es un ataque DDoS?', 'Virus', 'Ataque distribuido de denegación de servicio', 'Protocolo de red', 'Tipo de cifrado', 'b', 'DDoS (Distributed Denial of Service) satura un servicio con tráfico masivo desde múltiples fuentes (botnet), haciéndolo inaccesible. Tipos: volumétrico, de protocolo, de aplicación.'),

(2, '¿Qué es el spanning tree protocol (STP)?', 'Protocolo de enrutamiento', 'Protocolo que previene loops en redes con switches', 'Protocolo de cifrado', 'Protocolo de VPN', 'b', 'STP (802.1D) previene loops en redes con switches mediante la desactivación de enlaces redundantes. Elige un root bridge y calcula el árbol de expansión. RSTP (802.1w) converge más rápido.'),

(2, '¿Qué es VLAN hopping?', 'Técnica de balanceo', 'Ataque que permite acceder a VLANs no autorizadas', 'Protocolo de enrutamiento', 'Tipo de VPN', 'b', 'VLAN hopping es un ataque que explota configuraciones incorrectas de VLANs para acceder a VLANs no autorizadas. Prevención: deshabilitar DTP, configurar puertos de acceso explícitamente, usar VLAN nativa diferente.');
