-- SmartAccess - esquema relacional para PostgreSQL
-- Ejecutar una sola vez en una base de datos nueva.

BEGIN;

CREATE TABLE roles (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL UNIQUE,
    descripcion TEXT
);

CREATE TABLE modulos (
    id BIGSERIAL PRIMARY KEY,
    clave VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(80) NOT NULL,
    descripcion TEXT
);

CREATE TABLE permisos (
    id BIGSERIAL PRIMARY KEY,
    rol_id BIGINT NOT NULL REFERENCES roles(id) ON DELETE CASCADE,
    modulo_id BIGINT NOT NULL REFERENCES modulos(id) ON DELETE CASCADE,
    puede_ver BOOLEAN NOT NULL DEFAULT FALSE,
    puede_crear BOOLEAN NOT NULL DEFAULT FALSE,
    puede_editar BOOLEAN NOT NULL DEFAULT FALSE,
    puede_eliminar BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT uq_permisos_rol_modulo UNIQUE (rol_id, modulo_id)
);

CREATE TABLE usuarios (
    id BIGSERIAL PRIMARY KEY,
    rol_id BIGINT NOT NULL REFERENCES roles(id) ON DELETE RESTRICT,
    nombre VARCHAR(120) NOT NULL,
    correo VARCHAR(254) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    creado_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_usuarios_correo CHECK (POSITION('@' IN correo) > 1)
);

CREATE TABLE sesiones_usuario (
    id BIGSERIAL PRIMARY KEY,
    usuario_id BIGINT NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    token_hash VARCHAR(255) NOT NULL UNIQUE,
    inicio_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    expira_en TIMESTAMPTZ NOT NULL,
    revocada BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT ck_sesiones_expiracion CHECK (expira_en > inicio_en)
);

CREATE TABLE intentos_login (
    id BIGSERIAL PRIMARY KEY,
    usuario_id BIGINT REFERENCES usuarios(id) ON DELETE SET NULL,
    correo_intentado VARCHAR(254) NOT NULL,
    ip_origen INET,
    exitoso BOOLEAN NOT NULL,
    motivo VARCHAR(150),
    ocurrido_en TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE ubicaciones (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    descripcion TEXT,
    direccion VARCHAR(255),
    capacidad_maxima INTEGER NOT NULL,
    activa BOOLEAN NOT NULL DEFAULT TRUE,
    creada_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_ubicaciones_capacidad CHECK (capacidad_maxima > 0)
);

CREATE TABLE accesos (
    id BIGSERIAL PRIMARY KEY,
    ubicacion_id BIGINT NOT NULL REFERENCES ubicaciones(id) ON DELETE RESTRICT,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL DEFAULT 'bidireccional',
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT ck_accesos_tipo
        CHECK (tipo IN ('entrada', 'salida', 'bidireccional')),
    CONSTRAINT uq_accesos_ubicacion_nombre UNIQUE (ubicacion_id, nombre)
);

CREATE TABLE dispositivos (
    id BIGSERIAL PRIMARY KEY,
    acceso_id BIGINT NOT NULL REFERENCES accesos(id) ON DELETE RESTRICT,
    codigo VARCHAR(64) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    modelo VARCHAR(80) NOT NULL DEFAULT 'ESP32-S3 N16R8',
    modelo_camara VARCHAR(50) NOT NULL DEFAULT 'OV2640',
    mac_wifi MACADDR UNIQUE,
    version_firmware VARCHAR(40),
    estado VARCHAR(20) NOT NULL DEFAULT 'inactivo',
    ultima_conexion TIMESTAMPTZ,
    instalado_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_dispositivos_estado
        CHECK (estado IN ('activo', 'inactivo', 'mantenimiento'))
);

CREATE TABLE configuraciones_dispositivo (
    id BIGSERIAL PRIMARY KEY,
    dispositivo_id BIGINT NOT NULL UNIQUE
        REFERENCES dispositivos(id) ON DELETE CASCADE,
    algoritmo VARCHAR(80) NOT NULL DEFAULT 'cruce_linea_virtual',
    confianza_minima NUMERIC(4,3) NOT NULL DEFAULT 0.750,
    resolucion VARCHAR(24) NOT NULL DEFAULT '320x240',
    fps_objetivo SMALLINT NOT NULL DEFAULT 5,
    antirrebote_ms INTEGER NOT NULL DEFAULT 1500,
    orientacion VARCHAR(20) NOT NULL DEFAULT 'cenital',
    actualizada_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_config_confianza CHECK (confianza_minima BETWEEN 0 AND 1),
    CONSTRAINT ck_config_fps CHECK (fps_objetivo BETWEEN 1 AND 30),
    CONSTRAINT ck_config_antirrebote CHECK (antirrebote_ms BETWEEN 0 AND 120000),
    CONSTRAINT ck_config_orientacion
        CHECK (orientacion IN ('cenital', 'frontal', 'lateral'))
);

CREATE TABLE telemetria_dispositivo (
    id BIGSERIAL PRIMARY KEY,
    dispositivo_id BIGINT NOT NULL
        REFERENCES dispositivos(id) ON DELETE CASCADE,
    registrado_en TIMESTAMPTZ NOT NULL,
    rssi_dbm SMALLINT,
    memoria_libre_bytes BIGINT,
    fps_real NUMERIC(5,2),
    camara_operativa BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT ck_telemetria_rssi CHECK (rssi_dbm IS NULL OR rssi_dbm BETWEEN -120 AND 0),
    CONSTRAINT ck_telemetria_memoria CHECK (memoria_libre_bytes IS NULL OR memoria_libre_bytes >= 0),
    CONSTRAINT ck_telemetria_fps CHECK (fps_real IS NULL OR fps_real >= 0),
    CONSTRAINT uq_telemetria_dispositivo_fecha UNIQUE (dispositivo_id, registrado_en)
);

CREATE TABLE ajustes_aforo (
    id BIGSERIAL PRIMARY KEY,
    codigo_ajuste VARCHAR(80) NOT NULL UNIQUE,
    ubicacion_id BIGINT NOT NULL REFERENCES ubicaciones(id) ON DELETE RESTRICT,
    usuario_id BIGINT NOT NULL REFERENCES usuarios(id) ON DELETE RESTRICT,
    delta INTEGER NOT NULL,
    motivo VARCHAR(250) NOT NULL,
    creado_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_ajustes_delta CHECK (delta <> 0)
);

CREATE TABLE alertas (
    id BIGSERIAL PRIMARY KEY,
    codigo_alerta VARCHAR(80) NOT NULL UNIQUE,
    ubicacion_id BIGINT NOT NULL REFERENCES ubicaciones(id) ON DELETE RESTRICT,
    dispositivo_id BIGINT REFERENCES dispositivos(id) ON DELETE SET NULL,
    tipo VARCHAR(35) NOT NULL,
    severidad VARCHAR(12) NOT NULL,
    mensaje TEXT NOT NULL,
    estado VARCHAR(12) NOT NULL DEFAULT 'pendiente',
    creada_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    atendida_en TIMESTAMPTZ,
    atendida_por BIGINT REFERENCES usuarios(id) ON DELETE SET NULL,
    CONSTRAINT ck_alertas_tipo CHECK (
        tipo IN ('aforo_alto', 'aforo_excedido', 'dispositivo_desconectado',
                 'camara_fallando', 'conteo_anomalo')
    ),
    CONSTRAINT ck_alertas_severidad CHECK (severidad IN ('baja', 'media', 'alta')),
    CONSTRAINT ck_alertas_estado CHECK (estado IN ('pendiente', 'resuelta')),
    CONSTRAINT ck_alertas_atencion CHECK (
        (estado = 'pendiente' AND atendida_en IS NULL)
        OR (estado = 'resuelta' AND atendida_en IS NOT NULL)
    )
);

CREATE TABLE reportes (
    id BIGSERIAL PRIMARY KEY,
    codigo_reporte VARCHAR(80) NOT NULL UNIQUE,
    ubicacion_id BIGINT REFERENCES ubicaciones(id) ON DELETE SET NULL,
    generado_por BIGINT NOT NULL REFERENCES usuarios(id) ON DELETE RESTRICT,
    tipo VARCHAR(20) NOT NULL,
    periodo_inicio TIMESTAMPTZ NOT NULL,
    periodo_fin TIMESTAMPTZ NOT NULL,
    generado_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    ruta_archivo TEXT,
    CONSTRAINT ck_reportes_tipo
        CHECK (tipo IN ('diario', 'semanal', 'mensual', 'personalizado')),
    CONSTRAINT ck_reportes_periodo CHECK (periodo_fin > periodo_inicio)
);

CREATE TABLE auditoria (
    id BIGSERIAL PRIMARY KEY,
    codigo_accion VARCHAR(80) NOT NULL UNIQUE,
    usuario_id BIGINT REFERENCES usuarios(id) ON DELETE SET NULL,
    entidad VARCHAR(70) NOT NULL,
    operacion VARCHAR(20) NOT NULL,
    identificador_registro VARCHAR(80),
    detalle JSONB,
    realizada_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_auditoria_operacion
        CHECK (operacion IN ('INSERT', 'UPDATE', 'DELETE', 'LOGIN', 'EXPORT'))
);

CREATE TABLE eventos_conteo (
    id BIGSERIAL PRIMARY KEY,
    dispositivo_id BIGINT NOT NULL REFERENCES dispositivos(id) ON DELETE RESTRICT,
    evento_externo VARCHAR(80) NOT NULL UNIQUE,
    direccion VARCHAR(10) NOT NULL,
    cantidad SMALLINT NOT NULL DEFAULT 1,
    confianza NUMERIC(4,3),
    origen VARCHAR(15) NOT NULL DEFAULT 'camara',
    usuario_id BIGINT REFERENCES usuarios(id) ON DELETE SET NULL,
    ocurrido_en TIMESTAMPTZ NOT NULL,
    recibido_en TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT ck_eventos_direccion CHECK (direccion IN ('entrada', 'salida')),
    CONSTRAINT ck_eventos_cantidad CHECK (cantidad BETWEEN 1 AND 100),
    CONSTRAINT ck_eventos_confianza CHECK (confianza IS NULL OR confianza BETWEEN 0 AND 1),
    CONSTRAINT ck_eventos_origen CHECK (origen IN ('camara', 'manual', 'simulacion'))
);

CREATE INDEX ix_sesiones_usuario_expira ON sesiones_usuario (usuario_id, expira_en);
CREATE INDEX ix_intentos_login_fecha ON intentos_login (ocurrido_en);
CREATE INDEX ix_dispositivos_acceso ON dispositivos (acceso_id);
CREATE INDEX ix_eventos_dispositivo_fecha ON eventos_conteo (dispositivo_id, ocurrido_en);
CREATE INDEX ix_telemetria_dispositivo_fecha ON telemetria_dispositivo (dispositivo_id, registrado_en);
CREATE INDEX ix_alertas_estado_fecha ON alertas (estado, creada_en);

CREATE VIEW vw_aforo_actual AS
WITH conteos AS (
    SELECT
        a.ubicacion_id,
        SUM(CASE WHEN e.direccion = 'entrada' THEN e.cantidad ELSE 0 END) AS entradas,
        SUM(CASE WHEN e.direccion = 'salida' THEN e.cantidad ELSE 0 END) AS salidas
    FROM eventos_conteo AS e
    INNER JOIN dispositivos AS d ON d.id = e.dispositivo_id
    INNER JOIN accesos AS a ON a.id = d.acceso_id
    GROUP BY a.ubicacion_id
),
ajustes AS (
    SELECT ubicacion_id, SUM(delta) AS ajuste_neto
    FROM ajustes_aforo
    GROUP BY ubicacion_id
)
SELECT
    u.id AS ubicacion_id,
    u.nombre AS ubicacion,
    u.capacidad_maxima,
    COALESCE(c.entradas, 0) AS entradas_acumuladas,
    COALESCE(c.salidas, 0) AS salidas_acumuladas,
    COALESCE(aj.ajuste_neto, 0) AS ajuste_neto,
    GREATEST(
        0,
        COALESCE(c.entradas, 0) - COALESCE(c.salidas, 0) + COALESCE(aj.ajuste_neto, 0)
    ) AS aforo_actual,
    ROUND(
        100.0 * GREATEST(
            0,
            COALESCE(c.entradas, 0) - COALESCE(c.salidas, 0) + COALESCE(aj.ajuste_neto, 0)
        ) / u.capacidad_maxima,
        1
    ) AS porcentaje_ocupacion
FROM ubicaciones AS u
LEFT JOIN conteos AS c ON c.ubicacion_id = u.id
LEFT JOIN ajustes AS aj ON aj.ubicacion_id = u.id;

COMMIT;
