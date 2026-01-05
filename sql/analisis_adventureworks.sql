-- =====================================================
-- ANÁLISIS FINANCIERO DE ADVENTUREWORKS
-- Autor: Dayana Rodríguez Méndez
-- Fecha: 04-01-2026
-- Descripción: Análisis completo de ventas, productos y rendimiento
-- Base de datos: AdventureWorks
-- =====================================================

-- 1. ANÁLISIS DE VENTAS POR REGIÓN
-- Objetivo: Identificar las regiones con mayor volumen de ventas

SELECT
    t.continente,
    t.pais,
    v.clave_territorio,
    SUM(v.cantidad_pedido) AS unidades_vendidas,
    SUM(p.precio_producto * v.cantidad_pedido) AS ingresos_totales,
    SUM(p.costo_producto * v.cantidad_pedido) AS costos_totales,
    SUM(p.precio_producto * v.cantidad_pedido) 
      - SUM(p.costo_producto * v.cantidad_pedido) AS beneficio_bruto
FROM ventas_2017 v
JOIN productos p
  ON v.clave_producto = p.clave_producto
JOIN territorios t
  ON v.clave_territorio = t.clave_territorio
GROUP BY
    t.continente,
    t.pais,
    v.clave_territorio
ORDER BY
    ingresos_totales DESC;

-- 2. PRODUCTOS MÁS VENDIDOS  
-- Objetivo: Determinar los productos con mejor performance

SELECT
    p.nombre_producto,
    pc.clave_categoria,
    SUM(v.cantidad_pedido) AS unidades_vendidas,
    SUM(p.precio_producto * v.cantidad_pedido) AS ingresos_totales,
    SUM(p.costo_producto * v.cantidad_pedido) AS costos_totales,
    SUM(p.precio_producto * v.cantidad_pedido)
      - SUM(p.costo_producto * v.cantidad_pedido) AS beneficio_bruto
FROM ventas_2017 v
JOIN productos p
  ON v.clave_producto = p.clave_producto
LEFT JOIN productos_categorias pc
  ON p.clave_subcategoria = pc.clave_subcategoria
GROUP BY
    p.nombre_producto,
    pc.clave_categoria
ORDER BY
    ingresos_totales DESC
LIMIT 10;

-- 3. ANÁLISIS TEMPORAL DE VENTAS
-- Objetivo: Identificar tendencias y patrones estacionales

SELECT
    DATE_TRUNC('month', v.fecha_venta) AS mes,
    SUM(v.cantidad_pedido) AS unidades_vendidas,
    SUM(p.precio_producto * v.cantidad_pedido) AS ingresos_totales,
    SUM(p.costo_producto * v.cantidad_pedido) AS costos_totales,
    SUM(p.precio_producto * v.cantidad_pedido)
      - SUM(p.costo_producto * v.cantidad_pedido) AS beneficio_bruto
FROM ventas_2017 v
JOIN productos p
  ON v.clave_producto = p.clave_producto
GROUP BY
    DATE_TRUNC('month', v.fecha_venta)
ORDER BY
    mes;
