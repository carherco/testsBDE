-- 50 preguntas difíciles sobre Sistemas Operativos (Tema 1) basadas en temario.txt
-- Conceptos básicos: funciones de un sistema operativo, gestión de procesos
-- Administración de sistemas: configuración y gestión de sistemas operativos (Linux, Windows)

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(1, '¿Cuál de las siguientes NO es una función principal de un sistema operativo?', 'Gestión de procesos', 'Gestión de memoria', 'Compilación de código fuente', 'Gestión de dispositivos', 'c', 'La compilación de código fuente es tarea del compilador, no del sistema operativo. Las funciones principales del SO incluyen: gestión de procesos, memoria, archivos, dispositivos y seguridad.'),

(1, 'En la gestión de procesos, ¿qué estructura de datos mantiene el SO para cada proceso?', 'Stack Frame', 'PCB (Process Control Block)', 'Heap', 'Symbol Table', 'b', 'El PCB (Process Control Block) contiene toda la información del proceso: PID, estado, registros, prioridad, memoria asignada, archivos abiertos, etc. Es fundamental para el cambio de contexto.'),

(1, '¿Qué estado de proceso indica que está esperando un evento de E/S?', 'Ready', 'Running', 'Blocked/Waiting', 'Terminated', 'c', 'Un proceso en estado Blocked/Waiting está esperando un evento externo (E/S, señal, recurso). No puede ejecutarse hasta que el evento ocurra. Ready significa listo para ejecutar pero esperando CPU.'),

(1, 'En Linux, ¿qué comando muestra todos los procesos del sistema incluyendo los de otros usuarios?', 'ps', 'ps -u', 'ps aux', 'ps -ef', 'd', 'Tanto "ps aux" como "ps -ef" muestran todos los procesos del sistema. "ps aux" es estilo BSD, "ps -ef" es estilo System V. Ambos son correctos, pero -ef es más estándar en exámenes.'),

(1, '¿Qué algoritmo de planificación es apropiativo (preemptive)?', 'FCFS', 'SJF no apropiativo', 'Round Robin', 'Todos los anteriores', 'c', 'Round Robin es apropiativo: interrumpe procesos cuando se agota su quantum. FCFS y SJF (versión no apropiativa) no interrumpen procesos una vez que empiezan a ejecutarse.'),

(1, 'En Round Robin, si el quantum es muy pequeño, ¿qué problema ocurre?', 'Inanición de procesos', 'Convoy effect', 'Overhead excesivo por cambios de contexto', 'Deadlock', 'c', 'Un quantum muy pequeño causa muchos cambios de contexto, aumentando el overhead. Un quantum muy grande convierte Round Robin en FCFS. El quantum óptimo debe balancear respuesta y overhead.'),

(1, '¿Qué técnica previene la inanición en planificación por prioridades?', 'Preemption', 'Aging', 'Time slicing', 'Shortest job first', 'b', 'Aging incrementa gradualmente la prioridad de procesos que esperan mucho tiempo, asegurando que eventualmente se ejecuten. Sin aging, procesos de baja prioridad pueden sufrir inanición indefinida.'),

(1, 'En Linux, ¿qué llamada al sistema crea un nuevo proceso?', 'exec()', 'fork()', 'clone()', 'spawn()', 'b', 'fork() crea un proceso hijo duplicando el proceso padre. Devuelve 0 en el hijo y el PID del hijo en el padre. exec() reemplaza el proceso actual con un nuevo programa. clone() es más flexible pero fork() es la llamada estándar.'),

(1, '¿Qué valor devuelve fork() en el proceso padre en caso de éxito?', '0', '-1', 'PID del hijo', 'PID del padre', 'c', 'fork() devuelve: 0 en el proceso hijo, el PID del hijo en el proceso padre, y -1 en caso de error. Esto permite diferenciar el código que ejecuta cada proceso.'),

(1, 'En gestión de memoria, ¿qué técnica permite que un proceso use más memoria de la físicamente disponible?', 'Segmentación', 'Memoria virtual', 'Fragmentación', 'Swapping', 'b', 'La memoria virtual permite que los procesos tengan espacios de direcciones mayores que la RAM física mediante paginación bajo demanda y swapping. El SO mantiene páginas en disco y las carga cuando se necesitan.'),

(1, '¿Qué es la paginación en gestión de memoria?', 'Dividir memoria en segmentos de tamaño variable', 'Dividir memoria en bloques de tamaño fijo llamados páginas', 'Mover procesos entre memoria y disco', 'Asignar memoria contigua a procesos', 'b', 'La paginación divide la memoria física en marcos (frames) y la memoria lógica en páginas del mismo tamaño (típicamente 4KB). Elimina fragmentación externa pero puede causar fragmentación interna.'),

(1, 'En un sistema con páginas de 4KB, ¿cuántos bits se necesitan para el desplazamiento (offset) dentro de una página?', '10 bits', '12 bits', '16 bits', '20 bits', 'b', '4KB = 4096 bytes = 2^12 bytes. Por tanto, se necesitan 12 bits para direccionar cualquier byte dentro de una página de 4KB. Los bits restantes de la dirección virtual identifican el número de página.'),

(1, '¿Qué es un page fault?', 'Error de segmentación', 'Acceso a página no presente en memoria', 'Desbordamiento de pila', 'División por cero', 'b', 'Un page fault ocurre cuando se accede a una página válida pero no presente en memoria física. El SO la carga desde disco. Es parte normal del funcionamiento de memoria virtual, no necesariamente un error.'),

(1, '¿Qué algoritmo de reemplazo de páginas es óptimo pero no implementable?', 'FIFO', 'LRU', 'Algoritmo de Belady', 'Clock', 'c', 'El algoritmo óptimo de Belady reemplaza la página que se usará más tarde en el futuro. Minimiza page faults pero es imposible de implementar porque requiere conocer referencias futuras.'),

(1, 'En el algoritmo LRU, ¿qué página se reemplaza?', 'La primera que entró', 'La última que entró', 'La que no se ha usado por más tiempo', 'La que se usará más tarde', 'c', 'LRU (Least Recently Used) reemplaza la página que no se ha usado por más tiempo. Es una buena aproximación al algoritmo óptimo pero costoso de implementar exactamente.'),

(1, '¿Qué es thrashing en memoria virtual?', 'Fragmentación excesiva', 'El sistema pasa más tiempo en paging que ejecutando', 'Desbordamiento de memoria', 'Fallo de disco', 'b', 'Thrashing ocurre cuando el sistema pasa la mayor parte del tiempo moviendo páginas entre memoria y disco en lugar de ejecutar procesos. Sucede cuando la suma de working sets excede la memoria disponible.'),

(1, 'En Linux, ¿qué comando muestra el uso de memoria del sistema?', 'top', 'free', 'vmstat', 'Todos los anteriores', 'd', 'top muestra uso en tiempo real, free muestra resumen de memoria (total, usada, libre, buffers, cache), y vmstat muestra estadísticas de memoria virtual. Todos son útiles para monitorizar memoria.'),

(1, '¿Qué tipo de fragmentación ocurre cuando hay memoria libre suficiente pero no contigua?', 'Fragmentación interna', 'Fragmentación externa', 'Fragmentación de página', 'Fragmentación de segmento', 'b', 'Fragmentación externa: memoria libre dispersa en bloques no contiguos. Fragmentación interna: espacio desperdiciado dentro de un bloque asignado (ej: asignar página de 4KB para 3KB de datos).'),

(1, 'En Windows, ¿qué herramienta permite ver y gestionar procesos en ejecución?', 'Task Manager', 'Process Explorer', 'Resource Monitor', 'Todas las anteriores', 'd', 'Task Manager (Administrador de tareas) es la herramienta básica. Process Explorer (Sysinternals) ofrece información más detallada. Resource Monitor muestra uso detallado de recursos. Todas permiten gestionar procesos.'),

(1, '¿Qué tecla de acceso rápido abre el Administrador de tareas en Windows?', 'Ctrl+Alt+Del', 'Ctrl+Shift+Esc', 'Ctrl+Alt+Supr', 'Ambas a y b', 'd', 'Ctrl+Alt+Del muestra un menú con opción de Administrador de tareas. Ctrl+Shift+Esc abre directamente el Administrador de tareas. Ambas son válidas (Supr es Del en teclados españoles).'),

(1, 'En Linux, ¿qué señal termina un proceso de forma inmediata sin posibilidad de captura?', 'SIGTERM', 'SIGINT', 'SIGKILL', 'SIGHUP', 'c', 'SIGKILL (señal 9) no puede ser capturada, bloqueada ni ignorada. Termina el proceso inmediatamente. SIGTERM (15) puede ser capturada para limpieza ordenada. SIGINT (2) es Ctrl+C.'),

(1, '¿Qué comando de Linux envía una señal a un proceso?', 'signal', 'kill', 'stop', 'terminate', 'b', 'kill envía señales a procesos. Ejemplo: kill -9 PID (SIGKILL), kill -15 PID (SIGTERM). A pesar del nombre, kill puede enviar cualquier señal, no solo terminar procesos.'),

(1, 'En gestión de procesos, ¿qué es un proceso zombie?', 'Proceso que consume toda la CPU', 'Proceso que ha terminado pero mantiene entrada en tabla de procesos', 'Proceso en estado de suspensión', 'Proceso malicioso', 'b', 'Un proceso zombie ha terminado pero su entrada permanece en la tabla de procesos porque el padre no ha leído su código de salida con wait(). Se identifica con estado Z en ps.'),

(1, '¿Qué comando de Linux muestra procesos en formato de árbol jerárquico?', 'ps aux', 'top', 'pstree', 'htop', 'c', 'pstree muestra procesos en formato de árbol mostrando relaciones padre-hijo. ps aux muestra lista plana, top/htop muestran procesos en tiempo real pero no en árbol jerárquico por defecto.'),

(1, 'En Linux, ¿qué archivo contiene información sobre procesos en ejecución?', '/var/log/processes', '/proc', '/sys/processes', '/dev/processes', 'b', '/proc es un sistema de archivos virtual que expone información del kernel y procesos. Cada proceso tiene un directorio /proc/PID con información detallada (estado, memoria, archivos abiertos, etc.).'),

(1, '¿Qué es un daemon en Linux?', 'Un proceso en primer plano', 'Un proceso en segundo plano que proporciona servicios', 'Un proceso zombie', 'Un proceso del kernel', 'b', 'Un daemon es un proceso que se ejecuta en segundo plano proporcionando servicios (web server, base de datos, etc.). Típicamente se inician al arrancar y no tienen terminal asociada.'),

(1, 'En Windows, ¿cómo se llaman los equivalentes a los daemons de Linux?', 'Tasks', 'Services', 'Processes', 'Jobs', 'b', 'Los Services en Windows son equivalentes a los daemons de Linux. Se gestionan con services.msc o el comando sc. Pueden configurarse para iniciar automáticamente, manualmente o estar deshabilitados.'),

(1, '¿Qué comando de Linux cambia la prioridad de un proceso en ejecución?', 'priority', 'nice', 'renice', 'setpriority', 'c', 'renice cambia la prioridad de procesos en ejecución. nice establece prioridad al iniciar un proceso. Los valores van de -20 (máxima prioridad) a +19 (mínima). Solo root puede aumentar prioridad (valores negativos).'),

(1, 'En gestión de memoria, ¿qué es el working set de un proceso?', 'Memoria total asignada', 'Conjunto de páginas activamente usadas en un período', 'Memoria en disco (swap)', 'Memoria compartida', 'b', 'El working set es el conjunto de páginas que un proceso usa activamente en una ventana de tiempo. El SO usa este concepto para decidir cuánta memoria asignar y evitar thrashing.'),

(1, '¿Qué técnica usa Copy-on-Write (COW)?', 'Copiar memoria inmediatamente en fork()', 'Compartir páginas hasta que se modifiquen', 'Comprimir memoria', 'Cifrar memoria', 'b', 'COW permite que padre e hijo compartan páginas marcadas como read-only tras fork(). Solo cuando uno intenta escribir se copia la página. Hace fork() muy eficiente.'),

(1, 'En Linux, ¿qué sistema de archivos es el más común por defecto?', 'ext2', 'ext3', 'ext4', 'XFS', 'c', 'ext4 (Fourth Extended Filesystem) es el sistema de archivos por defecto en la mayoría de distribuciones Linux modernas. Soporta journaling, extents, y archivos/volúmenes muy grandes.'),

(1, 'En Windows, ¿qué sistema de archivos se usa por defecto?', 'FAT32', 'exFAT', 'NTFS', 'ReFS', 'c', 'NTFS (New Technology File System) es el sistema de archivos por defecto en Windows desde Windows NT. Soporta journaling, ACLs, compresión, cifrado y archivos grandes.'),

(1, '¿Qué es el journaling en sistemas de archivos?', 'Registro de accesos', 'Registro de cambios antes de aplicarlos para recuperación', 'Compresión de archivos', 'Cifrado de archivos', 'b', 'El journaling registra cambios en un journal antes de aplicarlos al sistema de archivos. En caso de fallo, el sistema puede reproducir o deshacer operaciones del journal para mantener consistencia.'),

(1, 'En Linux, ¿qué comando muestra el espacio en disco usado y disponible?', 'du', 'df', 'free', 'fdisk', 'b', 'df (disk free) muestra espacio usado y disponible por sistema de archivos. du (disk usage) muestra espacio usado por directorios/archivos. free muestra memoria RAM, no disco.'),

(1, '¿Qué comando de Linux monta un sistema de archivos?', 'attach', 'mount', 'connect', 'link', 'b', 'mount asocia un sistema de archivos a un punto de montaje en el árbol de directorios. Ejemplo: mount /dev/sda1 /mnt. umount desmonta. /etc/fstab contiene montajes automáticos al arrancar.'),

(1, 'En gestión de procesos, ¿qué es el cambio de contexto (context switch)?', 'Cambiar de usuario', 'Guardar estado de un proceso y cargar otro', 'Cambiar de directorio', 'Cambiar de terminal', 'b', 'El cambio de contexto es guardar el estado (registros, PC, etc.) del proceso actual en su PCB y cargar el estado de otro proceso. Es costoso en tiempo pero necesario para multitarea.'),

(1, '¿Qué información NO se guarda típicamente en el PCB?', 'PID', 'Estado del proceso', 'Registros de CPU', 'Código fuente del programa', 'd', 'El PCB contiene: PID, estado, registros, contador de programa, prioridad, memoria asignada, archivos abiertos, etc. El código fuente no se guarda (solo el código compilado en memoria).'),

(1, 'En Linux, ¿qué comando muestra los archivos abiertos por un proceso?', 'files', 'lsof', 'openfiles', 'fstat', 'b', 'lsof (list open files) muestra archivos abiertos por procesos. Ejemplo: lsof -p PID muestra archivos del proceso PID. lsof -u usuario muestra archivos abiertos por usuario.'),

(1, '¿Qué es un hard link en sistemas de archivos Unix?', 'Acceso directo', 'Referencia adicional al mismo inodo', 'Copia del archivo', 'Archivo comprimido', 'b', 'Un hard link es otra entrada de directorio que apunta al mismo inodo. El archivo solo se elimina cuando el contador de enlaces llega a 0. No pueden cruzar sistemas de archivos ni apuntar a directorios.'),

(1, '¿Qué es un soft link (symbolic link)?', 'Copia del archivo', 'Archivo que contiene la ruta a otro archivo', 'Archivo comprimido', 'Archivo cifrado', 'b', 'Un soft link (symlink) es un archivo especial que contiene la ruta a otro archivo. Puede cruzar sistemas de archivos y apuntar a directorios. Si el archivo original se elimina, el symlink queda roto.'),

(1, 'En Linux, ¿qué comando crea un enlace simbólico?', 'link', 'ln', 'ln -s', 'symlink', 'c', 'ln -s crea enlaces simbólicos. ln sin -s crea hard links. Ejemplo: ln -s /ruta/original /ruta/enlace. Los symlinks son más flexibles que hard links.'),

(1, 'En gestión de usuarios de Linux, ¿qué archivo contiene las contraseñas cifradas?', '/etc/passwd', '/etc/shadow', '/etc/group', '/etc/security', 'b', '/etc/shadow contiene contraseñas cifradas (hashes). Solo root puede leerlo. /etc/passwd contiene información de usuarios pero no contraseñas (tiene x en ese campo). /etc/group contiene grupos.'),

(1, '¿Qué comando de Linux añade un nuevo usuario?', 'adduser', 'useradd', 'newuser', 'Ambas a y b', 'd', 'useradd es el comando de bajo nivel. adduser es un script más amigable (en Debian/Ubuntu). Ambos crean usuarios. useradd requiere más opciones manualmente, adduser es interactivo.'),

(1, 'En permisos de Linux, ¿qué significa rwxr-xr--?', 'Propietario: lectura/escritura/ejecución, Grupo: lectura/ejecución, Otros: lectura', 'Propietario: lectura/escritura, Grupo: lectura/ejecución, Otros: lectura/escritura', 'Propietario: lectura/ejecución, Grupo: lectura, Otros: ninguno', 'Propietario: todos, Grupo: lectura, Otros: ejecución', 'a', 'rwx (propietario): read, write, execute. r-x (grupo): read, execute. r-- (otros): solo read. Los permisos se representan en octal como 754.'),

(1, '¿Qué comando de Linux cambia permisos de archivos?', 'chown', 'chmod', 'chgrp', 'perm', 'b', 'chmod cambia permisos. Ejemplo: chmod 755 archivo o chmod u+x archivo. chown cambia propietario. chgrp cambia grupo. Los permisos son fundamentales en seguridad Unix.'),

(1, 'En Windows, ¿qué comando muestra servicios en ejecución?', 'services', 'sc query', 'get-service', 'Ambas b y c', 'd', 'sc query (línea de comandos) y Get-Service (PowerShell) muestran servicios. services.msc abre la GUI de servicios. net start también muestra servicios activos.'),

(1, '¿Qué es el kernel de un sistema operativo?', 'La interfaz gráfica', 'El núcleo que gestiona recursos hardware', 'El sistema de archivos', 'El gestor de arranque', 'b', 'El kernel es el núcleo del SO que se ejecuta en modo privilegiado y gestiona directamente el hardware: CPU, memoria, dispositivos. Proporciona servicios a procesos de usuario mediante syscalls.'),

(1, 'En Linux, ¿qué comando muestra la versión del kernel?', 'version', 'uname -r', 'kernel -v', 'cat /proc/version', 'd', 'Tanto "uname -r" como "cat /proc/version" muestran la versión del kernel. uname -r muestra solo la versión, /proc/version muestra información más detallada incluyendo compilador usado.'),

(1, '¿Qué tipo de kernel usa Linux?', 'Microkernel', 'Kernel monolítico', 'Kernel híbrido', 'Exokernel', 'b', 'Linux usa un kernel monolítico modular. Todo el kernel se ejecuta en un único espacio de direcciones en modo privilegiado. Los módulos pueden cargarse/descargarse dinámicamente sin recompilar.'),

(1, 'En administración de Linux, ¿qué comando reinicia el sistema?', 'restart', 'reboot', 'shutdown -r now', 'Ambas b y c', 'd', 'reboot y "shutdown -r now" reinician el sistema. shutdown permite programar el reinicio y enviar mensajes a usuarios. init 6 y systemctl reboot también funcionan en sistemas modernos.');
