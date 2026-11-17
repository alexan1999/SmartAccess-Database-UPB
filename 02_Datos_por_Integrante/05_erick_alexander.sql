-- Autor: Erick Alexander Koyoc Pech
-- 60 acciones de auditoría sintéticas (sin datos personales ni credenciales).

BEGIN;

WITH usuario_demo AS (
    SELECT id FROM usuarios WHERE correo = 'pablo.demo001@smartaccess.local'
)
INSERT INTO auditoria
    (codigo_accion, usuario_id, entidad, operacion, identificador_registro, detalle, realizada_en)
SELECT
    'ERI-AUDITORIA-' || LPAD(g.n::TEXT, 3, '0'),
    u.id,
    (ARRAY['usuarios', 'accesos', 'dispositivos', 'eventos_conteo',
           'alertas', 'reportes', 'ajustes_aforo', 'sesiones_usuario'])
        [((g.n - 1) % 8) + 1],
    (ARRAY['INSERT', 'UPDATE', 'DELETE', 'LOGIN', 'EXPORT'])
        [((g.n - 1) % 5) + 1],
    'DEMO-REG-' || LPAD(g.n::TEXT, 3, '0'),
    JSONB_BUILD_OBJECT('origen', 'datos_sinteticos', 'secuencia', g.n),
    TIMESTAMPTZ '2026-10-06 08:00:00-06' + (g.n * INTERVAL '2 minutes')
FROM GENERATE_SERIES(1, 60) AS g(n)
CROSS JOIN usuario_demo AS u
ON CONFLICT (codigo_accion) DO NOTHING;

COMMIT;
