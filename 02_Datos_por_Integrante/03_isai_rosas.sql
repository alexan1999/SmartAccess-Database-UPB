-- Autor: Isaí Rosas Canto
-- 10 accesos, 10 dispositivos, 10 configuraciones, 10 telemetrías y
-- 20 eventos sintéticos (60 filas).

BEGIN;

WITH ubicaciones_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY nombre) AS rn
    FROM ubicaciones
)
INSERT INTO accesos (ubicacion_id, nombre, tipo)
SELECT
    u.id,
    'Acceso de demostración ' || LPAD(g.n::TEXT, 2, '0'),
    CASE
        WHEN g.n % 3 = 0 THEN 'bidireccional'
        WHEN g.n % 2 = 0 THEN 'salida'
        ELSE 'entrada'
    END
FROM GENERATE_SERIES(1, 10) AS g(n)
JOIN ubicaciones_demo AS u ON u.rn = ((g.n - 1) % 5) + 1
ON CONFLICT (ubicacion_id, nombre) DO NOTHING;

WITH accesos_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY nombre) AS rn
    FROM accesos
    WHERE nombre LIKE 'Acceso de demostración %'
)
INSERT INTO dispositivos
    (acceso_id, codigo, nombre, modelo, modelo_camara, mac_wifi, version_firmware, estado)
SELECT
    a.id,
    'ISA-DISPOSITIVO-' || LPAD(g.n::TEXT, 3, '0'),
    'Cámara de conteo ' || LPAD(g.n::TEXT, 2, '0'),
    'ESP32-S3 N16R8',
    'OV2640',
    ('02:00:00:00:10:' || LPAD(g.n::TEXT, 2, '0'))::MACADDR,
    '1.0.0-demo',
    'activo'
FROM GENERATE_SERIES(1, 10) AS g(n)
JOIN accesos_demo AS a ON a.rn = g.n
ON CONFLICT (codigo) DO NOTHING;

WITH dispositivos_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY codigo) AS rn
    FROM dispositivos
    WHERE codigo LIKE 'ISA-DISPOSITIVO-%'
)
INSERT INTO configuraciones_dispositivo
    (dispositivo_id, algoritmo, confianza_minima, resolucion, fps_objetivo,
     antirrebote_ms, orientacion)
SELECT
    d.id,
    'cruce_linea_virtual',
    0.850,
    '640x480',
    5,
    1200,
    'cenital'
FROM dispositivos_demo AS d
ON CONFLICT (dispositivo_id) DO NOTHING;

WITH dispositivos_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY codigo) AS rn
    FROM dispositivos
    WHERE codigo LIKE 'ISA-DISPOSITIVO-%'
)
INSERT INTO telemetria_dispositivo
    (dispositivo_id, registrado_en, rssi_dbm, memoria_libre_bytes, fps_real, camara_operativa)
SELECT
    d.id,
    TIMESTAMPTZ '2026-10-03 08:00:00-06' + (d.rn * INTERVAL '5 minutes'),
    -45 - d.rn,
    4194304 - (d.rn * 4096),
    4.50 + (d.rn / 10.0),
    TRUE
FROM dispositivos_demo AS d
ON CONFLICT (dispositivo_id, registrado_en) DO NOTHING;

WITH dispositivos_demo AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY codigo) AS rn
    FROM dispositivos
    WHERE codigo LIKE 'ISA-DISPOSITIVO-%'
)
INSERT INTO eventos_conteo
    (dispositivo_id, evento_externo, direccion, cantidad, confianza, origen, ocurrido_en)
SELECT
    d.id,
    'ISA-EVENTO-' || LPAD(g.n::TEXT, 3, '0'),
    CASE WHEN g.n % 2 = 0 THEN 'salida' ELSE 'entrada' END,
    1 + (g.n % 3),
    0.900,
    'simulacion',
    TIMESTAMPTZ '2026-10-03 09:00:00-06' + (g.n * INTERVAL '1 minute')
FROM GENERATE_SERIES(1, 20) AS g(n)
JOIN dispositivos_demo AS d ON d.rn = ((g.n - 1) % 10) + 1
ON CONFLICT (evento_externo) DO NOTHING;

COMMIT;
