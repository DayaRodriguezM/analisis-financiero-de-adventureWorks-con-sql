# analisis-financiero-de-adventureWorks-con-sql
Proyecto del bootcamp para el análisis de datos realizado con SQL sobre el dataset de AdventureWorks.

## Descripción
Proyecto de análisis de datos realizado con SQL sobre el dataset de AdventureWorks.
El objetivo es evaluar el desempeño financiero por país y la rentabilidad de los
mercados considerando los gastos de marketing.

## Objetivo
Responder a las siguientes preguntas de negocio:
- ¿Cuánto estamos ganando por país?
- ¿Qué tan rentable es cada mercado considerando el gasto en campañas?

## Tecnologías utilizadas
- SQL
- Base de datos relacional (AdventureWorks)
- Excel / Google Sheets (validación y visualización)

## Metodología
1. Exploración del esquema relacional y definición de JOINs.
2. Limpieza y validación de datos (NULLs, tipos, consistencia).
3. Cálculo de KPIs financieros: ingresos, costos, beneficio bruto, margen y ROI.
4. Controles de calidad (QA) mediante validación de totales y ratios.
5. Análisis ejecutivo utilizando el enfoque Contexto → Hallazgo → Implicación (C-F-I).

## Resultados detallados

### Análisis por país (Top performers)
- **Estados Unidos:** ROI 75.7% - Líder en eficiencia
- **Australia:** ROI 41.75% - Segundo mejor mercado
- **Reino Unido:** ROI 22.05% - Oportunidad de mejora

### Insights clave del framework C-F-I
  **Archivo completo:** [Ver análisis detallado](results/exports/analisis_financiero_adventureworks.xlsx)

## Estructura del repositorio
- `/sql/queries` → consultas SQL del análisis
- `/results/images` → capturas de resultados
- `/documentation` → análisis ejecutivo C-F-I

## Cómo ejecutar el proyecto
Las consultas fueron ejecutadas sobre el dataset AdventureWorks.
Para reproducir el análisis:
1. Ejecutar los scripts SQL en orden desde `/sql/queries`.
2. Validar resultados con los archivos exportados en `/results/exports`.
