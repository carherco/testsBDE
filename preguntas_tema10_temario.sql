-- 50 preguntas difíciles sobre La Información Económico-Financiera de la Empresa (Tema 10) basadas en temario.txt
-- Concepto y tipos de contabilidad
-- Estados financieros: el balance de situación, la cuenta de resultados y tesorería
-- El ciclo contable
-- Introducción a la contabilidad de costes

USE testsBDE;

INSERT INTO preguntas (id_tema, texto, opcion_a, opcion_b, opcion_c, opcion_d, correcta, explicacion) VALUES
(10, '¿Qué es la contabilidad financiera?', 'Contabilidad interna', 'Contabilidad externa que informa a terceros sobre situación económica', 'Contabilidad de costes', 'Contabilidad fiscal', 'b', 'La contabilidad financiera es externa y obligatoria, informa a terceros (inversores, acreedores, administración) sobre la situación económica-financiera. Sigue normativa (PGC). La contabilidad de gestión es interna y voluntaria.'),

(10, 'En el balance de situación, ¿qué representa el activo?', 'Deudas de la empresa', 'Bienes y derechos de la empresa', 'Capital social', 'Beneficios', 'b', 'El activo representa bienes y derechos de la empresa (lo que posee). El pasivo son obligaciones y deudas. El patrimonio neto es la diferencia (activo - pasivo). Ecuación fundamental: Activo = Pasivo + Patrimonio Neto.'),

(10, '¿Qué es el pasivo corriente?', 'Deudas a largo plazo', 'Deudas a corto plazo (menos de 1 año)', 'Bienes de la empresa', 'Capital social', 'b', 'El pasivo corriente son obligaciones a corto plazo (vencimiento < 1 año): proveedores, préstamos a corto plazo, impuestos por pagar. El pasivo no corriente son deudas a largo plazo (> 1 año).'),

(10, 'En la cuenta de resultados, ¿qué es el EBITDA?', 'Beneficio neto', 'Earnings Before Interest, Taxes, Depreciation and Amortization', 'Ventas totales', 'Activo total', 'b', 'EBITDA (Beneficio antes de Intereses, Impuestos, Depreciación y Amortización) mide rentabilidad operativa sin considerar estructura financiera, impuestos y amortizaciones. Permite comparar empresas independientemente de su financiación.'),

(10, '¿Qué es el fondo de maniobra?', 'Beneficio del ejercicio', 'Activo corriente - Pasivo corriente', 'Pasivo total', 'Ventas anuales', 'b', 'El fondo de maniobra (working capital) es Activo Corriente - Pasivo Corriente. Indica capacidad para afrontar obligaciones a corto plazo. Positivo indica liquidez. Negativo puede indicar problemas de solvencia a corto plazo.'),

(10, 'En el ciclo contable, ¿qué es el asiento de apertura?', 'Primer asiento del ejercicio con saldos del cierre anterior', 'Último asiento del ejercicio', 'Asiento de ventas', 'Asiento de compras', 'a', 'El asiento de apertura es el primer asiento del ejercicio contable que recoge los saldos finales del ejercicio anterior. Abre las cuentas para el nuevo periodo. Es el punto de partida del ciclo contable.'),

(10, '¿Qué es la amortización?', 'Pago de deudas', 'Distribución del coste de un activo a lo largo de su vida útil', 'Venta de activos', 'Compra de activos', 'b', 'La amortización distribuye el coste de un activo fijo a lo largo de su vida útil. Refleja depreciación y desgaste. Métodos: lineal (constante), degresivo (mayor al inicio). Es un gasto no monetario que reduce beneficio pero no caja.'),

(10, 'En contabilidad de costes, ¿qué son los costes fijos?', 'Costes que varían con producción', 'Costes que no varían con nivel de producción', 'Costes de materias primas', 'Costes variables', 'b', 'Los costes fijos no varían con el nivel de producción (alquiler, salarios fijos, seguros). Los costes variables sí varían (materias primas, comisiones). El punto de equilibrio es donde ingresos = costes fijos + variables.'),

(10, '¿Qué es el patrimonio neto?', 'Deudas totales', 'Activo - Pasivo (recursos propios)', 'Ventas anuales', 'Beneficio del ejercicio', 'b', 'El patrimonio neto son los recursos propios: Activo - Pasivo. Incluye: capital social, reservas, resultado del ejercicio. Representa lo que realmente pertenece a los propietarios. Ecuación: A = P + PN.'),

(10, 'En la cuenta de resultados, ¿qué es el margen bruto?', 'Beneficio neto', 'Ventas - Coste de ventas', 'Ventas totales', 'EBITDA', 'b', 'El margen bruto es Ventas - Coste de Ventas (coste de productos vendidos). Indica rentabilidad antes de gastos operativos. El margen bruto porcentual es (Margen Bruto / Ventas) × 100. Importante para analizar rentabilidad del negocio.'),

(10, '¿Qué es el principio de devengo?', 'Registrar cuando se cobra', 'Registrar cuando se produce el hecho económico, independientemente del cobro/pago', 'Registrar solo cobros', 'No registrar nada', 'b', 'El principio de devengo registra ingresos y gastos cuando se producen, independientemente de cuándo se cobren o paguen. Opuesto al criterio de caja. Proporciona imagen más fiel de la situación económica.'),

(10, '¿Qué es el activo no corriente?', 'Activos a corto plazo', 'Activos a largo plazo (permanencia > 1 año)', 'Deudas', 'Capital social', 'b', 'El activo no corriente (inmovilizado) son activos a largo plazo (permanencia > 1 año): edificios, maquinaria, patentes, inversiones financieras a largo plazo. El activo corriente son activos a corto plazo (< 1 año).'),

(10, 'En contabilidad, ¿qué es el debe?', 'Lado derecho del asiento', 'Lado izquierdo del asiento', 'Beneficio', 'Pérdida', 'b', 'El debe es el lado izquierdo del asiento contable. El haber es el derecho. En cada asiento: Debe = Haber (partida doble). Aumentos de activo y gastos van al debe. Aumentos de pasivo, patrimonio neto e ingresos van al haber.'),

(10, '¿Qué es el ratio de liquidez?', 'Beneficio / Ventas', 'Activo Corriente / Pasivo Corriente', 'Pasivo / Patrimonio Neto', 'Ventas / Activo', 'b', 'El ratio de liquidez (o ratio corriente) es Activo Corriente / Pasivo Corriente. Mide capacidad para pagar deudas a corto plazo. Valor > 1 indica liquidez. Valor < 1 puede indicar problemas. Ideal: 1.5 - 2.'),

(10, '¿Qué es el punto de equilibrio (break-even)?', 'Beneficio máximo', 'Nivel de ventas donde ingresos = costes totales', 'Pérdida máxima', 'Ventas máximas', 'b', 'El punto de equilibrio es el nivel de ventas donde ingresos totales = costes totales (fijos + variables). No hay beneficio ni pérdida. Fórmula: PE = Costes Fijos / (Precio - Coste Variable Unitario).'),

(10, 'En el balance, ¿qué es el activo corriente?', 'Activos a largo plazo', 'Activos a corto plazo que se convertirán en efectivo en menos de 1 año', 'Deudas', 'Capital', 'b', 'El activo corriente (circulante) son activos a corto plazo que se convertirán en efectivo en < 1 año: efectivo, cuentas por cobrar, inventarios, inversiones a corto plazo. Tiene mayor liquidez que activo no corriente.'),

(10, '¿Qué es el ROE (Return on Equity)?', 'Ventas / Activo', 'Beneficio Neto / Patrimonio Neto', 'Beneficio / Ventas', 'Activo / Pasivo', 'b', 'ROE (Rentabilidad sobre Patrimonio Neto) es Beneficio Neto / Patrimonio Neto. Mide rentabilidad para los accionistas. Indica cuánto beneficio genera cada euro de capital propio. ROE alto indica buena rentabilidad.'),

(10, '¿Qué es el ROA (Return on Assets)?', 'Beneficio Neto / Activo Total', 'Ventas / Activo', 'Pasivo / Activo', 'Beneficio / Ventas', 'a', 'ROA (Rentabilidad sobre Activos) es Beneficio Neto / Activo Total. Mide eficiencia en uso de activos para generar beneficio. Indica cuánto beneficio genera cada euro invertido en activos. ROA alto indica eficiencia.'),

(10, 'En contabilidad de costes, ¿qué es el coste directo?', 'Coste que no se puede asignar', 'Coste que se puede asignar directamente a un producto', 'Coste fijo', 'Coste indirecto', 'b', 'Los costes directos se pueden asignar directamente a un producto (materias primas, mano de obra directa). Los costes indirectos no (alquiler, supervisión). Los indirectos requieren criterios de reparto.'),

(10, '¿Qué es el estado de flujos de efectivo?', 'Balance de situación', 'Estado que muestra entradas y salidas de efectivo', 'Cuenta de resultados', 'Estado de cambios en patrimonio neto', 'b', 'El estado de flujos de efectivo muestra entradas y salidas de efectivo en tres categorías: operaciones (actividad principal), inversión (compra/venta activos), financiación (deuda/capital). Complementa balance y cuenta de resultados.'),

(10, '¿Qué es el ratio de endeudamiento?', 'Activo / Pasivo', 'Pasivo Total / Patrimonio Neto', 'Beneficio / Ventas', 'Ventas / Activo', 'b', 'El ratio de endeudamiento es Pasivo Total / Patrimonio Neto. Mide proporción de financiación ajena vs propia. Valor alto indica mayor apalancamiento y riesgo financiero. También se calcula como Pasivo / Activo.'),

(10, 'En el ciclo contable, ¿qué es el asiento de regularización?', 'Primer asiento', 'Asiento que cierra cuentas de ingresos y gastos contra resultado', 'Asiento de compras', 'Asiento de ventas', 'b', 'El asiento de regularización cierra cuentas de ingresos y gastos contra la cuenta de pérdidas y ganancias (resultado del ejercicio). Se hace al final del ejercicio. Determina beneficio o pérdida.'),

(10, '¿Qué es el margen operativo?', 'Beneficio neto / Ventas', 'Resultado operativo / Ventas', 'Ventas - Costes', 'EBITDA / Ventas', 'b', 'El margen operativo es Resultado Operativo / Ventas. Mide rentabilidad de la actividad principal antes de intereses e impuestos. Indica eficiencia operativa. Margen alto indica buena gestión operativa.'),

(10, '¿Qué es el principio de prudencia?', 'Registrar todo optimistamente', 'Contabilizar pérdidas potenciales pero no beneficios no realizados', 'No registrar nada', 'Registrar solo beneficios', 'b', 'El principio de prudencia contabiliza pérdidas potenciales pero no beneficios no realizados. Ejemplo: provisionar deudas de cobro dudoso, no contabilizar ventas hasta confirmar. Evita sobrevalorar activos y beneficios.'),

(10, 'En contabilidad, ¿qué es una provisión?', 'Beneficio futuro', 'Gasto estimado para cubrir obligaciones futuras probables', 'Ingreso', 'Activo', 'b', 'Una provisión es gasto estimado para cubrir obligaciones futuras probables pero inciertas en cuantía o fecha: provisión para garantías, litigios, reestructuración. Aplica principio de prudencia. Se registra como gasto y pasivo.'),

(10, '¿Qué es el ratio de solvencia?', 'Activo Corriente / Pasivo Corriente', 'Activo Total / Pasivo Total', 'Beneficio / Ventas', 'Ventas / Activo', 'b', 'El ratio de solvencia es Activo Total / Pasivo Total. Mide capacidad para pagar todas las deudas con todos los activos. Valor > 1 indica solvencia. Valor < 1 indica patrimonio neto negativo (quiebra técnica).'),

(10, '¿Qué es el coste de oportunidad?', 'Coste de producción', 'Beneficio que se deja de obtener al elegir una alternativa', 'Coste fijo', 'Coste variable', 'b', 'El coste de oportunidad es el beneficio que se deja de obtener al elegir una alternativa sobre otra. No es un coste contable pero es relevante para decisiones. Ejemplo: usar local propio vs alquilarlo.'),

(10, 'En la cuenta de resultados, ¿qué es el resultado financiero?', 'Beneficio operativo', 'Ingresos financieros - Gastos financieros', 'Ventas totales', 'EBITDA', 'b', 'El resultado financiero es Ingresos Financieros (intereses cobrados, dividendos) - Gastos Financieros (intereses pagados). Refleja impacto de la estructura financiera. Negativo indica coste de financiación.'),

(10, '¿Qué es el periodo medio de cobro?', 'Días que tarda en pagar a proveedores', 'Días que tarda en cobrar a clientes', 'Días de inventario', 'Días de producción', 'b', 'El periodo medio de cobro es (Clientes / Ventas) × 365. Indica días que tarda en cobrar a clientes. Periodo corto indica buena gestión de cobros. Periodo largo puede indicar problemas de liquidez.'),

(10, '¿Qué es el periodo medio de pago?', 'Días que tarda en cobrar', 'Días que tarda en pagar a proveedores', 'Días de inventario', 'Días de ventas', 'b', 'El periodo medio de pago es (Proveedores / Compras) × 365. Indica días que tarda en pagar a proveedores. Periodo largo puede indicar problemas de liquidez o buena negociación. Muy largo puede dañar relaciones.'),

(10, 'En contabilidad de costes, ¿qué es el margen de contribución?', 'Beneficio neto', 'Precio de venta - Coste variable unitario', 'Ventas totales', 'Costes fijos', 'b', 'El margen de contribución es Precio de Venta - Coste Variable Unitario. Indica cuánto contribuye cada unidad a cubrir costes fijos y generar beneficio. Fundamental para análisis de punto de equilibrio.'),

(10, '¿Qué es el capital circulante?', 'Capital social', 'Recursos necesarios para financiar operaciones diarias', 'Beneficio', 'Activo fijo', 'b', 'El capital circulante (working capital) son recursos necesarios para financiar operaciones diarias. Se calcula como Activo Corriente - Pasivo Corriente (fondo de maniobra). Gestión eficiente es crucial para liquidez.'),

(10, '¿Qué es el ratio de rotación de inventario?', 'Inventario / Ventas', 'Coste de Ventas / Inventario Promedio', 'Ventas / Activo', 'Beneficio / Inventario', 'b', 'El ratio de rotación de inventario es Coste de Ventas / Inventario Promedio. Indica cuántas veces se renueva el inventario al año. Rotación alta indica eficiencia. Rotación baja puede indicar obsolescencia o exceso.'),

(10, 'En el balance, ¿qué son las reservas?', 'Deudas', 'Beneficios no distribuidos acumulados', 'Ventas', 'Activos', 'b', 'Las reservas son beneficios no distribuidos acumulados de ejercicios anteriores. Forman parte del patrimonio neto. Tipos: legal (obligatoria), estatutarias, voluntarias. Refuerzan recursos propios.'),

(10, '¿Qué es el apalancamiento financiero?', 'No usar deuda', 'Usar deuda para aumentar rentabilidad sobre recursos propios', 'Vender activos', 'Aumentar ventas', 'b', 'El apalancamiento financiero usa deuda para aumentar rentabilidad sobre recursos propios. Si ROA > coste de deuda, el apalancamiento aumenta ROE. Pero también aumenta riesgo. Efecto multiplicador positivo o negativo.'),

(10, '¿Qué es el EBIT?', 'Beneficio neto', 'Earnings Before Interest and Taxes (resultado operativo)', 'Ventas totales', 'Activo total', 'b', 'EBIT (Beneficio antes de Intereses e Impuestos) es el resultado operativo. Mide rentabilidad de la actividad principal antes de estructura financiera e impuestos. Permite comparar empresas con diferente financiación.'),

(10, 'En contabilidad, ¿qué es un activo intangible?', 'Activo físico', 'Activo sin sustancia física (patentes, marcas, software)', 'Deuda', 'Capital', 'b', 'Los activos intangibles no tienen sustancia física: patentes, marcas, software, fondo de comercio, derechos. Se amortizan si tienen vida útil definida. El fondo de comercio no se amortiza pero se revisa por deterioro.'),

(10, '¿Qué es el ratio de cobertura de intereses?', 'Ventas / Intereses', 'EBIT / Gastos Financieros', 'Beneficio / Ventas', 'Activo / Pasivo', 'b', 'El ratio de cobertura de intereses es EBIT / Gastos Financieros. Mide capacidad para pagar intereses con beneficio operativo. Valor > 1 indica capacidad. Valor < 1 indica problemas. Ideal > 3.'),

(10, '¿Qué es el ciclo de conversión de efectivo?', 'Tiempo de producción', 'Días inventario + Días cobro - Días pago', 'Días de ventas', 'Periodo contable', 'b', 'El ciclo de conversión de efectivo es Días Inventario + Días Cobro - Días Pago. Indica días que tarda en recuperar efectivo invertido en operaciones. Ciclo corto indica eficiencia en gestión de capital circulante.'),

(10, 'En contabilidad de costes, ¿qué es el coste estándar?', 'Coste real', 'Coste predeterminado usado como referencia', 'Coste histórico', 'Coste variable', 'b', 'El coste estándar es coste predeterminado (esperado) usado como referencia para control. Se compara con coste real para calcular desviaciones. Permite análisis de variaciones y control de gestión.'),

(10, '¿Qué es el valor contable de un activo?', 'Precio de mercado', 'Coste de adquisición - Amortización acumulada', 'Precio de venta', 'Valor de reposición', 'b', 'El valor contable (valor neto) es Coste de Adquisición - Amortización Acumulada. Es el valor en libros. Puede diferir del valor de mercado. También se resta deterioro si existe.'),

(10, '¿Qué es el ratio de autonomía financiera?', 'Pasivo / Activo', 'Patrimonio Neto / Activo Total', 'Beneficio / Ventas', 'Ventas / Activo', 'b', 'El ratio de autonomía financiera es Patrimonio Neto / Activo Total. Mide proporción de activos financiados con recursos propios. Valor alto indica independencia financiera. Complementario al ratio de endeudamiento.'),

(10, 'En la cuenta de resultados, ¿qué es el resultado antes de impuestos?', 'Beneficio neto', 'Resultado operativo + Resultado financiero', 'Ventas - Costes', 'EBITDA', 'b', 'El resultado antes de impuestos (BAI) es Resultado Operativo + Resultado Financiero + Resultado Extraordinario. Es el beneficio antes de aplicar impuesto de sociedades. El beneficio neto es BAI - Impuestos.'),

(10, '¿Qué es el fondo de comercio (goodwill)?', 'Activo físico', 'Exceso pagado sobre valor razonable de activos netos en adquisición', 'Deuda', 'Capital social', 'b', 'El fondo de comercio (goodwill) es el exceso pagado sobre el valor razonable de activos netos identificables en una adquisición. Representa valor de marca, clientes, sinergias. No se amortiza pero se revisa anualmente por deterioro.'),

(10, '¿Qué es el principio de empresa en funcionamiento?', 'La empresa va a cerrar', 'Se asume que la empresa continuará operando en futuro previsible', 'La empresa está en quiebra', 'La empresa se vende', 'b', 'El principio de empresa en funcionamiento (going concern) asume que la empresa continuará operando en futuro previsible. Permite valorar activos a coste histórico. Si hay dudas, debe revelarse y valorar a valor de liquidación.'),

(10, 'En contabilidad de costes, ¿qué es el análisis coste-volumen-beneficio?', 'Análisis de balance', 'Análisis de cómo cambios en costes y volumen afectan beneficio', 'Análisis de flujos', 'Análisis de ratios', 'b', 'El análisis coste-volumen-beneficio (CVB) estudia cómo cambios en costes fijos, costes variables, precio y volumen afectan al beneficio. Incluye punto de equilibrio, margen de seguridad, apalancamiento operativo.'),

(10, '¿Qué es el ratio de rentabilidad sobre ventas?', 'Ventas / Activo', 'Beneficio Neto / Ventas', 'Activo / Pasivo', 'Ventas / Pasivo', 'b', 'El ratio de rentabilidad sobre ventas (margen neto) es Beneficio Neto / Ventas. Indica qué porcentaje de ventas se convierte en beneficio. Margen alto indica eficiencia. Varía mucho por sector.'),

(10, '¿Qué es el deterioro de valor de un activo?', 'Amortización', 'Pérdida de valor cuando valor recuperable < valor contable', 'Venta del activo', 'Compra del activo', 'b', 'El deterioro de valor ocurre cuando el valor recuperable de un activo (mayor entre valor de uso y valor de venta) es menor que su valor contable. Se registra como pérdida. Debe evaluarse si hay indicios de deterioro.');
