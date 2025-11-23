-- 50 preguntas difíciles sobre Fundamentos de Ingeniería de Software (Tema 7) basadas en temario.txt
-- Ciclo de vida del desarrollo de software: planificación, análisis, diseño, implementación, pruebas
-- Metodologías de desarrollo: Ágil, waterfall, Scrum
-- Principios de diseño de software

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(7, '¿Qué fase del ciclo de vida del software define QUÉ debe hacer el sistema?', 'Diseño', 'Análisis de requisitos', 'Implementación', 'Pruebas', 'b', 'El análisis de requisitos define QUÉ debe hacer el sistema (requisitos funcionales y no funcionales). El diseño define CÓMO se implementará. La implementación es el desarrollo del código. Las pruebas verifican que funciona correctamente.'),

(7, 'En el modelo Waterfall, ¿cuál es su principal característica?', 'Iterativo e incremental', 'Secuencial y sin retroceso entre fases', 'Basado en sprints', 'Sin documentación', 'b', 'Waterfall (cascada) es secuencial: cada fase debe completarse antes de la siguiente. No hay retroceso fácil. Ventajas: simple, bien documentado. Desventajas: inflexible, cambios costosos, feedback tardío. Adecuado para proyectos con requisitos estables.'),

(7, '¿Qué metodología ágil usa sprints de 2-4 semanas?', 'Waterfall', 'Scrum', 'Kanban', 'V-Model', 'b', 'Scrum usa sprints (iteraciones) de 2-4 semanas con entregables funcionales. Incluye: Daily Standup, Sprint Planning, Sprint Review, Sprint Retrospective. Roles: Product Owner, Scrum Master, Development Team.'),

(7, 'En Scrum, ¿quién es responsable de maximizar el valor del producto?', 'Scrum Master', 'Product Owner', 'Development Team', 'Stakeholders', 'b', 'El Product Owner es responsable de maximizar el valor del producto, gestionar el Product Backlog, priorizar funcionalidades y tomar decisiones sobre qué desarrollar. El Scrum Master facilita el proceso. El equipo desarrolla.'),

(7, '¿Qué principio SOLID establece que las clases deben depender de abstracciones, no de concreciones?', 'Single Responsibility', 'Open/Closed', 'Liskov Substitution', 'Dependency Inversion', 'd', 'Dependency Inversion establece que módulos de alto nivel no deben depender de módulos de bajo nivel; ambos deben depender de abstracciones. Las abstracciones no deben depender de detalles. Facilita testing, cambios y desacoplamiento.'),

(7, '¿Qué tipo de prueba verifica que el sistema cumple los requisitos del usuario?', 'Pruebas unitarias', 'Pruebas de integración', 'Pruebas de aceptación', 'Pruebas de regresión', 'c', 'Las pruebas de aceptación (UAT - User Acceptance Testing) verifican que el sistema cumple los requisitos del usuario y está listo para producción. Las realizan usuarios finales o QA. Son el último paso antes del despliegue.'),

(7, 'En metodologías ágiles, ¿qué es un MVP (Minimum Viable Product)?', 'Producto completo', 'Versión con funcionalidad mínima para validar hipótesis', 'Prototipo sin funcionalidad', 'Documentación del producto', 'b', 'Un MVP es la versión del producto con funcionalidad mínima suficiente para validar hipótesis y obtener feedback de usuarios reales. Permite aprender rápido con mínima inversión. Principio de Lean Startup.'),

(7, '¿Qué patrón de diseño separa la construcción de un objeto complejo de su representación?', 'Singleton', 'Factory', 'Builder', 'Observer', 'c', 'El patrón Builder separa la construcción de objetos complejos de su representación, permitiendo crear diferentes representaciones con el mismo proceso de construcción. Útil para objetos con muchos parámetros opcionales.'),

(7, 'En el ciclo de vida del software, ¿qué fase transforma requisitos en arquitectura y diseño detallado?', 'Análisis', 'Diseño', 'Implementación', 'Pruebas', 'b', 'La fase de diseño transforma requisitos en arquitectura del sistema, diseño de componentes, interfaces, base de datos y algoritmos. Define CÓMO se implementará el sistema. Produce diagramas UML, especificaciones técnicas.'),

(7, '¿Qué es refactoring en desarrollo de software?', 'Añadir nuevas funcionalidades', 'Reestructurar código sin cambiar su comportamiento externo', 'Eliminar código', 'Documentar código', 'b', 'Refactoring es reestructurar código existente para mejorar su estructura interna sin cambiar su comportamiento externo. Mejora legibilidad, mantenibilidad y reduce deuda técnica. Debe hacerse con tests que garanticen que no se rompe funcionalidad.'),

(7, 'En Scrum, ¿qué es el Product Backlog?', 'Lista de bugs', 'Lista priorizada de funcionalidades y requisitos', 'Lista de tareas del sprint', 'Documentación técnica', 'b', 'El Product Backlog es una lista priorizada de todas las funcionalidades, mejoras, bugs y requisitos del producto. El Product Owner lo gestiona y prioriza. Los items de mayor prioridad están más detallados. Es dinámico y evoluciona.'),

(7, '¿Qué tipo de prueba verifica que cambios no rompieron funcionalidad existente?', 'Pruebas unitarias', 'Pruebas de integración', 'Pruebas de regresión', 'Pruebas de carga', 'c', 'Las pruebas de regresión verifican que cambios (nuevas funcionalidades, bugs corregidos) no rompieron funcionalidad existente. Deben automatizarse y ejecutarse frecuentemente. Son críticas en CI/CD.'),

(7, '¿Qué principio ágil establece "Software funcionando sobre documentación extensiva"?', 'Manifiesto Ágil', 'SOLID', 'DRY', 'KISS', 'a', 'El Manifiesto Ágil establece 4 valores, uno es "Software funcionando sobre documentación extensiva". No significa no documentar, sino priorizar software que funciona. La documentación debe ser suficiente pero no excesiva.'),

(7, 'En diseño de software, ¿qué es la cohesión?', 'Dependencia entre módulos', 'Grado en que elementos de un módulo están relacionados', 'Número de clases', 'Complejidad del código', 'b', 'La cohesión mide cuán relacionados están los elementos dentro de un módulo. Alta cohesión significa que el módulo hace una cosa bien definida. Baja cohesión indica que el módulo hace cosas no relacionadas. Se busca alta cohesión.'),

(7, '¿Qué es TDD (Test-Driven Development)?', 'Escribir tests después del código', 'Escribir tests antes del código', 'No escribir tests', 'Solo tests manuales', 'b', 'TDD escribe tests antes del código: 1) Escribir test que falla (Red), 2) Escribir código mínimo para pasar test (Green), 3) Refactorizar (Refactor). Ciclo Red-Green-Refactor. Mejora diseño y cobertura de tests.'),

(7, 'En Scrum, ¿cuál es la duración típica de un Daily Standup?', '30 minutos', '15 minutos', '1 hora', '5 minutos', 'b', 'El Daily Standup (Daily Scrum) dura máximo 15 minutos. El equipo responde: ¿Qué hice ayer? ¿Qué haré hoy? ¿Qué impedimentos tengo? Es de pie para mantenerlo breve. Sincroniza al equipo diariamente.'),

(7, '¿Qué patrón de diseño permite que objetos se suscriban a eventos de otros objetos?', 'Singleton', 'Factory', 'Observer', 'Strategy', 'c', 'El patrón Observer define dependencia uno-a-muchos: cuando un objeto cambia de estado, notifica automáticamente a sus observadores. Usado en sistemas de eventos, MVC (Model notifica a Views), listeners.'),

(7, 'En el modelo V, ¿qué característica lo diferencia de Waterfall?', 'Es iterativo', 'Cada fase de desarrollo tiene fase de prueba correspondiente', 'No tiene fases', 'Es ágil', 'b', 'El modelo V es como Waterfall pero cada fase de desarrollo tiene una fase de prueba correspondiente en forma de V. Requisitos → Pruebas de aceptación, Diseño → Pruebas de integración, Código → Pruebas unitarias. Enfatiza verificación y validación.'),

(7, '¿Qué es la deuda técnica?', 'Dinero adeudado', 'Coste futuro de rehacer trabajo por soluciones rápidas', 'Bugs en producción', 'Documentación faltante', 'b', 'La deuda técnica es el coste futuro de rehacer trabajo debido a soluciones rápidas o subóptimas tomadas ahora. Como deuda financiera, acumula "intereses" (mayor coste de mantenimiento). Debe gestionarse: a veces es aceptable, pero debe pagarse.'),

(7, 'En metodologías ágiles, ¿qué es una User Story?', 'Documentación técnica', 'Descripción de funcionalidad desde perspectiva del usuario', 'Bug report', 'Test case', 'b', 'Una User Story describe funcionalidad desde la perspectiva del usuario: "Como [rol], quiero [funcionalidad] para [beneficio]". Incluye criterios de aceptación. Es conversación, no especificación completa. Usada en Scrum para el Product Backlog.'),

(7, '¿Qué tipo de prueba verifica la interacción entre componentes?', 'Pruebas unitarias', 'Pruebas de integración', 'Pruebas de sistema', 'Pruebas de aceptación', 'b', 'Las pruebas de integración verifican que componentes/módulos funcionan correctamente juntos. Prueban interfaces, comunicación, flujo de datos entre componentes. Detectan problemas de integración que tests unitarios no encuentran.'),

(7, '¿Qué principio establece "No te repitas" (Don\'t Repeat Yourself)?', 'SOLID', 'DRY', 'KISS', 'YAGNI', 'b', 'DRY (Don\'t Repeat Yourself) establece que cada pieza de conocimiento debe tener una representación única en el sistema. Evita duplicación de código, mejora mantenibilidad. Cambios se hacen en un solo lugar.'),

(7, 'En Scrum, ¿qué evento permite al equipo reflexionar y mejorar?', 'Sprint Planning', 'Daily Standup', 'Sprint Review', 'Sprint Retrospective', 'd', 'La Sprint Retrospective es al final del sprint donde el equipo reflexiona sobre el proceso y define mejoras para el siguiente sprint. Responde: ¿Qué fue bien? ¿Qué mejorar? ¿Qué acciones tomar? Fomenta mejora continua.'),

(7, '¿Qué es CI/CD?', 'Tipo de base de datos', 'Continuous Integration / Continuous Deployment', 'Metodología ágil', 'Patrón de diseño', 'b', 'CI/CD es Continuous Integration (integrar código frecuentemente con tests automáticos) y Continuous Deployment (desplegar automáticamente a producción). Automatiza build, test y deploy. Reduce riesgos, acelera entregas, mejora calidad.'),

(7, '¿Qué patrón de diseño proporciona interfaz simplificada a un subsistema complejo?', 'Adapter', 'Facade', 'Proxy', 'Decorator', 'b', 'El patrón Facade proporciona una interfaz simplificada a un subsistema complejo. Oculta complejidad y reduce dependencias. El cliente interactúa con la fachada en lugar de múltiples clases del subsistema.'),

(7, 'En desarrollo ágil, ¿qué es la velocidad del equipo?', 'Rapidez de codificación', 'Cantidad de trabajo completado por sprint', 'Número de bugs', 'Tiempo de respuesta', 'b', 'La velocidad es la cantidad de trabajo (story points o tareas) que el equipo completa por sprint. Se usa para planificar sprints futuros. Es métrica del equipo, no individual. Mejora con el tiempo al estabilizarse.'),

(7, '¿Qué tipo de prueba verifica el rendimiento bajo carga?', 'Pruebas unitarias', 'Pruebas de integración', 'Pruebas de carga', 'Pruebas de aceptación', 'c', 'Las pruebas de carga verifican el rendimiento del sistema bajo carga esperada o extrema. Miden: tiempo de respuesta, throughput, uso de recursos. Identifican cuellos de botella. Tipos: load testing, stress testing, spike testing.'),

(7, '¿Qué principio establece "Mantén las cosas simples"?', 'DRY', 'SOLID', 'KISS', 'YAGNI', 'c', 'KISS (Keep It Simple, Stupid) establece que los sistemas funcionan mejor si se mantienen simples. Evita complejidad innecesaria. La simplicidad facilita comprensión, mantenimiento y reduce bugs.'),

(7, 'En Kanban, ¿qué se limita para mejorar el flujo?', 'Número de desarrolladores', 'Work In Progress (WIP)', 'Número de sprints', 'Documentación', 'b', 'Kanban limita el Work In Progress (WIP) para mejorar el flujo y reducir multitasking. Visualiza el trabajo en tablero con columnas (To Do, In Progress, Done). Enfatiza flujo continuo sin sprints fijos.'),

(7, '¿Qué es pair programming?', 'Dos equipos trabajando', 'Dos desarrolladores en un ordenador: uno escribe, otro revisa', 'Dos proyectos simultáneos', 'Dos versiones del código', 'b', 'Pair programming es dos desarrolladores en un ordenador: el driver escribe código, el navigator revisa y piensa estratégicamente. Rolan roles. Mejora calidad, comparte conocimiento, reduce bugs. Práctica de Extreme Programming (XP).'),

(7, '¿Qué patrón de diseño permite cambiar algoritmos en tiempo de ejecución?', 'Singleton', 'Factory', 'Strategy', 'Observer', 'c', 'El patrón Strategy define familia de algoritmos intercambiables. El cliente puede cambiar el algoritmo en tiempo de ejecución. Encapsula algoritmos y los hace intercambiables. Alternativa a condicionales complejos.'),

(7, 'En el ciclo de vida del software, ¿qué fase verifica que el sistema funciona correctamente?', 'Análisis', 'Diseño', 'Implementación', 'Pruebas', 'd', 'La fase de pruebas verifica que el sistema funciona correctamente, cumple requisitos y está libre de defectos. Incluye: pruebas unitarias, integración, sistema, aceptación. Identifica y corrige bugs antes de producción.'),

(7, '¿Qué es code review?', 'Escribir código', 'Revisión de código por otros desarrolladores', 'Eliminar código', 'Documentar código', 'b', 'Code review es la revisión de código por otros desarrolladores antes de integrarlo. Mejora calidad, detecta bugs, comparte conocimiento, asegura estándares. Puede ser: pull request review, pair programming, inspecciones formales.'),

(7, 'En Scrum, ¿qué es el Sprint Backlog?', 'Lista de todos los requisitos', 'Lista de tareas para el sprint actual', 'Lista de bugs', 'Documentación', 'b', 'El Sprint Backlog es el conjunto de items del Product Backlog seleccionados para el sprint actual, más el plan para entregarlos. El equipo lo gestiona y actualiza diariamente. Es compromiso del equipo para el sprint.'),

(7, '¿Qué principio SOLID establece que las interfaces deben ser específicas para clientes?', 'Single Responsibility', 'Open/Closed', 'Liskov Substitution', 'Interface Segregation', 'd', 'Interface Segregation establece que los clientes no deben depender de interfaces que no usan. Es mejor tener interfaces específicas y pequeñas que una interfaz grande y general. Evita que cambios afecten a clientes que no usan esa funcionalidad.'),

(7, '¿Qué es un spike en desarrollo ágil?', 'Bug crítico', 'Investigación técnica time-boxed para reducir incertidumbre', 'Sprint largo', 'Reunión extra', 'b', 'Un spike es una investigación técnica time-boxed (limitada en tiempo) para reducir incertidumbre o riesgo. No produce código de producción. Ayuda a estimar mejor o tomar decisiones técnicas. Ejemplo: evaluar tecnología nueva.'),

(7, '¿Qué patrón de diseño asegura que una clase tenga solo una instancia?', 'Factory', 'Singleton', 'Prototype', 'Builder', 'b', 'El patrón Singleton garantiza que una clase tenga una única instancia global y proporciona punto de acceso global. Útil para: configuración, logging, pools de conexiones. Debe usarse con cuidado por problemas de testing y concurrencia.'),

(7, 'En metodologías ágiles, ¿qué es un burndown chart?', 'Gráfico de bugs', 'Gráfico que muestra trabajo restante vs tiempo', 'Gráfico de velocidad', 'Gráfico de costes', 'b', 'Un burndown chart muestra el trabajo restante (eje Y) vs tiempo (eje X) durante un sprint. Permite visualizar progreso y predecir si se completará el trabajo. La línea ideal es recta descendente. Desviaciones indican problemas.'),

(7, '¿Qué es el principio de inversión de control (IoC)?', 'Controlar todo desde un punto', 'El framework llama al código del usuario, no al revés', 'No usar control de flujo', 'Invertir la lógica', 'b', 'Inversión de Control (IoC) invierte el flujo de control: el framework llama al código del usuario, no al revés. Dependency Injection es una forma de IoC. Desacopla componentes y facilita testing.'),

(7, '¿Qué tipo de prueba verifica un componente aislado?', 'Pruebas unitarias', 'Pruebas de integración', 'Pruebas de sistema', 'Pruebas de aceptación', 'a', 'Las pruebas unitarias verifican componentes individuales (funciones, métodos, clases) de forma aislada. Usan mocks/stubs para dependencias. Son rápidas, automatizables y base de la pirámide de testing. Deben ser independientes entre sí.'),

(7, 'En Scrum, ¿quién facilita el proceso y elimina impedimentos?', 'Product Owner', 'Scrum Master', 'Development Team', 'Stakeholders', 'b', 'El Scrum Master facilita el proceso Scrum, elimina impedimentos, protege al equipo de interrupciones y ayuda a mejorar. No es jefe del equipo. Es servant-leader. Asegura que Scrum se entiende y practica correctamente.'),

(7, '¿Qué es BDD (Behavior-Driven Development)?', 'Desarrollo sin tests', 'Desarrollo guiado por comportamiento con escenarios en lenguaje natural', 'Desarrollo de bases de datos', 'Desarrollo de backend', 'b', 'BDD extiende TDD enfocándose en comportamiento del sistema desde perspectiva del usuario. Usa lenguaje natural (Given-When-Then) para escenarios. Herramientas: Cucumber, SpecFlow. Mejora colaboración entre técnicos y no técnicos.'),

(7, '¿Qué patrón de diseño crea objetos sin especificar su clase exacta?', 'Singleton', 'Factory', 'Observer', 'Strategy', 'b', 'El patrón Factory crea objetos sin especificar su clase exacta. Encapsula la creación de objetos. Tipos: Simple Factory, Factory Method, Abstract Factory. Útil cuando la creación es compleja o debe decidirse en runtime.'),

(7, 'En desarrollo de software, ¿qué es un mock?', 'Prototipo visual', 'Objeto simulado para testing que verifica interacciones', 'Documentación', 'Base de datos de prueba', 'b', 'Un mock es un objeto simulado usado en testing que verifica que se llamaron métodos específicos con parámetros correctos. Diferente de stub (devuelve datos predefinidos). Usado en pruebas unitarias para aislar componente bajo test.'),

(7, '¿Qué es continuous integration (CI)?', 'Integrar código una vez al mes', 'Integrar código frecuentemente con tests automáticos', 'No integrar código', 'Integrar solo en producción', 'b', 'Continuous Integration integra código frecuentemente (varias veces al día) en repositorio compartido. Cada integración se verifica con build y tests automáticos. Detecta problemas rápido. Reduce riesgos de integración.'),

(7, 'En Scrum, ¿qué es la Definition of Done?', 'Fecha de entrega', 'Criterios que debe cumplir un item para considerarse completo', 'Lista de bugs', 'Documentación final', 'b', 'La Definition of Done es el conjunto de criterios que un item debe cumplir para considerarse completo: código escrito, testeado, revisado, documentado, desplegado, etc. Es acuerdo del equipo. Asegura calidad consistente.'),

(7, '¿Qué principio establece "No implementes funcionalidad hasta que sea necesaria"?', 'DRY', 'KISS', 'YAGNI', 'SOLID', 'c', 'YAGNI (You Aren\'t Gonna Need It) establece no implementar funcionalidad hasta que sea realmente necesaria. Evita sobre-ingeniería, reduce complejidad y coste. Parte de Extreme Programming (XP) y filosofía ágil.'),

(7, '¿Qué es un antipatrón en desarrollo de software?', 'Patrón de diseño', 'Solución común pero inefectiva que causa más problemas', 'Metodología ágil', 'Tipo de test', 'b', 'Un antipatrón es una solución común a un problema que parece apropiada pero causa más problemas. Ejemplos: God Object (clase que hace todo), Spaghetti Code (código sin estructura), Copy-Paste Programming. Deben evitarse.'),

(7, 'En testing, ¿qué es la cobertura de código?', 'Número de líneas', 'Porcentaje de código ejecutado por tests', 'Número de bugs', 'Complejidad del código', 'b', 'La cobertura de código mide el porcentaje de código ejecutado por tests. Tipos: líneas, ramas, funciones, condiciones. 100% no garantiza ausencia de bugs, pero baja cobertura indica testing insuficiente. Meta típica: 70-80%.'),

(7, '¿Qué es el principio de separación de responsabilidades?', 'Todo en una clase', 'Dividir sistema en partes con responsabilidades distintas', 'No separar nada', 'Duplicar código', 'b', 'Separation of Concerns divide el sistema en partes distintas con responsabilidades específicas. Cada parte maneja un aspecto diferente. Mejora modularidad, mantenibilidad y permite cambios independientes. Base de arquitecturas en capas.');
