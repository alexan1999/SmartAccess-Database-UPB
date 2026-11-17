-- SmartAccess - conteo general, integridad referencial y consultas analíticas

-- 1. Conteo por tabla y total acumulado de las 16 tablas.
WITH conteos AS (
    SELECT 'roles' AS tabla, COUNT(*) AS registros FROM roles
    UNION ALL SELECT 'modulos', COUNT(*) FROM modulos
    UNION ALL SELECT 'permisos', COUNT(*) FROM permisos
    UNION ALL SELECT 'usuarios', COUNT(*) FROM usuarios
    UNION ALL SELECT 'sesiones_usuario', COUNT(*) FROM sesiones_usuario
    UNION ALL SELECT 'intentos_login', COUNT(*) FROM intentos_login
    UNION ALL SELECT 'ubicaciones', COUNT(*) FROM ubicaciones
    UNION ALL SELECT 'accesos', COUNT(*) FROM accesos
    UNION ALL SELECT 'dispositivos', COUNT(*) FROM dispositivos
    UNION ALL SELECT 'configuraciones_dispositivo', COUNT(*) FROM configuraciones_dispositivo
    UNION ALL SELECT 'telemetria_dispositivo', COUNT(*) FROM telemetria_dispositivo
    UNION ALL SELECT 'ajustes_aforo', COUNT(*) FROM ajustes_aforo
    UNION ALL SELECT 'alertas', COUNT(*) FROM alertas
    UNION ALL SELECT 'reportes', COUNT(*) FROM reportes
    UNION ALL SELECT 'auditoria', COUNT(*) FROM auditoria
    UNION ALL SELECT 'eventos_conteo', COUNT(*) FROM eventos_conteo
)
SELECT tabla, registros
FROM (
    SELECT tabla, registros, 0 AS orden FROM conteos
    UNION ALL
    SELECT 'TOTAL 16 TABLAS', SUM(registros), 1 FROM conteos
) AS resultado
ORDER BY orden, tabla;

-- 2. Restricciones FOREIGN KEY registradas en el esquema actual.
SELECT
    tc.table_name AS tabla,
    tc.constraint_name AS restriccion,
    kcu.column_name AS columna,
    ccu.table_name AS tabla_referenciada,
    ccu.column_name AS columna_referenciada
FROM information_schema.table_constraints AS tc
INNER JOIN information_schema.key_column_usage AS kcu
    ON kcu.constraint_catalog = tc.constraint_catalog
   AND kcu.constraint_schema = tc.constraint_schema
   AND kcu.constraint_name = tc.constraint_name
INNER JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_catalog = tc.constraint_catalog
   AND ccu.constraint_schema = tc.constraint_schema
   AND ccu.constraint_name = tc.constraint_name
WHERE tc.constraint_type = 'FOREIGN KEY'
  AND tc.table_schema = current_schema()
ORDER BY tc.table_name, tc.constraint_name;

-- Consultas analíticas (1 de 10): entradas y salidas acumuladas por ubicación.
SELECT
    u.nombre AS ubicacion,
    COUNT(e.id) AS eventos,
    COALESCE(SUM(e.cantidad) FILTER (WHERE e.direccion = 'entrada'), 0) AS entradas,
    COALESCE(SUM(e.cantidad) FILTER (WHERE e.direccion = 'salida'), 0) AS salidas
FROM ubicaciones AS u
INNER JOIN accesos AS a ON a.ubicacion_id = u.id
INNER JOIN dispositivos AS d ON d.acceso_id = a.id
INNER JOIN eventos_conteo AS e ON e.dispositivo_id = d.id
GROUP BY u.id, u.nombre
ORDER BY eventos DESC, u.nombre;

-- Consultas analíticas (2 de 10): ubicaciones con ocupación superior al 80 %.
SELECT ubicacion, capacidad_maxima, aforo_actual, porcentaje_ocupacion
FROM vw_aforo_actual
WHERE porcentaje_ocupacion >= 80
ORDER BY porcentaje_ocupacion DESC, ubicacion;

-- Consultas analíticas (3 de 10): estado de dispositivos, incluyendo ubicaciones vacías.
SELECT
    u.nombre AS ubicacion,
    COUNT(d.id) AS total_dispositivos,
    COUNT(d.id) FILTER (WHERE d.estado = 'activo') AS dispositivos_activos,
    COUNT(d.id) FILTER (WHERE d.estado = 'mantenimiento') AS en_mantenimiento
FROM ubicaciones AS u
LEFT JOIN accesos AS a ON a.ubicacion_id = u.id
LEFT JOIN dispositivos AS d ON d.acceso_id = a.id
GROUP BY u.id, u.nombre
ORDER BY total_dispositivos DESC, u.nombre;

-- Consultas analíticas (4 de 10): volumen y confianza media por dispositivo.
SELECT
    d.codigo,
    d.nombre,
    COUNT(e.id) AS eventos,
    SUM(e.cantidad) AS personas_contabilizadas,
    AVG(e.confianza) AS confianza_promedio
FROM dispositivos AS d
INNER JOIN eventos_conteo AS e ON e.dispositivo_id = d.id
WHERE e.ocurrido_en >= TIMESTAMPTZ '2026-01-01 00:00:00+00'
GROUP BY d.id, d.codigo, d.nombre
HAVING COUNT(e.id) >= 1
ORDER BY personas_contabilizadas DESC, d.codigo;

-- Consultas analíticas (5 de 10): mínimos, máximos y promedios de telemetría.
SELECT
    d.codigo,
    COUNT(t.id) AS mediciones,
    ROUND(AVG(t.fps_real), 2) AS fps_promedio,
    MIN(t.rssi_dbm) AS rssi_minimo,
    MAX(t.rssi_dbm) AS rssi_maximo,
    MIN(t.memoria_libre_bytes) AS memoria_minima
FROM dispositivos AS d
LEFT JOIN telemetria_dispositivo AS t ON t.dispositivo_id = d.id
GROUP BY d.id, d.codigo
ORDER BY mediciones DESC, d.codigo;

-- Consultas analíticas (6 de 10): intentos correctos y fallidos por usuario.
SELECT
    u.correo,
    COUNT(i.id) AS intentos,
    COUNT(i.id) FILTER (WHERE i.exitoso) AS exitosos,
    COUNT(i.id) FILTER (WHERE NOT i.exitoso) AS fallidos,
    MAX(i.ocurrido_en) AS ultimo_intento
FROM usuarios AS u
LEFT JOIN intentos_login AS i ON i.usuario_id = u.id
WHERE u.activo OR i.id IS NOT NULL
GROUP BY u.id, u.correo
ORDER BY fallidos DESC, intentos DESC, u.correo;

-- Consultas analíticas (7 de 10): sesiones activas por rol.
SELECT
    r.nombre AS rol,
    COUNT(s.id) AS sesiones_activas,
    MIN(s.inicio_en) AS sesion_mas_antigua,
    MAX(s.expira_en) AS expiracion_mas_lejana
FROM roles AS r
INNER JOIN usuarios AS u ON u.rol_id = r.id
LEFT JOIN sesiones_usuario AS s
    ON s.usuario_id = u.id
   AND NOT s.revocada
   AND s.expira_en > NOW()
GROUP BY r.id, r.nombre
ORDER BY sesiones_activas DESC, r.nombre;

-- Consultas analíticas (8 de 10): reportes por usuario y ubicación.
SELECT
    u.correo AS generado_por,
    l.nombre AS ubicacion,
    COUNT(rp.id) AS reportes,
    MIN(rp.periodo_inicio) AS periodo_mas_antiguo,
    MAX(rp.periodo_fin) AS periodo_mas_reciente
FROM reportes AS rp
INNER JOIN usuarios AS u ON u.id = rp.generado_por
LEFT JOIN ubicaciones AS l ON l.id = rp.ubicacion_id
GROUP BY u.id, u.correo, l.id, l.nombre
HAVING COUNT(rp.id) >= 1
ORDER BY reportes DESC, generado_por;

-- Consultas analíticas (9 de 10): alertas abiertas por tipo y ubicación.
SELECT
    l.nombre AS ubicacion,
    al.tipo,
    al.severidad,
    COUNT(*) AS alertas_pendientes,
    MIN(al.creada_en) AS alerta_mas_antigua,
    MAX(al.creada_en) AS alerta_mas_reciente
FROM alertas AS al
INNER JOIN ubicaciones AS l ON l.id = al.ubicacion_id
WHERE al.estado = 'pendiente'
GROUP BY l.id, l.nombre, al.tipo, al.severidad
HAVING COUNT(*) >= 1
ORDER BY alertas_pendientes DESC, alerta_mas_antigua;

-- Consultas analíticas (10 de 10): ajustes manuales acumulados por operador y ubicación.
SELECT
    u.correo AS operador,
    l.nombre AS ubicacion,
    COUNT(aj.id) AS ajustes,
    SUM(aj.delta) AS ajuste_neto,
    MIN(aj.delta) AS menor_ajuste,
    MAX(aj.delta) AS mayor_ajuste
FROM ajustes_aforo AS aj
INNER JOIN usuarios AS u ON u.id = aj.usuario_id
INNER JOIN ubicaciones AS l ON l.id = aj.ubicacion_id
GROUP BY u.id, u.correo, l.id, l.nombre
ORDER BY ajustes DESC, operador, ubicacion;
