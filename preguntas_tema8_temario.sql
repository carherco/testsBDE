-- 50 preguntas difíciles sobre Diseño e Implementación de Interfaces de Usuario (Tema 8) basadas en temario.txt
-- Principios de diseño de interfaces de usuario (UI/UX)
-- Herramientas y tecnologías para el desarrollo de interfaces (HTML, CSS, JavaScript, frameworks como React o Angular)

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(8, '¿Qué significa UX en diseño de interfaces?', 'User Experience', 'User Extension', 'Universal Experience', 'Unified Extension', 'a', 'UX (User Experience) es la experiencia completa del usuario al interactuar con un producto. Incluye usabilidad, accesibilidad, emociones y satisfacción. UI (User Interface) es la interfaz visual. UX es más amplio que UI.'),

(8, 'En diseño UI, ¿qué es la jerarquía visual?', 'Orden de elementos en código', 'Organización de elementos para guiar la atención del usuario', 'Estructura de carpetas', 'Orden alfabético', 'b', 'La jerarquía visual organiza elementos para guiar la atención del usuario hacia lo más importante. Se logra con: tamaño, color, contraste, posición, espaciado. Ejemplo: títulos grandes, botones destacados, información secundaria más pequeña.'),

(8, '¿Qué propiedad CSS controla el espaciado interno de un elemento?', 'margin', 'padding', 'border', 'spacing', 'b', 'padding controla el espaciado interno (entre contenido y borde). margin controla el espaciado externo (entre elementos). border es el borde. El modelo de caja CSS: content → padding → border → margin.'),

(8, 'En React, ¿qué hook se usa para gestionar estado en componentes funcionales?', 'useEffect', 'useState', 'useContext', 'useReducer', 'b', 'useState es el hook básico para gestionar estado en componentes funcionales de React. Devuelve [valor, función_setter]. useEffect maneja efectos secundarios. useContext accede a contexto. useReducer es para estado complejo.'),

(8, '¿Qué es el diseño responsive?', 'Diseño rápido', 'Diseño que se adapta a diferentes tamaños de pantalla', 'Diseño con animaciones', 'Diseño colorido', 'b', 'El diseño responsive se adapta a diferentes tamaños de pantalla (móvil, tablet, desktop) usando media queries, grids flexibles e imágenes fluidas. Mobile-first diseña primero para móvil y luego escala.'),

(8, 'En CSS, ¿qué propiedad se usa para crear layouts flexibles?', 'float', 'display: flex', 'position', 'table', 'b', 'display: flex activa Flexbox, un sistema de layout unidimensional (fila o columna) muy potente. Propiedades: justify-content, align-items, flex-direction. CSS Grid es para layouts bidimensionales.'),

(8, '¿Qué es la accesibilidad web (a11y)?', 'Diseño bonito', 'Hacer sitios web usables para personas con discapacidades', 'Velocidad de carga', 'Compatibilidad con navegadores', 'b', 'La accesibilidad (a11y) hace sitios web usables para personas con discapacidades (visuales, auditivas, motoras, cognitivas). Incluye: texto alternativo, navegación por teclado, contraste, ARIA labels. WCAG son las guías estándar.'),

(8, 'En JavaScript, ¿qué método se usa para seleccionar un elemento por ID?', 'getElementById()', 'querySelector()', 'getElement()', 'Ambas a y b', 'd', 'getElementById("id") y querySelector("#id") seleccionan elementos por ID. querySelector es más versátil (acepta cualquier selector CSS). querySelectorAll selecciona múltiples elementos.'),

(8, '¿Qué framework JavaScript usa Virtual DOM?', 'Angular', 'React', 'Vue', 'Ambas b y c', 'd', 'React y Vue usan Virtual DOM: representación en memoria del DOM real. Comparan cambios y actualizan solo lo necesario, mejorando rendimiento. Angular usa detección de cambios diferente (Zone.js).'),

(8, 'En diseño UI, ¿qué es el contraste?', 'Diferencia entre elementos para hacerlos distinguibles', 'Color de fondo', 'Tamaño de fuente', 'Espaciado', 'a', 'El contraste es la diferencia visual entre elementos (color, tamaño, forma) que los hace distinguibles. Importante para legibilidad y accesibilidad. WCAG requiere ratio mínimo de contraste 4.5:1 para texto normal.'),

(8, '¿Qué es un wireframe?', 'Código HTML', 'Boceto de baja fidelidad de la estructura de una interfaz', 'Diseño final', 'Base de datos', 'b', 'Un wireframe es un boceto de baja fidelidad que muestra la estructura, layout y jerarquía de una interfaz sin detalles visuales. Se centra en funcionalidad y flujo. Mockups son de alta fidelidad con diseño visual.'),

(8, 'En CSS Grid, ¿qué propiedad define las columnas?', 'grid-columns', 'grid-template-columns', 'columns', 'grid-cols', 'b', 'grid-template-columns define el número y tamaño de columnas en CSS Grid. Ejemplo: grid-template-columns: 1fr 2fr 1fr (3 columnas). grid-template-rows define filas. CSS Grid es bidimensional.'),

(8, '¿Qué es el principio de consistencia en diseño UI?', 'Usar colores diferentes', 'Mantener patrones y comportamientos similares en toda la interfaz', 'Cambiar diseño frecuentemente', 'No usar estándares', 'b', 'La consistencia mantiene patrones visuales y comportamientos similares en toda la interfaz. Reduce curva de aprendizaje y errores. Incluye: colores, tipografía, iconos, interacciones. Los design systems promueven consistencia.'),

(8, 'En React, ¿qué son los props?', 'Propiedades CSS', 'Datos pasados de componente padre a hijo', 'Estado interno', 'Eventos', 'b', 'Props (properties) son datos pasados de componente padre a hijo en React. Son inmutables (read-only) en el hijo. Permiten reutilización de componentes. El estado (state) es interno y mutable.'),

(8, '¿Qué es el principio de Fitts en diseño de interfaces?', 'Ley de colores', 'El tiempo para alcanzar un objetivo depende de su tamaño y distancia', 'Ley de tipografía', 'Ley de animaciones', 'b', 'La Ley de Fitts establece que el tiempo para alcanzar un objetivo es función de su tamaño y distancia. Implicaciones: botones importantes deben ser grandes y cercanos, esquinas de pantalla son fáciles de alcanzar (distancia infinita).'),

(8, 'En HTML5, ¿qué etiqueta define una sección de navegación?', '<div>', '<nav>', '<section>', '<header>', 'b', '<nav> define sección de navegación (menús, enlaces). Es semántica y mejora accesibilidad. Otras etiquetas semánticas: <header>, <footer>, <article>, <section>, <aside>. Mejoran SEO y accesibilidad.'),

(8, '¿Qué es un design system?', 'Sistema operativo', 'Colección de componentes, patrones y guías reutilizables', 'Base de datos', 'Framework', 'b', 'Un design system es una colección de componentes reutilizables, patrones de diseño, guías de estilo y principios que aseguran consistencia. Ejemplos: Material Design (Google), Human Interface Guidelines (Apple). Incluye: colores, tipografía, componentes, código.'),

(8, 'En CSS, ¿qué unidad es relativa al tamaño de fuente del elemento padre?', 'px', 'em', 'pt', 'cm', 'b', 'em es relativa al tamaño de fuente del elemento padre. rem es relativa al elemento raíz (html). px es absoluta. % es relativa al contenedor. em y rem son mejores para diseño responsive.'),

(8, '¿Qué es el principio de proximidad en diseño?', 'Elementos cercanos se perciben como relacionados', 'Usar colores similares', 'Alinear elementos', 'Usar mismo tamaño', 'a', 'El principio de proximidad (Gestalt) establece que elementos cercanos se perciben como relacionados. Agrupar elementos relacionados y separar los no relacionados mejora comprensión. Parte de los principios de Gestalt.'),

(8, 'En Angular, ¿qué se usa para enlazar datos del componente a la vista?', 'Props', 'Data binding', 'Hooks', 'Context', 'b', 'Angular usa data binding para enlazar datos entre componente y vista. Tipos: interpolación {{}}, property binding [], event binding (), two-way binding [()]. Es bidireccional por defecto.'),

(8, '¿Qué es el Mobile-First approach?', 'Diseñar solo para móvil', 'Diseñar primero para móvil y luego escalar a desktop', 'Diseñar solo para desktop', 'Ignorar móviles', 'b', 'Mobile-First diseña primero para móvil (pantallas pequeñas, conexiones lentas) y luego añade funcionalidad para pantallas más grandes. Usa media queries con min-width. Mejora rendimiento y prioriza contenido esencial.'),

(8, 'En CSS, ¿qué propiedad controla el orden de apilamiento de elementos?', 'stack', 'z-index', 'layer', 'order', 'b', 'z-index controla el orden de apilamiento (eje Z) de elementos posicionados. Valores mayores están encima. Solo funciona con position: relative, absolute, fixed o sticky. order es para Flexbox.'),

(8, '¿Qué es un componente en frameworks modernos?', 'Base de datos', 'Pieza reutilizable de UI con lógica encapsulada', 'Servidor', 'Archivo CSS', 'b', 'Un componente es una pieza reutilizable de UI con lógica encapsulada. Puede tener estado, props, eventos. Promueve reutilización y modularidad. React, Vue y Angular son basados en componentes.'),

(8, '¿Qué es el principio de feedback en UX?', 'No responder al usuario', 'Informar al usuario sobre el resultado de sus acciones', 'Ignorar errores', 'Ocultar información', 'b', 'El feedback informa al usuario sobre el resultado de sus acciones. Ejemplos: spinners al cargar, mensajes de éxito/error, cambios visuales al hacer hover. Reduce incertidumbre y mejora experiencia.'),

(8, 'En JavaScript, ¿qué es el Event Bubbling?', 'Crear eventos', 'Propagación de eventos desde elemento hijo hacia padres', 'Eliminar eventos', 'Eventos asíncronos', 'b', 'Event Bubbling es la propagación de eventos desde el elemento objetivo hacia sus ancestros. Ejemplo: click en botón → div → body → html. stopPropagation() detiene la propagación. Event Capturing es el proceso inverso.'),

(8, '¿Qué es la regla de los tercios en diseño?', 'Dividir en 3 partes iguales', 'Dividir en cuadrícula 3x3 y colocar elementos importantes en intersecciones', 'Usar 3 colores', 'Tener 3 páginas', 'b', 'La regla de los tercios divide el espacio en cuadrícula 3x3. Colocar elementos importantes en las intersecciones o líneas crea composiciones más interesantes y equilibradas. Usada en fotografía y diseño.'),

(8, 'En React, ¿qué hook se usa para efectos secundarios?', 'useState', 'useEffect', 'useContext', 'useMemo', 'b', 'useEffect maneja efectos secundarios: llamadas API, suscripciones, manipulación DOM. Se ejecuta después del render. Puede tener dependencias y función de limpieza. useState gestiona estado.'),

(8, '¿Qué es ARIA en accesibilidad web?', 'Framework JavaScript', 'Accessible Rich Internet Applications - atributos para mejorar accesibilidad', 'Lenguaje de programación', 'Base de datos', 'b', 'ARIA (Accessible Rich Internet Applications) son atributos HTML que mejoran accesibilidad de contenido dinámico. Ejemplos: aria-label, aria-hidden, role. Comunican información a lectores de pantalla. Complementan HTML semántico.'),

(8, '¿Qué es el principio de Hick en diseño de interfaces?', 'Más opciones = decisión más rápida', 'Más opciones = decisión más lenta', 'Opciones no afectan decisión', 'Siempre dar muchas opciones', 'b', 'La Ley de Hick establece que el tiempo de decisión aumenta con el número de opciones. Implicaciones: simplificar menús, agrupar opciones, usar valores por defecto, progressive disclosure (mostrar opciones gradualmente).'),

(8, 'En CSS, ¿qué es Flexbox mejor para?', 'Layouts bidimensionales', 'Layouts unidimensionales (fila o columna)', 'Animaciones', 'Tipografía', 'b', 'Flexbox es ideal para layouts unidimensionales (fila o columna). Distribuye espacio y alinea elementos fácilmente. CSS Grid es mejor para layouts bidimensionales (filas y columnas simultáneas). Pueden combinarse.'),

(8, '¿Qué es el contraste de color mínimo recomendado por WCAG para texto normal?', '3:1', '4.5:1', '7:1', '10:1', 'b', 'WCAG 2.1 requiere ratio de contraste mínimo 4.5:1 para texto normal (nivel AA). Para texto grande (18pt+ o 14pt+ bold): 3:1. Para nivel AAA: 7:1 texto normal, 4.5:1 texto grande. Mejora legibilidad y accesibilidad.'),

(8, 'En Vue.js, ¿qué directiva se usa para renderizado condicional?', 'v-show', 'v-if', 'v-for', 'Ambas a y b', 'd', 'v-if y v-show hacen renderizado condicional. v-if añade/elimina del DOM (más costoso pero no renderiza). v-show usa display:none (menos costoso pero siempre en DOM). v-for es para listas.'),

(8, '¿Qué es el principio de affordance en diseño?', 'Precio del producto', 'Características que sugieren cómo usar un elemento', 'Color del elemento', 'Tamaño del elemento', 'b', 'Affordance son características que sugieren cómo usar un elemento. Ejemplos: botones parecen presionables (sombras, bordes), enlaces están subrayados, campos de texto tienen borde. Reduce necesidad de instrucciones.'),

(8, 'En HTML, ¿qué atributo hace un campo de formulario obligatorio?', 'mandatory', 'required', 'needed', 'must', 'b', 'El atributo required hace un campo obligatorio. El navegador valida antes de enviar. Ejemplo: <input type="email" required>. Otros atributos de validación: pattern, min, max, minlength, maxlength.'),

(8, '¿Qué es el white space (espacio en blanco) en diseño?', 'Espacio desperdiciado', 'Espacio vacío que mejora legibilidad y enfoque', 'Error de diseño', 'Fondo blanco', 'b', 'El white space (espacio negativo) es espacio vacío alrededor de elementos. No es desperdicio: mejora legibilidad, enfoque, jerarquía y elegancia. Diseños con buen white space parecen más profesionales.'),

(8, 'En JavaScript, ¿qué es async/await?', 'Bucle', 'Sintaxis para manejar promesas de forma síncrona', 'Tipo de variable', 'Framework', 'b', 'async/await es sintaxis para manejar promesas de forma más legible (parece código síncrono). async declara función asíncrona. await espera resolución de promesa. Maneja errores con try/catch. Alternativa a .then().catch().'),

(8, '¿Qué es el principio de Miller (7±2)?', 'Usar 7 colores', 'La memoria de trabajo puede retener 7±2 elementos', 'Tener 7 páginas', 'Usar fuente tamaño 7', 'b', 'El principio de Miller establece que la memoria de trabajo puede retener 7±2 elementos. Implicaciones: limitar opciones de menú, agrupar información (chunking), no sobrecargar al usuario. Algunos estudios sugieren 4±1 es más preciso.'),

(8, 'En CSS, ¿qué es un media query?', 'Consulta a base de datos', 'Regla CSS que aplica estilos según características del dispositivo', 'Tipo de imagen', 'Framework', 'b', 'Media queries aplican estilos CSS según características del dispositivo: ancho de pantalla, orientación, resolución. Fundamentales para diseño responsive. Ejemplo: @media (min-width: 768px) { ... }'),

(8, '¿Qué es el principio de reconocimiento vs recuerdo en UX?', 'Memorizar todo', 'Es más fácil reconocer que recordar - mostrar opciones en lugar de pedir que las recuerden', 'Ocultar opciones', 'Usar solo texto', 'b', 'Reconocimiento vs recuerdo: es más fácil reconocer opciones que recordarlas. Implicaciones: usar menús en lugar de comandos, autocompletar, sugerencias, iconos con labels. Reduce carga cognitiva.'),

(8, 'En React, ¿qué es el Virtual DOM?', 'DOM real', 'Representación en memoria del DOM que optimiza actualizaciones', 'Base de datos', 'Servidor', 'b', 'El Virtual DOM es representación en memoria del DOM real. React compara cambios (diffing) y actualiza solo lo necesario (reconciliation). Mejora rendimiento evitando manipulación directa del DOM (costosa).'),

(8, '¿Qué es la tipografía responsive?', 'Fuentes que cambian de color', 'Tamaños de fuente que se adaptan al tamaño de pantalla', 'Fuentes animadas', 'Fuentes en negrita', 'b', 'La tipografía responsive adapta tamaños de fuente al tamaño de pantalla para legibilidad óptima. Técnicas: media queries, unidades relativas (rem, em), viewport units (vw, vh), clamp(). Mejora legibilidad en todos los dispositivos.'),

(8, 'En Angular, ¿qué son los servicios?', 'Componentes visuales', 'Clases que encapsulan lógica de negocio reutilizable', 'Estilos CSS', 'Plantillas HTML', 'b', 'Los servicios en Angular son clases que encapsulan lógica de negocio, llamadas API, estado compartido. Se inyectan en componentes (Dependency Injection). Promueven reutilización y separación de responsabilidades.'),

(8, '¿Qué es el principio de Gestalt en diseño?', 'Ley de colores', 'Principios de cómo percibimos patrones y organizamos información visual', 'Ley de tipografía', 'Ley de animaciones', 'b', 'Los principios de Gestalt describen cómo percibimos patrones visuales: proximidad, similitud, continuidad, cierre, figura-fondo. Ayudan a crear diseños que el cerebro procesa fácilmente. Fundamentales en diseño UI.'),

(8, 'En CSS, ¿qué propiedad crea animaciones?', 'animate', 'animation', 'transition', 'Ambas b y c', 'd', 'animation crea animaciones complejas con @keyframes. transition anima cambios de propiedades CSS. animation es más potente (múltiples pasos, loops). transition es más simple (estado A → estado B).'),

(8, '¿Qué es el progressive disclosure en UX?', 'Mostrar todo a la vez', 'Mostrar información gradualmente según necesidad', 'Ocultar toda la información', 'Mostrar información aleatoria', 'b', 'Progressive disclosure muestra información gradualmente según necesidad del usuario. Reduce complejidad inicial, evita sobrecarga cognitiva. Ejemplos: acordeones, tabs, "ver más", wizards paso a paso.'),

(8, 'En JavaScript, ¿qué es el DOM?', 'Base de datos', 'Document Object Model - representación de la estructura HTML', 'Framework', 'Servidor', 'b', 'El DOM (Document Object Model) es representación en árbol de la estructura HTML. JavaScript puede manipularlo: añadir/eliminar elementos, cambiar estilos, manejar eventos. Es la interfaz entre HTML y JavaScript.'),

(8, '¿Qué es el principio de consistencia externa en diseño?', 'Ser diferente a todo', 'Seguir convenciones y patrones establecidos en la industria', 'Cambiar constantemente', 'Ignorar estándares', 'b', 'La consistencia externa sigue convenciones y patrones establecidos (iconos estándar, posición de elementos, comportamientos). Reduce curva de aprendizaje porque usuarios ya conocen estos patrones. Complementa consistencia interna.'),

(8, 'En React, ¿qué es JSX?', 'Lenguaje de base de datos', 'Extensión de sintaxis que permite escribir HTML en JavaScript', 'Framework CSS', 'Servidor', 'b', 'JSX (JavaScript XML) es extensión de sintaxis que permite escribir HTML en JavaScript. Se transpila a JavaScript puro. Ejemplo: const element = <h1>Hola</h1>. Hace el código más legible y permite usar expresiones JavaScript.'),

(8, '¿Qué es el principio de Pareto (80/20) aplicado a UX?', '80% de usuarios usan 20% de funcionalidades', '20% de usuarios usan 80% de funcionalidades', 'Usar 80% de la pantalla', 'Tener 80 páginas', 'a', 'El principio de Pareto aplicado a UX: 80% de usuarios usan 20% de funcionalidades. Implicaciones: priorizar funcionalidades más usadas, hacer accesibles las comunes, ocultar las raras. Optimizar para casos de uso frecuentes.');
