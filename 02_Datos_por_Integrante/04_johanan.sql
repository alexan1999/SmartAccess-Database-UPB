-- Autor: Johanan
-- 20 ajustes de aforo, 20 alertas y 20 reportes sintéticos (60 filas).

BEGIN;

WITH ubicaciones_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY nombre) AS rn
    FROM ubicaciones
),
usuario_demo AS (
    SELECT id FROM usuarios WHERE correo = 'pablo.demo001@smartaccess.local'
)
INSERT INTO ajustes_aforo (codigo_ajuste, ubicacion_id, usuario_id, delta, motivo, creado_en)
SELECT
    'JOH-AJUSTE-' || LPAD(g.n::TEXT, 3, '0'),
    u.id,
    usr.id,
    CASE WHEN g.n % 2 = 0 THEN -1 ELSE 1 END,
    'Ajuste de demostración para validación.',
    TIMESTAMPTZ '2026-10-04 08:00:00-06' + (g.n * INTERVAL '3 minutes')
FROM GENERATE_SERIES(1, 20) AS g(n)
JOIN ubicaciones_demo AS u ON u.rn = ((g.n - 1) % 5) + 1
CROSS JOIN usuario_demo AS usr
ON CONFLICT (codigo_ajuste) DO NOTHING;

WITH ubicaciones_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY nombre) AS rn
    FROM ubicaciones
),
dispositivos_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY codigo) AS rn
    FROM dispositivos
    WHERE codigo LIKE 'ISA-DISPOSITIVO-%'
),
usuario_demo AS (
    SELECT id FROM usuarios WHERE correo = 'pablo.demo001@smartaccess.local'
)
INSERT INTO alertas
    (codigo_alerta, ubicacion_id, dispositivo_id, tipo, severidad, mensaje,
     estado, creada_en, atendida_en, atendida_por)
SELECT
    'JOH-ALERTA-' || LPAD(g.n::TEXT, 3, '0'),
    u.id,
    d.id,
    (ARRAY['aforo_alto', 'aforo_excedido', 'dispositivo_desconectado',
           'camara_fallando', 'conteo_anomalo'])[((g.n - 1) % 5) + 1],
    (ARRAY['baja', 'media', 'alta'])[((g.n - 1) % 3) + 1],
    'Alerta sintética para pruebas; no representa un incidente real.',
    CASE WHEN g.n % 2 = 0 THEN 'resuelta' ELSE 'pendiente' END,
    TIMESTAMPTZ '2026-10-05 08:00:00-06' + (g.n * INTERVAL '4 minutes'),
    CASE WHEN g.n % 2 = 0
         THEN TIMESTAMPTZ '2026-10-05 08:30:00-06' + (g.n * INTERVAL '4 minutes')
         ELSE NULL
    END,
    CASE WHEN g.n % 2 = 0 THEN usr.id ELSE NULL END
FROM GENERATE_SERIES(1, 20) AS g(n)
JOIN ubicaciones_demo AS u ON u.rn = ((g.n - 1) % 5) + 1
JOIN dispositivos_demo AS d ON d.rn = ((g.n - 1) % 10) + 1
CROSS JOIN usuario_demo AS usr
ON CONFLICT (codigo_alerta) DO NOTHING;

WITH ubicaciones_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY nombre) AS rn
    FROM ubicaciones
),
usuario_demo AS (
    SELECT id FROM usuarios WHERE correo = 'pablo.demo001@smartaccess.local'
)
INSERT INTO reportes
    (codigo_reporte, ubicacion_id, generado_por, tipo, periodo_inicio, periodo_fin, ruta_archivo)
SELECT
    'JOH-REPORTE-' || LPAD(g.n::TEXT, 3, '0'),
    u.id,
    usr.id,
    (ARRAY['diario', 'semanal', 'mensual', 'personalizado'])[((g.n - 1) % 4) + 1],
    TIMESTAMPTZ '2026-10-01 00:00:00-06' + (g.n * INTERVAL '1 day'),
    TIMESTAMPTZ '2026-10-02 00:00:00-06' + (g.n * INTERVAL '1 day'),
    NULL
FROM GENERATE_SERIES(1, 20) AS g(n)
JOIN ubicaciones_demo AS u ON u.rn = ((g.n - 1) % 5) + 1
CROSS JOIN usuario_demo AS usr
ON CONFLICT (codigo_reporte) DO NOTHING;

COMMIT;
