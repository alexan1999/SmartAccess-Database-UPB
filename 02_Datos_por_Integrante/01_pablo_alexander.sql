-- Autor: Pablo Alexander Méndez Pimienta
-- Catálogos base y 24 usuarios de demostración (60 filas en total).
-- Las cuentas son inactivas y usan una marca no válida como contraseña.

BEGIN;

INSERT INTO roles (nombre, descripcion) VALUES
    ('administrador', 'Administra catálogos, usuarios y configuración.'),
    ('operador', 'Supervisa accesos, aforo, dispositivos y alertas.'),
    ('consulta', 'Consulta paneles e informes sin modificar datos.')
ON CONFLICT (nombre) DO NOTHING;

INSERT INTO modulos (clave, nombre, descripcion) VALUES
    ('dashboard', 'Panel principal', 'Aforo actual e indicadores operativos.'),
    ('usuarios', 'Usuarios y permisos', 'Cuentas, roles y permisos.'),
    ('ubicaciones', 'Ubicaciones y accesos', 'Espacios, capacidad y puertas.'),
    ('dispositivos', 'Dispositivos IoT', 'Inventario y configuración de cámaras.'),
    ('monitoreo', 'Monitoreo', 'Eventos de entrada y salida.'),
    ('alertas', 'Alertas', 'Incidentes y seguimiento operativo.'),
    ('reportes', 'Reportes', 'Informes e historial del sistema.')
ON CONFLICT (clave) DO NOTHING;

INSERT INTO permisos (rol_id, modulo_id, puede_ver, puede_crear, puede_editar, puede_eliminar)
SELECT
    r.id,
    m.id,
    TRUE,
    r.nombre = 'administrador'
        OR (r.nombre = 'operador' AND m.clave IN ('monitoreo', 'alertas', 'reportes')),
    r.nombre = 'administrador'
        OR (r.nombre = 'operador' AND m.clave IN ('alertas', 'reportes')),
    r.nombre = 'administrador'
FROM roles AS r
CROSS JOIN modulos AS m
ON CONFLICT (rol_id, modulo_id) DO NOTHING;

INSERT INTO ubicaciones (nombre, descripcion, direccion, capacidad_maxima) VALUES
    ('Edificio Académico A', 'Aulas y laboratorios académicos.', 'Campus UPB', 150),
    ('Laboratorio de Redes', 'Prácticas de redes y telecomunicaciones.', 'Campus UPB', 60),
    ('Centro de Información', 'Biblioteca y salas de estudio.', 'Campus UPB', 90),
    ('Auditorio Universitario', 'Eventos y conferencias.', 'Campus UPB', 250),
    ('Laboratorio de Electrónica', 'Prácticas de electrónica y prototipado.', 'Campus UPB', 50)
ON CONFLICT (nombre) DO NOTHING;

INSERT INTO usuarios (rol_id, nombre, correo, password_hash, activo)
SELECT
    r.id,
    'Usuario de demostración ' || LPAD(g.n::TEXT, 3, '0'),
    'pablo.demo' || LPAD(g.n::TEXT, 3, '0') || '@smartaccess.local',
    '!DEMO_ONLY_NO_CREDENTIAL!',
    FALSE
FROM GENERATE_SERIES(1, 24) AS g(n)
JOIN roles AS r
    ON r.nombre = CASE
        WHEN g.n % 3 = 1 THEN 'administrador'
        WHEN g.n % 3 = 2 THEN 'operador'
        ELSE 'consulta'
    END
ON CONFLICT (correo) DO NOTHING;

COMMIT;
