-- Autor: Eliel Alegría Cruz
-- 30 sesiones y 30 intentos de inicio de sesión sintéticos (60 filas).

BEGIN;

WITH usuarios_demo AS (
    SELECT id, correo, ROW_NUMBER() OVER (ORDER BY correo) AS rn
    FROM usuarios
    WHERE correo LIKE 'pablo.demo%@smartaccess.local'
)
INSERT INTO sesiones_usuario (usuario_id, token_hash, inicio_en, expira_en, revocada)
SELECT
    u.id,
    'DEMO-ELIEL-SESSION-' || LPAD(g.n::TEXT, 3, '0'),
    TIMESTAMPTZ '2026-10-01 08:00:00-06' + (g.n * INTERVAL '1 minute'),
    TIMESTAMPTZ '2026-10-01 12:00:00-06' + (g.n * INTERVAL '1 minute'),
    g.n % 4 = 0
FROM GENERATE_SERIES(1, 30) AS g(n)
JOIN usuarios_demo AS u ON u.rn = ((g.n - 1) % 24) + 1
ON CONFLICT (token_hash) DO NOTHING;

WITH usuarios_demo AS (
    SELECT id, correo, ROW_NUMBER() OVER (ORDER BY correo) AS rn
    FROM usuarios
    WHERE correo LIKE 'pablo.demo%@smartaccess.local'
)
INSERT INTO intentos_login
    (usuario_id, correo_intentado, ip_origen, exitoso, motivo, ocurrido_en)
SELECT
    u.id,
    u.correo,
    ('192.0.2.' || g.n::TEXT)::INET,
    g.n % 2 = 0,
    CASE WHEN g.n % 2 = 0 THEN NULL ELSE 'Credencial de prueba no válida.' END,
    TIMESTAMPTZ '2026-10-02 08:00:00-06' + (g.n * INTERVAL '2 minutes')
FROM GENERATE_SERIES(1, 30) AS g(n)
JOIN usuarios_demo AS u ON u.rn = ((g.n - 1) % 24) + 1
WHERE NOT EXISTS (
    SELECT 1
    FROM intentos_login AS existente
    WHERE existente.correo_intentado = u.correo
      AND existente.ip_origen = ('192.0.2.' || g.n::TEXT)::INET
      AND existente.ocurrido_en =
          TIMESTAMPTZ '2026-10-02 08:00:00-06' + (g.n * INTERVAL '2 minutes')
);

COMMIT;
