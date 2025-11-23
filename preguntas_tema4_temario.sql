-- 50 preguntas difíciles sobre Bases de Datos (Tema 4) basadas en temario.txt
-- Modelado de bases de datos: diseño de bases de datos y normalización
-- SQL y bases de datos relacionales: consultas básicas y avanzadas, gestión de bases de datos
-- Bases de datos no relacionales: NoSQL, casos de uso, tecnologías (MongoDB, Cassandra)

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(4, '¿Qué forma normal elimina las dependencias transitivas?', 'Primera forma normal (1NF)', 'Segunda forma normal (2NF)', 'Tercera forma normal (3NF)', 'Forma normal de Boyce-Codd (BCNF)', 'c', 'La tercera forma normal (3NF) elimina dependencias transitivas: si A→B y B→C, entonces A→C es transitiva. 3NF requiere que todos los atributos no clave dependan solo de la clave primaria, no de otros atributos no clave.'),

(4, 'En SQL, ¿qué cláusula se usa para filtrar resultados después de agrupar?', 'WHERE', 'HAVING', 'FILTER', 'GROUP BY', 'b', 'HAVING filtra grupos después de GROUP BY, puede usar funciones agregadas (COUNT, SUM, AVG). WHERE filtra filas antes de agrupar y no puede usar funciones agregadas. Ejemplo: HAVING COUNT(*) > 5.'),

(4, '¿Qué tipo de JOIN devuelve todas las filas de ambas tablas, incluyendo las que no tienen coincidencias?', 'INNER JOIN', 'LEFT JOIN', 'FULL OUTER JOIN', 'CROSS JOIN', 'c', 'FULL OUTER JOIN devuelve todas las filas de ambas tablas. Las filas sin coincidencia tienen NULL en las columnas de la otra tabla. INNER JOIN solo coincidencias, LEFT/RIGHT JOIN todas de una tabla.'),

(4, 'En normalización, ¿qué es una dependencia funcional?', 'Relación entre tablas', 'Relación donde un atributo determina otro', 'Tipo de índice', 'Restricción de integridad', 'b', 'Una dependencia funcional A→B significa que el valor de A determina únicamente el valor de B. Es fundamental para normalización. Ejemplo: DNI→Nombre (el DNI determina el nombre de forma única).'),

(4, '¿Qué base de datos NoSQL es orientada a documentos?', 'Redis', 'MongoDB', 'Cassandra', 'Neo4j', 'b', 'MongoDB es una base de datos orientada a documentos que almacena datos en formato JSON/BSON. Redis es clave-valor, Cassandra es columnar, Neo4j es de grafos.'),

(4, 'En SQL, ¿qué comando se usa para modificar la estructura de una tabla existente?', 'UPDATE', 'MODIFY', 'ALTER TABLE', 'CHANGE TABLE', 'c', 'ALTER TABLE modifica la estructura: añadir/eliminar columnas, cambiar tipos, añadir restricciones. UPDATE modifica datos, no estructura. Ejemplo: ALTER TABLE usuarios ADD COLUMN edad INT.'),

(4, '¿Qué propiedad ACID garantiza que una transacción se ejecuta completamente o no se ejecuta?', 'Atomicidad', 'Consistencia', 'Aislamiento', 'Durabilidad', 'a', 'Atomicidad garantiza que una transacción es indivisible: todas las operaciones se completan o ninguna. Si falla una operación, se hace rollback de todas. Es el principio de "todo o nada".'),

(4, 'En MongoDB, ¿cómo se llama el equivalente a una tabla en bases de datos relacionales?', 'Document', 'Collection', 'Database', 'Schema', 'b', 'En MongoDB, una collection es equivalente a una tabla. Contiene documentos (equivalentes a filas). No tiene esquema fijo, permitiendo documentos con diferentes campos en la misma collection.'),

(4, '¿Qué tipo de índice permite búsquedas de texto completo?', 'B-Tree', 'Hash', 'Full-text', 'Bitmap', 'c', 'Los índices full-text permiten búsquedas de texto completo con operadores como MATCH AGAINST en MySQL. Indexan palabras individuales y permiten búsquedas por relevancia, frases, booleanas.'),

(4, 'En SQL, ¿qué operador se usa para combinar resultados de múltiples SELECT eliminando duplicados?', 'JOIN', 'UNION', 'UNION ALL', 'MERGE', 'b', 'UNION combina resultados de múltiples SELECT eliminando duplicados. UNION ALL incluye duplicados (más rápido). Las consultas deben tener mismo número y tipo de columnas.'),

(4, '¿Qué nivel de aislamiento de transacciones previene lecturas sucias pero permite lecturas no repetibles?', 'READ UNCOMMITTED', 'READ COMMITTED', 'REPEATABLE READ', 'SERIALIZABLE', 'b', 'READ COMMITTED previene dirty reads (leer datos no confirmados) pero permite non-repeatable reads (misma consulta devuelve diferentes resultados). Es el nivel por defecto en muchos SGBD.'),

(4, 'En diseño de bases de datos, ¿qué es una clave foránea?', 'Clave primaria de otra tabla', 'Campo que referencia la clave primaria de otra tabla', 'Índice único', 'Campo obligatorio', 'b', 'Una clave foránea (foreign key) es un campo que referencia la clave primaria de otra tabla, estableciendo relaciones entre tablas. Garantiza integridad referencial: no puede haber valores que no existan en la tabla referenciada.'),

(4, '¿Qué comando SQL elimina todos los datos de una tabla pero mantiene su estructura?', 'DROP TABLE', 'DELETE FROM', 'TRUNCATE TABLE', 'REMOVE TABLE', 'c', 'TRUNCATE TABLE elimina todos los datos rápidamente pero mantiene la estructura. Es más rápido que DELETE porque no genera logs por fila. DROP TABLE elimina tabla y estructura.'),

(4, 'En Cassandra, ¿qué modelo de datos se utiliza?', 'Documentos', 'Clave-valor', 'Columnar (wide-column)', 'Grafos', 'c', 'Cassandra usa un modelo columnar (wide-column store) donde los datos se organizan en familias de columnas. Es distribuida, sin punto único de fallo, optimizada para escrituras masivas.'),

(4, '¿Qué cláusula SQL limita el número de filas devueltas?', 'TOP', 'LIMIT', 'ROWNUM', 'Depende del SGBD', 'd', 'La sintaxis varía: MySQL usa LIMIT, SQL Server usa TOP, Oracle usa ROWNUM o FETCH FIRST. PostgreSQL usa LIMIT. Es importante conocer las diferencias entre SGBD.'),

(4, 'En normalización, ¿qué problema resuelve la segunda forma normal (2NF)?', 'Dependencias transitivas', 'Dependencias parciales', 'Valores multivaluados', 'Redundancia total', 'b', '2NF elimina dependencias parciales: cuando un atributo no clave depende solo de parte de una clave compuesta. Requiere estar en 1NF y que todos los atributos no clave dependan de toda la clave primaria.'),

(4, '¿Qué tipo de base de datos NoSQL es más adecuada para redes sociales y relaciones complejas?', 'Documentos', 'Clave-valor', 'Columnar', 'Grafos', 'd', 'Las bases de datos de grafos (como Neo4j) son ideales para modelar relaciones complejas: redes sociales, recomendaciones, detección de fraude. Usan nodos, relaciones y propiedades.'),

(4, 'En SQL, ¿qué función devuelve el número de filas en un grupo?', 'SUM()', 'COUNT()', 'AVG()', 'TOTAL()', 'b', 'COUNT() cuenta filas. COUNT(*) cuenta todas las filas, COUNT(columna) cuenta filas no NULL. COUNT(DISTINCT columna) cuenta valores únicos. Es una función agregada usada con GROUP BY.'),

(4, '¿Qué es un índice clustered en bases de datos?', 'Índice que agrupa datos físicamente según el orden del índice', 'Índice en múltiples columnas', 'Índice único', 'Índice temporal', 'a', 'Un índice clustered ordena físicamente los datos en disco según el índice. Solo puede haber uno por tabla. Los índices non-clustered son estructuras separadas con punteros a los datos.'),

(4, 'En MongoDB, ¿qué operador se usa para buscar documentos que coincidan con un patrón de texto?', '$match', '$regex', '$text', '$search', 'b', '$regex permite búsquedas con expresiones regulares en MongoDB. $text usa índices full-text. $match filtra documentos en aggregation pipeline. Ejemplo: {nombre: {$regex: /^Juan/i}}.'),

(4, '¿Qué propiedad ACID garantiza que los cambios confirmados persisten incluso tras fallos del sistema?', 'Atomicidad', 'Consistencia', 'Aislamiento', 'Durabilidad', 'd', 'Durabilidad garantiza que una vez confirmada (COMMIT), una transacción persiste permanentemente, incluso ante fallos de hardware/software. Se logra mediante logs de transacciones y escritura en disco.'),

(4, 'En SQL, ¿qué tipo de subconsulta devuelve múltiples filas y se usa con IN, ANY o ALL?', 'Subconsulta escalar', 'Subconsulta de tabla', 'Subconsulta correlacionada', 'Subconsulta múltiple', 'b', 'Una subconsulta de tabla devuelve múltiples filas/columnas y se usa con IN, EXISTS, ANY, ALL. Subconsulta escalar devuelve un solo valor. Correlacionada referencia columnas de la consulta externa.'),

(4, '¿Qué comando SQL crea una copia de seguridad de una base de datos en MySQL?', 'BACKUP DATABASE', 'DUMP DATABASE', 'mysqldump (comando externo)', 'EXPORT DATABASE', 'c', 'mysqldump es una utilidad de línea de comandos para crear backups lógicos en MySQL. Ejemplo: mysqldump -u root -p database > backup.sql. Para restaurar: mysql -u root -p database < backup.sql.'),

(4, 'En diseño de bases de datos, ¿qué es la cardinalidad de una relación?', 'Número de tablas', 'Número de filas', 'Número de instancias que pueden relacionarse (1:1, 1:N, N:M)', 'Número de columnas', 'c', 'La cardinalidad define cuántas instancias de una entidad pueden relacionarse con otra: 1:1 (uno a uno), 1:N (uno a muchos), N:M (muchos a muchos). Es fundamental en el diseño del modelo entidad-relación.'),

(4, '¿Qué es el teorema CAP en bases de datos distribuidas?', 'Teorema de normalización', 'Solo se pueden garantizar 2 de 3: Consistencia, Disponibilidad, Tolerancia a particiones', 'Teorema de indexación', 'Teorema de transacciones', 'b', 'El teorema CAP establece que en sistemas distribuidos solo se pueden garantizar 2 de 3 propiedades: Consistency, Availability, Partition tolerance. NoSQL suele sacrificar consistencia por disponibilidad.'),

(4, 'En SQL, ¿qué cláusula se usa para ordenar resultados?', 'SORT BY', 'ORDER BY', 'ARRANGE BY', 'RANK BY', 'b', 'ORDER BY ordena resultados: ASC (ascendente, por defecto) o DESC (descendente). Se puede ordenar por múltiples columnas. Ejemplo: ORDER BY apellido ASC, nombre ASC.'),

(4, '¿Qué tipo de JOIN devuelve solo las filas que tienen coincidencias en ambas tablas?', 'INNER JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'FULL JOIN', 'a', 'INNER JOIN devuelve solo filas con coincidencias en ambas tablas. Es el tipo de JOIN más común. LEFT/RIGHT JOIN incluyen filas sin coincidencia (con NULL). FULL JOIN incluye todas las filas.'),

(4, 'En MongoDB, ¿qué método se usa para insertar un documento?', 'add()', 'insert()', 'insertOne() o insertMany()', 'create()', 'c', 'insertOne() inserta un documento, insertMany() inserta múltiples. insert() está deprecado. Ejemplo: db.usuarios.insertOne({nombre: "Juan", edad: 30}). Devuelve el _id generado.'),

(4, '¿Qué es la desnormalización en bases de datos?', 'Proceso de normalización inverso', 'Añadir redundancia intencionalmente para mejorar rendimiento', 'Eliminar índices', 'Dividir tablas', 'b', 'La desnormalización añade redundancia controlada para mejorar rendimiento de lectura, reduciendo JOINs. Es un trade-off: mejor lectura pero más complejidad en escritura y más espacio.'),

(4, 'En SQL, ¿qué restricción garantiza que todos los valores en una columna sean únicos?', 'PRIMARY KEY', 'UNIQUE', 'NOT NULL', 'CHECK', 'b', 'UNIQUE garantiza valores únicos pero permite NULL (a diferencia de PRIMARY KEY). Puede haber múltiples restricciones UNIQUE por tabla. Ejemplo: email UNIQUE para evitar duplicados.'),

(4, '¿Qué base de datos NoSQL usa el modelo clave-valor?', 'MongoDB', 'Cassandra', 'Redis', 'Neo4j', 'c', 'Redis es una base de datos clave-valor en memoria, muy rápida. Usada para caché, sesiones, colas. Soporta estructuras de datos: strings, listas, sets, hashes, sorted sets.'),

(4, 'En SQL, ¿qué operador se usa para buscar patrones en texto?', 'MATCH', 'LIKE', 'REGEX', 'SEARCH', 'b', 'LIKE busca patrones: % (cualquier secuencia), _ (un carácter). Ejemplo: WHERE nombre LIKE "Juan%". REGEXP/REGEX (en algunos SGBD) permite expresiones regulares más complejas.'),

(4, '¿Qué es una vista (VIEW) en SQL?', 'Tabla temporal', 'Consulta almacenada que se comporta como tabla virtual', 'Índice', 'Backup', 'b', 'Una vista es una consulta SELECT almacenada que se comporta como tabla virtual. No almacena datos (excepto vistas materializadas). Útil para seguridad, simplificar consultas complejas y abstracción.'),

(4, 'En bases de datos relacionales, ¿qué es la integridad referencial?', 'Datos sin duplicados', 'Las claves foráneas deben referenciar claves primarias existentes', 'Datos normalizados', 'Índices válidos', 'b', 'La integridad referencial garantiza que las claves foráneas solo referencien valores existentes en la tabla padre. Se puede configurar con CASCADE, SET NULL, RESTRICT en DELETE/UPDATE.'),

(4, '¿Qué comando SQL inicia una transacción?', 'START TRANSACTION o BEGIN', 'INIT TRANSACTION', 'OPEN TRANSACTION', 'CREATE TRANSACTION', 'a', 'START TRANSACTION o BEGIN inician una transacción. COMMIT confirma cambios, ROLLBACK los deshace. Las transacciones garantizan ACID. Ejemplo: BEGIN; UPDATE...; COMMIT;'),

(4, 'En MongoDB, ¿qué operador se usa en aggregation pipeline para agrupar documentos?', '$match', '$group', '$project', '$sort', 'b', '$group agrupa documentos por campo y aplica operadores de acumulación (_id, $sum, $avg, $max, $min). Similar a GROUP BY en SQL. Ejemplo: {$group: {_id: "$ciudad", total: {$sum: 1}}}.'),

(4, '¿Qué tipo de índice es más eficiente para búsquedas de igualdad exacta?', 'B-Tree', 'Hash', 'Full-text', 'Spatial', 'b', 'Los índices hash son muy eficientes para búsquedas de igualdad (=) con O(1). No sirven para rangos. B-Tree es más versátil: igualdad y rangos (<, >, BETWEEN) con O(log n).'),

(4, 'En SQL, ¿qué función devuelve la fecha y hora actual?', 'DATE()', 'NOW()', 'CURRENT_DATE()', 'Depende del SGBD', 'd', 'Varía por SGBD: MySQL usa NOW() o CURRENT_TIMESTAMP, SQL Server usa GETDATE(), PostgreSQL usa NOW() o CURRENT_TIMESTAMP, Oracle usa SYSDATE. Es importante conocer las diferencias.'),

(4, '¿Qué es un stored procedure?', 'Tabla temporal', 'Conjunto de sentencias SQL almacenadas que se pueden ejecutar', 'Tipo de índice', 'Vista materializada', 'b', 'Un stored procedure es un conjunto de sentencias SQL almacenadas en el servidor que se pueden ejecutar con parámetros. Mejora rendimiento, seguridad y reutilización. Ejemplo: CREATE PROCEDURE nombre() BEGIN ... END.'),

(4, 'En Cassandra, ¿qué es una partition key?', 'Clave primaria', 'Clave que determina en qué nodo se almacenan los datos', 'Índice secundario', 'Clave foránea', 'b', 'La partition key determina la distribución de datos entre nodos en Cassandra. Es parte de la primary key. Una buena elección de partition key es crucial para rendimiento y distribución uniforme.'),

(4, '¿Qué comando SQL elimina una tabla y todos sus datos?', 'DELETE TABLE', 'TRUNCATE TABLE', 'DROP TABLE', 'REMOVE TABLE', 'c', 'DROP TABLE elimina la tabla, su estructura y todos los datos permanentemente. TRUNCATE elimina datos pero mantiene estructura. DELETE elimina datos fila por fila (más lento, permite WHERE).'),

(4, 'En SQL, ¿qué es un trigger?', 'Tipo de índice', 'Procedimiento que se ejecuta automáticamente ante eventos (INSERT, UPDATE, DELETE)', 'Restricción de integridad', 'Vista materializada', 'b', 'Un trigger es código que se ejecuta automáticamente antes o después de INSERT, UPDATE o DELETE. Útil para auditoría, validación, sincronización. Ejemplo: BEFORE INSERT ON usuarios FOR EACH ROW...'),

(4, '¿Qué propiedad ACID garantiza que la base de datos pasa de un estado válido a otro estado válido?', 'Atomicidad', 'Consistencia', 'Aislamiento', 'Durabilidad', 'b', 'Consistencia garantiza que las transacciones llevan la base de datos de un estado válido a otro, respetando todas las reglas (restricciones, triggers, cascadas). No se violan restricciones de integridad.'),

(4, 'En MongoDB, ¿qué operador se usa para actualizar documentos?', 'update()', 'updateOne() o updateMany()', 'modify()', 'change()', 'b', 'updateOne() actualiza un documento, updateMany() actualiza múltiples. Usan operadores como $set, $inc, $push. Ejemplo: db.usuarios.updateOne({_id: 1}, {$set: {edad: 31}}).'),

(4, '¿Qué es la forma normal de Boyce-Codd (BCNF)?', 'Versión más estricta de 3NF', 'Primera forma normal', 'Forma normal para NoSQL', 'Forma normal temporal', 'a', 'BCNF es una versión más estricta de 3NF. Requiere que para toda dependencia funcional X→Y, X sea superclave. Elimina anomalías que 3NF puede no resolver en casos con múltiples claves candidatas.'),

(4, 'En SQL, ¿qué cláusula se usa para combinar filas de la misma tabla?', 'UNION', 'SELF JOIN', 'MERGE', 'COMBINE', 'b', 'Un SELF JOIN une una tabla consigo misma usando alias diferentes. Útil para relaciones jerárquicas (empleado-jefe) o comparaciones dentro de la misma tabla. Ejemplo: SELECT e1.nombre, e2.nombre AS jefe FROM empleados e1 JOIN empleados e2 ON e1.jefe_id = e2.id.'),

(4, '¿Qué es el sharding en bases de datos?', 'Replicación de datos', 'Particionamiento horizontal de datos entre múltiples servidores', 'Tipo de índice', 'Backup incremental', 'b', 'Sharding divide datos horizontalmente entre múltiples servidores (shards) para escalar. Cada shard contiene un subconjunto de datos. Común en NoSQL (MongoDB, Cassandra) para manejar grandes volúmenes.'),

(4, 'En SQL, ¿qué operador se usa para verificar si un valor está en un conjunto?', 'CONTAINS', 'IN', 'EXISTS', 'MATCH', 'b', 'IN verifica si un valor está en un conjunto: WHERE ciudad IN ("Madrid", "Barcelona"). EXISTS verifica si una subconsulta devuelve filas. CONTAINS es para búsqueda de texto completo.'),

(4, '¿Qué es una transacción distribuida?', 'Transacción en múltiples tablas', 'Transacción que abarca múltiples bases de datos o servidores', 'Transacción con múltiples usuarios', 'Transacción larga', 'b', 'Una transacción distribuida abarca múltiples bases de datos o servidores. Requiere coordinación (two-phase commit) para garantizar ACID. Es compleja y puede afectar rendimiento, común en sistemas distribuidos.');
