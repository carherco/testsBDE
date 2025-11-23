-- 50 preguntas difíciles sobre Fundamentos de Programación (Tema 3) basadas en temario.txt
-- Programación básica: introducción a la programación (Python, Java, C++)
-- Programación orientada a objetos: clases, objetos, herencia y polimorfismo
-- Estructuras de datos: listas, pilas, colas, árboles y grafos

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(3, '¿Cuál es la principal diferencia entre una lista y una tupla en Python?', 'Las listas son más rápidas', 'Las tuplas son inmutables', 'Las listas solo almacenan números', 'Las tuplas no pueden contener objetos', 'b', 'Las tuplas son inmutables (no se pueden modificar después de crearse), mientras que las listas son mutables. Esto hace que las tuplas sean más eficientes en memoria y puedan usarse como claves de diccionarios.'),

(3, 'En programación orientada a objetos, ¿qué principio permite que una clase hija acceda a métodos y atributos de la clase padre?', 'Encapsulación', 'Herencia', 'Polimorfismo', 'Abstracción', 'b', 'La herencia permite que una clase (hija o derivada) herede atributos y métodos de otra clase (padre o base), promoviendo la reutilización de código y estableciendo relaciones "es-un".'),

(3, '¿Qué estructura de datos sigue el principio LIFO (Last In, First Out)?', 'Cola', 'Lista enlazada', 'Pila', 'Árbol', 'c', 'Una pila (stack) sigue LIFO: el último elemento añadido es el primero en salir. Operaciones principales: push (añadir) y pop (extraer). Usado en recursión, evaluación de expresiones y backtracking.'),

(3, 'En Java, ¿qué palabra clave se usa para heredar de una clase?', 'inherits', 'extends', 'implements', 'derives', 'b', 'En Java, "extends" se usa para herencia de clases. "implements" se usa para implementar interfaces. Ejemplo: class Perro extends Animal. Java solo permite herencia simple de clases.'),

(3, '¿Qué complejidad temporal tiene la búsqueda en una lista enlazada simple?', 'O(1)', 'O(log n)', 'O(n)', 'O(n²)', 'c', 'Buscar en una lista enlazada simple requiere recorrer los nodos secuencialmente hasta encontrar el elemento, resultando en O(n). No hay acceso directo por índice como en arrays.'),

(3, 'En Python, ¿qué método se llama automáticamente al crear una instancia de una clase?', '__init__', '__new__', '__create__', '__construct__', 'a', '__init__ es el inicializador (constructor) en Python que se llama automáticamente al crear un objeto. __new__ se llama antes para crear la instancia, pero __init__ es el más usado para inicialización.'),

(3, '¿Qué es el polimorfismo en POO?', 'Múltiples constructores en una clase', 'Capacidad de objetos de diferentes clases de responder al mismo método', 'Ocultar detalles de implementación', 'Crear múltiples instancias', 'b', 'El polimorfismo permite que objetos de diferentes clases respondan al mismo mensaje (método) de manera específica. Ejemplo: método dibujar() implementado diferente en Círculo y Cuadrado.'),

(3, 'En C++, ¿qué operador se usa para acceder a miembros de un objeto a través de un puntero?', '.', '->', '::', '&', 'b', 'El operador -> se usa para acceder a miembros a través de punteros. El operador . se usa con objetos directos. :: es para resolución de ámbito. & es referencia.'),

(3, '¿Qué estructura de datos es más eficiente para implementar una cola de prioridad?', 'Array ordenado', 'Lista enlazada', 'Heap binario', 'Pila', 'c', 'Un heap binario (min-heap o max-heap) permite inserción O(log n) y extracción del mínimo/máximo O(log n), siendo óptimo para colas de prioridad. Arrays ordenados tienen inserción O(n).'),

(3, 'En Python, ¿qué estructura de datos NO permite elementos duplicados?', 'list', 'tuple', 'set', 'dict', 'c', 'Un set en Python es una colección no ordenada de elementos únicos. Automáticamente elimina duplicados. Es útil para operaciones de conjuntos (unión, intersección, diferencia).'),

(3, '¿Cuál es la complejidad temporal de insertar un elemento al final de un ArrayList en Java (caso promedio)?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'a', 'Insertar al final de un ArrayList es O(1) amortizado porque el array tiene capacidad extra. Solo cuando se llena requiere redimensionar (O(n)), pero esto ocurre raramente, resultando en O(1) promedio.'),

(3, 'En programación orientada a objetos, ¿qué es la encapsulación?', 'Heredar de múltiples clases', 'Ocultar detalles internos y exponer solo interfaz pública', 'Crear múltiples instancias', 'Sobrescribir métodos', 'b', 'La encapsulación oculta los detalles de implementación interna y expone solo una interfaz pública. Se logra con modificadores de acceso (private, protected, public) y getters/setters.'),

(3, '¿Qué tipo de árbol garantiza que la diferencia de altura entre subárboles izquierdo y derecho es como máximo 1?', 'Árbol binario', 'Árbol AVL', 'Árbol B', 'Árbol rojo-negro', 'b', 'Un árbol AVL es un árbol binario de búsqueda auto-balanceado donde la diferencia de altura entre subárboles es ≤1. Garantiza operaciones O(log n) mediante rotaciones al insertar/eliminar.'),

(3, 'En Java, ¿qué modificador de acceso hace que un miembro sea accesible solo dentro de la misma clase?', 'public', 'protected', 'private', 'default', 'c', 'private restringe el acceso solo a la misma clase. protected permite acceso en la clase, subclases y mismo paquete. public permite acceso desde cualquier lugar. default (sin modificador) permite acceso en el mismo paquete.'),

(3, '¿Qué algoritmo de ordenamiento tiene complejidad O(n log n) en el peor caso y es estable?', 'QuickSort', 'MergeSort', 'HeapSort', 'BubbleSort', 'b', 'MergeSort tiene O(n log n) en todos los casos y es estable (mantiene orden relativo de elementos iguales). QuickSort es O(n²) en peor caso. HeapSort es O(n log n) pero no estable.'),

(3, 'En Python, ¿qué método se usa para definir cómo se representa un objeto como string?', '__str__', '__repr__', '__format__', 'toString', 'a', '__str__ define la representación "informal" para usuarios (usado por print()). __repr__ define la representación "oficial" para desarrolladores. Ambos son útiles pero __str__ es para legibilidad humana.'),

(3, '¿Qué estructura de datos usa un HashMap en Java para resolver colisiones?', 'Array', 'Lista enlazada o árbol rojo-negro', 'Pila', 'Cola', 'b', 'HashMap usa chaining con listas enlazadas. Desde Java 8, cuando una lista crece mucho (>8 elementos), se convierte en árbol rojo-negro para mejorar rendimiento de O(n) a O(log n).'),

(3, 'En C++, ¿qué es un destructor?', 'Método que crea objetos', 'Método que se llama automáticamente al destruir un objeto', 'Método que copia objetos', 'Método estático', 'b', 'Un destructor (~NombreClase()) se llama automáticamente cuando un objeto sale de ámbito o se elimina. Se usa para liberar recursos (memoria, archivos, conexiones). Es fundamental en gestión de recursos.'),

(3, '¿Cuál es la complejidad temporal de buscar un elemento en un árbol binario de búsqueda balanceado?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'b', 'En un BST balanceado, la búsqueda es O(log n) porque en cada paso se descarta la mitad del árbol. En un BST degenerado (como lista), sería O(n).'),

(3, 'En programación orientada a objetos, ¿qué es una clase abstracta?', 'Clase que no puede tener métodos', 'Clase que no puede ser instanciada directamente', 'Clase sin atributos', 'Clase final', 'b', 'Una clase abstracta no puede instanciarse directamente y puede contener métodos abstractos (sin implementación) que las subclases deben implementar. Define un contrato para las clases derivadas.'),

(3, '¿Qué algoritmo de recorrido de árbol visita primero el nodo raíz?', 'Inorden', 'Preorden', 'Postorden', 'Por niveles', 'b', 'Preorden visita: raíz → izquierda → derecha. Inorden: izquierda → raíz → derecha. Postorden: izquierda → derecha → raíz. Por niveles (BFS) visita nivel por nivel.'),

(3, 'En Python, ¿qué es una list comprehension?', 'Método para ordenar listas', 'Forma concisa de crear listas', 'Tipo de lista inmutable', 'Algoritmo de búsqueda', 'b', 'List comprehension es sintaxis concisa para crear listas: [x**2 for x in range(10) if x % 2 == 0]. Es más legible y eficiente que bucles tradicionales para crear listas.'),

(3, '¿Qué estructura de datos es más adecuada para implementar un sistema de deshacer/rehacer?', 'Cola', 'Pila', 'Árbol', 'Grafo', 'b', 'Una pila es ideal para deshacer/rehacer porque mantiene el orden LIFO. Cada acción se apila, y deshacer extrae la última acción. Rehacer puede usar otra pila para las acciones deshechas.'),

(3, 'En Java, ¿qué palabra clave previene que una clase sea heredada?', 'static', 'final', 'abstract', 'sealed', 'b', 'final en una clase previene herencia. final en un método previene sobrescritura. final en una variable la hace constante. sealed (Java 17+) permite herencia solo de clases específicas.'),

(3, '¿Cuál es la complejidad espacial de MergeSort?', 'O(1)', 'O(log n)', 'O(n)', 'O(n²)', 'c', 'MergeSort requiere O(n) espacio adicional para el array temporal usado en la fase de merge. QuickSort in-place usa O(log n) espacio (stack de recursión). HeapSort usa O(1) espacio adicional.'),

(3, 'En C++, ¿qué es la sobrecarga de operadores?', 'Usar muchos operadores', 'Definir comportamiento personalizado para operadores', 'Error de compilación', 'Optimización del compilador', 'b', 'La sobrecarga de operadores permite definir cómo operadores (+, -, *, etc.) funcionan con tipos personalizados. Ejemplo: operator+ para sumar objetos Complejo. Mejora legibilidad del código.'),

(3, '¿Qué algoritmo de búsqueda en grafos encuentra el camino más corto en grafos con pesos positivos?', 'DFS', 'BFS', 'Dijkstra', 'Prim', 'c', 'Dijkstra encuentra el camino más corto desde un origen a todos los demás nodos en grafos con pesos no negativos. BFS funciona solo para grafos sin pesos. Bellman-Ford funciona con pesos negativos.'),

(3, 'En Python, ¿qué es un decorador?', 'Patrón de diseño', 'Función que modifica el comportamiento de otra función', 'Tipo de clase', 'Estructura de datos', 'b', 'Un decorador es una función que toma otra función y extiende su comportamiento sin modificarla explícitamente. Se usa con @decorador. Útil para logging, timing, autenticación, etc.'),

(3, '¿Qué estructura de datos usa BFS (Breadth-First Search) para recorrer un grafo?', 'Pila', 'Cola', 'Heap', 'Array', 'b', 'BFS usa una cola (FIFO) para explorar nodos por niveles. DFS usa una pila (LIFO) o recursión. BFS garantiza encontrar el camino más corto en grafos sin pesos.'),

(3, 'En Java, ¿qué es una interfaz?', 'Clase abstracta', 'Contrato que define métodos que una clase debe implementar', 'Tipo de herencia', 'Modificador de acceso', 'd', 'Una interfaz define un contrato (métodos sin implementación) que las clases deben implementar. Desde Java 8, puede tener métodos default con implementación. Permite "herencia múltiple" de comportamiento.'),

(3, '¿Cuál es la complejidad temporal de acceder a un elemento por índice en un array?', 'O(1)', 'O(log n)', 'O(n)', 'O(n²)', 'a', 'Acceder a un elemento por índice en un array es O(1) porque se calcula directamente la dirección de memoria: base_address + (index × element_size). No requiere recorrer elementos.'),

(3, 'En programación orientada a objetos, ¿qué es el polimorfismo de sobrecarga?', 'Múltiples métodos con el mismo nombre pero diferentes parámetros', 'Heredar de múltiples clases', 'Ocultar implementación', 'Crear instancias dinámicamente', 'a', 'Sobrecarga (overloading) permite múltiples métodos con el mismo nombre pero diferentes firmas (número/tipo de parámetros). Sobrescritura (overriding) es redefinir un método heredado.'),

(3, '¿Qué algoritmo de ordenamiento es más eficiente para arrays casi ordenados?', 'QuickSort', 'MergeSort', 'InsertionSort', 'HeapSort', 'c', 'InsertionSort es O(n) en el mejor caso (array casi ordenado) porque solo hace pocas comparaciones e intercambios. QuickSort y MergeSort son siempre O(n log n) mínimo.'),

(3, 'En Python, ¿qué método se usa para añadir un elemento al final de una lista?', 'add()', 'append()', 'push()', 'insert()', 'b', 'append() añade un elemento al final de la lista en O(1) amortizado. insert(index, elemento) inserta en posición específica. extend() añade múltiples elementos. push() no existe en listas Python.'),

(3, '¿Qué es un grafo dirigido?', 'Grafo sin ciclos', 'Grafo donde las aristas tienen dirección', 'Grafo conexo', 'Grafo con pesos', 'b', 'Un grafo dirigido (dígrafo) tiene aristas con dirección: A→B no implica B→A. Un grafo no dirigido tiene aristas bidireccionales. Los grafos pueden ser dirigidos/no dirigidos y ponderados/no ponderados independientemente.'),

(3, 'En C++, ¿qué es un constructor de copia?', 'Constructor sin parámetros', 'Constructor que crea una copia de un objeto existente', 'Constructor con múltiples parámetros', 'Destructor', 'b', 'Un constructor de copia crea un nuevo objeto como copia de otro existente: MiClase(const MiClase& otro). Se llama al pasar objetos por valor o al inicializar con otro objeto.'),

(3, '¿Cuál es la complejidad temporal de insertar un elemento en un heap binario?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'b', 'Insertar en un heap binario es O(log n) porque el elemento se añade al final y luego "sube" (heapify up) comparando con padres hasta restaurar la propiedad del heap.'),

(3, 'En Java, ¿qué colección NO permite elementos null?', 'ArrayList', 'LinkedList', 'TreeSet', 'HashMap', 'c', 'TreeSet no permite null porque usa compareTo() para ordenar elementos, y null.compareTo() lanzaría NullPointerException. ArrayList, LinkedList y HashMap sí permiten null.'),

(3, '¿Qué algoritmo de recorrido de grafo es más adecuado para detectar ciclos?', 'BFS', 'DFS', 'Dijkstra', 'Prim', 'b', 'DFS es ideal para detectar ciclos porque usa backtracking. Si durante DFS se encuentra un nodo ya visitado en el stack actual (no completado), hay un ciclo. BFS también puede detectar ciclos pero DFS es más natural.'),

(3, 'En Python, ¿qué estructura de datos es un diccionario?', 'Lista ordenada', 'Tabla hash', 'Árbol binario', 'Cola', 'b', 'Un diccionario en Python es una tabla hash que mapea claves a valores. Proporciona acceso O(1) promedio. Las claves deben ser inmutables (strings, números, tuplas).'),

(3, '¿Qué es la recursión en programación?', 'Bucle infinito', 'Función que se llama a sí misma', 'Herencia múltiple', 'Sobrecarga de métodos', 'b', 'La recursión es cuando una función se llama a sí misma. Requiere: caso base (condición de parada) y caso recursivo. Útil para problemas divisibles (factorial, Fibonacci, recorrido de árboles).'),

(3, 'En C++, ¿qué palabra clave se usa para crear una variable de clase (compartida por todas las instancias)?', 'shared', 'static', 'global', 'class', 'b', 'static en una variable de clase la hace compartida por todas las instancias. Solo existe una copia. static en métodos permite llamarlos sin instancia. static en variables locales mantiene valor entre llamadas.'),

(3, '¿Cuál es la complejidad temporal del algoritmo de Floyd-Warshall para encontrar caminos más cortos?', 'O(n²)', 'O(n² log n)', 'O(n³)', 'O(n⁴)', 'c', 'Floyd-Warshall encuentra caminos más cortos entre todos los pares de nodos en O(n³) usando programación dinámica. Es más simple que ejecutar Dijkstra n veces pero menos eficiente para grafos dispersos.'),

(3, 'En Java, ¿qué método se debe sobrescribir para usar objetos como claves en HashMap?', 'toString()', 'equals() y hashCode()', 'compareTo()', 'clone()', 'b', 'Para usar objetos como claves en HashMap, se deben sobrescribir equals() y hashCode() consistentemente. Si dos objetos son equals, deben tener el mismo hashCode. Esto garantiza el correcto funcionamiento del HashMap.'),

(3, '¿Qué estructura de datos es más eficiente para verificar si un elemento existe?', 'Array no ordenado', 'Lista enlazada', 'HashSet', 'Pila', 'c', 'HashSet proporciona verificación de existencia en O(1) promedio usando tabla hash. Array no ordenado y lista enlazada requieren O(n). Array ordenado con búsqueda binaria es O(log n).'),

(3, 'En Python, ¿qué es el "duck typing"?', 'Tipo de herencia', 'Si camina como pato y grazna como pato, es un pato (tipo determinado por comportamiento)', 'Error de tipo', 'Conversión de tipos', 'b', 'Duck typing es un concepto de tipado dinámico: el tipo de un objeto se determina por sus métodos/atributos, no por su clase. "Si tiene método quack(), es un pato". Python usa duck typing extensivamente.'),

(3, '¿Qué algoritmo de ordenamiento es in-place y tiene complejidad O(n log n) promedio?', 'MergeSort', 'QuickSort', 'BubbleSort', 'CountingSort', 'b', 'QuickSort es in-place (O(log n) espacio para recursión) y O(n log n) promedio. MergeSort requiere O(n) espacio adicional. QuickSort es O(n²) en peor caso pero con buena elección de pivot es muy eficiente.'),

(3, 'En programación orientada a objetos, ¿qué es la composición?', 'Heredar de múltiples clases', 'Una clase contiene instancias de otras clases', 'Sobrescribir métodos', 'Crear interfaces', 'b', 'La composición es una relación "tiene-un" donde una clase contiene objetos de otras clases. Es alternativa a herencia y más flexible. Ejemplo: Coche tiene Motor, Ruedas. Favorece composición sobre herencia.'),

(3, '¿Cuál es la complejidad temporal de eliminar un elemento de un heap binario?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'b', 'Eliminar el elemento raíz (mínimo/máximo) de un heap es O(log n): se reemplaza con el último elemento y se hace heapify down. Eliminar un elemento arbitrario también es O(log n) si se conoce su posición.');
