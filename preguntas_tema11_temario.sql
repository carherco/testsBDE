-- 50 preguntas difíciles sobre Fundamentos de Soluciones ERP (Tema 11) basadas en temario.txt
-- Ciclo de vida de implementación de ERP y principios básicos de gestión de proyectos en implementaciones de ERP
-- Conceptos de módulos ERP y comprensión de los módulos principales (finanzas, cadena de suministro, etc.)
-- Bases de datos relacionales y SQL para consultar y gestionar datos dentro del ERP
-- Configuración y personalización de módulos ERP. Generación y análisis de reportes
-- Conocimiento de lenguajes de scripting o programación específicos del ERP (e.g., ABAP para SAP, JavaScript para NetSuite)
-- Modelos de seguridad en sistemas ERP

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(11, '¿Qué significa ERP?', 'Enterprise Resource Planning', 'Electronic Resource Processing', 'Enterprise Reporting Platform', 'Electronic Resource Planning', 'a', 'ERP (Enterprise Resource Planning) es un sistema integrado que gestiona procesos de negocio: finanzas, RRHH, producción, ventas, compras, inventario. Centraliza datos en una base de datos única, mejorando eficiencia y toma de decisiones.'),

(11, 'En el ciclo de vida de implementación de ERP, ¿qué fase define los requisitos del negocio?', 'Implementación', 'Análisis y diseño', 'Go-live', 'Soporte', 'b', 'La fase de análisis y diseño define requisitos del negocio, procesos actuales (AS-IS) y futuros (TO-BE), gap analysis y diseño de solución. Precede a la configuración e implementación. Es crítica para el éxito del proyecto.'),

(11, '¿Qué módulo de ERP gestiona contabilidad, cuentas por cobrar y pagar?', 'SCM', 'Finanzas', 'RRHH', 'CRM', 'b', 'El módulo de Finanzas gestiona: contabilidad general, cuentas por cobrar/pagar, activos fijos, tesorería, presupuestos. Es el núcleo del ERP. Otros módulos: SCM (cadena de suministro), RRHH (recursos humanos), CRM (clientes).'),

(11, '¿Qué es SAP?', 'Base de datos', 'Sistema ERP líder del mercado', 'Lenguaje de programación', 'Sistema operativo', 'b', 'SAP (Systems, Applications, and Products) es el ERP líder mundial. SAP S/4HANA es su versión actual (in-memory). Usa ABAP como lenguaje de programación. Otros ERPs: Oracle ERP Cloud, Microsoft Dynamics, NetSuite.'),

(11, 'En gestión de proyectos ERP, ¿qué metodología es iterativa e incremental?', 'Waterfall', 'Agile', 'Big Bang', 'Todas las anteriores', 'b', 'Agile es iterativa e incremental: sprints, feedback continuo, adaptación. Waterfall es secuencial. En ERP: Agile permite ajustes, Waterfall da estructura. Híbridos son comunes. Big Bang es estrategia de despliegue (todo a la vez).'),

(11, '¿Qué es ABAP?', 'Base de datos', 'Lenguaje de programación de SAP', 'Módulo de ERP', 'Sistema operativo', 'b', 'ABAP (Advanced Business Application Programming) es el lenguaje de programación de SAP para desarrollar personalizaciones, reportes, interfaces. Es de cuarta generación, orientado a negocio. Alternativa moderna: SAPUI5 (JavaScript) para interfaces.'),

(11, 'En ERP, ¿qué es la parametrización?', 'Programación personalizada', 'Configuración del sistema mediante parámetros sin programar', 'Instalación del ERP', 'Backup de datos', 'b', 'La parametrización (configuración) ajusta el ERP mediante parámetros estándar sin programar. Es preferible a personalización (código custom) porque: más barato, más fácil de mantener, compatible con actualizaciones. Ejemplo: definir plan de cuentas, centros de coste.'),

(11, '¿Qué módulo de ERP gestiona compras, inventario y logística?', 'Finanzas', 'SCM (Supply Chain Management)', 'RRHH', 'CRM', 'b', 'SCM (Supply Chain Management) gestiona cadena de suministro: compras, gestión de inventario, almacenes, logística, planificación de producción. Optimiza flujo de materiales y reduce costes. Integra con proveedores.'),

(11, 'En SQL para ERP, ¿qué cláusula filtra resultados después de agrupar?', 'WHERE', 'HAVING', 'GROUP BY', 'ORDER BY', 'b', 'HAVING filtra grupos después de GROUP BY, puede usar funciones agregadas. WHERE filtra filas antes de agrupar. Ejemplo: SELECT departamento, COUNT(*) FROM empleados GROUP BY departamento HAVING COUNT(*) > 5.'),

(11, '¿Qué es un gap analysis en implementación de ERP?', 'Análisis de costes', 'Identificar diferencias entre funcionalidad estándar y requisitos', 'Análisis de riesgos', 'Análisis de usuarios', 'b', 'Gap analysis identifica diferencias entre funcionalidad estándar del ERP y requisitos del negocio. Para cada gap: configurar, personalizar, cambiar proceso o aceptar. Crítico para estimar esfuerzo y coste.'),

(11, 'En ERP, ¿qué es el master data?', 'Datos transaccionales', 'Datos maestros (clientes, productos, proveedores)', 'Datos temporales', 'Datos de configuración', 'b', 'Master data son datos maestros fundamentales: clientes, proveedores, productos, empleados, centros de coste. Son relativamente estáticos. Transactional data son operaciones (ventas, compras). Master data de calidad es crítico.'),

(11, '¿Qué estrategia de despliegue de ERP implementa todos los módulos a la vez?', 'Phased rollout', 'Pilot', 'Big Bang', 'Parallel run', 'c', 'Big Bang implementa todos los módulos/ubicaciones simultáneamente. Ventajas: rápido, integración inmediata. Desventajas: alto riesgo, complejidad. Phased rollout es gradual (por módulo/ubicación). Pilot prueba en grupo pequeño primero.'),

(11, 'En seguridad de ERP, ¿qué es el principio de segregación de funciones?', 'Un usuario hace todo', 'Dividir tareas críticas entre múltiples usuarios', 'Todos tienen acceso total', 'No usar contraseñas', 'b', 'Segregación de funciones (SoD) divide tareas críticas entre usuarios para prevenir fraude. Ejemplo: quien crea proveedor no puede aprobar pagos. Los ERPs tienen matrices SoD. Conflictos deben identificarse y mitigarse.'),

(11, '¿Qué es NetSuite?', 'Base de datos', 'ERP cloud de Oracle', 'Lenguaje de programación', 'Sistema operativo', 'b', 'NetSuite es ERP cloud de Oracle, líder en cloud. SaaS (Software as a Service). Usa JavaScript (SuiteScript) para personalizaciones. Ventajas cloud: sin infraestructura, actualizaciones automáticas, escalabilidad. Otros cloud ERPs: SAP S/4HANA Cloud, Dynamics 365.'),

(11, 'En implementación de ERP, ¿qué es el change management?', 'Cambiar el ERP', 'Gestionar el cambio organizacional y adopción de usuarios', 'Cambiar de proveedor', 'Cambiar la base de datos', 'b', 'Change management gestiona el cambio organizacional: comunicación, formación, gestión de resistencia, adopción de usuarios. Es crítico para éxito: muchos proyectos ERP fallan por factores humanos, no técnicos.'),

(11, '¿Qué módulo de ERP gestiona nóminas, reclutamiento y formación?', 'Finanzas', 'SCM', 'RRHH (Human Resources)', 'CRM', 'c', 'El módulo de RRHH gestiona: nóminas, reclutamiento, formación, evaluación de desempeño, gestión de talento, ausencias. Integra con finanzas (contabilización de nóminas) y otros módulos.'),

(11, 'En ERP, ¿qué es un workflow?', 'Base de datos', 'Flujo automatizado de aprobaciones y procesos', 'Reporte', 'Usuario', 'b', 'Un workflow automatiza flujos de aprobaciones y procesos: solicitud de compra → aprobación → orden de compra. Mejora eficiencia, trazabilidad y control. Los ERPs tienen motores de workflow configurables.'),

(11, '¿Qué es la integración en tiempo real en ERP?', 'Integración manual', 'Sincronización inmediata de datos entre módulos', 'Integración diaria', 'No hay integración', 'b', 'La integración en tiempo real sincroniza datos inmediatamente entre módulos. Ejemplo: venta actualiza inventario instantáneamente. Ventaja clave de ERP vs sistemas aislados. Garantiza consistencia y visibilidad.'),

(11, 'En SQL, ¿qué comando se usa para modificar datos existentes?', 'INSERT', 'UPDATE', 'DELETE', 'SELECT', 'b', 'UPDATE modifica datos existentes: UPDATE tabla SET columna = valor WHERE condición. INSERT añade filas. DELETE elimina filas. SELECT consulta datos. En ERP, UPDATE debe usarse con cuidado (auditoría, permisos).'),

(11, '¿Qué es un centro de coste en ERP?', 'Cuenta contable', 'Unidad organizativa para asignar costes', 'Proveedor', 'Cliente', 'b', 'Un centro de coste es unidad organizativa (departamento, proyecto) para asignar y controlar costes. Permite análisis de rentabilidad por área. Ejemplo: Marketing, IT, Producción. Fundamental en contabilidad analítica.'),

(11, 'En implementación de ERP, ¿qué es el go-live?', 'Inicio del proyecto', 'Puesta en producción del sistema', 'Fin del proyecto', 'Análisis de requisitos', 'b', 'Go-live es la puesta en producción: el ERP entra en operación real. Momento crítico. Requiere: datos migrados, usuarios formados, soporte preparado. Después viene fase de estabilización y soporte post go-live.'),

(11, '¿Qué es SAP S/4HANA?', 'Base de datos', 'Versión actual de SAP con base de datos in-memory', 'Lenguaje de programación', 'Sistema operativo', 'b', 'SAP S/4HANA es la versión actual de SAP, usa base de datos in-memory HANA. Ventajas: procesamiento en tiempo real, simplificación de datos, UX moderna (Fiori). Reemplaza SAP ECC. Disponible on-premise y cloud.'),

(11, 'En ERP, ¿qué es un reporte transaccional?', 'Reporte de configuración', 'Reporte de operaciones diarias (ventas, compras)', 'Reporte de usuarios', 'Reporte de seguridad', 'b', 'Un reporte transaccional muestra operaciones diarias: ventas, compras, movimientos de inventario, pagos. Detallado y operativo. Reportes analíticos son agregados (KPIs, dashboards). Los ERPs tienen generadores de reportes.'),

(11, '¿Qué es la trazabilidad en ERP?', 'Velocidad del sistema', 'Capacidad de rastrear origen y destino de transacciones', 'Número de usuarios', 'Tamaño de base de datos', 'b', 'La trazabilidad permite rastrear origen y destino de transacciones: desde orden de compra hasta pago, desde venta hasta cobro. Crítica para auditoría, calidad y cumplimiento. Los ERPs registran quién, qué, cuándo.'),

(11, 'En gestión de proyectos ERP, ¿qué es el scope creep?', 'Reducción de alcance', 'Expansión no controlada del alcance', 'Planificación del alcance', 'Cierre del proyecto', 'b', 'Scope creep es expansión no controlada del alcance: añadir requisitos sin ajustar tiempo/presupuesto. Causa retrasos y sobrecostes. Prevención: gestión de cambios formal, priorización, decir no cuando necesario.'),

(11, '¿Qué módulo de ERP gestiona relaciones con clientes?', 'Finanzas', 'SCM', 'RRHH', 'CRM (Customer Relationship Management)', 'd', 'CRM gestiona relaciones con clientes: ventas, marketing, servicio al cliente, oportunidades. Integra con finanzas (facturación) y SCM (entregas). Puede ser módulo de ERP o sistema separado integrado (Salesforce).'),

(11, 'En ERP, ¿qué es una transacción?', 'Base de datos', 'Operación de negocio (venta, compra, pago)', 'Usuario', 'Reporte', 'b', 'Una transacción es operación de negocio: venta, compra, pago, recepción de material. Genera documentos y asientos contables. Los ERPs registran todas las transacciones con trazabilidad completa.'),

(11, '¿Qué es la migración de datos en ERP?', 'Backup', 'Transferir datos del sistema antiguo al nuevo ERP', 'Eliminar datos', 'Crear datos', 'b', 'La migración de datos transfiere datos del sistema antiguo al nuevo ERP: master data, saldos iniciales, transacciones abiertas. Fases: extracción, transformación (limpieza, mapeo), carga (ETL). Crítica y compleja. Requiere validación exhaustiva.'),

(11, 'En SQL, ¿qué es una clave foránea?', 'Clave primaria', 'Campo que referencia clave primaria de otra tabla', 'Índice', 'Vista', 'b', 'Una clave foránea referencia la clave primaria de otra tabla, estableciendo relaciones. Garantiza integridad referencial. Ejemplo: tabla Pedidos tiene clave foránea a Clientes. Fundamental en bases de datos relacionales de ERP.'),

(11, '¿Qué es un KPI en contexto de ERP?', 'Tipo de reporte', 'Key Performance Indicator - métrica clave de rendimiento', 'Módulo de ERP', 'Usuario', 'b', 'KPI (Key Performance Indicator) es métrica clave de rendimiento: rotación de inventario, días de cobro, margen de beneficio. Los ERPs tienen dashboards con KPIs en tiempo real. Permiten monitorizar objetivos.'),

(11, 'En implementación de ERP, ¿qué es el UAT?', 'Tipo de base de datos', 'User Acceptance Testing - pruebas de aceptación de usuarios', 'Módulo de ERP', 'Lenguaje de programación', 'b', 'UAT (User Acceptance Testing) son pruebas de aceptación donde usuarios finales validan que el sistema cumple requisitos. Última fase antes de go-live. Usuarios prueban escenarios reales. Crítico para detectar problemas.'),

(11, '¿Qué es la personalización (customization) en ERP?', 'Configuración estándar', 'Desarrollo de código custom para requisitos específicos', 'Instalación', 'Backup', 'b', 'La personalización (customization) desarrolla código custom para requisitos que la configuración estándar no cubre. Costosa, dificulta actualizaciones. Debe minimizarse. Preferir: configuración, cambio de proceso, add-ons certificados.'),

(11, 'En ERP, ¿qué es un plan de cuentas?', 'Plan de proyecto', 'Estructura de cuentas contables', 'Plan de usuarios', 'Plan de formación', 'b', 'El plan de cuentas es la estructura de cuentas contables: activo, pasivo, patrimonio neto, ingresos, gastos. Cada empresa define el suyo. Fundamental en módulo de finanzas. Debe configurarse al inicio de implementación.'),

(11, '¿Qué es un ambiente de desarrollo en ERP?', 'Ambiente de producción', 'Ambiente para desarrollar y probar personalizaciones', 'Ambiente de formación', 'Ambiente de backup', 'b', 'Los ERPs tienen múltiples ambientes: Desarrollo (DEV - desarrollar/probar), Calidad/QA (pruebas integradas), Producción (PRD - operación real). Los cambios se desarrollan en DEV, prueban en QA, despliegan en PRD. Nunca desarrollar en producción.'),

(11, 'En seguridad de ERP, ¿qué es un rol?', 'Usuario', 'Conjunto de permisos asignables a usuarios', 'Módulo', 'Transacción', 'b', 'Un rol es conjunto de permisos (autorizaciones) asignables a usuarios. Ejemplo: rol "Contable" puede crear asientos pero no aprobar pagos. RBAC (Role-Based Access Control). Simplifica gestión de permisos.'),

(11, '¿Qué es la integración de sistemas en ERP?', 'Instalar el ERP', 'Conectar el ERP con otros sistemas (CRM, e-commerce, bancos)', 'Configurar el ERP', 'Formar usuarios', 'b', 'La integración conecta el ERP con otros sistemas: CRM, e-commerce, bancos, sistemas legados. Métodos: APIs REST, web services, EDI, archivos. Middleware (ESB) puede facilitar. Crítica para ecosistema de aplicaciones.'),

(11, 'En ERP, ¿qué es un documento?', 'Archivo Word', 'Registro de transacción (orden de compra, factura, albarán)', 'Manual de usuario', 'Contrato', 'b', 'Un documento es registro de transacción: orden de compra, factura, albarán, pedido de venta. Tiene número único, fecha, estado, líneas de detalle. Los documentos fluyen por el proceso: pedido → albarán → factura.'),

(11, '¿Qué es SAP Fiori?', 'Base de datos', 'UX moderna de SAP basada en HTML5', 'Lenguaje de programación', 'Módulo de ERP', 'b', 'SAP Fiori es la UX moderna de SAP: responsive, intuitiva, basada en HTML5/SAPUI5. Apps Fiori reemplazan transacciones SAP GUI tradicionales. Mejora experiencia de usuario y adopción. Disponible en S/4HANA.'),

(11, 'En implementación de ERP, ¿qué es el cutover?', 'Inicio del proyecto', 'Transición final del sistema antiguo al nuevo', 'Análisis de requisitos', 'Formación de usuarios', 'b', 'Cutover es la transición final del sistema antiguo al nuevo: migración final de datos, cierre del antiguo, apertura del nuevo. Ocurre justo antes de go-live. Requiere planificación detallada (cutover plan) y suele hacerse en fin de semana.'),

(11, '¿Qué es un proceso de negocio en ERP?', 'Instalación del ERP', 'Secuencia de actividades que genera valor (procure-to-pay, order-to-cash)', 'Backup', 'Reporte', 'b', 'Un proceso de negocio es secuencia de actividades que genera valor. Ejemplos: Procure-to-Pay (compra hasta pago), Order-to-Cash (pedido hasta cobro), Hire-to-Retire (contratación hasta jubilación). Los ERPs soportan procesos end-to-end.'),

(11, 'En SQL, ¿qué cláusula se usa para unir tablas?', 'WHERE', 'GROUP BY', 'JOIN', 'HAVING', 'c', 'JOIN une tablas relacionadas: INNER JOIN (solo coincidencias), LEFT JOIN (todas de izquierda), RIGHT JOIN, FULL OUTER JOIN. Ejemplo: SELECT * FROM Pedidos JOIN Clientes ON Pedidos.cliente_id = Clientes.id. Fundamental para consultas en ERP.'),

(11, '¿Qué es la auditoría en ERP?', 'Backup', 'Registro de quién hizo qué y cuándo', 'Configuración', 'Reporte', 'b', 'La auditoría registra quién hizo qué, cuándo y desde dónde. Los ERPs tienen audit trails completos. Crítico para: cumplimiento (SOX, GDPR), seguridad, investigación de errores. Logs deben ser inmutables.'),

(11, 'En ERP, ¿qué es un dashboard?', 'Base de datos', 'Panel visual con KPIs y métricas en tiempo real', 'Módulo', 'Usuario', 'b', 'Un dashboard es panel visual con KPIs, gráficos y métricas en tiempo real. Proporciona visibilidad ejecutiva. Los ERPs modernos tienen dashboards configurables por rol. Ejemplo: dashboard financiero con cash flow, cuentas por cobrar, margen.'),

(11, '¿Qué es el soporte post go-live en ERP?', 'Instalación', 'Soporte intensivo después de puesta en producción', 'Análisis de requisitos', 'Desarrollo', 'b', 'El soporte post go-live es soporte intensivo después de la puesta en producción. Fase de estabilización: resolver incidencias, ajustar configuración, formación adicional. Crítica: usuarios aprenden el sistema real. Dura semanas/meses.'),

(11, 'En ERP, ¿qué es un flujo de aprobación?', 'Flujo de datos', 'Proceso donde transacciones requieren aprobaciones antes de ejecutarse', 'Flujo de usuarios', 'Flujo de reportes', 'b', 'Un flujo de aprobación requiere que transacciones (solicitudes de compra, gastos, cambios) sean aprobadas antes de ejecutarse. Configurable por importe, tipo, departamento. Mejora control y cumplimiento. Implementado con workflows.'),

(11, '¿Qué es la conciliación bancaria en ERP?', 'Crear cuentas bancarias', 'Comparar movimientos bancarios con registros contables', 'Pagar a proveedores', 'Cobrar a clientes', 'b', 'La conciliación bancaria compara movimientos del extracto bancario con registros contables para identificar diferencias: cheques no cobrados, depósitos en tránsito, errores. Los ERPs tienen funcionalidad de conciliación automática/semiautomática.'),

(11, 'En implementación de ERP, ¿qué es el blueprint?', 'Código fuente', 'Documento que detalla diseño de solución y configuración', 'Base de datos', 'Reporte', 'b', 'El blueprint (documento de diseño) detalla cómo se configurará el ERP para cumplir requisitos: procesos TO-BE, configuración, personalizaciones, integraciones, migraciones. Es el plano de construcción. Se crea en fase de diseño.'),

(11, '¿Qué es un add-on en ERP?', 'Base de datos', 'Extensión o aplicación adicional que añade funcionalidad', 'Usuario', 'Reporte', 'b', 'Un add-on es extensión que añade funcionalidad al ERP: gestión de proyectos, e-commerce, BI avanzado. Puede ser: del fabricante, de terceros certificados, custom. Preferible a personalización porque: mantenido, actualizable, soportado.');
