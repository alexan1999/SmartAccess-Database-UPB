--
-- PostgreSQL database cluster dump
--

-- Started on 2026-11-17 06:45:37 PST

\restrict dIayLqBHmET3TWSJg8V8gdagAOvXdjBdzrtefdavdYhm96tXIHA2BoouUfcbyif

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE eliel;
ALTER ROLE eliel WITH NOSUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:IGnP8dz4yDAPQsTPm7VWYQ==$s0dSBeMVn7kFE2VXdbYukvAThqlkpJTDAz95j0EcPDE=:JlbuGIbnD6xHkRJ8nc28w2u3Cmn4/2xVV1T0A8FxVKs=';
CREATE ROLE isai;
ALTER ROLE isai WITH NOSUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:S9AyBZNF7hMHXxdxxYKkOg==$QGYYpGyR6umW+q0DXTA+ilfTc+glLE1yOnAC2QiEdjM=:kJcIpOZQjcJWTBYf3CigPcfotxJU+bMFjRZvnyRzuqs=';
CREATE ROLE johanan;
ALTER ROLE johanan WITH NOSUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:SrKcs5JzVDWMMUCe4aFDoQ==$kVDofcX/hKk2lgICxfsHC13TmdpX/zpKt/3dPfMomQQ=:EapahG9f9pjepkDPrEwffnFAaUYhP1VZ9yLqDNLiLeo=';
CREATE ROLE pablo;
ALTER ROLE pablo WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:X4PpCHBhxiZ96T5lKX/JUA==$3SCwjSXGLVfTR0dQ5P4ZGnWCSpOpYnpQV8by52pf1vc=:XIti9PYHGYF9ZnT9oGAwPgi2lIwdtjQGYFg9mEtVAxo=';
CREATE ROLE pablo_mendez;
ALTER ROLE pablo_mendez WITH NOSUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:AX78P494kQj/ISZ5GbHk3A==$27ANQ4Bcoa7LpEs4kHj6KW9sNKflATleb3287+iYXV8=:dpCVPB+2R/uFovWP4jjVjaWHlKahNHl8nYbIunNvCRo=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE rol_crud;
ALTER ROLE rol_crud WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;

--
-- User Configurations
--


--
-- Role memberships
--

GRANT rol_crud TO eliel WITH INHERIT TRUE GRANTED BY postgres;
GRANT rol_crud TO isai WITH INHERIT TRUE GRANTED BY postgres;
GRANT rol_crud TO johanan WITH INHERIT TRUE GRANTED BY postgres;
GRANT rol_crud TO pablo WITH INHERIT TRUE GRANTED BY postgres;






\unrestrict dIayLqBHmET3TWSJg8V8gdagAOvXdjBdzrtefdavdYhm96tXIHA2BoouUfcbyif

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict ILG1AbbHuSX7TlMdEeDMFjJP4qc81cr6aa4Po529zjLxdpahUbwvmgrHs6xkOV8

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict ILG1AbbHuSX7TlMdEeDMFjJP4qc81cr6aa4Po529zjLxdpahUbwvmgrHs6xkOV8

--
-- Database "ISAI_ROSAS_CANTO" dump
--

--
-- PostgreSQL database dump
--

\restrict QwEFQ5XMldZZaSgjqBcuwJIX7wW3tbIqTzTYNXutm5C2NjFBKjx6A29YxMe9OwT

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4675 (class 1262 OID 24994)
-- Name: ISAI_ROSAS_CANTO; Type: DATABASE; Schema: -; Owner: isai
--

CREATE DATABASE "ISAI_ROSAS_CANTO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_MX.UTF-8';


ALTER DATABASE "ISAI_ROSAS_CANTO" OWNER TO isai;

\unrestrict QwEFQ5XMldZZaSgjqBcuwJIX7wW3tbIqTzTYNXutm5C2NjFBKjx6A29YxMe9OwT
\connect "ISAI_ROSAS_CANTO"
\restrict QwEFQ5XMldZZaSgjqBcuwJIX7wW3tbIqTzTYNXutm5C2NjFBKjx6A29YxMe9OwT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 233 (class 1259 OID 25518)
-- Name: accesos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.accesos (
    id_acceso integer NOT NULL,
    id_ubicacion integer NOT NULL,
    nombre_acceso character varying(80) NOT NULL,
    tipo_acceso character varying(20) NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    CONSTRAINT accesos_tipo_acceso_check CHECK (((tipo_acceso)::text = ANY ((ARRAY['Principal'::character varying, 'Secundario'::character varying, 'Emergencia'::character varying])::text[])))
);


ALTER TABLE public.accesos OWNER TO pablo;

--
-- TOC entry 232 (class 1259 OID 25517)
-- Name: accesos_id_acceso_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.accesos_id_acceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accesos_id_acceso_seq OWNER TO pablo;

--
-- TOC entry 4676 (class 0 OID 0)
-- Dependencies: 232
-- Name: accesos_id_acceso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.accesos_id_acceso_seq OWNED BY public.accesos.id_acceso;


--
-- TOC entry 245 (class 1259 OID 25658)
-- Name: ajustes_aforo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ajustes_aforo (
    id_ajuste integer NOT NULL,
    id_ubicacion integer NOT NULL,
    id_usuario integer NOT NULL,
    aforo_anterior integer NOT NULL,
    aforo_nuevo integer NOT NULL,
    motivo character varying(250) NOT NULL,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT ajustes_aforo_aforo_anterior_check CHECK ((aforo_anterior >= 0)),
    CONSTRAINT ajustes_aforo_aforo_nuevo_check CHECK ((aforo_nuevo >= 0))
);


ALTER TABLE public.ajustes_aforo OWNER TO pablo;

--
-- TOC entry 244 (class 1259 OID 25657)
-- Name: ajustes_aforo_id_ajuste_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ajustes_aforo_id_ajuste_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ajustes_aforo_id_ajuste_seq OWNER TO pablo;

--
-- TOC entry 4677 (class 0 OID 0)
-- Dependencies: 244
-- Name: ajustes_aforo_id_ajuste_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ajustes_aforo_id_ajuste_seq OWNED BY public.ajustes_aforo.id_ajuste;


--
-- TOC entry 243 (class 1259 OID 25627)
-- Name: alertas; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.alertas (
    id_alerta integer NOT NULL,
    id_ubicacion integer NOT NULL,
    id_dispositivo integer,
    tipo_alerta character varying(30) NOT NULL,
    severidad character varying(20) DEFAULT 'MEDIA'::character varying NOT NULL,
    mensaje text NOT NULL,
    atendida boolean DEFAULT false NOT NULL,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT alertas_severidad_check CHECK (((severidad)::text = ANY ((ARRAY['BAJA'::character varying, 'MEDIA'::character varying, 'ALTA'::character varying, 'CRITICA'::character varying])::text[]))),
    CONSTRAINT alertas_tipo_alerta_check CHECK (((tipo_alerta)::text = ANY ((ARRAY['Sobrecupo'::character varying, 'Desconexión'::character varying, 'Temperatura_Alta'::character varying, 'Acceso_Emergencia'::character varying])::text[])))
);


ALTER TABLE public.alertas OWNER TO pablo;

--
-- TOC entry 242 (class 1259 OID 25626)
-- Name: alertas_id_alerta_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.alertas_id_alerta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alertas_id_alerta_seq OWNER TO pablo;

--
-- TOC entry 4678 (class 0 OID 0)
-- Dependencies: 242
-- Name: alertas_id_alerta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.alertas_id_alerta_seq OWNED BY public.alertas.id_alerta;


--
-- TOC entry 247 (class 1259 OID 25685)
-- Name: auditoria; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.auditoria (
    id_auditoria bigint NOT NULL,
    id_usuario integer,
    tabla_afectada character varying(60) NOT NULL,
    accion character varying(20) NOT NULL,
    descripcion text NOT NULL,
    ip_origen character varying(45),
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT auditoria_accion_check CHECK (((accion)::text = ANY ((ARRAY['INSERT'::character varying, 'UPDATE'::character varying, 'DELETE'::character varying, 'LOGIN'::character varying, 'EXPORT'::character varying])::text[])))
);


ALTER TABLE public.auditoria OWNER TO pablo;

--
-- TOC entry 246 (class 1259 OID 25684)
-- Name: auditoria_id_auditoria_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.auditoria_id_auditoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auditoria_id_auditoria_seq OWNER TO pablo;

--
-- TOC entry 4679 (class 0 OID 0)
-- Dependencies: 246
-- Name: auditoria_id_auditoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.auditoria_id_auditoria_seq OWNED BY public.auditoria.id_auditoria;


--
-- TOC entry 237 (class 1259 OID 25561)
-- Name: configuraciones_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.configuraciones_dispositivo (
    id_configuracion integer NOT NULL,
    id_dispositivo integer NOT NULL,
    umbral_confianza numeric(5,2) DEFAULT 80.00 NOT NULL,
    intervalo_envio_seg integer DEFAULT 5 NOT NULL,
    resolucion_camara character varying(20) DEFAULT '640x480'::character varying NOT NULL,
    actualizado_en timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT configuraciones_dispositivo_intervalo_envio_seg_check CHECK ((intervalo_envio_seg > 0)),
    CONSTRAINT configuraciones_dispositivo_umbral_confianza_check CHECK (((umbral_confianza >= 1.00) AND (umbral_confianza <= 100.00)))
);


ALTER TABLE public.configuraciones_dispositivo OWNER TO pablo;

--
-- TOC entry 236 (class 1259 OID 25560)
-- Name: configuraciones_dispositivo_id_configuracion_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.configuraciones_dispositivo_id_configuracion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configuraciones_dispositivo_id_configuracion_seq OWNER TO pablo;

--
-- TOC entry 4680 (class 0 OID 0)
-- Dependencies: 236
-- Name: configuraciones_dispositivo_id_configuracion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.configuraciones_dispositivo_id_configuracion_seq OWNED BY public.configuraciones_dispositivo.id_configuracion;


--
-- TOC entry 235 (class 1259 OID 25537)
-- Name: dispositivos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.dispositivos (
    id_dispositivo integer NOT NULL,
    id_acceso integer NOT NULL,
    mac_address character varying(17) NOT NULL,
    modelo character varying(60) DEFAULT 'ESP32-S3-CAM'::character varying NOT NULL,
    direccion_ip character varying(45) NOT NULL,
    estatus character varying(20) DEFAULT 'ONLINE'::character varying NOT NULL,
    ultima_conexion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT dispositivos_estatus_check CHECK (((estatus)::text = ANY ((ARRAY['ONLINE'::character varying, 'OFFLINE'::character varying, 'MANTENIMIENTO'::character varying])::text[])))
);


ALTER TABLE public.dispositivos OWNER TO pablo;

--
-- TOC entry 234 (class 1259 OID 25536)
-- Name: dispositivos_id_dispositivo_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.dispositivos_id_dispositivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dispositivos_id_dispositivo_seq OWNER TO pablo;

--
-- TOC entry 4681 (class 0 OID 0)
-- Dependencies: 234
-- Name: dispositivos_id_dispositivo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.dispositivos_id_dispositivo_seq OWNED BY public.dispositivos.id_dispositivo;


--
-- TOC entry 241 (class 1259 OID 25604)
-- Name: eventos_conteo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.eventos_conteo (
    id_evento bigint NOT NULL,
    id_dispositivo integer NOT NULL,
    direccion character varying(10) NOT NULL,
    genero character varying(15) DEFAULT 'Desconocido'::character varying NOT NULL,
    confianza_deteccion numeric(5,2) NOT NULL,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT eventos_conteo_confianza_deteccion_check CHECK (((confianza_deteccion >= 0.00) AND (confianza_deteccion <= 100.00))),
    CONSTRAINT eventos_conteo_direccion_check CHECK (((direccion)::text = ANY ((ARRAY['Entrada'::character varying, 'Salida'::character varying])::text[]))),
    CONSTRAINT eventos_conteo_genero_check CHECK (((genero)::text = ANY ((ARRAY['M'::character varying, 'F'::character varying, 'Desconocido'::character varying])::text[])))
);


ALTER TABLE public.eventos_conteo OWNER TO pablo;

--
-- TOC entry 240 (class 1259 OID 25603)
-- Name: eventos_conteo_id_evento_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.eventos_conteo_id_evento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eventos_conteo_id_evento_seq OWNER TO pablo;

--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 240
-- Name: eventos_conteo_id_evento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.eventos_conteo_id_evento_seq OWNED BY public.eventos_conteo.id_evento;


--
-- TOC entry 227 (class 1259 OID 25459)
-- Name: intentos_login; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.intentos_login (
    id_intento bigint NOT NULL,
    id_usuario integer,
    email_ingresado character varying(120) NOT NULL,
    ip_origen character varying(45) NOT NULL,
    exitoso boolean DEFAULT false NOT NULL,
    motivo_fallo character varying(150),
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.intentos_login OWNER TO pablo;

--
-- TOC entry 226 (class 1259 OID 25458)
-- Name: intentos_login_id_intento_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.intentos_login_id_intento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.intentos_login_id_intento_seq OWNER TO pablo;

--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 226
-- Name: intentos_login_id_intento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.intentos_login_id_intento_seq OWNED BY public.intentos_login.id_intento;


--
-- TOC entry 224 (class 1259 OID 25422)
-- Name: modulos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.modulos (
    id_modulo integer NOT NULL,
    nombre_modulo character varying(80) NOT NULL,
    ruta_acceso character varying(100) NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE public.modulos OWNER TO pablo;

--
-- TOC entry 223 (class 1259 OID 25421)
-- Name: modulos_id_modulo_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.modulos_id_modulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modulos_id_modulo_seq OWNER TO pablo;

--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 223
-- Name: modulos_id_modulo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.modulos_id_modulo_seq OWNED BY public.modulos.id_modulo;


--
-- TOC entry 225 (class 1259 OID 25433)
-- Name: permisos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.permisos (
    id_rol integer NOT NULL,
    id_modulo integer NOT NULL,
    puede_leer boolean DEFAULT true NOT NULL,
    puede_crear boolean DEFAULT false NOT NULL,
    puede_editar boolean DEFAULT false NOT NULL,
    puede_eliminar boolean DEFAULT false NOT NULL
);


ALTER TABLE public.permisos OWNER TO pablo;

--
-- TOC entry 249 (class 1259 OID 25706)
-- Name: reportes; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.reportes (
    id_reporte integer NOT NULL,
    id_usuario integer NOT NULL,
    id_ubicacion integer,
    titulo character varying(150) NOT NULL,
    formato character varying(10) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    creado_en timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT reportes_formato_check CHECK (((formato)::text = ANY ((ARRAY['PDF'::character varying, 'CSV'::character varying, 'XLSX'::character varying])::text[])))
);


ALTER TABLE public.reportes OWNER TO pablo;

--
-- TOC entry 248 (class 1259 OID 25705)
-- Name: reportes_id_reporte_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.reportes_id_reporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reportes_id_reporte_seq OWNER TO pablo;

--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 248
-- Name: reportes_id_reporte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.reportes_id_reporte_seq OWNED BY public.reportes.id_reporte;


--
-- TOC entry 220 (class 1259 OID 25382)
-- Name: roles; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.roles (
    id_rol integer NOT NULL,
    nombre_rol character varying(50) NOT NULL,
    descripcion character varying(200),
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.roles OWNER TO pablo;

--
-- TOC entry 219 (class 1259 OID 25381)
-- Name: roles_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.roles_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_rol_seq OWNER TO pablo;

--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.roles_id_rol_seq OWNED BY public.roles.id_rol;


--
-- TOC entry 229 (class 1259 OID 25478)
-- Name: sesiones_usuario; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.sesiones_usuario (
    id_sesion bigint NOT NULL,
    id_usuario integer NOT NULL,
    token_sesion character varying(255) NOT NULL,
    ip_origen character varying(45) NOT NULL,
    user_agent character varying(255),
    inicio_sesion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fin_sesion timestamp without time zone,
    activa boolean DEFAULT true NOT NULL
);


ALTER TABLE public.sesiones_usuario OWNER TO pablo;

--
-- TOC entry 228 (class 1259 OID 25477)
-- Name: sesiones_usuario_id_sesion_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.sesiones_usuario_id_sesion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sesiones_usuario_id_sesion_seq OWNER TO pablo;

--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 228
-- Name: sesiones_usuario_id_sesion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.sesiones_usuario_id_sesion_seq OWNED BY public.sesiones_usuario.id_sesion;


--
-- TOC entry 239 (class 1259 OID 25587)
-- Name: telemetria_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.telemetria_dispositivo (
    id_telemetria bigint NOT NULL,
    id_dispositivo integer NOT NULL,
    temperatura_cpu numeric(5,2),
    uso_memoria_pct numeric(5,2),
    nivel_senal_rssi integer,
    tiempo_actividad_seg bigint,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT telemetria_dispositivo_uso_memoria_pct_check CHECK (((uso_memoria_pct >= 0.00) AND (uso_memoria_pct <= 100.00)))
);


ALTER TABLE public.telemetria_dispositivo OWNER TO pablo;

--
-- TOC entry 238 (class 1259 OID 25586)
-- Name: telemetria_dispositivo_id_telemetria_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.telemetria_dispositivo_id_telemetria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telemetria_dispositivo_id_telemetria_seq OWNER TO pablo;

--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 238
-- Name: telemetria_dispositivo_id_telemetria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.telemetria_dispositivo_id_telemetria_seq OWNED BY public.telemetria_dispositivo.id_telemetria;


--
-- TOC entry 231 (class 1259 OID 25502)
-- Name: ubicaciones; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ubicaciones (
    id_ubicacion integer NOT NULL,
    nombre_edificio character varying(100) NOT NULL,
    descripcion character varying(250),
    capacidad_maxima integer NOT NULL,
    aforo_actual integer DEFAULT 0 NOT NULL,
    CONSTRAINT ubicaciones_aforo_actual_check CHECK ((aforo_actual >= 0)),
    CONSTRAINT ubicaciones_capacidad_maxima_check CHECK ((capacidad_maxima > 0))
);


ALTER TABLE public.ubicaciones OWNER TO pablo;

--
-- TOC entry 230 (class 1259 OID 25501)
-- Name: ubicaciones_id_ubicacion_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ubicaciones_id_ubicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ubicaciones_id_ubicacion_seq OWNER TO pablo;

--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 230
-- Name: ubicaciones_id_ubicacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ubicaciones_id_ubicacion_seq OWNED BY public.ubicaciones.id_ubicacion;


--
-- TOC entry 222 (class 1259 OID 25395)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    id_rol integer NOT NULL,
    nombre character varying(80) NOT NULL,
    apellido character varying(80) NOT NULL,
    email character varying(120) NOT NULL,
    password_hash character varying(255) NOT NULL,
    estatus character varying(20) DEFAULT 'ACTIVO'::character varying NOT NULL,
    creado_en timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT usuarios_estatus_check CHECK (((estatus)::text = ANY ((ARRAY['ACTIVO'::character varying, 'INACTIVO'::character varying, 'BLOQUEADO'::character varying])::text[])))
);


ALTER TABLE public.usuarios OWNER TO pablo;

--
-- TOC entry 221 (class 1259 OID 25394)
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO pablo;

--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 221
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 4382 (class 2604 OID 25521)
-- Name: accesos id_acceso; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos ALTER COLUMN id_acceso SET DEFAULT nextval('public.accesos_id_acceso_seq'::regclass);


--
-- TOC entry 4402 (class 2604 OID 25661)
-- Name: ajustes_aforo id_ajuste; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo ALTER COLUMN id_ajuste SET DEFAULT nextval('public.ajustes_aforo_id_ajuste_seq'::regclass);


--
-- TOC entry 4398 (class 2604 OID 25630)
-- Name: alertas id_alerta; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas ALTER COLUMN id_alerta SET DEFAULT nextval('public.alertas_id_alerta_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 25688)
-- Name: auditoria id_auditoria; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria ALTER COLUMN id_auditoria SET DEFAULT nextval('public.auditoria_id_auditoria_seq'::regclass);


--
-- TOC entry 4388 (class 2604 OID 25564)
-- Name: configuraciones_dispositivo id_configuracion; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo ALTER COLUMN id_configuracion SET DEFAULT nextval('public.configuraciones_dispositivo_id_configuracion_seq'::regclass);


--
-- TOC entry 4384 (class 2604 OID 25540)
-- Name: dispositivos id_dispositivo; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos ALTER COLUMN id_dispositivo SET DEFAULT nextval('public.dispositivos_id_dispositivo_seq'::regclass);


--
-- TOC entry 4395 (class 2604 OID 25607)
-- Name: eventos_conteo id_evento; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo ALTER COLUMN id_evento SET DEFAULT nextval('public.eventos_conteo_id_evento_seq'::regclass);


--
-- TOC entry 4374 (class 2604 OID 25462)
-- Name: intentos_login id_intento; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login ALTER COLUMN id_intento SET DEFAULT nextval('public.intentos_login_id_intento_seq'::regclass);


--
-- TOC entry 4369 (class 2604 OID 25425)
-- Name: modulos id_modulo; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos ALTER COLUMN id_modulo SET DEFAULT nextval('public.modulos_id_modulo_seq'::regclass);


--
-- TOC entry 4406 (class 2604 OID 25709)
-- Name: reportes id_reporte; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes ALTER COLUMN id_reporte SET DEFAULT nextval('public.reportes_id_reporte_seq'::regclass);


--
-- TOC entry 4364 (class 2604 OID 25385)
-- Name: roles id_rol; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles ALTER COLUMN id_rol SET DEFAULT nextval('public.roles_id_rol_seq'::regclass);


--
-- TOC entry 4377 (class 2604 OID 25481)
-- Name: sesiones_usuario id_sesion; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario ALTER COLUMN id_sesion SET DEFAULT nextval('public.sesiones_usuario_id_sesion_seq'::regclass);


--
-- TOC entry 4393 (class 2604 OID 25590)
-- Name: telemetria_dispositivo id_telemetria; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo ALTER COLUMN id_telemetria SET DEFAULT nextval('public.telemetria_dispositivo_id_telemetria_seq'::regclass);


--
-- TOC entry 4380 (class 2604 OID 25505)
-- Name: ubicaciones id_ubicacion; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones ALTER COLUMN id_ubicacion SET DEFAULT nextval('public.ubicaciones_id_ubicacion_seq'::regclass);


--
-- TOC entry 4366 (class 2604 OID 25398)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 4653 (class 0 OID 25518)
-- Dependencies: 233
-- Data for Name: accesos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.accesos (id_acceso, id_ubicacion, nombre_acceso, tipo_acceso, activo) FROM stdin;
\.


--
-- TOC entry 4665 (class 0 OID 25658)
-- Dependencies: 245
-- Data for Name: ajustes_aforo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ajustes_aforo (id_ajuste, id_ubicacion, id_usuario, aforo_anterior, aforo_nuevo, motivo, fecha_hora) FROM stdin;
\.


--
-- TOC entry 4663 (class 0 OID 25627)
-- Dependencies: 243
-- Data for Name: alertas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.alertas (id_alerta, id_ubicacion, id_dispositivo, tipo_alerta, severidad, mensaje, atendida, fecha_hora) FROM stdin;
\.


--
-- TOC entry 4667 (class 0 OID 25685)
-- Dependencies: 247
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.auditoria (id_auditoria, id_usuario, tabla_afectada, accion, descripcion, ip_origen, fecha_hora) FROM stdin;
\.


--
-- TOC entry 4657 (class 0 OID 25561)
-- Dependencies: 237
-- Data for Name: configuraciones_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.configuraciones_dispositivo (id_configuracion, id_dispositivo, umbral_confianza, intervalo_envio_seg, resolucion_camara, actualizado_en) FROM stdin;
\.


--
-- TOC entry 4655 (class 0 OID 25537)
-- Dependencies: 235
-- Data for Name: dispositivos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.dispositivos (id_dispositivo, id_acceso, mac_address, modelo, direccion_ip, estatus, ultima_conexion) FROM stdin;
\.


--
-- TOC entry 4661 (class 0 OID 25604)
-- Dependencies: 241
-- Data for Name: eventos_conteo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.eventos_conteo (id_evento, id_dispositivo, direccion, genero, confianza_deteccion, fecha_hora) FROM stdin;
\.


--
-- TOC entry 4647 (class 0 OID 25459)
-- Dependencies: 227
-- Data for Name: intentos_login; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.intentos_login (id_intento, id_usuario, email_ingresado, ip_origen, exitoso, motivo_fallo, fecha_hora) FROM stdin;
\.


--
-- TOC entry 4644 (class 0 OID 25422)
-- Dependencies: 224
-- Data for Name: modulos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.modulos (id_modulo, nombre_modulo, ruta_acceso, descripcion) FROM stdin;
\.


--
-- TOC entry 4645 (class 0 OID 25433)
-- Dependencies: 225
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.permisos (id_rol, id_modulo, puede_leer, puede_crear, puede_editar, puede_eliminar) FROM stdin;
\.


--
-- TOC entry 4669 (class 0 OID 25706)
-- Dependencies: 249
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.reportes (id_reporte, id_usuario, id_ubicacion, titulo, formato, fecha_inicio, fecha_fin, creado_en) FROM stdin;
\.


--
-- TOC entry 4640 (class 0 OID 25382)
-- Dependencies: 220
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.roles (id_rol, nombre_rol, descripcion, activo) FROM stdin;
\.


--
-- TOC entry 4649 (class 0 OID 25478)
-- Dependencies: 229
-- Data for Name: sesiones_usuario; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.sesiones_usuario (id_sesion, id_usuario, token_sesion, ip_origen, user_agent, inicio_sesion, fin_sesion, activa) FROM stdin;
\.


--
-- TOC entry 4659 (class 0 OID 25587)
-- Dependencies: 239
-- Data for Name: telemetria_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.telemetria_dispositivo (id_telemetria, id_dispositivo, temperatura_cpu, uso_memoria_pct, nivel_senal_rssi, tiempo_actividad_seg, fecha_hora) FROM stdin;
\.


--
-- TOC entry 4651 (class 0 OID 25502)
-- Dependencies: 231
-- Data for Name: ubicaciones; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ubicaciones (id_ubicacion, nombre_edificio, descripcion, capacidad_maxima, aforo_actual) FROM stdin;
\.


--
-- TOC entry 4642 (class 0 OID 25395)
-- Dependencies: 222
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.usuarios (id_usuario, id_rol, nombre, apellido, email, password_hash, estatus, creado_en) FROM stdin;
\.


--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 232
-- Name: accesos_id_acceso_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.accesos_id_acceso_seq', 1, false);


--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 244
-- Name: ajustes_aforo_id_ajuste_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ajustes_aforo_id_ajuste_seq', 1, false);


--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 242
-- Name: alertas_id_alerta_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.alertas_id_alerta_seq', 1, false);


--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 246
-- Name: auditoria_id_auditoria_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.auditoria_id_auditoria_seq', 1, false);


--
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 236
-- Name: configuraciones_dispositivo_id_configuracion_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.configuraciones_dispositivo_id_configuracion_seq', 1, false);


--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 234
-- Name: dispositivos_id_dispositivo_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.dispositivos_id_dispositivo_seq', 1, false);


--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 240
-- Name: eventos_conteo_id_evento_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.eventos_conteo_id_evento_seq', 1, false);


--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 226
-- Name: intentos_login_id_intento_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.intentos_login_id_intento_seq', 1, false);


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 223
-- Name: modulos_id_modulo_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.modulos_id_modulo_seq', 1, false);


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 248
-- Name: reportes_id_reporte_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.reportes_id_reporte_seq', 1, false);


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.roles_id_rol_seq', 1, false);


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 228
-- Name: sesiones_usuario_id_sesion_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.sesiones_usuario_id_sesion_seq', 1, false);


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 238
-- Name: telemetria_dispositivo_id_telemetria_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.telemetria_dispositivo_id_telemetria_seq', 1, false);


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 230
-- Name: ubicaciones_id_ubicacion_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ubicaciones_id_ubicacion_seq', 1, false);


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 221
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, false);


--
-- TOC entry 4450 (class 2606 OID 25530)
-- Name: accesos accesos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_pkey PRIMARY KEY (id_acceso);


--
-- TOC entry 4469 (class 2606 OID 25673)
-- Name: ajustes_aforo ajustes_aforo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_pkey PRIMARY KEY (id_ajuste);


--
-- TOC entry 4466 (class 2606 OID 25646)
-- Name: alertas alertas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_pkey PRIMARY KEY (id_alerta);


--
-- TOC entry 4471 (class 2606 OID 25699)
-- Name: auditoria auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id_auditoria);


--
-- TOC entry 4456 (class 2606 OID 25580)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_id_dispositivo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_id_dispositivo_key UNIQUE (id_dispositivo);


--
-- TOC entry 4458 (class 2606 OID 25578)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_pkey PRIMARY KEY (id_configuracion);


--
-- TOC entry 4452 (class 2606 OID 25554)
-- Name: dispositivos dispositivos_mac_address_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_mac_address_key UNIQUE (mac_address);


--
-- TOC entry 4454 (class 2606 OID 25552)
-- Name: dispositivos dispositivos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_pkey PRIMARY KEY (id_dispositivo);


--
-- TOC entry 4463 (class 2606 OID 25620)
-- Name: eventos_conteo eventos_conteo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_pkey PRIMARY KEY (id_evento);


--
-- TOC entry 4440 (class 2606 OID 25471)
-- Name: intentos_login intentos_login_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_pkey PRIMARY KEY (id_intento);


--
-- TOC entry 4434 (class 2606 OID 25432)
-- Name: modulos modulos_nombre_modulo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_nombre_modulo_key UNIQUE (nombre_modulo);


--
-- TOC entry 4436 (class 2606 OID 25430)
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id_modulo);


--
-- TOC entry 4438 (class 2606 OID 25447)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id_rol, id_modulo);


--
-- TOC entry 4474 (class 2606 OID 25720)
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id_reporte);


--
-- TOC entry 4426 (class 2606 OID 25393)
-- Name: roles roles_nombre_rol_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_rol_key UNIQUE (nombre_rol);


--
-- TOC entry 4428 (class 2606 OID 25391)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);


--
-- TOC entry 4442 (class 2606 OID 25493)
-- Name: sesiones_usuario sesiones_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_pkey PRIMARY KEY (id_sesion);


--
-- TOC entry 4444 (class 2606 OID 25495)
-- Name: sesiones_usuario sesiones_usuario_token_sesion_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_token_sesion_key UNIQUE (token_sesion);


--
-- TOC entry 4461 (class 2606 OID 25597)
-- Name: telemetria_dispositivo telemetria_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_pkey PRIMARY KEY (id_telemetria);


--
-- TOC entry 4446 (class 2606 OID 25516)
-- Name: ubicaciones ubicaciones_nombre_edificio_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_nombre_edificio_key UNIQUE (nombre_edificio);


--
-- TOC entry 4448 (class 2606 OID 25514)
-- Name: ubicaciones ubicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_pkey PRIMARY KEY (id_ubicacion);


--
-- TOC entry 4430 (class 2606 OID 25415)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 4432 (class 2606 OID 25413)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4467 (class 1259 OID 25733)
-- Name: idx_alertas_ubicacion_atendida; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_alertas_ubicacion_atendida ON public.alertas USING btree (id_ubicacion, atendida);


--
-- TOC entry 4472 (class 1259 OID 25734)
-- Name: idx_auditoria_usuario_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_auditoria_usuario_fecha ON public.auditoria USING btree (id_usuario, fecha_hora DESC);


--
-- TOC entry 4464 (class 1259 OID 25731)
-- Name: idx_eventos_dispositivo_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_eventos_dispositivo_fecha ON public.eventos_conteo USING btree (id_dispositivo, fecha_hora DESC);


--
-- TOC entry 4459 (class 1259 OID 25732)
-- Name: idx_telemetria_dispositivo_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_telemetria_dispositivo_fecha ON public.telemetria_dispositivo USING btree (id_dispositivo, fecha_hora DESC);


--
-- TOC entry 4480 (class 2606 OID 25531)
-- Name: accesos fk_accesos_ubicacion; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT fk_accesos_ubicacion FOREIGN KEY (id_ubicacion) REFERENCES public.ubicaciones(id_ubicacion) ON DELETE CASCADE;


--
-- TOC entry 4487 (class 2606 OID 25674)
-- Name: ajustes_aforo fk_ajustes_ubicacion; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT fk_ajustes_ubicacion FOREIGN KEY (id_ubicacion) REFERENCES public.ubicaciones(id_ubicacion) ON DELETE CASCADE;


--
-- TOC entry 4488 (class 2606 OID 25679)
-- Name: ajustes_aforo fk_ajustes_usuario; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT fk_ajustes_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE RESTRICT;


--
-- TOC entry 4485 (class 2606 OID 25652)
-- Name: alertas fk_alertas_dispositivo; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT fk_alertas_dispositivo FOREIGN KEY (id_dispositivo) REFERENCES public.dispositivos(id_dispositivo) ON DELETE SET NULL;


--
-- TOC entry 4486 (class 2606 OID 25647)
-- Name: alertas fk_alertas_ubicacion; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT fk_alertas_ubicacion FOREIGN KEY (id_ubicacion) REFERENCES public.ubicaciones(id_ubicacion) ON DELETE CASCADE;


--
-- TOC entry 4489 (class 2606 OID 25700)
-- Name: auditoria fk_auditoria_usuario; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT fk_auditoria_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL;


--
-- TOC entry 4482 (class 2606 OID 25581)
-- Name: configuraciones_dispositivo fk_config_dispositivo; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT fk_config_dispositivo FOREIGN KEY (id_dispositivo) REFERENCES public.dispositivos(id_dispositivo) ON DELETE CASCADE;


--
-- TOC entry 4481 (class 2606 OID 25555)
-- Name: dispositivos fk_dispositivos_acceso; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT fk_dispositivos_acceso FOREIGN KEY (id_acceso) REFERENCES public.accesos(id_acceso) ON DELETE CASCADE;


--
-- TOC entry 4484 (class 2606 OID 25621)
-- Name: eventos_conteo fk_eventos_dispositivo; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT fk_eventos_dispositivo FOREIGN KEY (id_dispositivo) REFERENCES public.dispositivos(id_dispositivo) ON DELETE CASCADE;


--
-- TOC entry 4478 (class 2606 OID 25472)
-- Name: intentos_login fk_intentos_usuario; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT fk_intentos_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL;


--
-- TOC entry 4476 (class 2606 OID 25453)
-- Name: permisos fk_permisos_modulo; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT fk_permisos_modulo FOREIGN KEY (id_modulo) REFERENCES public.modulos(id_modulo) ON DELETE CASCADE;


--
-- TOC entry 4477 (class 2606 OID 25448)
-- Name: permisos fk_permisos_rol; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT fk_permisos_rol FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE CASCADE;


--
-- TOC entry 4490 (class 2606 OID 25726)
-- Name: reportes fk_reportes_ubicacion; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT fk_reportes_ubicacion FOREIGN KEY (id_ubicacion) REFERENCES public.ubicaciones(id_ubicacion) ON DELETE SET NULL;


--
-- TOC entry 4491 (class 2606 OID 25721)
-- Name: reportes fk_reportes_usuario; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT fk_reportes_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 4479 (class 2606 OID 25496)
-- Name: sesiones_usuario fk_sesiones_usuario; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT fk_sesiones_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 4483 (class 2606 OID 25598)
-- Name: telemetria_dispositivo fk_telemetria_dispositivo; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT fk_telemetria_dispositivo FOREIGN KEY (id_dispositivo) REFERENCES public.dispositivos(id_dispositivo) ON DELETE CASCADE;


--
-- TOC entry 4475 (class 2606 OID 25416)
-- Name: usuarios fk_usuarios_rol; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuarios_rol FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE RESTRICT;


-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict QwEFQ5XMldZZaSgjqBcuwJIX7wW3tbIqTzTYNXutm5C2NjFBKjx6A29YxMe9OwT

--
-- Database "escuela_eliel" dump
--

--
-- PostgreSQL database dump
--

\restrict Nl4MbiKSoGI7N7MREwprlxjBrYZaiKZdpImw87uaq2f3mEbjz27PstlqLFw18mx

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4457 (class 1262 OID 16395)
-- Name: escuela_eliel; Type: DATABASE; Schema: -; Owner: eliel
--

CREATE DATABASE escuela_eliel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_MX.UTF-8';


ALTER DATABASE escuela_eliel OWNER TO eliel;

\unrestrict Nl4MbiKSoGI7N7MREwprlxjBrYZaiKZdpImw87uaq2f3mEbjz27PstlqLFw18mx
\connect escuela_eliel
\restrict Nl4MbiKSoGI7N7MREwprlxjBrYZaiKZdpImw87uaq2f3mEbjz27PstlqLFw18mx

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16397)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: eliel
--

CREATE TABLE public.alumnos (
    id_alumno integer NOT NULL,
    nombre character varying(100),
    carrera character varying(100),
    edad integer
);


ALTER TABLE public.alumnos OWNER TO eliel;

--
-- TOC entry 219 (class 1259 OID 16396)
-- Name: alumnos_id_alumno_seq; Type: SEQUENCE; Schema: public; Owner: eliel
--

CREATE SEQUENCE public.alumnos_id_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumnos_id_alumno_seq OWNER TO eliel;

--
-- TOC entry 4458 (class 0 OID 0)
-- Dependencies: 219
-- Name: alumnos_id_alumno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eliel
--

ALTER SEQUENCE public.alumnos_id_alumno_seq OWNED BY public.alumnos.id_alumno;


--
-- TOC entry 222 (class 1259 OID 16405)
-- Name: materias; Type: TABLE; Schema: public; Owner: eliel
--

CREATE TABLE public.materias (
    id_materia integer NOT NULL,
    nombre character varying(100),
    docente character varying(100),
    creditos integer
);


ALTER TABLE public.materias OWNER TO eliel;

--
-- TOC entry 221 (class 1259 OID 16404)
-- Name: materias_id_materia_seq; Type: SEQUENCE; Schema: public; Owner: eliel
--

CREATE SEQUENCE public.materias_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.materias_id_materia_seq OWNER TO eliel;

--
-- TOC entry 4459 (class 0 OID 0)
-- Dependencies: 221
-- Name: materias_id_materia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eliel
--

ALTER SEQUENCE public.materias_id_materia_seq OWNED BY public.materias.id_materia;


--
-- TOC entry 4295 (class 2604 OID 16400)
-- Name: alumnos id_alumno; Type: DEFAULT; Schema: public; Owner: eliel
--

ALTER TABLE ONLY public.alumnos ALTER COLUMN id_alumno SET DEFAULT nextval('public.alumnos_id_alumno_seq'::regclass);


--
-- TOC entry 4296 (class 2604 OID 16408)
-- Name: materias id_materia; Type: DEFAULT; Schema: public; Owner: eliel
--

ALTER TABLE ONLY public.materias ALTER COLUMN id_materia SET DEFAULT nextval('public.materias_id_materia_seq'::regclass);


--
-- TOC entry 4449 (class 0 OID 16397)
-- Dependencies: 220
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: eliel
--

COPY public.alumnos (id_alumno, nombre, carrera, edad) FROM stdin;
\.


--
-- TOC entry 4451 (class 0 OID 16405)
-- Dependencies: 222
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: eliel
--

COPY public.materias (id_materia, nombre, docente, creditos) FROM stdin;
\.


--
-- TOC entry 4460 (class 0 OID 0)
-- Dependencies: 219
-- Name: alumnos_id_alumno_seq; Type: SEQUENCE SET; Schema: public; Owner: eliel
--

SELECT pg_catalog.setval('public.alumnos_id_alumno_seq', 1, false);


--
-- TOC entry 4461 (class 0 OID 0)
-- Dependencies: 221
-- Name: materias_id_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: eliel
--

SELECT pg_catalog.setval('public.materias_id_materia_seq', 1, false);


--
-- TOC entry 4298 (class 2606 OID 16403)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: eliel
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id_alumno);


--
-- TOC entry 4300 (class 2606 OID 16411)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: eliel
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (id_materia);


-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict Nl4MbiKSoGI7N7MREwprlxjBrYZaiKZdpImw87uaq2f3mEbjz27PstlqLFw18mx

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict 8Mg9Rg9lxVdvscgonIv9PZNQuw7Xigg8tO3FFpxD6XacjXhsbFgezrEgvjRPIiC

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict 8Mg9Rg9lxVdvscgonIv9PZNQuw7Xigg8tO3FFpxD6XacjXhsbFgezrEgvjRPIiC

--
-- Database "smartaccess_DB" dump
--

--
-- PostgreSQL database dump
--

\restrict csp0OY1BwqR4y5Zg7YT8H6Zt2sQytUs6g2nSc0paJdEsnJS7vaTQSK3you5FEWb

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4698 (class 1262 OID 24590)
-- Name: smartaccess_DB; Type: DATABASE; Schema: -; Owner: eliel
--

CREATE DATABASE "smartaccess_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_MX.UTF-8';


ALTER DATABASE "smartaccess_DB" OWNER TO eliel;

\unrestrict csp0OY1BwqR4y5Zg7YT8H6Zt2sQytUs6g2nSc0paJdEsnJS7vaTQSK3you5FEWb
\connect "smartaccess_DB"
\restrict csp0OY1BwqR4y5Zg7YT8H6Zt2sQytUs6g2nSc0paJdEsnJS7vaTQSK3you5FEWb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 234 (class 1259 OID 24729)
-- Name: accesos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.accesos (
    id bigint NOT NULL,
    ubicacion_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo character varying(20) DEFAULT 'bidireccional'::character varying NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    CONSTRAINT accesos_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['entrada'::character varying, 'salida'::character varying, 'bidireccional'::character varying])::text[])))
);


ALTER TABLE public.accesos OWNER TO pablo;

--
-- TOC entry 233 (class 1259 OID 24728)
-- Name: accesos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.accesos ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.accesos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 24844)
-- Name: ajustes_aforo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ajustes_aforo (
    id bigint NOT NULL,
    codigo_ajuste character varying(80) NOT NULL,
    ubicacion_id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    delta integer NOT NULL,
    motivo character varying(250) NOT NULL,
    creado_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT ajustes_aforo_delta_check CHECK ((delta <> 0))
);


ALTER TABLE public.ajustes_aforo OWNER TO pablo;

--
-- TOC entry 241 (class 1259 OID 24843)
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.ajustes_aforo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.ajustes_aforo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 24892)
-- Name: alertas; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.alertas (
    id bigint NOT NULL,
    codigo_alerta character varying(80) NOT NULL,
    ubicacion_id bigint NOT NULL,
    dispositivo_id bigint,
    tipo character varying(35) NOT NULL,
    severidad character varying(12) NOT NULL,
    mensaje text NOT NULL,
    estado character varying(12) DEFAULT 'pendiente'::character varying NOT NULL,
    creada_en timestamp with time zone DEFAULT now() NOT NULL,
    atendida_en timestamp with time zone,
    atendida_por bigint,
    CONSTRAINT alertas_estado_check CHECK (((estado)::text = ANY ((ARRAY['pendiente'::character varying, 'resuelta'::character varying])::text[]))),
    CONSTRAINT alertas_severidad_check CHECK (((severidad)::text = ANY ((ARRAY['baja'::character varying, 'media'::character varying, 'alta'::character varying])::text[]))),
    CONSTRAINT alertas_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['aforo_alto'::character varying, 'aforo_excedido'::character varying, 'dispositivo_desconectado'::character varying, 'camara_fallando'::character varying, 'conteo_anomalo'::character varying])::text[])))
);


ALTER TABLE public.alertas OWNER TO pablo;

--
-- TOC entry 245 (class 1259 OID 24891)
-- Name: alertas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.alertas ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.alertas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 250 (class 1259 OID 24961)
-- Name: auditoria; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.auditoria (
    id bigint NOT NULL,
    codigo_accion character varying(80) NOT NULL,
    usuario_id bigint,
    entidad character varying(70) NOT NULL,
    operacion character varying(20) NOT NULL,
    identificador_registro character varying(80),
    detalle jsonb,
    realizada_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT auditoria_operacion_check CHECK (((operacion)::text = ANY ((ARRAY['INSERT'::character varying, 'UPDATE'::character varying, 'DELETE'::character varying, 'LOGIN'::character varying, 'EXPORT'::character varying])::text[])))
);


ALTER TABLE public.auditoria OWNER TO pablo;

--
-- TOC entry 249 (class 1259 OID 24960)
-- Name: auditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.auditoria ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 24778)
-- Name: configuraciones_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.configuraciones_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    algoritmo character varying(80) DEFAULT 'cruce_linea_virtual'::character varying NOT NULL,
    confianza_minima numeric(4,3) DEFAULT 0.750 NOT NULL,
    resolucion character varying(24) DEFAULT '320x240'::character varying NOT NULL,
    fps_objetivo smallint DEFAULT 5 NOT NULL,
    antirrebote_ms integer DEFAULT 1500 NOT NULL,
    orientacion character varying(20) DEFAULT 'cenital'::character varying NOT NULL,
    actualizada_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT configuraciones_dispositivo_antirrebote_ms_check CHECK (((antirrebote_ms >= 0) AND (antirrebote_ms <= 120000))),
    CONSTRAINT configuraciones_dispositivo_confianza_minima_check CHECK (((confianza_minima >= (0)::numeric) AND (confianza_minima <= (1)::numeric))),
    CONSTRAINT configuraciones_dispositivo_fps_objetivo_check CHECK (((fps_objetivo >= 1) AND (fps_objetivo <= 30))),
    CONSTRAINT configuraciones_dispositivo_orientacion_check CHECK (((orientacion)::text = ANY ((ARRAY['cenital'::character varying, 'frontal'::character varying, 'lateral'::character varying])::text[])))
);


ALTER TABLE public.configuraciones_dispositivo OWNER TO pablo;

--
-- TOC entry 237 (class 1259 OID 24777)
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.configuraciones_dispositivo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.configuraciones_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 24750)
-- Name: dispositivos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.dispositivos (
    id bigint NOT NULL,
    acceso_id bigint NOT NULL,
    codigo character varying(64) NOT NULL,
    nombre character varying(100) NOT NULL,
    modelo character varying(80) DEFAULT 'ESP32-S3 N16R8'::character varying NOT NULL,
    modelo_camara character varying(50) DEFAULT 'OV2640'::character varying NOT NULL,
    mac_wifi macaddr,
    version_firmware character varying(40),
    estado character varying(20) DEFAULT 'inactivo'::character varying NOT NULL,
    ultima_conexion timestamp with time zone,
    instalado_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT dispositivos_estado_check CHECK (((estado)::text = ANY ((ARRAY['activo'::character varying, 'inactivo'::character varying, 'mantenimiento'::character varying])::text[])))
);


ALTER TABLE public.dispositivos OWNER TO pablo;

--
-- TOC entry 235 (class 1259 OID 24749)
-- Name: dispositivos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.dispositivos ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.dispositivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 24811)
-- Name: eventos_conteo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.eventos_conteo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    evento_externo character varying(80) NOT NULL,
    direccion character varying(10) NOT NULL,
    cantidad smallint DEFAULT 1 NOT NULL,
    confianza numeric(4,3),
    origen character varying(15) DEFAULT 'camara'::character varying NOT NULL,
    usuario_id bigint,
    ocurrido_en timestamp with time zone NOT NULL,
    recibido_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT eventos_conteo_cantidad_check CHECK (((cantidad >= 1) AND (cantidad <= 100))),
    CONSTRAINT eventos_conteo_confianza_check CHECK (((confianza >= (0)::numeric) AND (confianza <= (1)::numeric))),
    CONSTRAINT eventos_conteo_direccion_check CHECK (((direccion)::text = ANY ((ARRAY['entrada'::character varying, 'salida'::character varying])::text[]))),
    CONSTRAINT eventos_conteo_origen_check CHECK (((origen)::text = ANY ((ARRAY['camara'::character varying, 'manual'::character varying, 'simulacion'::character varying])::text[])))
);


ALTER TABLE public.eventos_conteo OWNER TO pablo;

--
-- TOC entry 239 (class 1259 OID 24810)
-- Name: eventos_conteo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.eventos_conteo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.eventos_conteo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 24693)
-- Name: intentos_login; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.intentos_login (
    id bigint NOT NULL,
    usuario_id bigint,
    correo_intentado character varying(254) NOT NULL,
    ip_origen inet,
    exitoso boolean NOT NULL,
    motivo character varying(150),
    ocurrido_en timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.intentos_login OWNER TO pablo;

--
-- TOC entry 229 (class 1259 OID 24692)
-- Name: intentos_login_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.intentos_login ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.intentos_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 24604)
-- Name: modulos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.modulos (
    id bigint NOT NULL,
    clave character varying(50) NOT NULL,
    nombre character varying(80) NOT NULL,
    descripcion text
);


ALTER TABLE public.modulos OWNER TO pablo;

--
-- TOC entry 221 (class 1259 OID 24603)
-- Name: modulos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.modulos ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.modulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 24617)
-- Name: permisos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.permisos (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    modulo_id bigint NOT NULL,
    puede_ver boolean DEFAULT false NOT NULL,
    puede_crear boolean DEFAULT false NOT NULL,
    puede_editar boolean DEFAULT false NOT NULL,
    puede_eliminar boolean DEFAULT false NOT NULL
);


ALTER TABLE public.permisos OWNER TO pablo;

--
-- TOC entry 223 (class 1259 OID 24616)
-- Name: permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.permisos ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 24930)
-- Name: reportes; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.reportes (
    id bigint NOT NULL,
    codigo_reporte character varying(80) NOT NULL,
    ubicacion_id bigint NOT NULL,
    generado_por bigint NOT NULL,
    tipo character varying(20) NOT NULL,
    periodo_inicio timestamp with time zone NOT NULL,
    periodo_fin timestamp with time zone NOT NULL,
    generado_en timestamp with time zone DEFAULT now() NOT NULL,
    ruta_archivo text,
    CONSTRAINT ck_periodo_reporte CHECK ((periodo_fin > periodo_inicio)),
    CONSTRAINT reportes_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['diario'::character varying, 'semanal'::character varying, 'mensual'::character varying, 'personalizado'::character varying])::text[])))
);


ALTER TABLE public.reportes OWNER TO pablo;

--
-- TOC entry 247 (class 1259 OID 24929)
-- Name: reportes_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.reportes ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.reportes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 24592)
-- Name: roles; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    nombre character varying(40) NOT NULL,
    descripcion text
);


ALTER TABLE public.roles OWNER TO pablo;

--
-- TOC entry 219 (class 1259 OID 24591)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.roles ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 24671)
-- Name: sesiones_usuario; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.sesiones_usuario (
    id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    token_hash character varying(255) NOT NULL,
    inicio_en timestamp with time zone DEFAULT now() NOT NULL,
    expira_en timestamp with time zone NOT NULL,
    revocada boolean DEFAULT false NOT NULL,
    CONSTRAINT ck_expiracion_sesion CHECK ((expira_en > inicio_en))
);


ALTER TABLE public.sesiones_usuario OWNER TO pablo;

--
-- TOC entry 227 (class 1259 OID 24670)
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.sesiones_usuario ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.sesiones_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 24871)
-- Name: telemetria_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.telemetria_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    registrado_en timestamp with time zone NOT NULL,
    rssi_dbm smallint,
    memoria_libre_bytes bigint,
    fps_real numeric(5,2),
    camara_operativa boolean DEFAULT true NOT NULL,
    CONSTRAINT telemetria_dispositivo_fps_real_check CHECK ((fps_real >= (0)::numeric)),
    CONSTRAINT telemetria_dispositivo_memoria_libre_bytes_check CHECK ((memoria_libre_bytes >= 0)),
    CONSTRAINT telemetria_dispositivo_rssi_dbm_check CHECK (((rssi_dbm >= '-120'::integer) AND (rssi_dbm <= 0)))
);


ALTER TABLE public.telemetria_dispositivo OWNER TO pablo;

--
-- TOC entry 243 (class 1259 OID 24870)
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.telemetria_dispositivo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.telemetria_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 24711)
-- Name: ubicaciones; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ubicaciones (
    id bigint NOT NULL,
    nombre character varying(120) NOT NULL,
    descripcion text,
    direccion character varying(255),
    capacidad_maxima integer NOT NULL,
    activa boolean DEFAULT true NOT NULL,
    creada_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT ubicaciones_capacidad_maxima_check CHECK ((capacidad_maxima > 0))
);


ALTER TABLE public.ubicaciones OWNER TO pablo;

--
-- TOC entry 231 (class 1259 OID 24710)
-- Name: ubicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.ubicaciones ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.ubicaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 24646)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    nombre character varying(120) NOT NULL,
    correo character varying(254) NOT NULL,
    password_hash character varying(255) NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    creado_en timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT ck_correo_usuario CHECK ((POSITION(('@'::text) IN (correo)) > 1))
);


ALTER TABLE public.usuarios OWNER TO pablo;

--
-- TOC entry 225 (class 1259 OID 24645)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

ALTER TABLE public.usuarios ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 251 (class 1259 OID 24987)
-- Name: vw_aforo_actual; Type: VIEW; Schema: public; Owner: pablo
--

CREATE VIEW public.vw_aforo_actual AS
 SELECT u.id AS ubicacion_id,
    u.nombre AS ubicacion,
    u.capacidad_maxima,
    COALESCE(e.entradas, (0)::bigint) AS entradas_acumuladas,
    COALESCE(e.salidas, (0)::bigint) AS salidas_acumuladas,
    COALESCE(j.ajuste, (0)::bigint) AS ajuste_neto,
    GREATEST((0)::bigint, ((COALESCE(e.entradas, (0)::bigint) - COALESCE(e.salidas, (0)::bigint)) + COALESCE(j.ajuste, (0)::bigint))) AS aforo_actual,
    round(((100.0 * (GREATEST((0)::bigint, ((COALESCE(e.entradas, (0)::bigint) - COALESCE(e.salidas, (0)::bigint)) + COALESCE(j.ajuste, (0)::bigint))))::numeric) / (u.capacidad_maxima)::numeric), 1) AS porcentaje_ocupacion
   FROM ((public.ubicaciones u
     LEFT JOIN ( SELECT a.ubicacion_id,
            sum(
                CASE
                    WHEN ((e_1.direccion)::text = 'entrada'::text) THEN (e_1.cantidad)::integer
                    ELSE 0
                END) AS entradas,
            sum(
                CASE
                    WHEN ((e_1.direccion)::text = 'salida'::text) THEN (e_1.cantidad)::integer
                    ELSE 0
                END) AS salidas
           FROM ((public.eventos_conteo e_1
             JOIN public.dispositivos d ON ((d.id = e_1.dispositivo_id)))
             JOIN public.accesos a ON ((a.id = d.acceso_id)))
          GROUP BY a.ubicacion_id) e ON ((e.ubicacion_id = u.id)))
     LEFT JOIN ( SELECT ajustes_aforo.ubicacion_id,
            sum(ajustes_aforo.delta) AS ajuste
           FROM public.ajustes_aforo
          GROUP BY ajustes_aforo.ubicacion_id) j ON ((j.ubicacion_id = u.id)));


ALTER VIEW public.vw_aforo_actual OWNER TO pablo;

--
-- TOC entry 4676 (class 0 OID 24729)
-- Dependencies: 234
-- Data for Name: accesos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.accesos (id, ubicacion_id, nombre, tipo, activo) FROM stdin;
1	1	Puerta principal	bidireccional	t
8	15	Salida Emergencia Sur - Ing.	salida	t
9	15	Puerta Principal Norte - Ing.	bidireccional	t
10	16	Acceso Único Vestíbulo Biblioteca	bidireccional	t
11	17	Entrada Principal Auditorio	bidireccional	t
13	19	Acceso Norte Pablo	bidireccional	t
\.


--
-- TOC entry 4684 (class 0 OID 24844)
-- Dependencies: 242
-- Data for Name: ajustes_aforo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ajustes_aforo (id, codigo_ajuste, ubicacion_id, usuario_id, delta, motivo, creado_en) FROM stdin;
1	ELI-AJ-01	1	1	2	Calibración: conteo inicial omitido	2026-11-13 06:15:54.531248-08
2	ELI-AJ-02	1	1	-1	Calibración: corrección de salida	2026-11-13 06:15:54.531248-08
3	ISA-AJ-101	15	22	-3	Recalibración visual tras salida del laboratorio (51 a 48)	2026-11-13 05:45:00-08
4	ISA-AJ-102	16	20	-2	Descuento por personal administrativo en turno (90 a 88)	2026-11-13 06:00:00-08
7	PAB-AJ-01	19	25	3	Calibración: ingreso previo de docentes	2026-11-13 08:20:12.107528-08
8	PAB-AJ-02	19	25	-1	Calibración: ajuste por salida rápida	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4688 (class 0 OID 24892)
-- Dependencies: 246
-- Data for Name: alertas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.alertas (id, codigo_alerta, ubicacion_id, dispositivo_id, tipo, severidad, mensaje, estado, creada_en, atendida_en, atendida_por) FROM stdin;
1	ELI-AL-01	1	1	conteo_anomalo	media	Evento simulado: revisar cruce de línea	pendiente	2026-11-13 06:15:54.531248-08	\N	\N
2	ELI-AL-02	1	1	dispositivo_desconectado	baja	Evento simulado: reinicio de Wi-Fi	pendiente	2026-11-13 06:15:54.531248-08	\N	\N
3	ISA-AL-103	15	3	conteo_anomalo	media	Detección de salida en puerta de emergencia Sur	resuelta	2026-11-13 05:42:05-08	2026-11-13 05:44:00-08	22
4	ISA-AL-101	16	5	aforo_alto	alta	Centro de Información al 97% de su capacidad máxima (88/90)	pendiente	2026-11-13 05:56:00-08	\N	\N
5	ISA-AL-102	17	6	dispositivo_desconectado	alta	Pérdida de comunicación con ESP32-S3-CAM (172.16.10.104)	pendiente	2026-11-13 04:46:00-08	\N	\N
7	PAB-AL-01	19	8	conteo_anomalo	media	Evento simulado: flujo simultáneo en pasillo	pendiente	2026-11-13 08:20:12.107528-08	\N	\N
8	PAB-AL-02	19	8	dispositivo_desconectado	baja	Evento simulado: latencia alta en Wi-Fi	pendiente	2026-11-13 08:20:12.107528-08	\N	\N
\.


--
-- TOC entry 4692 (class 0 OID 24961)
-- Dependencies: 250
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.auditoria (id, codigo_accion, usuario_id, entidad, operacion, identificador_registro, detalle, realizada_en) FROM stdin;
1	ELI-AUD-01	1	ubicaciones	INSERT	1	{"autor": "Eliel", "origen": "simulacion"}	2026-11-13 06:15:54.531248-08
2	ISA-AUD-101	20	configuraciones_dispositivo	UPDATE	SA-ISA-CAM-103	{"autor": "Isai", "origen": "simulacion", "ip_origen": "172.16.1.50", "descripcion": "Ajuste de umbral de confianza a 90% en cámara 103"}	2026-11-13 05:10:00-08
3	ISA-AUD-102	22	alertas	UPDATE	ISA-AL-103	{"autor": "Isai", "origen": "simulacion", "ip_origen": "172.16.1.52", "descripcion": "Marcada como atendida la alerta ID 103"}	2026-11-13 05:44:00-08
4	PAB-AUD-01	25	ubicaciones	INSERT	19	{"autor": "Pablo", "origen": "simulacion"}	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4680 (class 0 OID 24778)
-- Dependencies: 238
-- Data for Name: configuraciones_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.configuraciones_dispositivo (id, dispositivo_id, algoritmo, confianza_minima, resolucion, fps_objetivo, antirrebote_ms, orientacion, actualizada_en) FROM stdin;
1	1	cruce_linea_virtual	0.800	320x240	5	1500	cenital	2026-11-13 06:15:54.531248-08
2	3	cruce_linea_virtual	0.800	640x480	5	1500	cenital	2026-11-13 08:08:41.370759-08
3	4	cruce_linea_virtual	0.850	640x480	5	1500	cenital	2026-11-13 08:08:41.370759-08
4	5	cruce_linea_virtual	0.900	800x600	5	1500	cenital	2026-11-13 08:08:41.370759-08
5	6	cruce_linea_virtual	0.850	640x480	5	1500	cenital	2026-11-13 08:08:41.370759-08
7	8	cruce_linea_virtual	0.820	320x240	10	1500	cenital	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4678 (class 0 OID 24750)
-- Dependencies: 236
-- Data for Name: dispositivos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.dispositivos (id, acceso_id, codigo, nombre, modelo, modelo_camara, mac_wifi, version_firmware, estado, ultima_conexion, instalado_en) FROM stdin;
1	1	SA-ELI-CAM-01	Cámara de conteo Eliel	ESP32-S3 N16R8	OV2640	\N	0.1.0-demo	activo	\N	2026-11-13 06:15:54.531248-08
3	8	SA-ISA-CAM-102	Cámara Emergencia - Isai	ESP32-S3-CAM	OV2640	24:6f:28:11:01:02	\N	activo	\N	2026-11-13 08:08:41.370759-08
4	9	SA-ISA-CAM-101	Cámara Norte - Isai	ESP32-S3-CAM	OV2640	24:6f:28:11:01:01	\N	activo	\N	2026-11-13 08:08:41.370759-08
5	10	SA-ISA-CAM-103	Cámara Biblioteca - Isai	ESP32-S3-CAM-PRO	OV2640	24:6f:28:11:01:03	\N	activo	\N	2026-11-13 08:08:41.370759-08
6	11	SA-ISA-CAM-104	Cámara Auditorio - Isai	ESP32-S3-CAM	OV2640	24:6f:28:11:01:04	\N	inactivo	\N	2026-11-13 08:08:41.370759-08
8	13	SA-PAB-CAM-01	Cámara de conteo Pablo	ESP32-S3 N16R8	OV2640	\N	0.1.0-demo	activo	\N	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4682 (class 0 OID 24811)
-- Dependencies: 240
-- Data for Name: eventos_conteo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.eventos_conteo (id, dispositivo_id, evento_externo, direccion, cantidad, confianza, origen, usuario_id, ocurrido_en, recibido_en) FROM stdin;
1	1	ELI-EV-001	entrada	1	0.910	simulacion	\N	2026-11-12 05:38:00-08	2026-11-13 06:15:54.531248-08
2	1	ELI-EV-002	entrada	1	0.910	simulacion	\N	2026-11-12 05:46:00-08	2026-11-13 06:15:54.531248-08
3	1	ELI-EV-003	salida	1	0.910	simulacion	\N	2026-11-12 05:54:00-08	2026-11-13 06:15:54.531248-08
4	1	ELI-EV-004	entrada	1	0.910	simulacion	\N	2026-11-12 06:02:00-08	2026-11-13 06:15:54.531248-08
5	1	ELI-EV-005	entrada	1	0.910	simulacion	\N	2026-11-12 06:10:00-08	2026-11-13 06:15:54.531248-08
6	1	ELI-EV-006	salida	1	0.910	simulacion	\N	2026-11-12 06:18:00-08	2026-11-13 06:15:54.531248-08
7	1	ELI-EV-007	entrada	1	0.910	simulacion	\N	2026-11-12 06:26:00-08	2026-11-13 06:15:54.531248-08
8	1	ELI-EV-008	entrada	1	0.910	simulacion	\N	2026-11-12 06:34:00-08	2026-11-13 06:15:54.531248-08
9	1	ELI-EV-009	salida	1	0.910	simulacion	\N	2026-11-12 06:42:00-08	2026-11-13 06:15:54.531248-08
10	1	ELI-EV-010	entrada	1	0.910	simulacion	\N	2026-11-12 06:50:00-08	2026-11-13 06:15:54.531248-08
11	1	ELI-EV-011	entrada	1	0.910	simulacion	\N	2026-11-12 06:58:00-08	2026-11-13 06:15:54.531248-08
12	1	ELI-EV-012	salida	1	0.910	simulacion	\N	2026-11-12 07:06:00-08	2026-11-13 06:15:54.531248-08
13	1	ELI-EV-013	entrada	1	0.910	simulacion	\N	2026-11-12 07:14:00-08	2026-11-13 06:15:54.531248-08
14	1	ELI-EV-014	entrada	1	0.910	simulacion	\N	2026-11-12 07:22:00-08	2026-11-13 06:15:54.531248-08
15	1	ELI-EV-015	salida	1	0.910	simulacion	\N	2026-11-12 07:30:00-08	2026-11-13 06:15:54.531248-08
16	1	ELI-EV-016	entrada	1	0.910	simulacion	\N	2026-11-12 07:38:00-08	2026-11-13 06:15:54.531248-08
17	1	ELI-EV-017	entrada	1	0.910	simulacion	\N	2026-11-12 07:46:00-08	2026-11-13 06:15:54.531248-08
18	1	ELI-EV-018	salida	1	0.910	simulacion	\N	2026-11-12 07:54:00-08	2026-11-13 06:15:54.531248-08
19	1	ELI-EV-019	entrada	1	0.910	simulacion	\N	2026-11-12 08:02:00-08	2026-11-13 06:15:54.531248-08
20	1	ELI-EV-020	entrada	1	0.910	simulacion	\N	2026-11-12 08:10:00-08	2026-11-13 06:15:54.531248-08
21	1	ELI-EV-021	salida	1	0.910	simulacion	\N	2026-11-12 08:18:00-08	2026-11-13 06:15:54.531248-08
22	1	ELI-EV-022	entrada	1	0.910	simulacion	\N	2026-11-12 08:26:00-08	2026-11-13 06:15:54.531248-08
23	1	ELI-EV-023	entrada	1	0.910	simulacion	\N	2026-11-12 08:34:00-08	2026-11-13 06:15:54.531248-08
24	1	ELI-EV-024	salida	1	0.910	simulacion	\N	2026-11-12 08:42:00-08	2026-11-13 06:15:54.531248-08
25	1	ELI-EV-025	entrada	1	0.910	simulacion	\N	2026-11-12 08:50:00-08	2026-11-13 06:15:54.531248-08
26	1	ELI-EV-026	entrada	1	0.910	simulacion	\N	2026-11-12 08:58:00-08	2026-11-13 06:15:54.531248-08
27	1	ELI-EV-027	salida	1	0.910	simulacion	\N	2026-11-12 09:06:00-08	2026-11-13 06:15:54.531248-08
28	1	ELI-EV-028	entrada	1	0.910	simulacion	\N	2026-11-12 09:14:00-08	2026-11-13 06:15:54.531248-08
29	1	ELI-EV-029	entrada	1	0.910	simulacion	\N	2026-11-12 09:22:00-08	2026-11-13 06:15:54.531248-08
30	1	ELI-EV-030	salida	1	0.910	simulacion	\N	2026-11-12 09:30:00-08	2026-11-13 06:15:54.531248-08
31	1	ELI-EV-031	entrada	1	0.910	simulacion	\N	2026-11-12 09:38:00-08	2026-11-13 06:15:54.531248-08
32	1	ELI-EV-032	entrada	1	0.910	simulacion	\N	2026-11-12 09:46:00-08	2026-11-13 06:15:54.531248-08
33	1	ELI-EV-033	salida	1	0.910	simulacion	\N	2026-11-12 09:54:00-08	2026-11-13 06:15:54.531248-08
34	1	ELI-EV-034	entrada	1	0.910	simulacion	\N	2026-11-12 10:02:00-08	2026-11-13 06:15:54.531248-08
35	1	ELI-EV-035	entrada	1	0.910	simulacion	\N	2026-11-12 10:10:00-08	2026-11-13 06:15:54.531248-08
36	1	ELI-EV-036	salida	1	0.910	simulacion	\N	2026-11-12 10:18:00-08	2026-11-13 06:15:54.531248-08
37	3	ISA-EV-105	salida	1	0.895	simulacion	\N	2026-11-13 05:42:00-08	2026-11-13 08:08:41.370759-08
38	4	ISA-EV-111	salida	1	0.922	simulacion	\N	2026-11-13 06:20:00-08	2026-11-13 08:08:41.370759-08
39	4	ISA-EV-110	entrada	1	0.960	simulacion	\N	2026-11-13 06:15:00-08	2026-11-13 08:08:41.370759-08
40	4	ISA-EV-104	salida	1	0.941	simulacion	\N	2026-11-13 05:40:12-08	2026-11-13 08:08:41.370759-08
41	4	ISA-EV-103	entrada	1	0.912	simulacion	\N	2026-11-13 05:05:30-08	2026-11-13 08:08:41.370759-08
42	4	ISA-EV-102	entrada	1	0.938	simulacion	\N	2026-11-13 05:02:05-08	2026-11-13 08:08:41.370759-08
43	4	ISA-EV-101	entrada	1	0.954	simulacion	\N	2026-11-13 05:01:10-08	2026-11-13 08:08:41.370759-08
44	5	ISA-EV-112	salida	1	0.914	simulacion	\N	2026-11-13 06:25:00-08	2026-11-13 08:08:41.370759-08
45	5	ISA-EV-109	salida	1	0.948	simulacion	\N	2026-11-13 06:10:20-08	2026-11-13 08:08:41.370759-08
46	5	ISA-EV-108	entrada	1	0.813	simulacion	\N	2026-11-13 05:55:00-08	2026-11-13 08:08:41.370759-08
47	5	ISA-EV-107	entrada	1	0.962	simulacion	\N	2026-11-13 05:51:44-08	2026-11-13 08:08:41.370759-08
48	5	ISA-EV-106	entrada	1	0.976	simulacion	\N	2026-11-13 05:50:15-08	2026-11-13 08:08:41.370759-08
86	8	PAB-EV-001	entrada	1	0.925	simulacion	\N	2026-11-12 06:37:00-08	2026-11-13 08:20:12.107528-08
87	8	PAB-EV-002	entrada	1	0.925	simulacion	\N	2026-11-12 06:44:00-08	2026-11-13 08:20:12.107528-08
88	8	PAB-EV-003	salida	1	0.925	simulacion	\N	2026-11-12 06:51:00-08	2026-11-13 08:20:12.107528-08
89	8	PAB-EV-004	entrada	1	0.925	simulacion	\N	2026-11-12 06:58:00-08	2026-11-13 08:20:12.107528-08
90	8	PAB-EV-005	entrada	1	0.925	simulacion	\N	2026-11-12 07:05:00-08	2026-11-13 08:20:12.107528-08
91	8	PAB-EV-006	salida	1	0.925	simulacion	\N	2026-11-12 07:12:00-08	2026-11-13 08:20:12.107528-08
92	8	PAB-EV-007	entrada	1	0.925	simulacion	\N	2026-11-12 07:19:00-08	2026-11-13 08:20:12.107528-08
93	8	PAB-EV-008	entrada	1	0.925	simulacion	\N	2026-11-12 07:26:00-08	2026-11-13 08:20:12.107528-08
94	8	PAB-EV-009	salida	1	0.925	simulacion	\N	2026-11-12 07:33:00-08	2026-11-13 08:20:12.107528-08
95	8	PAB-EV-010	entrada	1	0.925	simulacion	\N	2026-11-12 07:40:00-08	2026-11-13 08:20:12.107528-08
96	8	PAB-EV-011	entrada	1	0.925	simulacion	\N	2026-11-12 07:47:00-08	2026-11-13 08:20:12.107528-08
97	8	PAB-EV-012	salida	1	0.925	simulacion	\N	2026-11-12 07:54:00-08	2026-11-13 08:20:12.107528-08
98	8	PAB-EV-013	entrada	1	0.925	simulacion	\N	2026-11-12 08:01:00-08	2026-11-13 08:20:12.107528-08
99	8	PAB-EV-014	entrada	1	0.925	simulacion	\N	2026-11-12 08:08:00-08	2026-11-13 08:20:12.107528-08
100	8	PAB-EV-015	salida	1	0.925	simulacion	\N	2026-11-12 08:15:00-08	2026-11-13 08:20:12.107528-08
101	8	PAB-EV-016	entrada	1	0.925	simulacion	\N	2026-11-12 08:22:00-08	2026-11-13 08:20:12.107528-08
102	8	PAB-EV-017	entrada	1	0.925	simulacion	\N	2026-11-12 08:29:00-08	2026-11-13 08:20:12.107528-08
103	8	PAB-EV-018	salida	1	0.925	simulacion	\N	2026-11-12 08:36:00-08	2026-11-13 08:20:12.107528-08
104	8	PAB-EV-019	entrada	1	0.925	simulacion	\N	2026-11-12 08:43:00-08	2026-11-13 08:20:12.107528-08
105	8	PAB-EV-020	entrada	1	0.925	simulacion	\N	2026-11-12 08:50:00-08	2026-11-13 08:20:12.107528-08
106	8	PAB-EV-021	salida	1	0.925	simulacion	\N	2026-11-12 08:57:00-08	2026-11-13 08:20:12.107528-08
107	8	PAB-EV-022	entrada	1	0.925	simulacion	\N	2026-11-12 09:04:00-08	2026-11-13 08:20:12.107528-08
108	8	PAB-EV-023	entrada	1	0.925	simulacion	\N	2026-11-12 09:11:00-08	2026-11-13 08:20:12.107528-08
109	8	PAB-EV-024	salida	1	0.925	simulacion	\N	2026-11-12 09:18:00-08	2026-11-13 08:20:12.107528-08
110	8	PAB-EV-025	entrada	1	0.925	simulacion	\N	2026-11-12 09:25:00-08	2026-11-13 08:20:12.107528-08
111	8	PAB-EV-026	entrada	1	0.925	simulacion	\N	2026-11-12 09:32:00-08	2026-11-13 08:20:12.107528-08
112	8	PAB-EV-027	salida	1	0.925	simulacion	\N	2026-11-12 09:39:00-08	2026-11-13 08:20:12.107528-08
113	8	PAB-EV-028	entrada	1	0.925	simulacion	\N	2026-11-12 09:46:00-08	2026-11-13 08:20:12.107528-08
114	8	PAB-EV-029	entrada	1	0.925	simulacion	\N	2026-11-12 09:53:00-08	2026-11-13 08:20:12.107528-08
115	8	PAB-EV-030	salida	1	0.925	simulacion	\N	2026-11-12 10:00:00-08	2026-11-13 08:20:12.107528-08
116	8	PAB-EV-031	entrada	1	0.925	simulacion	\N	2026-11-12 10:07:00-08	2026-11-13 08:20:12.107528-08
117	8	PAB-EV-032	entrada	1	0.925	simulacion	\N	2026-11-12 10:14:00-08	2026-11-13 08:20:12.107528-08
118	8	PAB-EV-033	salida	1	0.925	simulacion	\N	2026-11-12 10:21:00-08	2026-11-13 08:20:12.107528-08
119	8	PAB-EV-034	entrada	1	0.925	simulacion	\N	2026-11-12 10:28:00-08	2026-11-13 08:20:12.107528-08
120	8	PAB-EV-035	entrada	1	0.925	simulacion	\N	2026-11-12 10:35:00-08	2026-11-13 08:20:12.107528-08
121	8	PAB-EV-036	salida	1	0.925	simulacion	\N	2026-11-12 10:42:00-08	2026-11-13 08:20:12.107528-08
122	8	PAB-EV-037	entrada	1	0.925	simulacion	\N	2026-11-12 10:49:00-08	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4672 (class 0 OID 24693)
-- Dependencies: 230
-- Data for Name: intentos_login; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.intentos_login (id, usuario_id, correo_intentado, ip_origen, exitoso, motivo, ocurrido_en) FROM stdin;
15	\N	admin_falso@smartaccess.local	192.168.1.250	f	Usuario no registrado	2026-11-13 05:15:30-08
16	22	elena.vazquez@smartaccess.local	172.16.1.52	t	\N	2026-11-13 05:02:15-08
17	21	valeria.cruz@smartaccess.local	172.16.1.60	f	Contraseña incorrecta (3er intento)	2026-11-13 05:10:00-08
18	20	isai.rosas@smartaccess.local	172.16.1.50	t	\N	2026-11-13 04:55:00-08
\.


--
-- TOC entry 4664 (class 0 OID 24604)
-- Dependencies: 222
-- Data for Name: modulos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.modulos (id, clave, nombre, descripcion) FROM stdin;
1	dashboard	Panel principal	Aforo actual y estadísticas
2	usuarios	Usuarios	Login, roles y permisos
3	ubicaciones	Ubicaciones y accesos	Áreas, puertas y capacidad
4	dispositivos	Dispositivos IoT	ESP32-S3 y configuración
5	monitoreo	Monitoreo	Entradas, salidas y eventos
6	alertas	Alertas	Límites de aforo y fallos
7	reportes	Reportes	Estadísticas e historial
\.


--
-- TOC entry 4666 (class 0 OID 24617)
-- Dependencies: 224
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.permisos (id, rol_id, modulo_id, puede_ver, puede_crear, puede_editar, puede_eliminar) FROM stdin;
1	1	1	t	t	t	t
2	2	1	t	f	f	f
3	3	1	t	f	f	f
4	1	2	t	t	t	t
5	2	2	t	f	f	f
6	3	2	t	f	f	f
7	1	3	t	t	t	t
8	2	3	t	f	f	f
9	3	3	t	f	f	f
10	1	4	t	t	t	t
11	2	4	t	f	f	f
12	3	4	t	f	f	f
13	1	5	t	t	t	t
14	2	5	t	t	f	f
15	3	5	t	f	f	f
16	1	6	t	t	t	t
17	2	6	t	t	t	f
18	3	6	t	f	f	f
19	1	7	t	t	t	t
20	2	7	t	t	t	f
21	3	7	t	f	f	f
\.


--
-- TOC entry 4690 (class 0 OID 24930)
-- Dependencies: 248
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.reportes (id, codigo_reporte, ubicacion_id, generado_por, tipo, periodo_inicio, periodo_fin, generado_en, ruta_archivo) FROM stdin;
1	ELI-REP-01	1	1	diario	2026-11-11 21:00:00-08	2026-11-12 21:00:00-08	2026-11-13 06:15:54.531248-08	\N
2	ISA-REP-101	15	23	personalizado	2026-10-31 22:00:00-07	2026-11-13 20:59:59-08	2026-11-13 08:08:41.370759-08	\N
3	ISA-REP-102	16	20	personalizado	2026-10-31 22:00:00-07	2026-11-13 20:59:59-08	2026-11-13 08:08:41.370759-08	\N
4	PAB-REP-01	19	25	diario	2026-11-11 21:00:00-08	2026-11-12 21:00:00-08	2026-11-13 08:20:12.107528-08	\N
\.


--
-- TOC entry 4662 (class 0 OID 24592)
-- Dependencies: 220
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.roles (id, nombre, descripcion) FROM stdin;
1	administrador	Configura sistema, ubicaciones y permisos
2	operador	Supervisa y gestiona monitoreo, alertas y reportes
3	consulta	Consulta de panel y reportes, sin edición
\.


--
-- TOC entry 4670 (class 0 OID 24671)
-- Dependencies: 228
-- Data for Name: sesiones_usuario; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.sesiones_usuario (id, usuario_id, token_hash, inicio_en, expira_en, revocada) FROM stdin;
14	20	DEMO_SHA256_73a26359d6aa388f8356b2bd579310db07db5c6d3bda0e9207457d62e90ee00f	2026-11-13 04:55:02-08	2026-11-13 07:55:02-08	t
15	22	DEMO_SHA256_d097f856d2b4c4d6d4ec8aa70b27b827d198603195ad20e8f7807746313b4cb5	2026-11-13 05:02:18-08	2026-11-13 07:02:18-08	t
16	23	DEMO_SHA256_a45f49c26bcb5e280707eb7b0fb140bd3800398641bdaa916f765c079e189ff6	2026-11-12 06:00:00-08	2026-11-12 11:00:00-08	t
\.


--
-- TOC entry 4686 (class 0 OID 24871)
-- Dependencies: 244
-- Data for Name: telemetria_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.telemetria_dispositivo (id, dispositivo_id, registrado_en, rssi_dbm, memoria_libre_bytes, fps_real, camara_operativa) FROM stdin;
1	1	2026-11-12 05:15:00-08	-55	3980000	4.60	t
2	1	2026-11-12 05:30:00-08	-56	3960000	4.70	t
3	1	2026-11-12 05:45:00-08	-57	3940000	4.80	t
4	1	2026-11-12 06:00:00-08	-58	3920000	4.90	t
5	3	2026-11-13 05:30:05-08	-61	\N	\N	t
6	4	2026-11-13 05:30:00-08	-54	\N	\N	t
7	5	2026-11-13 05:30:10-08	-49	\N	\N	t
8	6	2026-11-13 04:45:00-08	-82	\N	\N	f
13	8	2026-11-12 06:15:00-08	-53	4085000	9.60	t
14	8	2026-11-12 06:30:00-08	-54	4070000	9.70	t
15	8	2026-11-12 06:45:00-08	-55	4055000	9.80	t
16	8	2026-11-12 07:00:00-08	-56	4040000	9.90	t
\.


--
-- TOC entry 4674 (class 0 OID 24711)
-- Dependencies: 232
-- Data for Name: ubicaciones; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ubicaciones (id, nombre, descripcion, direccion, capacidad_maxima, activa, creada_en) FROM stdin;
1	Laboratorio SmartAccess - Eliel	Zona de ensayo para el conteo de personas	\N	80	t	2026-11-13 06:15:54.531248-08
15	Edificio de Ingeniería - Isai	Aulas, laboratorios de redes y electrónica	\N	150	t	2026-11-13 08:08:41.370759-08
16	Centro de Información - Isai	Biblioteca digital y salas de estudio	\N	90	t	2026-11-13 08:08:41.370759-08
17	Auditorio Magno - Isai	Sala de conferencias y eventos académicos	\N	250	t	2026-11-13 08:08:41.370759-08
19	Edificio Académico A - Pablo	Pasillo principal de aulas y laboratorios	\N	150	t	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4668 (class 0 OID 24646)
-- Dependencies: 226
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.usuarios (id, rol_id, nombre, correo, password_hash, activo, creado_en) FROM stdin;
1	2	Eliel (cuenta de pruebas)	eliel.demo@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 06:15:54.531248-08
20	1	Isai Rosas Canto (prueba)	isai.rosas@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 08:08:41.370759-08
21	2	Valeria Cruz (prueba)	valeria.cruz@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 08:08:41.370759-08
22	2	Elena Vázquez (prueba)	elena.vazquez@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 08:08:41.370759-08
23	3	Marco Solís (prueba)	marco.solis@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 08:08:41.370759-08
25	2	Pablo Alexander (cuenta de pruebas)	pablo.demo@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 08:20:12.107528-08
\.


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.accesos_id_seq', 13, true);


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ajustes_aforo_id_seq', 8, true);


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 245
-- Name: alertas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.alertas_id_seq', 8, true);


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 249
-- Name: auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.auditoria_id_seq', 4, true);


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.configuraciones_dispositivo_id_seq', 7, true);


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.dispositivos_id_seq', 8, true);


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 239
-- Name: eventos_conteo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.eventos_conteo_id_seq', 122, true);


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.intentos_login_id_seq', 18, true);


--
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.modulos_id_seq', 17, true);


--
-- TOC entry 4708 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.permisos_id_seq', 45, true);


--
-- TOC entry 4709 (class 0 OID 0)
-- Dependencies: 247
-- Name: reportes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.reportes_id_seq', 4, true);


--
-- TOC entry 4710 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.roles_id_seq', 9, true);


--
-- TOC entry 4711 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.sesiones_usuario_id_seq', 16, true);


--
-- TOC entry 4712 (class 0 OID 0)
-- Dependencies: 243
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.telemetria_dispositivo_id_seq', 16, true);


--
-- TOC entry 4713 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ubicaciones_id_seq', 19, true);


--
-- TOC entry 4714 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 25, true);


--
-- TOC entry 4453 (class 2606 OID 24741)
-- Name: accesos accesos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_pkey PRIMARY KEY (id);


--
-- TOC entry 4473 (class 2606 OID 24859)
-- Name: ajustes_aforo ajustes_aforo_codigo_ajuste_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_codigo_ajuste_key UNIQUE (codigo_ajuste);


--
-- TOC entry 4475 (class 2606 OID 24857)
-- Name: ajustes_aforo ajustes_aforo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 24913)
-- Name: alertas alertas_codigo_alerta_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_codigo_alerta_key UNIQUE (codigo_alerta);


--
-- TOC entry 4484 (class 2606 OID 24911)
-- Name: alertas alertas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_pkey PRIMARY KEY (id);


--
-- TOC entry 4491 (class 2606 OID 24976)
-- Name: auditoria auditoria_codigo_accion_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_codigo_accion_key UNIQUE (codigo_accion);


--
-- TOC entry 4493 (class 2606 OID 24974)
-- Name: auditoria auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);


--
-- TOC entry 4463 (class 2606 OID 24804)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_key UNIQUE (dispositivo_id);


--
-- TOC entry 4465 (class 2606 OID 24802)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4457 (class 2606 OID 24769)
-- Name: dispositivos dispositivos_codigo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_codigo_key UNIQUE (codigo);


--
-- TOC entry 4459 (class 2606 OID 24771)
-- Name: dispositivos dispositivos_mac_wifi_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_mac_wifi_key UNIQUE (mac_wifi);


--
-- TOC entry 4461 (class 2606 OID 24767)
-- Name: dispositivos dispositivos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_pkey PRIMARY KEY (id);


--
-- TOC entry 4467 (class 2606 OID 24830)
-- Name: eventos_conteo eventos_conteo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_pkey PRIMARY KEY (id);


--
-- TOC entry 4447 (class 2606 OID 24704)
-- Name: intentos_login intentos_login_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_pkey PRIMARY KEY (id);


--
-- TOC entry 4430 (class 2606 OID 24615)
-- Name: modulos modulos_clave_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_clave_key UNIQUE (clave);


--
-- TOC entry 4432 (class 2606 OID 24613)
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);


--
-- TOC entry 4434 (class 2606 OID 24632)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 4487 (class 2606 OID 24949)
-- Name: reportes reportes_codigo_reporte_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_codigo_reporte_key UNIQUE (codigo_reporte);


--
-- TOC entry 4489 (class 2606 OID 24947)
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id);


--
-- TOC entry 4426 (class 2606 OID 24602)
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- TOC entry 4428 (class 2606 OID 24600)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4442 (class 2606 OID 24684)
-- Name: sesiones_usuario sesiones_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 4444 (class 2606 OID 24686)
-- Name: sesiones_usuario sesiones_usuario_token_hash_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_token_hash_key UNIQUE (token_hash);


--
-- TOC entry 4478 (class 2606 OID 24883)
-- Name: telemetria_dispositivo telemetria_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4449 (class 2606 OID 24727)
-- Name: ubicaciones ubicaciones_nombre_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_nombre_key UNIQUE (nombre);


--
-- TOC entry 4451 (class 2606 OID 24725)
-- Name: ubicaciones ubicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4455 (class 2606 OID 24743)
-- Name: accesos uq_acceso_por_ubicacion; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT uq_acceso_por_ubicacion UNIQUE (ubicacion_id, nombre);


--
-- TOC entry 4471 (class 2606 OID 24832)
-- Name: eventos_conteo uq_evento_por_dispositivo; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT uq_evento_por_dispositivo UNIQUE (dispositivo_id, evento_externo);


--
-- TOC entry 4436 (class 2606 OID 24634)
-- Name: permisos uq_permiso_rol_modulo; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT uq_permiso_rol_modulo UNIQUE (rol_id, modulo_id);


--
-- TOC entry 4480 (class 2606 OID 24885)
-- Name: telemetria_dispositivo uq_telemetria_dispositivo_fecha; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT uq_telemetria_dispositivo_fecha UNIQUE (dispositivo_id, registrado_en);


--
-- TOC entry 4438 (class 2606 OID 24664)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 4440 (class 2606 OID 24662)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4485 (class 1259 OID 24985)
-- Name: idx_alertas_ubicacion_estado; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_alertas_ubicacion_estado ON public.alertas USING btree (ubicacion_id, estado, creada_en DESC);


--
-- TOC entry 4468 (class 1259 OID 24982)
-- Name: idx_eventos_dispositivo_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_eventos_dispositivo_fecha ON public.eventos_conteo USING btree (dispositivo_id, ocurrido_en DESC);


--
-- TOC entry 4469 (class 1259 OID 24983)
-- Name: idx_eventos_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_eventos_fecha ON public.eventos_conteo USING btree (ocurrido_en DESC);


--
-- TOC entry 4445 (class 1259 OID 24986)
-- Name: idx_login_usuario_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_login_usuario_fecha ON public.intentos_login USING btree (usuario_id, ocurrido_en DESC);


--
-- TOC entry 4476 (class 1259 OID 24984)
-- Name: idx_telemetria_fecha; Type: INDEX; Schema: public; Owner: pablo
--

CREATE INDEX idx_telemetria_fecha ON public.telemetria_dispositivo USING btree (dispositivo_id, registrado_en DESC);


--
-- TOC entry 4499 (class 2606 OID 24744)
-- Name: accesos accesos_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id);


--
-- TOC entry 4504 (class 2606 OID 24860)
-- Name: ajustes_aforo ajustes_aforo_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id);


--
-- TOC entry 4505 (class 2606 OID 24865)
-- Name: ajustes_aforo ajustes_aforo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- TOC entry 4507 (class 2606 OID 24924)
-- Name: alertas alertas_atendida_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_atendida_por_fkey FOREIGN KEY (atendida_por) REFERENCES public.usuarios(id);


--
-- TOC entry 4508 (class 2606 OID 24919)
-- Name: alertas alertas_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id);


--
-- TOC entry 4509 (class 2606 OID 24914)
-- Name: alertas alertas_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id);


--
-- TOC entry 4512 (class 2606 OID 24977)
-- Name: auditoria auditoria_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- TOC entry 4501 (class 2606 OID 24805)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4500 (class 2606 OID 24772)
-- Name: dispositivos dispositivos_acceso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_acceso_id_fkey FOREIGN KEY (acceso_id) REFERENCES public.accesos(id);


--
-- TOC entry 4502 (class 2606 OID 24833)
-- Name: eventos_conteo eventos_conteo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id);


--
-- TOC entry 4503 (class 2606 OID 24838)
-- Name: eventos_conteo eventos_conteo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- TOC entry 4498 (class 2606 OID 24705)
-- Name: intentos_login intentos_login_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4494 (class 2606 OID 24640)
-- Name: permisos permisos_modulo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_modulo_id_fkey FOREIGN KEY (modulo_id) REFERENCES public.modulos(id);


--
-- TOC entry 4495 (class 2606 OID 24635)
-- Name: permisos permisos_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);


--
-- TOC entry 4510 (class 2606 OID 24955)
-- Name: reportes reportes_generado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_generado_por_fkey FOREIGN KEY (generado_por) REFERENCES public.usuarios(id);


--
-- TOC entry 4511 (class 2606 OID 24950)
-- Name: reportes reportes_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id);


--
-- TOC entry 4497 (class 2606 OID 24687)
-- Name: sesiones_usuario sesiones_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


--
-- TOC entry 4506 (class 2606 OID 24886)
-- Name: telemetria_dispositivo telemetria_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id);


--
-- TOC entry 4496 (class 2606 OID 24665)
-- Name: usuarios usuarios_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);


-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict csp0OY1BwqR4y5Zg7YT8H6Zt2sQytUs6g2nSc0paJdEsnJS7vaTQSK3you5FEWb

--
-- Database "smartaccess_erick" dump
--

--
-- PostgreSQL database dump
--

\restrict uqhoW7udHhhqfmK1uTbjZqLOPDXaV8tZKT65aksJXXi2R1tnQg2uuOayWqbP3oD

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4681 (class 1262 OID 32780)
-- Name: smartaccess_erick; Type: DATABASE; Schema: -; Owner: pablo
--

CREATE DATABASE smartaccess_erick WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_MX.UTF-8';


ALTER DATABASE smartaccess_erick OWNER TO pablo;

\unrestrict uqhoW7udHhhqfmK1uTbjZqLOPDXaV8tZKT65aksJXXi2R1tnQg2uuOayWqbP3oD
\connect smartaccess_erick
\restrict uqhoW7udHhhqfmK1uTbjZqLOPDXaV8tZKT65aksJXXi2R1tnQg2uuOayWqbP3oD

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 234 (class 1259 OID 32922)
-- Name: accesos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.accesos (
    id bigint NOT NULL,
    ubicacion_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo character varying(50) DEFAULT 'bidireccional'::character varying NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.accesos OWNER TO pablo;

--
-- TOC entry 233 (class 1259 OID 32921)
-- Name: accesos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.accesos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accesos_id_seq OWNER TO pablo;

--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.accesos_id_seq OWNED BY public.accesos.id;


--
-- TOC entry 242 (class 1259 OID 33015)
-- Name: ajustes_aforo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ajustes_aforo (
    id bigint NOT NULL,
    codigo_ajuste character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    delta integer NOT NULL,
    motivo character varying(255) NOT NULL,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.ajustes_aforo OWNER TO pablo;

--
-- TOC entry 241 (class 1259 OID 33014)
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ajustes_aforo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ajustes_aforo_id_seq OWNER TO pablo;

--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ajustes_aforo_id_seq OWNED BY public.ajustes_aforo.id;


--
-- TOC entry 244 (class 1259 OID 33042)
-- Name: alertas; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.alertas (
    id bigint NOT NULL,
    codigo_alerta character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    dispositivo_id bigint,
    tipo character varying(50) NOT NULL,
    severidad character varying(20) NOT NULL,
    mensaje text NOT NULL,
    estado character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    creada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    atendida_en timestamp with time zone,
    atendida_por bigint
);


ALTER TABLE public.alertas OWNER TO pablo;

--
-- TOC entry 243 (class 1259 OID 33041)
-- Name: alertas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.alertas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alertas_id_seq OWNER TO pablo;

--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 243
-- Name: alertas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.alertas_id_seq OWNED BY public.alertas.id;


--
-- TOC entry 248 (class 1259 OID 33108)
-- Name: auditoria; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.auditoria (
    id bigint NOT NULL,
    codigo_accion character varying(50) NOT NULL,
    usuario_id bigint,
    entidad character varying(80) NOT NULL,
    operacion character varying(20) NOT NULL,
    identificador_registro character varying(100),
    detalle jsonb,
    realizada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.auditoria OWNER TO pablo;

--
-- TOC entry 247 (class 1259 OID 33107)
-- Name: auditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auditoria_id_seq OWNER TO pablo;

--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 247
-- Name: auditoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.auditoria_id_seq OWNED BY public.auditoria.id;


--
-- TOC entry 238 (class 1259 OID 32968)
-- Name: configuraciones_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.configuraciones_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    algoritmo character varying(100) NOT NULL,
    confianza_minima numeric(4,2) DEFAULT 0.80 NOT NULL,
    resolucion character varying(20) DEFAULT '320x240'::character varying NOT NULL,
    fps_objetivo smallint DEFAULT 15 NOT NULL,
    antirrebote_ms integer DEFAULT 1000 NOT NULL,
    orientacion character varying(50) DEFAULT 'cenital_pasillo'::character varying NOT NULL,
    actualizada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.configuraciones_dispositivo OWNER TO pablo;

--
-- TOC entry 237 (class 1259 OID 32967)
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.configuraciones_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configuraciones_dispositivo_id_seq OWNER TO pablo;

--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.configuraciones_dispositivo_id_seq OWNED BY public.configuraciones_dispositivo.id;


--
-- TOC entry 236 (class 1259 OID 32941)
-- Name: dispositivos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.dispositivos (
    id bigint NOT NULL,
    acceso_id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    modelo character varying(100) NOT NULL,
    modelo_camera character varying(50) DEFAULT 'OV2640'::character varying NOT NULL,
    mac_wifi macaddr,
    version_firmware character varying(50),
    estado character varying(30) DEFAULT 'offline'::character varying NOT NULL,
    ultima_conexion timestamp with time zone,
    instalado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.dispositivos OWNER TO pablo;

--
-- TOC entry 235 (class 1259 OID 32940)
-- Name: dispositivos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.dispositivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dispositivos_id_seq OWNER TO pablo;

--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.dispositivos_id_seq OWNED BY public.dispositivos.id;


--
-- TOC entry 250 (class 1259 OID 33130)
-- Name: eventos_conteo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.eventos_conteo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    evento_externo character varying(100) NOT NULL,
    direccion character varying(20) NOT NULL,
    cantidad smallint DEFAULT 1 NOT NULL,
    confianza numeric(4,2),
    origen character varying(50) DEFAULT 'esp32_cam_ai'::character varying NOT NULL,
    usuario_id bigint,
    ocurrido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    recibido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.eventos_conteo OWNER TO pablo;

--
-- TOC entry 249 (class 1259 OID 33129)
-- Name: eventos_conteo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.eventos_conteo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eventos_conteo_id_seq OWNER TO pablo;

--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 249
-- Name: eventos_conteo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.eventos_conteo_id_seq OWNED BY public.eventos_conteo.id;


--
-- TOC entry 230 (class 1259 OID 32886)
-- Name: intentos_login; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.intentos_login (
    id bigint NOT NULL,
    usuario_id bigint,
    correo_intentado character varying(150) NOT NULL,
    ip_origen inet,
    exitoso boolean NOT NULL,
    motivo character varying(150),
    ocurrido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.intentos_login OWNER TO pablo;

--
-- TOC entry 229 (class 1259 OID 32885)
-- Name: intentos_login_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.intentos_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.intentos_login_id_seq OWNER TO pablo;

--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.intentos_login_id_seq OWNED BY public.intentos_login.id;


--
-- TOC entry 222 (class 1259 OID 32795)
-- Name: modulos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.modulos (
    id bigint NOT NULL,
    clave character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.modulos OWNER TO pablo;

--
-- TOC entry 221 (class 1259 OID 32794)
-- Name: modulos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.modulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modulos_id_seq OWNER TO pablo;

--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.modulos_id_seq OWNED BY public.modulos.id;


--
-- TOC entry 224 (class 1259 OID 32809)
-- Name: permisos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.permisos (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    modulo_id bigint NOT NULL,
    puede_ver boolean DEFAULT true NOT NULL,
    puede_crear boolean DEFAULT false NOT NULL,
    puede_editar boolean DEFAULT false NOT NULL,
    puede_eliminar boolean DEFAULT false NOT NULL
);


ALTER TABLE public.permisos OWNER TO pablo;

--
-- TOC entry 223 (class 1259 OID 32808)
-- Name: permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permisos_id_seq OWNER TO pablo;

--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.permisos_id_seq OWNED BY public.permisos.id;


--
-- TOC entry 246 (class 1259 OID 33078)
-- Name: reportes; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.reportes (
    id bigint NOT NULL,
    codigo_reporte character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    generado_por bigint NOT NULL,
    tipo character varying(50) NOT NULL,
    periodo_inicio timestamp with time zone NOT NULL,
    periodo_fin timestamp with time zone NOT NULL,
    generado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ruta_archivo text
);


ALTER TABLE public.reportes OWNER TO pablo;

--
-- TOC entry 245 (class 1259 OID 33077)
-- Name: reportes_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.reportes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reportes_id_seq OWNER TO pablo;

--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 245
-- Name: reportes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.reportes_id_seq OWNED BY public.reportes.id;


--
-- TOC entry 220 (class 1259 OID 32782)
-- Name: roles; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.roles OWNER TO pablo;

--
-- TOC entry 219 (class 1259 OID 32781)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO pablo;

--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 228 (class 1259 OID 32864)
-- Name: sesiones_usuario; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.sesiones_usuario (
    id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    token_hash character varying(255) NOT NULL,
    inicio_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    expira_en timestamp with time zone NOT NULL,
    revocada boolean DEFAULT false NOT NULL
);


ALTER TABLE public.sesiones_usuario OWNER TO pablo;

--
-- TOC entry 227 (class 1259 OID 32863)
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.sesiones_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sesiones_usuario_id_seq OWNER TO pablo;

--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.sesiones_usuario_id_seq OWNED BY public.sesiones_usuario.id;


--
-- TOC entry 240 (class 1259 OID 32997)
-- Name: telemetria_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.telemetria_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    registrado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rssi_dbm smallint,
    memoria_libre_bytes bigint,
    fps_real numeric(5,2),
    camara_operativa boolean DEFAULT true NOT NULL
);


ALTER TABLE public.telemetria_dispositivo OWNER TO pablo;

--
-- TOC entry 239 (class 1259 OID 32996)
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.telemetria_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telemetria_dispositivo_id_seq OWNER TO pablo;

--
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 239
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.telemetria_dispositivo_id_seq OWNED BY public.telemetria_dispositivo.id;


--
-- TOC entry 232 (class 1259 OID 32905)
-- Name: ubicaciones; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ubicaciones (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    direccion character varying(200),
    capacidad_maxima integer NOT NULL,
    activa boolean DEFAULT true NOT NULL,
    creada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT ubicaciones_capacidad_maxima_check CHECK ((capacidad_maxima > 0))
);


ALTER TABLE public.ubicaciones OWNER TO pablo;

--
-- TOC entry 231 (class 1259 OID 32904)
-- Name: ubicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ubicaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ubicaciones_id_seq OWNER TO pablo;

--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ubicaciones_id_seq OWNED BY public.ubicaciones.id;


--
-- TOC entry 226 (class 1259 OID 32839)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(150) NOT NULL,
    password_hash character varying(255) NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.usuarios OWNER TO pablo;

--
-- TOC entry 225 (class 1259 OID 32838)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO pablo;

--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 251 (class 1259 OID 33160)
-- Name: vw_aforo_actual; Type: VIEW; Schema: public; Owner: pablo
--

CREATE VIEW public.vw_aforo_actual AS
 SELECT u.id AS ubicacion_id,
    u.nombre AS ubicacion,
    u.capacidad_maxima,
    COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) AS entradas_acumuladas,
    COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) AS salidas_acumuladas,
    COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint) AS ajuste_neto,
    ((COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) - COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint)) + COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint)) AS aforo_actual,
    round((((((COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) - COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint)) + COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint)))::numeric / (u.capacidad_maxima)::numeric) * (100)::numeric), 2) AS porcentaje_ocupacion
   FROM (((public.ubicaciones u
     LEFT JOIN public.accesos a ON ((u.id = a.ubicacion_id)))
     LEFT JOIN public.dispositivos d ON ((a.id = d.acceso_id)))
     LEFT JOIN public.eventos_conteo ec ON ((d.id = ec.dispositivo_id)))
  GROUP BY u.id, u.nombre, u.capacidad_maxima;


ALTER VIEW public.vw_aforo_actual OWNER TO pablo;

--
-- TOC entry 4387 (class 2604 OID 32925)
-- Name: accesos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos ALTER COLUMN id SET DEFAULT nextval('public.accesos_id_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 33018)
-- Name: ajustes_aforo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo ALTER COLUMN id SET DEFAULT nextval('public.ajustes_aforo_id_seq'::regclass);


--
-- TOC entry 4406 (class 2604 OID 33045)
-- Name: alertas id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas ALTER COLUMN id SET DEFAULT nextval('public.alertas_id_seq'::regclass);


--
-- TOC entry 4411 (class 2604 OID 33111)
-- Name: auditoria id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria ALTER COLUMN id SET DEFAULT nextval('public.auditoria_id_seq'::regclass);


--
-- TOC entry 4394 (class 2604 OID 32971)
-- Name: configuraciones_dispositivo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.configuraciones_dispositivo_id_seq'::regclass);


--
-- TOC entry 4390 (class 2604 OID 32944)
-- Name: dispositivos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos ALTER COLUMN id SET DEFAULT nextval('public.dispositivos_id_seq'::regclass);


--
-- TOC entry 4413 (class 2604 OID 33133)
-- Name: eventos_conteo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo ALTER COLUMN id SET DEFAULT nextval('public.eventos_conteo_id_seq'::regclass);


--
-- TOC entry 4382 (class 2604 OID 32889)
-- Name: intentos_login id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login ALTER COLUMN id SET DEFAULT nextval('public.intentos_login_id_seq'::regclass);


--
-- TOC entry 4370 (class 2604 OID 32798)
-- Name: modulos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos ALTER COLUMN id SET DEFAULT nextval('public.modulos_id_seq'::regclass);


--
-- TOC entry 4371 (class 2604 OID 32812)
-- Name: permisos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos ALTER COLUMN id SET DEFAULT nextval('public.permisos_id_seq'::regclass);


--
-- TOC entry 4409 (class 2604 OID 33081)
-- Name: reportes id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes ALTER COLUMN id SET DEFAULT nextval('public.reportes_id_seq'::regclass);


--
-- TOC entry 4369 (class 2604 OID 32785)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4379 (class 2604 OID 32867)
-- Name: sesiones_usuario id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario ALTER COLUMN id SET DEFAULT nextval('public.sesiones_usuario_id_seq'::regclass);


--
-- TOC entry 4401 (class 2604 OID 33000)
-- Name: telemetria_dispositivo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.telemetria_dispositivo_id_seq'::regclass);


--
-- TOC entry 4384 (class 2604 OID 32908)
-- Name: ubicaciones id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones ALTER COLUMN id SET DEFAULT nextval('public.ubicaciones_id_seq'::regclass);


--
-- TOC entry 4376 (class 2604 OID 32842)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4659 (class 0 OID 32922)
-- Dependencies: 234
-- Data for Name: accesos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.accesos (id, ubicacion_id, nombre, tipo, activo) FROM stdin;
1	1	Acceso Principal Sala Erick	bidireccional	t
2	1	Salida Emergencia Sala Erick	bidireccional	t
3	2	Entrada Norte Cafetería Erick	bidireccional	t
\.


--
-- TOC entry 4667 (class 0 OID 33015)
-- Dependencies: 242
-- Data for Name: ajustes_aforo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ajustes_aforo (id, codigo_ajuste, ubicacion_id, usuario_id, delta, motivo, creado_en) FROM stdin;
1	ERI-AJ-01	1	2	6	Ingreso de ponentes y comité organizador	2026-11-17 05:54:53.993465-08
2	ERI-AJ-02	2	1	-3	Ajuste tras cambio de turno de cocina	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4669 (class 0 OID 33042)
-- Dependencies: 244
-- Data for Name: alertas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.alertas (id, codigo_alerta, ubicacion_id, dispositivo_id, tipo, severidad, mensaje, estado, creada_en, atendida_en, atendida_por) FROM stdin;
1	ERI-AL-01	1	1	flujo_alto	media	Alta concurrencia detectada en inicio de conferencia	pendiente	2026-11-17 05:54:53.993465-08	\N	\N
2	ERI-AL-02	2	3	aforo_pico	alta	Cafetería al 88% de su capacidad en horario de receso	pendiente	2026-11-17 05:54:53.993465-08	\N	\N
\.


--
-- TOC entry 4673 (class 0 OID 33108)
-- Dependencies: 248
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.auditoria (id, codigo_accion, usuario_id, entidad, operacion, identificador_registro, detalle, realizada_en) FROM stdin;
1	ERI-AUD-01	1	dispositivos	INSERT	ERI-CAM-001	{"autor": "Erick", "ubicacion": "Sala de Usos Múltiples"}	2026-11-17 05:54:53.993465-08
2	ERI-AUD-02	2	ajustes_aforo	INSERT	ERI-AJ-01	{"autor": "Erick", "delta": 6}	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4663 (class 0 OID 32968)
-- Dependencies: 238
-- Data for Name: configuraciones_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.configuraciones_dispositivo (id, dispositivo_id, algoritmo, confianza_minima, resolucion, fps_objetivo, antirrebote_ms, orientacion, actualizada_en) FROM stdin;
1	1	YOLOv8n-Edge	0.85	640x480	12	1000	cenital_pasillo	2026-11-17 05:54:53.993465-08
2	2	YOLOv8n-Edge	0.80	320x240	15	1000	cenital_pasillo	2026-11-17 05:54:53.993465-08
3	3	YOLOv8n-Edge	0.83	320x240	15	1000	cenital_pasillo	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4661 (class 0 OID 32941)
-- Dependencies: 236
-- Data for Name: dispositivos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.dispositivos (id, acceso_id, codigo, nombre, modelo, modelo_camera, mac_wifi, version_firmware, estado, ultima_conexion, instalado_en) FROM stdin;
1	1	ERI-CAM-001	Nodo Sala Principal	ESP32-S3-N16R8	OV3660	a4:cf:12:05:00:01	v1.2.4-edge	online	\N	2026-11-17 05:54:53.993465-08
2	2	ERI-CAM-002	Nodo Sala Emergencia	ESP32-S3-N16R8	OV2640	a4:cf:12:05:00:02	v1.2.4-edge	online	\N	2026-11-17 05:54:53.993465-08
3	3	ERI-CAM-003	Nodo Cafetería Norte	ESP32-S3-N16R8	OV2640	a4:cf:12:05:00:03	v1.2.4-edge	online	\N	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4675 (class 0 OID 33130)
-- Dependencies: 250
-- Data for Name: eventos_conteo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.eventos_conteo (id, dispositivo_id, evento_externo, direccion, cantidad, confianza, origen, usuario_id, ocurrido_en, recibido_en) FROM stdin;
1	2	ERI-EV-001	entrada	1	0.98	esp32_cam_ai	\N	2026-11-17 05:45:53.993465-08	2026-11-17 05:54:53.993465-08
2	3	ERI-EV-002	entrada	1	0.97	esp32_cam_ai	\N	2026-11-17 05:36:53.993465-08	2026-11-17 05:54:53.993465-08
3	1	ERI-EV-003	salida	1	0.90	esp32_cam_ai	\N	2026-11-17 05:27:53.993465-08	2026-11-17 05:54:53.993465-08
4	2	ERI-EV-004	entrada	1	0.90	esp32_cam_ai	\N	2026-11-17 05:18:53.993465-08	2026-11-17 05:54:53.993465-08
5	3	ERI-EV-005	entrada	1	0.93	esp32_cam_ai	\N	2026-11-17 05:09:53.993465-08	2026-11-17 05:54:53.993465-08
6	1	ERI-EV-006	salida	1	0.93	esp32_cam_ai	\N	2026-11-17 05:00:53.993465-08	2026-11-17 05:54:53.993465-08
7	2	ERI-EV-007	entrada	1	0.92	esp32_cam_ai	\N	2026-11-17 04:51:53.993465-08	2026-11-17 05:54:53.993465-08
8	3	ERI-EV-008	entrada	1	0.93	esp32_cam_ai	\N	2026-11-17 04:42:53.993465-08	2026-11-17 05:54:53.993465-08
9	1	ERI-EV-009	salida	1	0.95	esp32_cam_ai	\N	2026-11-17 04:33:53.993465-08	2026-11-17 05:54:53.993465-08
10	2	ERI-EV-010	entrada	1	0.97	esp32_cam_ai	\N	2026-11-17 04:24:53.993465-08	2026-11-17 05:54:53.993465-08
11	3	ERI-EV-011	entrada	1	0.99	esp32_cam_ai	\N	2026-11-17 04:15:53.993465-08	2026-11-17 05:54:53.993465-08
12	1	ERI-EV-012	salida	1	0.95	esp32_cam_ai	\N	2026-11-17 04:06:53.993465-08	2026-11-17 05:54:53.993465-08
13	2	ERI-EV-013	entrada	1	0.98	esp32_cam_ai	\N	2026-11-17 03:57:53.993465-08	2026-11-17 05:54:53.993465-08
14	3	ERI-EV-014	entrada	1	0.89	esp32_cam_ai	\N	2026-11-17 03:48:53.993465-08	2026-11-17 05:54:53.993465-08
15	1	ERI-EV-015	salida	1	0.90	esp32_cam_ai	\N	2026-11-17 03:39:53.993465-08	2026-11-17 05:54:53.993465-08
16	2	ERI-EV-016	entrada	1	0.95	esp32_cam_ai	\N	2026-11-17 03:30:53.993465-08	2026-11-17 05:54:53.993465-08
17	3	ERI-EV-017	entrada	1	0.99	esp32_cam_ai	\N	2026-11-17 03:21:53.993465-08	2026-11-17 05:54:53.993465-08
18	1	ERI-EV-018	salida	1	0.93	esp32_cam_ai	\N	2026-11-17 03:12:53.993465-08	2026-11-17 05:54:53.993465-08
19	2	ERI-EV-019	entrada	1	0.89	esp32_cam_ai	\N	2026-11-17 03:03:53.993465-08	2026-11-17 05:54:53.993465-08
20	3	ERI-EV-020	entrada	1	0.93	esp32_cam_ai	\N	2026-11-17 02:54:53.993465-08	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4655 (class 0 OID 32886)
-- Dependencies: 230
-- Data for Name: intentos_login; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.intentos_login (id, usuario_id, correo_intentado, ip_origen, exitoso, motivo, ocurrido_en) FROM stdin;
1	1	erick.admin@smartaccess.local	172.16.1.80	t	Acceso autorizado	2026-11-17 02:54:53.993465-08
2	2	erick.operador@smartaccess.local	172.16.1.81	t	Acceso autorizado	2026-11-17 04:24:53.993465-08
3	\N	invitado.externo@smartaccess.local	192.168.88.45	f	Usuario no registrado	2026-11-17 05:14:53.993465-08
4	1	erick.admin@smartaccess.local	172.16.1.80	t	Acceso autorizado	2026-11-17 03:04:16.867825-08
5	2	erick.operador@smartaccess.local	172.16.1.81	t	Acceso autorizado	2026-11-17 04:34:16.867825-08
6	\N	invitado.externo@smartaccess.local	192.168.88.45	f	Usuario no registrado	2026-11-17 05:24:16.867825-08
\.


--
-- TOC entry 4647 (class 0 OID 32795)
-- Dependencies: 222
-- Data for Name: modulos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.modulos (id, clave, nombre, descripcion) FROM stdin;
1	ERI_EVT	Control de Eventos	Gestión de aforo en auditorios y salas de conferencias
2	ERI_EST	Estadísticas Avanzadas	Comparativas de flujo horario y picos de ocupación
3	ERI_EXP	Exportación Masiva	Descarga automatizada de reportes en PDF y Excel
\.


--
-- TOC entry 4649 (class 0 OID 32809)
-- Dependencies: 224
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.permisos (id, rol_id, modulo_id, puede_ver, puede_crear, puede_editar, puede_eliminar) FROM stdin;
1	1	1	t	t	t	t
2	1	2	t	t	t	t
3	1	3	t	t	t	t
\.


--
-- TOC entry 4671 (class 0 OID 33078)
-- Dependencies: 246
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.reportes (id, codigo_reporte, ubicacion_id, generado_por, tipo, periodo_inicio, periodo_fin, generado_en, ruta_archivo) FROM stdin;
1	ERI-REP-01	1	3	aforo_eventos	2026-11-16 05:54:53.993465-08	2026-11-17 05:54:53.993465-08	2026-11-17 05:54:53.993465-08	/exports/sala_erick.pdf
2	ERI-REP-02	2	1	picos_cafeteria	2026-11-16 17:54:53.993465-08	2026-11-17 05:54:53.993465-08	2026-11-17 05:54:53.993465-08	/exports/cafeteria_erick.xlsx
\.


--
-- TOC entry 4645 (class 0 OID 32782)
-- Dependencies: 220
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.roles (id, nombre, descripcion) FROM stdin;
1	Administrador	Acceso total a configuración, usuarios, dispositivos y reportes
2	Operador	Monitoreo en tiempo real, atención de alertas y ajustes de aforo
3	Auditor	Visualización de estadísticas, auditoría y descarga de reportes
\.


--
-- TOC entry 4653 (class 0 OID 32864)
-- Dependencies: 228
-- Data for Name: sesiones_usuario; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.sesiones_usuario (id, usuario_id, token_hash, inicio_en, expira_en, revocada) FROM stdin;
1	1	tok_erick_001_activo	2026-11-17 02:54:53.993465-08	2026-11-17 10:54:53.993465-08	f
2	3	tok_erick_002_expirado	2026-11-16 17:54:53.993465-08	2026-11-17 01:54:53.993465-08	t
\.


--
-- TOC entry 4665 (class 0 OID 32997)
-- Dependencies: 240
-- Data for Name: telemetria_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.telemetria_dispositivo (id, dispositivo_id, registrado_en, rssi_dbm, memoria_libre_bytes, fps_real, camara_operativa) FROM stdin;
1	1	2026-11-17 05:29:53.993465-08	-50	4150000	11.90	t
2	2	2026-11-17 05:36:53.993465-08	-57	4010000	14.60	t
3	3	2026-11-17 05:42:53.993465-08	-60	3920000	14.30	t
4	1	2026-11-17 05:50:53.993465-08	-51	4120000	11.80	t
5	1	2026-11-17 05:39:16.867825-08	-50	4150000	11.90	t
6	2	2026-11-17 05:46:16.867825-08	-57	4010000	14.60	t
7	3	2026-11-17 05:52:16.867825-08	-60	3920000	14.30	t
8	1	2026-11-17 06:00:16.867825-08	-51	4120000	11.80	t
\.


--
-- TOC entry 4657 (class 0 OID 32905)
-- Dependencies: 232
-- Data for Name: ubicaciones; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ubicaciones (id, nombre, descripcion, direccion, capacidad_maxima, activa, creada_en) FROM stdin;
1	Sala de Usos Múltiples - Erick	Espacio de conferencias, talleres y eventos institucionales	Edificio D, Planta Alta	200	t	2026-11-17 05:54:53.993465-08
2	Cafetería Universitaria - Erick	Área de comedor y descanso estudiantil	Plaza Central Campus	160	t	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4651 (class 0 OID 32839)
-- Dependencies: 226
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.usuarios (id, rol_id, nombre, correo, password_hash, activo, creado_en) FROM stdin;
1	1	Erick Alexander Koyoc	erick.admin@smartaccess.local	$2b$10$HashDemoErickAdmin01	t	2026-11-17 05:54:53.993465-08
2	2	Erick Operador	erick.operador@smartaccess.local	$2b$10$HashDemoErickOper02	t	2026-11-17 05:54:53.993465-08
3	3	Erick Auditor	erick.auditor@smartaccess.local	$2b$10$HashDemoErickAudit03	t	2026-11-17 05:54:53.993465-08
\.


--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.accesos_id_seq', 3, true);


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ajustes_aforo_id_seq', 4, true);


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 243
-- Name: alertas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.alertas_id_seq', 4, true);


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 247
-- Name: auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.auditoria_id_seq', 4, true);


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.configuraciones_dispositivo_id_seq', 6, true);


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.dispositivos_id_seq', 6, true);


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 249
-- Name: eventos_conteo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.eventos_conteo_id_seq', 40, true);


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.intentos_login_id_seq', 6, true);


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.modulos_id_seq', 6, true);


--
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.permisos_id_seq', 6, true);


--
-- TOC entry 4708 (class 0 OID 0)
-- Dependencies: 245
-- Name: reportes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.reportes_id_seq', 4, true);


--
-- TOC entry 4709 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.roles_id_seq', 6, true);


--
-- TOC entry 4710 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.sesiones_usuario_id_seq', 4, true);


--
-- TOC entry 4711 (class 0 OID 0)
-- Dependencies: 239
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.telemetria_dispositivo_id_seq', 8, true);


--
-- TOC entry 4712 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ubicaciones_id_seq', 2, true);


--
-- TOC entry 4713 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 6, true);


--
-- TOC entry 4444 (class 2606 OID 32934)
-- Name: accesos accesos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_pkey PRIMARY KEY (id);


--
-- TOC entry 4458 (class 2606 OID 33030)
-- Name: ajustes_aforo ajustes_aforo_codigo_ajuste_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_codigo_ajuste_key UNIQUE (codigo_ajuste);


--
-- TOC entry 4460 (class 2606 OID 33028)
-- Name: ajustes_aforo ajustes_aforo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_pkey PRIMARY KEY (id);


--
-- TOC entry 4462 (class 2606 OID 33061)
-- Name: alertas alertas_codigo_alerta_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_codigo_alerta_key UNIQUE (codigo_alerta);


--
-- TOC entry 4464 (class 2606 OID 33059)
-- Name: alertas alertas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_pkey PRIMARY KEY (id);


--
-- TOC entry 4470 (class 2606 OID 33123)
-- Name: auditoria auditoria_codigo_accion_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_codigo_accion_key UNIQUE (codigo_accion);


--
-- TOC entry 4472 (class 2606 OID 33121)
-- Name: auditoria auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);


--
-- TOC entry 4452 (class 2606 OID 32990)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_key UNIQUE (dispositivo_id);


--
-- TOC entry 4454 (class 2606 OID 32988)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4446 (class 2606 OID 32959)
-- Name: dispositivos dispositivos_codigo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_codigo_key UNIQUE (codigo);


--
-- TOC entry 4448 (class 2606 OID 32961)
-- Name: dispositivos dispositivos_mac_wifi_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_mac_wifi_key UNIQUE (mac_wifi);


--
-- TOC entry 4450 (class 2606 OID 32957)
-- Name: dispositivos dispositivos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_pkey PRIMARY KEY (id);


--
-- TOC entry 4474 (class 2606 OID 33149)
-- Name: eventos_conteo eventos_conteo_evento_externo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_evento_externo_key UNIQUE (evento_externo);


--
-- TOC entry 4476 (class 2606 OID 33147)
-- Name: eventos_conteo eventos_conteo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_pkey PRIMARY KEY (id);


--
-- TOC entry 4440 (class 2606 OID 32898)
-- Name: intentos_login intentos_login_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_pkey PRIMARY KEY (id);


--
-- TOC entry 4424 (class 2606 OID 32807)
-- Name: modulos modulos_clave_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_clave_key UNIQUE (clave);


--
-- TOC entry 4426 (class 2606 OID 32805)
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);


--
-- TOC entry 4428 (class 2606 OID 32825)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 4430 (class 2606 OID 32827)
-- Name: permisos permisos_rol_id_modulo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_modulo_id_key UNIQUE (rol_id, modulo_id);


--
-- TOC entry 4466 (class 2606 OID 33096)
-- Name: reportes reportes_codigo_reporte_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_codigo_reporte_key UNIQUE (codigo_reporte);


--
-- TOC entry 4468 (class 2606 OID 33094)
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id);


--
-- TOC entry 4420 (class 2606 OID 32793)
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- TOC entry 4422 (class 2606 OID 32791)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4436 (class 2606 OID 32877)
-- Name: sesiones_usuario sesiones_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 4438 (class 2606 OID 32879)
-- Name: sesiones_usuario sesiones_usuario_token_hash_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_token_hash_key UNIQUE (token_hash);


--
-- TOC entry 4456 (class 2606 OID 33008)
-- Name: telemetria_dispositivo telemetria_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4442 (class 2606 OID 32920)
-- Name: ubicaciones ubicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4432 (class 2606 OID 32857)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 4434 (class 2606 OID 32855)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 32935)
-- Name: accesos accesos_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4486 (class 2606 OID 33031)
-- Name: ajustes_aforo ajustes_aforo_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4487 (class 2606 OID 33036)
-- Name: ajustes_aforo ajustes_aforo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE RESTRICT;


--
-- TOC entry 4488 (class 2606 OID 33072)
-- Name: alertas alertas_atendida_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_atendida_por_fkey FOREIGN KEY (atendida_por) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4489 (class 2606 OID 33067)
-- Name: alertas alertas_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE SET NULL;


--
-- TOC entry 4490 (class 2606 OID 33062)
-- Name: alertas alertas_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4493 (class 2606 OID 33124)
-- Name: auditoria auditoria_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4484 (class 2606 OID 32991)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4483 (class 2606 OID 32962)
-- Name: dispositivos dispositivos_acceso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_acceso_id_fkey FOREIGN KEY (acceso_id) REFERENCES public.accesos(id) ON DELETE CASCADE;


--
-- TOC entry 4494 (class 2606 OID 33150)
-- Name: eventos_conteo eventos_conteo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE RESTRICT;


--
-- TOC entry 4495 (class 2606 OID 33155)
-- Name: eventos_conteo eventos_conteo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4481 (class 2606 OID 32899)
-- Name: intentos_login intentos_login_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4477 (class 2606 OID 32833)
-- Name: permisos permisos_modulo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_modulo_id_fkey FOREIGN KEY (modulo_id) REFERENCES public.modulos(id) ON DELETE CASCADE;


--
-- TOC entry 4478 (class 2606 OID 32828)
-- Name: permisos permisos_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 4491 (class 2606 OID 33102)
-- Name: reportes reportes_generado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_generado_por_fkey FOREIGN KEY (generado_por) REFERENCES public.usuarios(id) ON DELETE RESTRICT;


--
-- TOC entry 4492 (class 2606 OID 33097)
-- Name: reportes reportes_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4480 (class 2606 OID 32880)
-- Name: sesiones_usuario sesiones_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


--
-- TOC entry 4485 (class 2606 OID 33009)
-- Name: telemetria_dispositivo telemetria_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4479 (class 2606 OID 32858)
-- Name: usuarios usuarios_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON DELETE RESTRICT;


-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict uqhoW7udHhhqfmK1uTbjZqLOPDXaV8tZKT65aksJXXi2R1tnQg2uuOayWqbP3oD

--
-- Database "smartaccess_johanan" dump
--

--
-- PostgreSQL database dump
--

\restrict rdZIXhLUdB0gbRuM68e7QPITxbgmIZ3QjgJ1stiM22SEBsK2ud8CwE1tHJmLgla

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4681 (class 1262 OID 32779)
-- Name: smartaccess_johanan; Type: DATABASE; Schema: -; Owner: pablo
--

CREATE DATABASE smartaccess_johanan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_MX.UTF-8';


ALTER DATABASE smartaccess_johanan OWNER TO pablo;

\unrestrict rdZIXhLUdB0gbRuM68e7QPITxbgmIZ3QjgJ1stiM22SEBsK2ud8CwE1tHJmLgla
\connect smartaccess_johanan
\restrict rdZIXhLUdB0gbRuM68e7QPITxbgmIZ3QjgJ1stiM22SEBsK2ud8CwE1tHJmLgla

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 234 (class 1259 OID 33306)
-- Name: accesos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.accesos (
    id bigint NOT NULL,
    ubicacion_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo character varying(50) DEFAULT 'bidireccional'::character varying NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.accesos OWNER TO pablo;

--
-- TOC entry 233 (class 1259 OID 33305)
-- Name: accesos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.accesos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accesos_id_seq OWNER TO pablo;

--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.accesos_id_seq OWNED BY public.accesos.id;


--
-- TOC entry 242 (class 1259 OID 33399)
-- Name: ajustes_aforo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ajustes_aforo (
    id bigint NOT NULL,
    codigo_ajuste character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    delta integer NOT NULL,
    motivo character varying(255) NOT NULL,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.ajustes_aforo OWNER TO pablo;

--
-- TOC entry 241 (class 1259 OID 33398)
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ajustes_aforo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ajustes_aforo_id_seq OWNER TO pablo;

--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ajustes_aforo_id_seq OWNED BY public.ajustes_aforo.id;


--
-- TOC entry 244 (class 1259 OID 33426)
-- Name: alertas; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.alertas (
    id bigint NOT NULL,
    codigo_alerta character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    dispositivo_id bigint,
    tipo character varying(50) NOT NULL,
    severidad character varying(20) NOT NULL,
    mensaje text NOT NULL,
    estado character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    creada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    atendida_en timestamp with time zone,
    atendida_por bigint
);


ALTER TABLE public.alertas OWNER TO pablo;

--
-- TOC entry 243 (class 1259 OID 33425)
-- Name: alertas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.alertas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alertas_id_seq OWNER TO pablo;

--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 243
-- Name: alertas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.alertas_id_seq OWNED BY public.alertas.id;


--
-- TOC entry 248 (class 1259 OID 33492)
-- Name: auditoria; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.auditoria (
    id bigint NOT NULL,
    codigo_accion character varying(50) NOT NULL,
    usuario_id bigint,
    entidad character varying(80) NOT NULL,
    operacion character varying(20) NOT NULL,
    identificador_registro character varying(100),
    detalle jsonb,
    realizada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.auditoria OWNER TO pablo;

--
-- TOC entry 247 (class 1259 OID 33491)
-- Name: auditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auditoria_id_seq OWNER TO pablo;

--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 247
-- Name: auditoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.auditoria_id_seq OWNED BY public.auditoria.id;


--
-- TOC entry 238 (class 1259 OID 33352)
-- Name: configuraciones_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.configuraciones_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    algoritmo character varying(100) NOT NULL,
    confianza_minima numeric(4,2) DEFAULT 0.80 NOT NULL,
    resolucion character varying(20) DEFAULT '320x240'::character varying NOT NULL,
    fps_objetivo smallint DEFAULT 15 NOT NULL,
    antirrebote_ms integer DEFAULT 1000 NOT NULL,
    orientacion character varying(50) DEFAULT 'cenital_pasillo'::character varying NOT NULL,
    actualizada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.configuraciones_dispositivo OWNER TO pablo;

--
-- TOC entry 237 (class 1259 OID 33351)
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.configuraciones_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configuraciones_dispositivo_id_seq OWNER TO pablo;

--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.configuraciones_dispositivo_id_seq OWNED BY public.configuraciones_dispositivo.id;


--
-- TOC entry 236 (class 1259 OID 33325)
-- Name: dispositivos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.dispositivos (
    id bigint NOT NULL,
    acceso_id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    modelo character varying(100) NOT NULL,
    modelo_camera character varying(50) DEFAULT 'OV2640'::character varying NOT NULL,
    mac_wifi macaddr,
    version_firmware character varying(50),
    estado character varying(30) DEFAULT 'offline'::character varying NOT NULL,
    ultima_conexion timestamp with time zone,
    instalado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.dispositivos OWNER TO pablo;

--
-- TOC entry 235 (class 1259 OID 33324)
-- Name: dispositivos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.dispositivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dispositivos_id_seq OWNER TO pablo;

--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.dispositivos_id_seq OWNED BY public.dispositivos.id;


--
-- TOC entry 250 (class 1259 OID 33514)
-- Name: eventos_conteo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.eventos_conteo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    evento_externo character varying(100) NOT NULL,
    direccion character varying(20) NOT NULL,
    cantidad smallint DEFAULT 1 NOT NULL,
    confianza numeric(4,2),
    origen character varying(50) DEFAULT 'esp32_cam_ai'::character varying NOT NULL,
    usuario_id bigint,
    ocurrido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    recibido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.eventos_conteo OWNER TO pablo;

--
-- TOC entry 249 (class 1259 OID 33513)
-- Name: eventos_conteo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.eventos_conteo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eventos_conteo_id_seq OWNER TO pablo;

--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 249
-- Name: eventos_conteo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.eventos_conteo_id_seq OWNED BY public.eventos_conteo.id;


--
-- TOC entry 230 (class 1259 OID 33270)
-- Name: intentos_login; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.intentos_login (
    id bigint NOT NULL,
    usuario_id bigint,
    correo_intentado character varying(150) NOT NULL,
    ip_origen inet,
    exitoso boolean NOT NULL,
    motivo character varying(150),
    ocurrido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.intentos_login OWNER TO pablo;

--
-- TOC entry 229 (class 1259 OID 33269)
-- Name: intentos_login_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.intentos_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.intentos_login_id_seq OWNER TO pablo;

--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.intentos_login_id_seq OWNED BY public.intentos_login.id;


--
-- TOC entry 222 (class 1259 OID 33179)
-- Name: modulos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.modulos (
    id bigint NOT NULL,
    clave character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.modulos OWNER TO pablo;

--
-- TOC entry 221 (class 1259 OID 33178)
-- Name: modulos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.modulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modulos_id_seq OWNER TO pablo;

--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.modulos_id_seq OWNED BY public.modulos.id;


--
-- TOC entry 224 (class 1259 OID 33193)
-- Name: permisos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.permisos (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    modulo_id bigint NOT NULL,
    puede_ver boolean DEFAULT true NOT NULL,
    puede_crear boolean DEFAULT false NOT NULL,
    puede_editar boolean DEFAULT false NOT NULL,
    puede_eliminar boolean DEFAULT false NOT NULL
);


ALTER TABLE public.permisos OWNER TO pablo;

--
-- TOC entry 223 (class 1259 OID 33192)
-- Name: permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permisos_id_seq OWNER TO pablo;

--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.permisos_id_seq OWNED BY public.permisos.id;


--
-- TOC entry 246 (class 1259 OID 33462)
-- Name: reportes; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.reportes (
    id bigint NOT NULL,
    codigo_reporte character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    generado_por bigint NOT NULL,
    tipo character varying(50) NOT NULL,
    periodo_inicio timestamp with time zone NOT NULL,
    periodo_fin timestamp with time zone NOT NULL,
    generado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ruta_archivo text
);


ALTER TABLE public.reportes OWNER TO pablo;

--
-- TOC entry 245 (class 1259 OID 33461)
-- Name: reportes_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.reportes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reportes_id_seq OWNER TO pablo;

--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 245
-- Name: reportes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.reportes_id_seq OWNED BY public.reportes.id;


--
-- TOC entry 220 (class 1259 OID 33166)
-- Name: roles; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.roles OWNER TO pablo;

--
-- TOC entry 219 (class 1259 OID 33165)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO pablo;

--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 228 (class 1259 OID 33248)
-- Name: sesiones_usuario; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.sesiones_usuario (
    id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    token_hash character varying(255) NOT NULL,
    inicio_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    expira_en timestamp with time zone NOT NULL,
    revocada boolean DEFAULT false NOT NULL
);


ALTER TABLE public.sesiones_usuario OWNER TO pablo;

--
-- TOC entry 227 (class 1259 OID 33247)
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.sesiones_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sesiones_usuario_id_seq OWNER TO pablo;

--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.sesiones_usuario_id_seq OWNED BY public.sesiones_usuario.id;


--
-- TOC entry 240 (class 1259 OID 33381)
-- Name: telemetria_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.telemetria_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    registrado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rssi_dbm smallint,
    memoria_libre_bytes bigint,
    fps_real numeric(5,2),
    camara_operativa boolean DEFAULT true NOT NULL
);


ALTER TABLE public.telemetria_dispositivo OWNER TO pablo;

--
-- TOC entry 239 (class 1259 OID 33380)
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.telemetria_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telemetria_dispositivo_id_seq OWNER TO pablo;

--
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 239
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.telemetria_dispositivo_id_seq OWNED BY public.telemetria_dispositivo.id;


--
-- TOC entry 232 (class 1259 OID 33289)
-- Name: ubicaciones; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ubicaciones (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    direccion character varying(200),
    capacidad_maxima integer NOT NULL,
    activa boolean DEFAULT true NOT NULL,
    creada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT ubicaciones_capacidad_maxima_check CHECK ((capacidad_maxima > 0))
);


ALTER TABLE public.ubicaciones OWNER TO pablo;

--
-- TOC entry 231 (class 1259 OID 33288)
-- Name: ubicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ubicaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ubicaciones_id_seq OWNER TO pablo;

--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ubicaciones_id_seq OWNED BY public.ubicaciones.id;


--
-- TOC entry 226 (class 1259 OID 33223)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(150) NOT NULL,
    password_hash character varying(255) NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.usuarios OWNER TO pablo;

--
-- TOC entry 225 (class 1259 OID 33222)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO pablo;

--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 251 (class 1259 OID 33544)
-- Name: vw_aforo_actual; Type: VIEW; Schema: public; Owner: pablo
--

CREATE VIEW public.vw_aforo_actual AS
 SELECT u.id AS ubicacion_id,
    u.nombre AS ubicacion,
    u.capacidad_maxima,
    COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) AS entradas_acumuladas,
    COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) AS salidas_acumuladas,
    COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint) AS ajuste_neto,
    ((COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) - COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint)) + COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint)) AS aforo_actual,
    round((((((COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) - COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint)) + COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint)))::numeric / (u.capacidad_maxima)::numeric) * (100)::numeric), 2) AS porcentaje_ocupacion
   FROM (((public.ubicaciones u
     LEFT JOIN public.accesos a ON ((u.id = a.ubicacion_id)))
     LEFT JOIN public.dispositivos d ON ((a.id = d.acceso_id)))
     LEFT JOIN public.eventos_conteo ec ON ((d.id = ec.dispositivo_id)))
  GROUP BY u.id, u.nombre, u.capacidad_maxima;


ALTER VIEW public.vw_aforo_actual OWNER TO pablo;

--
-- TOC entry 4387 (class 2604 OID 33309)
-- Name: accesos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos ALTER COLUMN id SET DEFAULT nextval('public.accesos_id_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 33402)
-- Name: ajustes_aforo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo ALTER COLUMN id SET DEFAULT nextval('public.ajustes_aforo_id_seq'::regclass);


--
-- TOC entry 4406 (class 2604 OID 33429)
-- Name: alertas id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas ALTER COLUMN id SET DEFAULT nextval('public.alertas_id_seq'::regclass);


--
-- TOC entry 4411 (class 2604 OID 33495)
-- Name: auditoria id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria ALTER COLUMN id SET DEFAULT nextval('public.auditoria_id_seq'::regclass);


--
-- TOC entry 4394 (class 2604 OID 33355)
-- Name: configuraciones_dispositivo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.configuraciones_dispositivo_id_seq'::regclass);


--
-- TOC entry 4390 (class 2604 OID 33328)
-- Name: dispositivos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos ALTER COLUMN id SET DEFAULT nextval('public.dispositivos_id_seq'::regclass);


--
-- TOC entry 4413 (class 2604 OID 33517)
-- Name: eventos_conteo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo ALTER COLUMN id SET DEFAULT nextval('public.eventos_conteo_id_seq'::regclass);


--
-- TOC entry 4382 (class 2604 OID 33273)
-- Name: intentos_login id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login ALTER COLUMN id SET DEFAULT nextval('public.intentos_login_id_seq'::regclass);


--
-- TOC entry 4370 (class 2604 OID 33182)
-- Name: modulos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos ALTER COLUMN id SET DEFAULT nextval('public.modulos_id_seq'::regclass);


--
-- TOC entry 4371 (class 2604 OID 33196)
-- Name: permisos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos ALTER COLUMN id SET DEFAULT nextval('public.permisos_id_seq'::regclass);


--
-- TOC entry 4409 (class 2604 OID 33465)
-- Name: reportes id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes ALTER COLUMN id SET DEFAULT nextval('public.reportes_id_seq'::regclass);


--
-- TOC entry 4369 (class 2604 OID 33169)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4379 (class 2604 OID 33251)
-- Name: sesiones_usuario id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario ALTER COLUMN id SET DEFAULT nextval('public.sesiones_usuario_id_seq'::regclass);


--
-- TOC entry 4401 (class 2604 OID 33384)
-- Name: telemetria_dispositivo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.telemetria_dispositivo_id_seq'::regclass);


--
-- TOC entry 4384 (class 2604 OID 33292)
-- Name: ubicaciones id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones ALTER COLUMN id SET DEFAULT nextval('public.ubicaciones_id_seq'::regclass);


--
-- TOC entry 4376 (class 2604 OID 33226)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4659 (class 0 OID 33306)
-- Dependencies: 234
-- Data for Name: accesos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.accesos (id, ubicacion_id, nombre, tipo, activo) FROM stdin;
1	1	Acceso Principal Redes Johanan	bidireccional	t
2	1	Puerta Lateral Telecom Johanan	bidireccional	t
3	2	Esclusa Acceso NOC Johanan	bidireccional	t
\.


--
-- TOC entry 4667 (class 0 OID 33399)
-- Dependencies: 242
-- Data for Name: ajustes_aforo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ajustes_aforo (id, codigo_ajuste, ubicacion_id, usuario_id, delta, motivo, creado_en) FROM stdin;
1	JOH-AJ-01	1	2	4	Ingreso grupal de práctica de cableado estructurado	2026-11-17 05:55:03.616208-08
2	JOH-AJ-02	2	1	-1	Salida de técnico de soporte	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4669 (class 0 OID 33426)
-- Dependencies: 244
-- Data for Name: alertas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.alertas (id, codigo_alerta, ubicacion_id, dispositivo_id, tipo, severidad, mensaje, estado, creada_en, atendida_en, atendida_por) FROM stdin;
1	JOH-AL-01	1	1	aforo_preventivo	media	Ocupación superior al 75% en Laboratorio de Redes	pendiente	2026-11-17 05:55:03.616208-08	\N	\N
2	JOH-AL-02	2	3	acceso_restringido	alta	Detección de flujo fuera de horario habitual en NOC	pendiente	2026-11-17 05:55:03.616208-08	\N	\N
\.


--
-- TOC entry 4673 (class 0 OID 33492)
-- Dependencies: 248
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.auditoria (id, codigo_accion, usuario_id, entidad, operacion, identificador_registro, detalle, realizada_en) FROM stdin;
1	JOH-AUD-01	1	dispositivos	INSERT	JOH-CAM-001	{"autor": "Johanan", "ubicacion": "Laboratorio de Redes"}	2026-11-17 05:55:03.616208-08
2	JOH-AUD-02	2	ajustes_aforo	INSERT	JOH-AJ-01	{"autor": "Johanan", "delta": 4}	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4663 (class 0 OID 33352)
-- Dependencies: 238
-- Data for Name: configuraciones_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.configuraciones_dispositivo (id, dispositivo_id, algoritmo, confianza_minima, resolucion, fps_objetivo, antirrebote_ms, orientacion, actualizada_en) FROM stdin;
1	1	YOLOv8n-Edge	0.84	320x240	15	1000	cenital_pasillo	2026-11-17 05:55:03.616208-08
2	2	YOLOv8n-Edge	0.82	320x240	15	1000	cenital_pasillo	2026-11-17 05:55:03.616208-08
3	3	YOLOv8n-Edge-Pro	0.90	640x480	20	1000	cenital_pasillo	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4661 (class 0 OID 33325)
-- Dependencies: 236
-- Data for Name: dispositivos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.dispositivos (id, acceso_id, codigo, nombre, modelo, modelo_camera, mac_wifi, version_firmware, estado, ultima_conexion, instalado_en) FROM stdin;
1	1	JOH-CAM-001	Nodo Redes Principal	ESP32-S3-N16R8	OV2640	a4:cf:12:04:00:01	v1.2.4-edge	online	\N	2026-11-17 05:55:03.616208-08
2	2	JOH-CAM-002	Nodo Telecom Lateral	ESP32-S3-N16R8	OV2640	a4:cf:12:04:00:02	v1.2.4-edge	online	\N	2026-11-17 05:55:03.616208-08
3	3	JOH-CAM-003	Nodo Seguridad NOC	ESP32-S3-N16R8	OV3660	a4:cf:12:04:00:03	v1.2.5-edge	online	\N	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4675 (class 0 OID 33514)
-- Dependencies: 250
-- Data for Name: eventos_conteo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.eventos_conteo (id, dispositivo_id, evento_externo, direccion, cantidad, confianza, origen, usuario_id, ocurrido_en, recibido_en) FROM stdin;
1	2	JOH-EV-001	entrada	1	0.86	esp32_cam_ai	\N	2026-11-17 05:45:03.616208-08	2026-11-17 05:55:03.616208-08
2	3	JOH-EV-002	entrada	1	0.88	esp32_cam_ai	\N	2026-11-17 05:35:03.616208-08	2026-11-17 05:55:03.616208-08
3	1	JOH-EV-003	salida	1	0.96	esp32_cam_ai	\N	2026-11-17 05:25:03.616208-08	2026-11-17 05:55:03.616208-08
4	2	JOH-EV-004	entrada	1	0.87	esp32_cam_ai	\N	2026-11-17 05:15:03.616208-08	2026-11-17 05:55:03.616208-08
5	3	JOH-EV-005	entrada	1	0.92	esp32_cam_ai	\N	2026-11-17 05:05:03.616208-08	2026-11-17 05:55:03.616208-08
6	1	JOH-EV-006	salida	1	0.97	esp32_cam_ai	\N	2026-11-17 04:55:03.616208-08	2026-11-17 05:55:03.616208-08
7	2	JOH-EV-007	entrada	1	0.98	esp32_cam_ai	\N	2026-11-17 04:45:03.616208-08	2026-11-17 05:55:03.616208-08
8	3	JOH-EV-008	entrada	1	0.94	esp32_cam_ai	\N	2026-11-17 04:35:03.616208-08	2026-11-17 05:55:03.616208-08
9	1	JOH-EV-009	salida	1	0.90	esp32_cam_ai	\N	2026-11-17 04:25:03.616208-08	2026-11-17 05:55:03.616208-08
10	2	JOH-EV-010	entrada	1	0.95	esp32_cam_ai	\N	2026-11-17 04:15:03.616208-08	2026-11-17 05:55:03.616208-08
11	3	JOH-EV-011	entrada	1	0.89	esp32_cam_ai	\N	2026-11-17 04:05:03.616208-08	2026-11-17 05:55:03.616208-08
12	1	JOH-EV-012	salida	1	0.91	esp32_cam_ai	\N	2026-11-17 03:55:03.616208-08	2026-11-17 05:55:03.616208-08
13	2	JOH-EV-013	entrada	1	0.90	esp32_cam_ai	\N	2026-11-17 03:45:03.616208-08	2026-11-17 05:55:03.616208-08
14	3	JOH-EV-014	entrada	1	0.88	esp32_cam_ai	\N	2026-11-17 03:35:03.616208-08	2026-11-17 05:55:03.616208-08
15	1	JOH-EV-015	salida	1	0.89	esp32_cam_ai	\N	2026-11-17 03:25:03.616208-08	2026-11-17 05:55:03.616208-08
16	2	JOH-EV-016	entrada	1	0.92	esp32_cam_ai	\N	2026-11-17 03:15:03.616208-08	2026-11-17 05:55:03.616208-08
17	3	JOH-EV-017	entrada	1	0.94	esp32_cam_ai	\N	2026-11-17 03:05:03.616208-08	2026-11-17 05:55:03.616208-08
18	1	JOH-EV-018	salida	1	0.87	esp32_cam_ai	\N	2026-11-17 02:55:03.616208-08	2026-11-17 05:55:03.616208-08
19	2	JOH-EV-019	entrada	1	0.91	esp32_cam_ai	\N	2026-11-17 02:45:03.616208-08	2026-11-17 05:55:03.616208-08
20	3	JOH-EV-020	entrada	1	0.89	esp32_cam_ai	\N	2026-11-17 02:35:03.616208-08	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4655 (class 0 OID 33270)
-- Dependencies: 230
-- Data for Name: intentos_login; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.intentos_login (id, usuario_id, correo_intentado, ip_origen, exitoso, motivo, ocurrido_en) FROM stdin;
1	1	johanan.admin@smartaccess.local	172.16.1.70	t	Acceso autorizado	2026-11-17 03:55:03.616208-08
2	2	johanan.operador@smartaccess.local	172.16.1.71	t	Acceso autorizado	2026-11-17 04:55:03.616208-08
3	\N	root.test@smartaccess.local	192.168.50.12	f	Cuenta inexistente	2026-11-17 05:30:03.616208-08
4	1	johanan.admin@smartaccess.local	172.16.1.70	t	Acceso autorizado	2026-11-17 04:04:10.722371-08
5	2	johanan.operador@smartaccess.local	172.16.1.71	t	Acceso autorizado	2026-11-17 05:04:10.722371-08
6	\N	root.test@smartaccess.local	192.168.50.12	f	Cuenta inexistente	2026-11-17 05:39:10.722371-08
\.


--
-- TOC entry 4647 (class 0 OID 33179)
-- Dependencies: 222
-- Data for Name: modulos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.modulos (id, clave, nombre, descripcion) FROM stdin;
1	JOH_NET	Monitoreo Red Nodos	Supervisión de latencia y conectividad Wi-Fi de cámaras
2	JOH_MAP	Mapa de Calor Aulas	Distribución de ocupación por zonas de laboratorio
3	JOH_LOG	Bitácora Técnica	Historial de eventos de hardware y reinicios
\.


--
-- TOC entry 4649 (class 0 OID 33193)
-- Dependencies: 224
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.permisos (id, rol_id, modulo_id, puede_ver, puede_crear, puede_editar, puede_eliminar) FROM stdin;
1	1	1	t	t	t	t
2	1	2	t	t	t	t
3	1	3	t	t	t	t
\.


--
-- TOC entry 4671 (class 0 OID 33462)
-- Dependencies: 246
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.reportes (id, codigo_reporte, ubicacion_id, generado_por, tipo, periodo_inicio, periodo_fin, generado_en, ruta_archivo) FROM stdin;
1	JOH-REP-01	1	3	aforo_diario	2026-11-16 05:55:03.616208-08	2026-11-17 05:55:03.616208-08	2026-11-17 05:55:03.616208-08	/exports/redes_johanan.pdf
2	JOH-REP-02	2	1	auditoria_noc	2026-11-16 17:55:03.616208-08	2026-11-17 05:55:03.616208-08	2026-11-17 05:55:03.616208-08	/exports/noc_johanan.csv
\.


--
-- TOC entry 4645 (class 0 OID 33166)
-- Dependencies: 220
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.roles (id, nombre, descripcion) FROM stdin;
1	Administrador	Acceso total a configuración, usuarios, dispositivos y reportes
2	Operador	Monitoreo en tiempo real, atención de alertas y ajustes de aforo
3	Auditor	Visualización de estadísticas, auditoría y descarga de reportes
\.


--
-- TOC entry 4653 (class 0 OID 33248)
-- Dependencies: 228
-- Data for Name: sesiones_usuario; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.sesiones_usuario (id, usuario_id, token_hash, inicio_en, expira_en, revocada) FROM stdin;
1	1	tok_johanan_001_activo	2026-11-17 03:55:03.616208-08	2026-11-17 11:55:03.616208-08	f
2	2	tok_johanan_002_expirado	2026-11-16 20:55:03.616208-08	2026-11-17 04:55:03.616208-08	t
\.


--
-- TOC entry 4665 (class 0 OID 33381)
-- Dependencies: 240
-- Data for Name: telemetria_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.telemetria_dispositivo (id, dispositivo_id, registrado_en, rssi_dbm, memoria_libre_bytes, fps_real, camara_operativa) FROM stdin;
1	1	2026-11-17 05:35:03.616208-08	-52	4080000	14.80	t
2	2	2026-11-17 05:40:03.616208-08	-58	3990000	14.40	t
3	3	2026-11-17 05:45:03.616208-08	-47	3650000	19.60	t
4	1	2026-11-17 05:50:03.616208-08	-54	4050000	14.70	t
5	1	2026-11-17 05:44:10.722371-08	-52	4080000	14.80	t
6	2	2026-11-17 05:49:10.722371-08	-58	3990000	14.40	t
7	3	2026-11-17 05:54:10.722371-08	-47	3650000	19.60	t
8	1	2026-11-17 05:59:10.722371-08	-54	4050000	14.70	t
\.


--
-- TOC entry 4657 (class 0 OID 33289)
-- Dependencies: 232
-- Data for Name: ubicaciones; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ubicaciones (id, nombre, descripcion, direccion, capacidad_maxima, activa, creada_en) FROM stdin;
1	Laboratorio de Redes - Johanan	Área de prácticas de telecomunicaciones y servidores	Edificio C, Planta Baja	110	t	2026-11-17 05:55:03.616208-08
2	Sala de Servidores NOC - Johanan	Centro de operaciones de red y monitoreo	Edificio C, Nivel 1	25	t	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4651 (class 0 OID 33223)
-- Dependencies: 226
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.usuarios (id, rol_id, nombre, correo, password_hash, activo, creado_en) FROM stdin;
1	1	Johanan Admin	johanan.admin@smartaccess.local	$2b$10$HashDemoJohananAdmin01	t	2026-11-17 05:55:03.616208-08
2	2	Johanan Operador	johanan.operador@smartaccess.local	$2b$10$HashDemoJohananOper02	t	2026-11-17 05:55:03.616208-08
3	3	Johanan Auditor	johanan.auditor@smartaccess.local	$2b$10$HashDemoJohananAudit03	t	2026-11-17 05:55:03.616208-08
\.


--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.accesos_id_seq', 3, true);


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ajustes_aforo_id_seq', 4, true);


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 243
-- Name: alertas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.alertas_id_seq', 4, true);


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 247
-- Name: auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.auditoria_id_seq', 4, true);


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.configuraciones_dispositivo_id_seq', 6, true);


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.dispositivos_id_seq', 6, true);


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 249
-- Name: eventos_conteo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.eventos_conteo_id_seq', 40, true);


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.intentos_login_id_seq', 6, true);


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.modulos_id_seq', 6, true);


--
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.permisos_id_seq', 6, true);


--
-- TOC entry 4708 (class 0 OID 0)
-- Dependencies: 245
-- Name: reportes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.reportes_id_seq', 4, true);


--
-- TOC entry 4709 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.roles_id_seq', 6, true);


--
-- TOC entry 4710 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.sesiones_usuario_id_seq', 4, true);


--
-- TOC entry 4711 (class 0 OID 0)
-- Dependencies: 239
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.telemetria_dispositivo_id_seq', 8, true);


--
-- TOC entry 4712 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ubicaciones_id_seq', 2, true);


--
-- TOC entry 4713 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 6, true);


--
-- TOC entry 4444 (class 2606 OID 33318)
-- Name: accesos accesos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_pkey PRIMARY KEY (id);


--
-- TOC entry 4458 (class 2606 OID 33414)
-- Name: ajustes_aforo ajustes_aforo_codigo_ajuste_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_codigo_ajuste_key UNIQUE (codigo_ajuste);


--
-- TOC entry 4460 (class 2606 OID 33412)
-- Name: ajustes_aforo ajustes_aforo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_pkey PRIMARY KEY (id);


--
-- TOC entry 4462 (class 2606 OID 33445)
-- Name: alertas alertas_codigo_alerta_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_codigo_alerta_key UNIQUE (codigo_alerta);


--
-- TOC entry 4464 (class 2606 OID 33443)
-- Name: alertas alertas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_pkey PRIMARY KEY (id);


--
-- TOC entry 4470 (class 2606 OID 33507)
-- Name: auditoria auditoria_codigo_accion_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_codigo_accion_key UNIQUE (codigo_accion);


--
-- TOC entry 4472 (class 2606 OID 33505)
-- Name: auditoria auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);


--
-- TOC entry 4452 (class 2606 OID 33374)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_key UNIQUE (dispositivo_id);


--
-- TOC entry 4454 (class 2606 OID 33372)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4446 (class 2606 OID 33343)
-- Name: dispositivos dispositivos_codigo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_codigo_key UNIQUE (codigo);


--
-- TOC entry 4448 (class 2606 OID 33345)
-- Name: dispositivos dispositivos_mac_wifi_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_mac_wifi_key UNIQUE (mac_wifi);


--
-- TOC entry 4450 (class 2606 OID 33341)
-- Name: dispositivos dispositivos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_pkey PRIMARY KEY (id);


--
-- TOC entry 4474 (class 2606 OID 33533)
-- Name: eventos_conteo eventos_conteo_evento_externo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_evento_externo_key UNIQUE (evento_externo);


--
-- TOC entry 4476 (class 2606 OID 33531)
-- Name: eventos_conteo eventos_conteo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_pkey PRIMARY KEY (id);


--
-- TOC entry 4440 (class 2606 OID 33282)
-- Name: intentos_login intentos_login_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_pkey PRIMARY KEY (id);


--
-- TOC entry 4424 (class 2606 OID 33191)
-- Name: modulos modulos_clave_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_clave_key UNIQUE (clave);


--
-- TOC entry 4426 (class 2606 OID 33189)
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);


--
-- TOC entry 4428 (class 2606 OID 33209)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 4430 (class 2606 OID 33211)
-- Name: permisos permisos_rol_id_modulo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_modulo_id_key UNIQUE (rol_id, modulo_id);


--
-- TOC entry 4466 (class 2606 OID 33480)
-- Name: reportes reportes_codigo_reporte_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_codigo_reporte_key UNIQUE (codigo_reporte);


--
-- TOC entry 4468 (class 2606 OID 33478)
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id);


--
-- TOC entry 4420 (class 2606 OID 33177)
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- TOC entry 4422 (class 2606 OID 33175)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4436 (class 2606 OID 33261)
-- Name: sesiones_usuario sesiones_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 4438 (class 2606 OID 33263)
-- Name: sesiones_usuario sesiones_usuario_token_hash_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_token_hash_key UNIQUE (token_hash);


--
-- TOC entry 4456 (class 2606 OID 33392)
-- Name: telemetria_dispositivo telemetria_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4442 (class 2606 OID 33304)
-- Name: ubicaciones ubicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4432 (class 2606 OID 33241)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 4434 (class 2606 OID 33239)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 33319)
-- Name: accesos accesos_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4486 (class 2606 OID 33415)
-- Name: ajustes_aforo ajustes_aforo_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4487 (class 2606 OID 33420)
-- Name: ajustes_aforo ajustes_aforo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE RESTRICT;


--
-- TOC entry 4488 (class 2606 OID 33456)
-- Name: alertas alertas_atendida_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_atendida_por_fkey FOREIGN KEY (atendida_por) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4489 (class 2606 OID 33451)
-- Name: alertas alertas_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE SET NULL;


--
-- TOC entry 4490 (class 2606 OID 33446)
-- Name: alertas alertas_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4493 (class 2606 OID 33508)
-- Name: auditoria auditoria_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4484 (class 2606 OID 33375)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4483 (class 2606 OID 33346)
-- Name: dispositivos dispositivos_acceso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_acceso_id_fkey FOREIGN KEY (acceso_id) REFERENCES public.accesos(id) ON DELETE CASCADE;


--
-- TOC entry 4494 (class 2606 OID 33534)
-- Name: eventos_conteo eventos_conteo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE RESTRICT;


--
-- TOC entry 4495 (class 2606 OID 33539)
-- Name: eventos_conteo eventos_conteo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4481 (class 2606 OID 33283)
-- Name: intentos_login intentos_login_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4477 (class 2606 OID 33217)
-- Name: permisos permisos_modulo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_modulo_id_fkey FOREIGN KEY (modulo_id) REFERENCES public.modulos(id) ON DELETE CASCADE;


--
-- TOC entry 4478 (class 2606 OID 33212)
-- Name: permisos permisos_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 4491 (class 2606 OID 33486)
-- Name: reportes reportes_generado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_generado_por_fkey FOREIGN KEY (generado_por) REFERENCES public.usuarios(id) ON DELETE RESTRICT;


--
-- TOC entry 4492 (class 2606 OID 33481)
-- Name: reportes reportes_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4480 (class 2606 OID 33264)
-- Name: sesiones_usuario sesiones_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


--
-- TOC entry 4485 (class 2606 OID 33393)
-- Name: telemetria_dispositivo telemetria_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4479 (class 2606 OID 33242)
-- Name: usuarios usuarios_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON DELETE RESTRICT;


-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict rdZIXhLUdB0gbRuM68e7QPITxbgmIZ3QjgJ1stiM22SEBsK2ud8CwE1tHJmLgla

--
-- Database "smartaccess_pablo" dump
--

--
-- PostgreSQL database dump
--

\restrict p1ThVlXO3XckCsNeO3AjzPdr5NiP2QE9KodwD4Jwkzy4lXEuenu7MhCR5TO7psL

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-17 06:45:37 PST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4681 (class 1262 OID 24993)
-- Name: smartaccess_pablo; Type: DATABASE; Schema: -; Owner: pablo
--

CREATE DATABASE smartaccess_pablo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_MX.UTF-8';


ALTER DATABASE smartaccess_pablo OWNER TO pablo;

\unrestrict p1ThVlXO3XckCsNeO3AjzPdr5NiP2QE9KodwD4Jwkzy4lXEuenu7MhCR5TO7psL
\connect smartaccess_pablo
\restrict p1ThVlXO3XckCsNeO3AjzPdr5NiP2QE9KodwD4Jwkzy4lXEuenu7MhCR5TO7psL

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 234 (class 1259 OID 25136)
-- Name: accesos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.accesos (
    id bigint NOT NULL,
    ubicacion_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo character varying(50) DEFAULT 'bidireccional'::character varying NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.accesos OWNER TO pablo;

--
-- TOC entry 233 (class 1259 OID 25135)
-- Name: accesos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.accesos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accesos_id_seq OWNER TO pablo;

--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.accesos_id_seq OWNED BY public.accesos.id;


--
-- TOC entry 242 (class 1259 OID 25229)
-- Name: ajustes_aforo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ajustes_aforo (
    id bigint NOT NULL,
    codigo_ajuste character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    delta integer NOT NULL,
    motivo character varying(255) NOT NULL,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.ajustes_aforo OWNER TO pablo;

--
-- TOC entry 241 (class 1259 OID 25228)
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ajustes_aforo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ajustes_aforo_id_seq OWNER TO pablo;

--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ajustes_aforo_id_seq OWNED BY public.ajustes_aforo.id;


--
-- TOC entry 244 (class 1259 OID 25256)
-- Name: alertas; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.alertas (
    id bigint NOT NULL,
    codigo_alerta character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    dispositivo_id bigint,
    tipo character varying(50) NOT NULL,
    severidad character varying(20) NOT NULL,
    mensaje text NOT NULL,
    estado character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    creada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    atendida_en timestamp with time zone,
    atendida_por bigint
);


ALTER TABLE public.alertas OWNER TO pablo;

--
-- TOC entry 243 (class 1259 OID 25255)
-- Name: alertas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.alertas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alertas_id_seq OWNER TO pablo;

--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 243
-- Name: alertas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.alertas_id_seq OWNED BY public.alertas.id;


--
-- TOC entry 248 (class 1259 OID 25322)
-- Name: auditoria; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.auditoria (
    id bigint NOT NULL,
    codigo_accion character varying(50) NOT NULL,
    usuario_id bigint,
    entidad character varying(80) NOT NULL,
    operacion character varying(20) NOT NULL,
    identificador_registro character varying(100),
    detalle jsonb,
    realizada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.auditoria OWNER TO pablo;

--
-- TOC entry 247 (class 1259 OID 25321)
-- Name: auditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auditoria_id_seq OWNER TO pablo;

--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 247
-- Name: auditoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.auditoria_id_seq OWNED BY public.auditoria.id;


--
-- TOC entry 238 (class 1259 OID 25182)
-- Name: configuraciones_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.configuraciones_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    algoritmo character varying(100) NOT NULL,
    confianza_minima numeric(4,2) DEFAULT 0.80 NOT NULL,
    resolucion character varying(20) DEFAULT '320x240'::character varying NOT NULL,
    fps_objetivo smallint DEFAULT 15 NOT NULL,
    antirrebote_ms integer DEFAULT 1000 NOT NULL,
    orientacion character varying(50) DEFAULT 'cenital_pasillo'::character varying NOT NULL,
    actualizada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.configuraciones_dispositivo OWNER TO pablo;

--
-- TOC entry 237 (class 1259 OID 25181)
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.configuraciones_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.configuraciones_dispositivo_id_seq OWNER TO pablo;

--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.configuraciones_dispositivo_id_seq OWNED BY public.configuraciones_dispositivo.id;


--
-- TOC entry 236 (class 1259 OID 25155)
-- Name: dispositivos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.dispositivos (
    id bigint NOT NULL,
    acceso_id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    modelo character varying(100) NOT NULL,
    modelo_camera character varying(50) DEFAULT 'OV2640'::character varying NOT NULL,
    mac_wifi macaddr,
    version_firmware character varying(50),
    estado character varying(30) DEFAULT 'offline'::character varying NOT NULL,
    ultima_conexion timestamp with time zone,
    instalado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.dispositivos OWNER TO pablo;

--
-- TOC entry 235 (class 1259 OID 25154)
-- Name: dispositivos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.dispositivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dispositivos_id_seq OWNER TO pablo;

--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.dispositivos_id_seq OWNED BY public.dispositivos.id;


--
-- TOC entry 250 (class 1259 OID 25344)
-- Name: eventos_conteo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.eventos_conteo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    evento_externo character varying(100) NOT NULL,
    direccion character varying(20) NOT NULL,
    cantidad smallint DEFAULT 1 NOT NULL,
    confianza numeric(4,2),
    origen character varying(50) DEFAULT 'esp32_cam_ai'::character varying NOT NULL,
    usuario_id bigint,
    ocurrido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    recibido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.eventos_conteo OWNER TO pablo;

--
-- TOC entry 249 (class 1259 OID 25343)
-- Name: eventos_conteo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.eventos_conteo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eventos_conteo_id_seq OWNER TO pablo;

--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 249
-- Name: eventos_conteo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.eventos_conteo_id_seq OWNED BY public.eventos_conteo.id;


--
-- TOC entry 230 (class 1259 OID 25100)
-- Name: intentos_login; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.intentos_login (
    id bigint NOT NULL,
    usuario_id bigint,
    correo_intentado character varying(150) NOT NULL,
    ip_origen inet,
    exitoso boolean NOT NULL,
    motivo character varying(150),
    ocurrido_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.intentos_login OWNER TO pablo;

--
-- TOC entry 229 (class 1259 OID 25099)
-- Name: intentos_login_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.intentos_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.intentos_login_id_seq OWNER TO pablo;

--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.intentos_login_id_seq OWNED BY public.intentos_login.id;


--
-- TOC entry 222 (class 1259 OID 25009)
-- Name: modulos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.modulos (
    id bigint NOT NULL,
    clave character varying(30) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.modulos OWNER TO pablo;

--
-- TOC entry 221 (class 1259 OID 25008)
-- Name: modulos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.modulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modulos_id_seq OWNER TO pablo;

--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.modulos_id_seq OWNED BY public.modulos.id;


--
-- TOC entry 224 (class 1259 OID 25023)
-- Name: permisos; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.permisos (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    modulo_id bigint NOT NULL,
    puede_ver boolean DEFAULT true NOT NULL,
    puede_crear boolean DEFAULT false NOT NULL,
    puede_editar boolean DEFAULT false NOT NULL,
    puede_eliminar boolean DEFAULT false NOT NULL
);


ALTER TABLE public.permisos OWNER TO pablo;

--
-- TOC entry 223 (class 1259 OID 25022)
-- Name: permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permisos_id_seq OWNER TO pablo;

--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.permisos_id_seq OWNED BY public.permisos.id;


--
-- TOC entry 246 (class 1259 OID 25292)
-- Name: reportes; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.reportes (
    id bigint NOT NULL,
    codigo_reporte character varying(50) NOT NULL,
    ubicacion_id bigint NOT NULL,
    generado_por bigint NOT NULL,
    tipo character varying(50) NOT NULL,
    periodo_inicio timestamp with time zone NOT NULL,
    periodo_fin timestamp with time zone NOT NULL,
    generado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ruta_archivo text
);


ALTER TABLE public.reportes OWNER TO pablo;

--
-- TOC entry 245 (class 1259 OID 25291)
-- Name: reportes_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.reportes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reportes_id_seq OWNER TO pablo;

--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 245
-- Name: reportes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.reportes_id_seq OWNED BY public.reportes.id;


--
-- TOC entry 220 (class 1259 OID 24996)
-- Name: roles; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.roles OWNER TO pablo;

--
-- TOC entry 219 (class 1259 OID 24995)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO pablo;

--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 228 (class 1259 OID 25078)
-- Name: sesiones_usuario; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.sesiones_usuario (
    id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    token_hash character varying(255) NOT NULL,
    inicio_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    expira_en timestamp with time zone NOT NULL,
    revocada boolean DEFAULT false NOT NULL
);


ALTER TABLE public.sesiones_usuario OWNER TO pablo;

--
-- TOC entry 227 (class 1259 OID 25077)
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.sesiones_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sesiones_usuario_id_seq OWNER TO pablo;

--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.sesiones_usuario_id_seq OWNED BY public.sesiones_usuario.id;


--
-- TOC entry 240 (class 1259 OID 25211)
-- Name: telemetria_dispositivo; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.telemetria_dispositivo (
    id bigint NOT NULL,
    dispositivo_id bigint NOT NULL,
    registrado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rssi_dbm smallint,
    memoria_libre_bytes bigint,
    fps_real numeric(5,2),
    camara_operativa boolean DEFAULT true NOT NULL
);


ALTER TABLE public.telemetria_dispositivo OWNER TO pablo;

--
-- TOC entry 239 (class 1259 OID 25210)
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.telemetria_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telemetria_dispositivo_id_seq OWNER TO pablo;

--
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 239
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.telemetria_dispositivo_id_seq OWNED BY public.telemetria_dispositivo.id;


--
-- TOC entry 232 (class 1259 OID 25119)
-- Name: ubicaciones; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.ubicaciones (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    direccion character varying(200),
    capacidad_maxima integer NOT NULL,
    activa boolean DEFAULT true NOT NULL,
    creada_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT ubicaciones_capacidad_maxima_check CHECK ((capacidad_maxima > 0))
);


ALTER TABLE public.ubicaciones OWNER TO pablo;

--
-- TOC entry 231 (class 1259 OID 25118)
-- Name: ubicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.ubicaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ubicaciones_id_seq OWNER TO pablo;

--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.ubicaciones_id_seq OWNED BY public.ubicaciones.id;


--
-- TOC entry 226 (class 1259 OID 25053)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pablo
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    rol_id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(150) NOT NULL,
    password_hash character varying(255) NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    creado_en timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.usuarios OWNER TO pablo;

--
-- TOC entry 225 (class 1259 OID 25052)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO pablo;

--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 251 (class 1259 OID 25374)
-- Name: vw_aforo_actual; Type: VIEW; Schema: public; Owner: pablo
--

CREATE VIEW public.vw_aforo_actual AS
 SELECT u.id AS ubicacion_id,
    u.nombre AS ubicacion,
    u.capacidad_maxima,
    COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) AS entradas_acumuladas,
    COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) AS salidas_acumuladas,
    COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint) AS ajuste_neto,
    ((COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) - COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint)) + COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint)) AS aforo_actual,
    round((((((COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'entrada'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint) - COALESCE(sum(
        CASE
            WHEN ((ec.direccion)::text = 'salida'::text) THEN (ec.cantidad)::integer
            ELSE 0
        END), (0)::bigint)) + COALESCE(( SELECT sum(aa.delta) AS sum
           FROM public.ajustes_aforo aa
          WHERE (aa.ubicacion_id = u.id)), (0)::bigint)))::numeric / (u.capacidad_maxima)::numeric) * (100)::numeric), 2) AS porcentaje_ocupacion
   FROM (((public.ubicaciones u
     LEFT JOIN public.accesos a ON ((u.id = a.ubicacion_id)))
     LEFT JOIN public.dispositivos d ON ((a.id = d.acceso_id)))
     LEFT JOIN public.eventos_conteo ec ON ((d.id = ec.dispositivo_id)))
  GROUP BY u.id, u.nombre, u.capacidad_maxima;


ALTER VIEW public.vw_aforo_actual OWNER TO pablo;

--
-- TOC entry 4387 (class 2604 OID 25139)
-- Name: accesos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos ALTER COLUMN id SET DEFAULT nextval('public.accesos_id_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 25232)
-- Name: ajustes_aforo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo ALTER COLUMN id SET DEFAULT nextval('public.ajustes_aforo_id_seq'::regclass);


--
-- TOC entry 4406 (class 2604 OID 25259)
-- Name: alertas id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas ALTER COLUMN id SET DEFAULT nextval('public.alertas_id_seq'::regclass);


--
-- TOC entry 4411 (class 2604 OID 25325)
-- Name: auditoria id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria ALTER COLUMN id SET DEFAULT nextval('public.auditoria_id_seq'::regclass);


--
-- TOC entry 4394 (class 2604 OID 25185)
-- Name: configuraciones_dispositivo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.configuraciones_dispositivo_id_seq'::regclass);


--
-- TOC entry 4390 (class 2604 OID 25158)
-- Name: dispositivos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos ALTER COLUMN id SET DEFAULT nextval('public.dispositivos_id_seq'::regclass);


--
-- TOC entry 4413 (class 2604 OID 25347)
-- Name: eventos_conteo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo ALTER COLUMN id SET DEFAULT nextval('public.eventos_conteo_id_seq'::regclass);


--
-- TOC entry 4382 (class 2604 OID 25103)
-- Name: intentos_login id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login ALTER COLUMN id SET DEFAULT nextval('public.intentos_login_id_seq'::regclass);


--
-- TOC entry 4370 (class 2604 OID 25012)
-- Name: modulos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos ALTER COLUMN id SET DEFAULT nextval('public.modulos_id_seq'::regclass);


--
-- TOC entry 4371 (class 2604 OID 25026)
-- Name: permisos id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos ALTER COLUMN id SET DEFAULT nextval('public.permisos_id_seq'::regclass);


--
-- TOC entry 4409 (class 2604 OID 25295)
-- Name: reportes id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes ALTER COLUMN id SET DEFAULT nextval('public.reportes_id_seq'::regclass);


--
-- TOC entry 4369 (class 2604 OID 24999)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4379 (class 2604 OID 25081)
-- Name: sesiones_usuario id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario ALTER COLUMN id SET DEFAULT nextval('public.sesiones_usuario_id_seq'::regclass);


--
-- TOC entry 4401 (class 2604 OID 25214)
-- Name: telemetria_dispositivo id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo ALTER COLUMN id SET DEFAULT nextval('public.telemetria_dispositivo_id_seq'::regclass);


--
-- TOC entry 4384 (class 2604 OID 25122)
-- Name: ubicaciones id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones ALTER COLUMN id SET DEFAULT nextval('public.ubicaciones_id_seq'::regclass);


--
-- TOC entry 4376 (class 2604 OID 25056)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4659 (class 0 OID 25136)
-- Dependencies: 234
-- Data for Name: accesos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.accesos (id, ubicacion_id, nombre, tipo, activo) FROM stdin;
1	1	Pasillo Principal Norte P1	bidireccional	t
2	1	Acceso Lateral Laboratorios P2	bidireccional	t
3	2	Entrada Única Biblioteca P3	bidireccional	t
4	3	Puerta principal	bidireccional	t
5	4	Puerta Principal Norte - Ing.	Principal	t
6	4	Salida Emergencia Sur - Ing.	Emergencia	t
7	5	Acceso Único Vestíbulo Biblioteca	Principal	t
8	6	Entrada Principal Auditorio	Principal	t
\.


--
-- TOC entry 4667 (class 0 OID 25229)
-- Dependencies: 242
-- Data for Name: ajustes_aforo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ajustes_aforo (id, codigo_ajuste, ubicacion_id, usuario_id, delta, motivo, creado_en) FROM stdin;
1	AJ-PABLO-001	1	1	5	Conteo inicial de personal administrativo previo al encendido de cámaras	2026-11-13 01:00:14.601515-08
2	AJ-PABLO-002	2	1	-2	Corrección por salida grupal simultánea	2026-11-13 05:00:14.601515-08
3	ELI-AJ-01	3	4	2	Calibración: conteo inicial omitido	2026-11-13 07:12:54.922316-08
4	ELI-AJ-02	3	4	-1	Calibración: corrección de salida	2026-11-13 07:12:54.922316-08
9	ISAI-AJ-101	4	8	-3	Recalibración visual tras salida de grupo de laboratorio	2026-11-13 05:45:00-08
10	ISAI-AJ-102	5	7	-2	Descuento por personal administrativo en turno	2026-11-13 06:00:00-08
\.


--
-- TOC entry 4669 (class 0 OID 25256)
-- Dependencies: 244
-- Data for Name: alertas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.alertas (id, codigo_alerta, ubicacion_id, dispositivo_id, tipo, severidad, mensaje, estado, creada_en, atendida_en, atendida_por) FROM stdin;
1	ALT-PABLO-001	1	1	aforo_alto	media	El aforo del Edificio Académico A superó el 80% de capacidad.	atendida	2026-11-13 04:00:14.601515-08	2026-11-13 04:20:14.601515-08	1
2	ALT-PABLO-002	2	3	dispositivo_offline	alta	Pérdida de señal Wi-Fi en cámara CAM-PABLO-003 de Biblioteca.	pendiente	2026-11-13 06:00:14.601515-08	\N	\N
3	ELI-AL-01	3	4	conteo_anomalo	media	Evento simulado: revisar cruce de línea	pendiente	2026-11-13 07:12:54.922316-08	\N	\N
4	ELI-AL-02	3	4	dispositivo_desconectado	baja	Evento simulado: reinicio de Wi-Fi	pendiente	2026-11-13 07:12:54.922316-08	\N	\N
9	ISAI-ALT-101	5	9	Sobrecupo	ALTA	Centro de Información al 97% de su capacidad máxima (88/90)	pendiente	2026-11-13 05:56:00-08	\N	\N
10	ISAI-ALT-102	6	10	Desconexión	CRITICA	Pérdida de comunicación con ESP32-S3-CAM (172.16.10.104)	pendiente	2026-11-13 04:46:00-08	\N	\N
11	ISAI-ALT-103	4	8	Acceso_Emergencia	MEDIA	Detección de salida en puerta de emergencia Sur	atendida	2026-11-13 05:42:05-08	\N	\N
\.


--
-- TOC entry 4673 (class 0 OID 25322)
-- Dependencies: 248
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.auditoria (id, codigo_accion, usuario_id, entidad, operacion, identificador_registro, detalle, realizada_en) FROM stdin;
1	AUD-PABLO-001	1	dispositivos	INSERT	CAM-PABLO-001	{"ip": "172.16.1.201", "accion": "Alta de nodo ESP32-S3-CAM"}	2026-11-08 07:00:14.601515-08
2	AUD-PABLO-002	1	ajustes_aforo	INSERT	AJ-PABLO-001	{"delta": 5, "autorizado_por": "Pablo Alexander"}	2026-11-13 01:00:14.601515-08
3	ELI-AUD-01	4	ubicaciones	INSERT	3	{"autor": "Eliel", "origen": "simulacion"}	2026-11-13 07:12:54.922316-08
6	ISAI-AUD-101	7	configuraciones_dispositivo	UPDATE	ISAI-CAM-103	{"ip": "172.16.1.50", "descripcion": "Ajuste de umbral de confianza a 90%"}	2026-11-13 05:10:00-08
7	ISAI-AUD-102	8	alertas	UPDATE	ISAI-ALT-103	{"ip": "172.16.1.52", "descripcion": "Marcada como atendida la alerta"}	2026-11-13 05:44:00-08
\.


--
-- TOC entry 4663 (class 0 OID 25182)
-- Dependencies: 238
-- Data for Name: configuraciones_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.configuraciones_dispositivo (id, dispositivo_id, algoritmo, confianza_minima, resolucion, fps_objetivo, antirrebote_ms, orientacion, actualizada_en) FROM stdin;
1	1	YOLOv8n-Edge-Gender	0.80	320x240	15	1200	cenital_pasillo	2026-11-13 07:00:14.601515-08
2	2	YOLOv8n-Edge-Gender	0.82	320x240	15	1200	cenital_pasillo	2026-11-13 07:00:14.601515-08
3	3	MobileNetV2-SSD	0.78	640x480	12	1500	frontal_puerta	2026-11-13 07:00:14.601515-08
4	4	cruce_linea_virtual	0.80	320x240	5	1000	cenital_pasillo	2026-11-13 07:12:54.922316-08
7	7	YOLOv8n-Edge	0.85	640x480	12	1000	cenital_pasillo	2026-11-13 07:21:31.938631-08
8	8	YOLOv8n-Edge	0.80	640x480	12	1000	cenital_pasillo	2026-11-13 07:21:31.938631-08
9	9	YOLOv8n-Edge-Pro	0.90	800x600	20	1000	cenital_pasillo	2026-11-13 07:21:31.938631-08
10	10	YOLOv8n-Edge	0.85	640x480	6	1000	cenital_pasillo	2026-11-13 07:21:31.938631-08
\.


--
-- TOC entry 4661 (class 0 OID 25155)
-- Dependencies: 236
-- Data for Name: dispositivos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.dispositivos (id, acceso_id, codigo, nombre, modelo, modelo_camera, mac_wifi, version_firmware, estado, ultima_conexion, instalado_en) FROM stdin;
1	1	CAM-PABLO-001	Nodo Pasillo Norte 1	ESP32-S3-N16R8 (OV2640)	OV2640	a4:cf:12:01:00:01	v1.2.4-edge	online	2026-11-13 07:00:14.601515-08	2026-11-08 07:00:14.601515-08
2	2	CAM-PABLO-002	Nodo Laboratorios 2	ESP32-S3-N16R8 (OV2640)	OV2640	a4:cf:12:01:00:02	v1.2.4-edge	online	2026-11-13 07:00:14.601515-08	2026-11-09 07:00:14.601515-08
3	3	CAM-PABLO-003	Nodo Biblioteca 3	ESP32-S3-N16R8 (OV3660)	OV2640	a4:cf:12:01:00:03	v1.2.5-beta	mantenimiento	2026-11-13 05:00:14.601515-08	2026-11-10 07:00:14.601515-08
4	4	SA-ELI-CAM-01	Cámara de conteo Eliel	ESP32-S3 N16R8	OV2640	\N	0.1.0-demo	activo	\N	2026-11-13 07:12:54.922316-08
7	5	ISAI-CAM-101	Nodo Ingeniería Norte	ESP32-S3-CAM	OV2640	24:6f:28:11:01:01	\N	ONLINE	\N	2026-11-13 07:21:31.938631-08
8	6	ISAI-CAM-102	Nodo Ingeniería Sur	ESP32-S3-CAM	OV2640	24:6f:28:11:01:02	\N	ONLINE	\N	2026-11-13 07:21:31.938631-08
9	7	ISAI-CAM-103	Nodo Biblioteca Pro	ESP32-S3-CAM-PRO	OV3660	24:6f:28:11:01:03	\N	ONLINE	\N	2026-11-13 07:21:31.938631-08
10	8	ISAI-CAM-104	Nodo Auditorio	ESP32-S3-CAM	OV2640	24:6f:28:11:01:04	\N	OFFLINE	\N	2026-11-13 07:21:31.938631-08
\.


--
-- TOC entry 4675 (class 0 OID 25344)
-- Dependencies: 250
-- Data for Name: eventos_conteo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.eventos_conteo (id, dispositivo_id, evento_externo, direccion, cantidad, confianza, origen, usuario_id, ocurrido_en, recibido_en) FROM stdin;
1	2	EVT-PABLO-0001	entrada	1	0.90	esp32_cam_ai	\N	2026-11-13 06:48:14.601515-08	2026-11-13 06:48:15.601515-08
2	3	EVT-PABLO-0002	entrada	1	0.93	esp32_cam_ai	\N	2026-11-13 06:36:14.601515-08	2026-11-13 06:36:15.601515-08
3	1	EVT-PABLO-0003	salida	1	0.93	esp32_cam_ai	\N	2026-11-13 06:24:14.601515-08	2026-11-13 06:24:15.601515-08
4	2	EVT-PABLO-0004	entrada	1	0.84	esp32_cam_ai	\N	2026-11-13 06:12:14.601515-08	2026-11-13 06:12:15.601515-08
5	3	EVT-PABLO-0005	entrada	1	0.98	esp32_cam_ai	\N	2026-11-13 06:00:14.601515-08	2026-11-13 06:00:15.601515-08
6	1	EVT-PABLO-0006	salida	1	0.88	esp32_cam_ai	\N	2026-11-13 05:48:14.601515-08	2026-11-13 05:48:15.601515-08
7	2	EVT-PABLO-0007	entrada	1	0.93	esp32_cam_ai	\N	2026-11-13 05:36:14.601515-08	2026-11-13 05:36:15.601515-08
8	3	EVT-PABLO-0008	entrada	1	0.88	esp32_cam_ai	\N	2026-11-13 05:24:14.601515-08	2026-11-13 05:24:15.601515-08
9	1	EVT-PABLO-0009	salida	1	0.88	esp32_cam_ai	\N	2026-11-13 05:12:14.601515-08	2026-11-13 05:12:15.601515-08
10	2	EVT-PABLO-0010	entrada	1	0.84	esp32_cam_ai	\N	2026-11-13 05:00:14.601515-08	2026-11-13 05:00:15.601515-08
11	3	EVT-PABLO-0011	entrada	1	0.93	esp32_cam_ai	\N	2026-11-13 04:48:14.601515-08	2026-11-13 04:48:15.601515-08
12	1	EVT-PABLO-0012	salida	1	0.86	esp32_cam_ai	\N	2026-11-13 04:36:14.601515-08	2026-11-13 04:36:15.601515-08
13	2	EVT-PABLO-0013	entrada	1	0.92	esp32_cam_ai	\N	2026-11-13 04:24:14.601515-08	2026-11-13 04:24:15.601515-08
14	3	EVT-PABLO-0014	entrada	1	0.88	esp32_cam_ai	\N	2026-11-13 04:12:14.601515-08	2026-11-13 04:12:15.601515-08
15	1	EVT-PABLO-0015	salida	1	0.86	esp32_cam_ai	\N	2026-11-13 04:00:14.601515-08	2026-11-13 04:00:15.601515-08
16	2	EVT-PABLO-0016	entrada	1	0.98	esp32_cam_ai	\N	2026-11-13 03:48:14.601515-08	2026-11-13 03:48:15.601515-08
17	3	EVT-PABLO-0017	entrada	1	0.86	esp32_cam_ai	\N	2026-11-13 03:36:14.601515-08	2026-11-13 03:36:15.601515-08
18	1	EVT-PABLO-0018	salida	1	0.84	esp32_cam_ai	\N	2026-11-13 03:24:14.601515-08	2026-11-13 03:24:15.601515-08
19	2	EVT-PABLO-0019	entrada	1	0.96	esp32_cam_ai	\N	2026-11-13 03:12:14.601515-08	2026-11-13 03:12:15.601515-08
20	3	EVT-PABLO-0020	entrada	1	0.95	esp32_cam_ai	\N	2026-11-13 03:00:14.601515-08	2026-11-13 03:00:15.601515-08
21	1	EVT-PABLO-0021	salida	1	0.97	esp32_cam_ai	\N	2026-11-13 02:48:14.601515-08	2026-11-13 02:48:15.601515-08
22	2	EVT-PABLO-0022	entrada	1	0.93	esp32_cam_ai	\N	2026-11-13 02:36:14.601515-08	2026-11-13 02:36:15.601515-08
23	3	EVT-PABLO-0023	entrada	1	0.84	esp32_cam_ai	\N	2026-11-13 02:24:14.601515-08	2026-11-13 02:24:15.601515-08
24	1	EVT-PABLO-0024	salida	1	0.93	esp32_cam_ai	\N	2026-11-13 02:12:14.601515-08	2026-11-13 02:12:15.601515-08
25	2	EVT-PABLO-0025	entrada	1	0.87	esp32_cam_ai	\N	2026-11-13 02:00:14.601515-08	2026-11-13 02:00:15.601515-08
26	4	ELI-EV-001	entrada	1	0.91	simulacion	\N	2026-11-12 05:38:00-08	2026-11-13 07:12:54.922316-08
27	4	ELI-EV-002	entrada	1	0.91	simulacion	\N	2026-11-12 05:46:00-08	2026-11-13 07:12:54.922316-08
28	4	ELI-EV-003	salida	1	0.91	simulacion	\N	2026-11-12 05:54:00-08	2026-11-13 07:12:54.922316-08
29	4	ELI-EV-004	entrada	1	0.91	simulacion	\N	2026-11-12 06:02:00-08	2026-11-13 07:12:54.922316-08
30	4	ELI-EV-005	entrada	1	0.91	simulacion	\N	2026-11-12 06:10:00-08	2026-11-13 07:12:54.922316-08
31	4	ELI-EV-006	salida	1	0.91	simulacion	\N	2026-11-12 06:18:00-08	2026-11-13 07:12:54.922316-08
32	4	ELI-EV-007	entrada	1	0.91	simulacion	\N	2026-11-12 06:26:00-08	2026-11-13 07:12:54.922316-08
33	4	ELI-EV-008	entrada	1	0.91	simulacion	\N	2026-11-12 06:34:00-08	2026-11-13 07:12:54.922316-08
34	4	ELI-EV-009	salida	1	0.91	simulacion	\N	2026-11-12 06:42:00-08	2026-11-13 07:12:54.922316-08
35	4	ELI-EV-010	entrada	1	0.91	simulacion	\N	2026-11-12 06:50:00-08	2026-11-13 07:12:54.922316-08
36	4	ELI-EV-011	entrada	1	0.91	simulacion	\N	2026-11-12 06:58:00-08	2026-11-13 07:12:54.922316-08
37	4	ELI-EV-012	salida	1	0.91	simulacion	\N	2026-11-12 07:06:00-08	2026-11-13 07:12:54.922316-08
38	4	ELI-EV-013	entrada	1	0.91	simulacion	\N	2026-11-12 07:14:00-08	2026-11-13 07:12:54.922316-08
39	4	ELI-EV-014	entrada	1	0.91	simulacion	\N	2026-11-12 07:22:00-08	2026-11-13 07:12:54.922316-08
40	4	ELI-EV-015	salida	1	0.91	simulacion	\N	2026-11-12 07:30:00-08	2026-11-13 07:12:54.922316-08
41	4	ELI-EV-016	entrada	1	0.91	simulacion	\N	2026-11-12 07:38:00-08	2026-11-13 07:12:54.922316-08
42	4	ELI-EV-017	entrada	1	0.91	simulacion	\N	2026-11-12 07:46:00-08	2026-11-13 07:12:54.922316-08
43	4	ELI-EV-018	salida	1	0.91	simulacion	\N	2026-11-12 07:54:00-08	2026-11-13 07:12:54.922316-08
44	4	ELI-EV-019	entrada	1	0.91	simulacion	\N	2026-11-12 08:02:00-08	2026-11-13 07:12:54.922316-08
45	4	ELI-EV-020	entrada	1	0.91	simulacion	\N	2026-11-12 08:10:00-08	2026-11-13 07:12:54.922316-08
46	4	ELI-EV-021	salida	1	0.91	simulacion	\N	2026-11-12 08:18:00-08	2026-11-13 07:12:54.922316-08
47	4	ELI-EV-022	entrada	1	0.91	simulacion	\N	2026-11-12 08:26:00-08	2026-11-13 07:12:54.922316-08
48	4	ELI-EV-023	entrada	1	0.91	simulacion	\N	2026-11-12 08:34:00-08	2026-11-13 07:12:54.922316-08
49	4	ELI-EV-024	salida	1	0.91	simulacion	\N	2026-11-12 08:42:00-08	2026-11-13 07:12:54.922316-08
50	4	ELI-EV-025	entrada	1	0.91	simulacion	\N	2026-11-12 08:50:00-08	2026-11-13 07:12:54.922316-08
51	4	ELI-EV-026	entrada	1	0.91	simulacion	\N	2026-11-12 08:58:00-08	2026-11-13 07:12:54.922316-08
52	4	ELI-EV-027	salida	1	0.91	simulacion	\N	2026-11-12 09:06:00-08	2026-11-13 07:12:54.922316-08
53	4	ELI-EV-028	entrada	1	0.91	simulacion	\N	2026-11-12 09:14:00-08	2026-11-13 07:12:54.922316-08
54	4	ELI-EV-029	entrada	1	0.91	simulacion	\N	2026-11-12 09:22:00-08	2026-11-13 07:12:54.922316-08
55	4	ELI-EV-030	salida	1	0.91	simulacion	\N	2026-11-12 09:30:00-08	2026-11-13 07:12:54.922316-08
56	4	ELI-EV-031	entrada	1	0.91	simulacion	\N	2026-11-12 09:38:00-08	2026-11-13 07:12:54.922316-08
57	4	ELI-EV-032	entrada	1	0.91	simulacion	\N	2026-11-12 09:46:00-08	2026-11-13 07:12:54.922316-08
58	4	ELI-EV-033	salida	1	0.91	simulacion	\N	2026-11-12 09:54:00-08	2026-11-13 07:12:54.922316-08
59	4	ELI-EV-034	entrada	1	0.91	simulacion	\N	2026-11-12 10:02:00-08	2026-11-13 07:12:54.922316-08
60	4	ELI-EV-035	entrada	1	0.91	simulacion	\N	2026-11-12 10:10:00-08	2026-11-13 07:12:54.922316-08
61	4	ELI-EV-036	salida	1	0.91	simulacion	\N	2026-11-12 10:18:00-08	2026-11-13 07:12:54.922316-08
134	7	ISAI-EV-101	entrada	1	0.95	esp32_cam_ai	\N	2026-11-13 05:01:10-08	2026-11-13 07:21:31.938631-08
135	7	ISAI-EV-102	entrada	1	0.94	esp32_cam_ai	\N	2026-11-13 05:02:05-08	2026-11-13 07:21:31.938631-08
136	7	ISAI-EV-103	entrada	1	0.91	esp32_cam_ai	\N	2026-11-13 05:05:30-08	2026-11-13 07:21:31.938631-08
137	7	ISAI-EV-104	salida	1	0.94	esp32_cam_ai	\N	2026-11-13 05:40:12-08	2026-11-13 07:21:31.938631-08
138	8	ISAI-EV-105	salida	1	0.90	esp32_cam_ai	\N	2026-11-13 05:42:00-08	2026-11-13 07:21:31.938631-08
139	9	ISAI-EV-106	entrada	1	0.98	esp32_cam_ai	\N	2026-11-13 05:50:15-08	2026-11-13 07:21:31.938631-08
140	9	ISAI-EV-107	entrada	1	0.96	esp32_cam_ai	\N	2026-11-13 05:51:44-08	2026-11-13 07:21:31.938631-08
141	9	ISAI-EV-108	entrada	1	0.81	esp32_cam_ai	\N	2026-11-13 05:55:00-08	2026-11-13 07:21:31.938631-08
142	9	ISAI-EV-109	salida	1	0.95	esp32_cam_ai	\N	2026-11-13 06:10:20-08	2026-11-13 07:21:31.938631-08
143	7	ISAI-EV-110	entrada	1	0.96	esp32_cam_ai	\N	2026-11-13 06:15:00-08	2026-11-13 07:21:31.938631-08
\.


--
-- TOC entry 4655 (class 0 OID 25100)
-- Dependencies: 230
-- Data for Name: intentos_login; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.intentos_login (id, usuario_id, correo_intentado, ip_origen, exitoso, motivo, ocurrido_en) FROM stdin;
1	1	pablo.mendez.node1@upb.edu.mx	172.16.1.50	t	Inicio de sesión exitoso	2026-11-13 06:00:14.601515-08
2	\N	intrusion.test.pablo@upb.edu.mx	192.168.10.99	f	Usuario no encontrado	2026-11-13 06:15:14.601515-08
3	2	soporte.pablo.node1@upb.edu.mx	172.16.1.51	f	Contraseña incorrecta	2026-11-13 06:30:14.601515-08
4	7	isai.rosas@smartaccess.local	172.16.1.50	t	\N	2026-11-13 04:55:00-08
5	8	elena.vazquez@smartaccess.local	172.16.1.52	t	\N	2026-11-13 05:02:15-08
6	10	valeria.cruz@smartaccess.local	172.16.1.60	f	Contraseña incorrecta (3er intento)	2026-11-13 05:10:00-08
7	\N	admin_falso@smartaccess.local	192.168.1.250	f	Usuario no registrado	2026-11-13 05:15:30-08
\.


--
-- TOC entry 4647 (class 0 OID 25009)
-- Dependencies: 222
-- Data for Name: modulos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.modulos (id, clave, nombre, descripcion) FROM stdin;
1	MOD_DASH	Dashboard en Vivo	Visualización de aforo actual por ubicación y accesos
2	MOD_DISP	Dispositivos y Cámaras	Administración de nodos ESP32-S3-CAM y telemetría
3	MOD_UBIC	Ubicaciones y Accesos	Gestión de edificios, pasillos y capacidades máximas
4	MOD_REP	Reportes y Auditoría	Generación de reportes históricos y bitácora del sistema
5	MOD_USR	Usuarios y Permisos	Control de cuentas, roles y seguridad de acceso
6	ISAI_DASH	Dashboard General Isai	Visualización de aforo en tiempo real
7	ISAI_USR	Usuarios y Roles Isai	Administración de cuentas y privilegios
8	ISAI_INF	Infraestructura Isai	Gestión de edificios, accesos y cámaras ESP32
9	ISAI_ALT	Alertas e Incidentes Isai	Atención de sobrecupo y fallos de hardware
10	ISAI_REP	Reportes y Auditoría Isai	Exportación de datos y bitácora del sistema
\.


--
-- TOC entry 4649 (class 0 OID 25023)
-- Dependencies: 224
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.permisos (id, rol_id, modulo_id, puede_ver, puede_crear, puede_editar, puede_eliminar) FROM stdin;
1	1	1	t	t	t	t
2	1	2	t	t	t	t
3	1	3	t	t	t	t
4	1	4	t	t	t	t
5	1	5	t	t	t	t
6	1	6	t	t	t	t
7	1	7	t	t	t	t
8	1	8	t	t	t	t
9	1	9	t	t	t	t
10	1	10	t	t	t	t
11	4	6	t	f	t	f
12	4	9	t	f	t	f
\.


--
-- TOC entry 4671 (class 0 OID 25292)
-- Dependencies: 246
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.reportes (id, codigo_reporte, ubicacion_id, generado_por, tipo, periodo_inicio, periodo_fin, generado_en, ruta_archivo) FROM stdin;
1	REP-PABLO-001	1	1	aforo_diario	2026-11-12 07:00:14.601515-08	2026-11-13 07:00:14.601515-08	2026-11-13 07:00:14.601515-08	/exports/reporte_edificio_a_pablo.pdf
2	REP-PABLO-002	2	3	telemetria_nodos	2026-11-12 19:00:14.601515-08	2026-11-13 07:00:14.601515-08	2026-11-13 07:00:14.601515-08	/exports/telemetria_biblioteca_pablo.csv
3	ELI-REP-01	3	4	diario	2026-11-11 21:00:00-08	2026-11-12 21:00:00-08	2026-11-13 07:12:54.922316-08	\N
6	ISAI-REP-101	4	9	Flujo Diario PDF	2026-10-31 22:00:00-07	2026-11-13 20:59:59-08	2026-11-13 07:21:31.938631-08	/reportes/flujo_ingenieria_isai.pdf
7	ISAI-REP-102	5	7	Consolidado Alertas XLSX	2026-10-31 22:00:00-07	2026-11-13 20:59:59-08	2026-11-13 07:21:31.938631-08	/reportes/alertas_noviembre_isai.xlsx
\.


--
-- TOC entry 4645 (class 0 OID 24996)
-- Dependencies: 220
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.roles (id, nombre, descripcion) FROM stdin;
1	Administrador	Acceso total a configuración, usuarios, dispositivos y reportes
2	Operador	Monitoreo en tiempo real, atención de alertas y ajustes de aforo
3	Auditor	Visualización de estadísticas, auditoría y descarga de reportes
4	Supervisor Aforo	Monitoreo en tiempo real, ajustes y atención de alertas
5	Auditor Estadístico	Consulta de métricas históricas y exportación de reportes
\.


--
-- TOC entry 4653 (class 0 OID 25078)
-- Dependencies: 228
-- Data for Name: sesiones_usuario; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.sesiones_usuario (id, usuario_id, token_hash, inicio_en, expira_en, revocada) FROM stdin;
1	1	sha256_token_pablo_sesion_001_act	2026-11-13 06:00:14.601515-08	2026-11-13 14:00:14.601515-08	f
2	2	sha256_token_pablo_sesion_002_exp	2026-11-12 21:00:14.601515-08	2026-11-13 05:00:14.601515-08	t
3	7	tok_isai_20261113_001	2026-11-13 04:55:02-08	2026-11-13 12:55:02-08	f
4	8	tok_elena_20261113_002	2026-11-13 05:02:18-08	2026-11-13 13:02:18-08	f
5	9	tok_marco_20261112_003	2026-11-12 06:00:00-08	2026-11-12 11:00:00-08	t
\.


--
-- TOC entry 4665 (class 0 OID 25211)
-- Dependencies: 240
-- Data for Name: telemetria_dispositivo; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.telemetria_dispositivo (id, dispositivo_id, registrado_en, rssi_dbm, memoria_libre_bytes, fps_real, camara_operativa) FROM stdin;
1	1	2026-11-13 06:50:14.601515-08	-54	4194304	14.80	t
2	1	2026-11-13 06:55:14.601515-08	-56	4120500	14.50	t
3	2	2026-11-13 06:55:14.601515-08	-61	3980100	14.20	t
4	3	2026-11-13 05:00:14.601515-08	-78	2048000	0.00	f
5	4	2026-11-12 05:15:00-08	-55	3980000	4.60	t
6	4	2026-11-12 05:30:00-08	-56	3960000	4.70	t
7	4	2026-11-12 05:45:00-08	-57	3940000	4.80	t
8	4	2026-11-12 06:00:00-08	-58	3920000	4.90	t
9	4	2026-11-12 05:15:00-08	-55	3980000	4.60	t
10	4	2026-11-12 05:30:00-08	-56	3960000	4.70	t
11	4	2026-11-12 05:45:00-08	-57	3940000	4.80	t
12	4	2026-11-12 06:00:00-08	-58	3920000	4.90	t
13	4	2026-11-12 05:15:00-08	-55	3980000	4.60	t
14	4	2026-11-12 05:30:00-08	-56	3960000	4.70	t
15	4	2026-11-12 05:45:00-08	-57	3940000	4.80	t
16	4	2026-11-12 06:00:00-08	-58	3920000	4.90	t
17	7	2026-11-13 05:30:00-08	-54	3145728	11.80	t
18	8	2026-11-13 05:30:05-08	-61	3512000	11.50	t
19	9	2026-11-13 05:30:10-08	-49	2150400	19.40	t
20	10	2026-11-13 04:45:00-08	-82	712000	0.00	f
\.


--
-- TOC entry 4657 (class 0 OID 25119)
-- Dependencies: 232
-- Data for Name: ubicaciones; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.ubicaciones (id, nombre, descripcion, direccion, capacidad_maxima, activa, creada_en) FROM stdin;
1	Edificio Académico A - Pablo	Aulas de Ingeniería en Software y laboratorios de cómputo	Av. Universidad Politécnica, Edificio A	220	t	2026-11-13 07:00:14.601515-08
2	Pasillo Central Biblioteca - Pablo	Corredor principal de acceso a sala de estudio	Av. Universidad Politécnica, Edificio B	120	t	2026-11-13 07:00:14.601515-08
3	Laboratorio SmartAccess - Eliel	Zona de ensayo para el conteo de personas	\N	80	t	2026-11-13 07:12:54.922316-08
4	Edificio de Ingeniería - Isai	Aulas, laboratorios de redes y electrónica	Campus UPB Zona Norte	150	t	2026-11-13 07:21:31.938631-08
5	Centro de Información - Isai	Biblioteca digital y salas de estudio	Campus UPB Zona Central	90	t	2026-11-13 07:21:31.938631-08
6	Auditorio Magno - Isai	Sala de conferencias y eventos académicos	Campus UPB Zona Sur	250	t	2026-11-13 07:21:31.938631-08
\.


--
-- TOC entry 4651 (class 0 OID 25053)
-- Dependencies: 226
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY public.usuarios (id, rol_id, nombre, correo, password_hash, activo, creado_en) FROM stdin;
1	1	Pablo Alexander Méndez	pablo.mendez.node1@upb.edu.mx	$2b$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW	t	2026-11-13 07:00:14.601515-08
2	2	Soporte Técnico Pablo	soporte.pablo.node1@upb.edu.mx	$2b$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW	t	2026-11-13 07:00:14.601515-08
3	3	Auditoría Pablo	auditoria.pablo.node1@upb.edu.mx	$2b$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW	t	2026-11-13 07:00:14.601515-08
4	2	Eliel (cuenta de pruebas)	eliel.demo@smartaccess.local	DEMO_SIN_CREDENCIALES_VALIDAS	f	2026-11-13 07:12:54.922316-08
7	1	Isai Rosas Canto	isai.rosas@smartaccess.local	$2b$12$hashSeguroIsai101	t	2026-11-13 07:21:31.938631-08
8	4	Elena Vázquez	elena.vazquez@smartaccess.local	$2b$12$hashSeguroElena102	t	2026-11-13 07:21:31.938631-08
9	5	Marco Solís	marco.solis@smartaccess.local	$2b$12$hashSeguroMarco103	t	2026-11-13 07:21:31.938631-08
10	4	Valeria Cruz	valeria.cruz@smartaccess.local	$2b$12$hashSeguroValeria104	f	2026-11-13 07:21:31.938631-08
\.


--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 233
-- Name: accesos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.accesos_id_seq', 8, true);


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 241
-- Name: ajustes_aforo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ajustes_aforo_id_seq', 10, true);


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 243
-- Name: alertas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.alertas_id_seq', 11, true);


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 247
-- Name: auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.auditoria_id_seq', 7, true);


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 237
-- Name: configuraciones_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.configuraciones_dispositivo_id_seq', 10, true);


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 235
-- Name: dispositivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.dispositivos_id_seq', 10, true);


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 249
-- Name: eventos_conteo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.eventos_conteo_id_seq', 143, true);


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 229
-- Name: intentos_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.intentos_login_id_seq', 7, true);


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 221
-- Name: modulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.modulos_id_seq', 10, true);


--
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 223
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.permisos_id_seq', 12, true);


--
-- TOC entry 4708 (class 0 OID 0)
-- Dependencies: 245
-- Name: reportes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.reportes_id_seq', 7, true);


--
-- TOC entry 4709 (class 0 OID 0)
-- Dependencies: 219
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.roles_id_seq', 5, true);


--
-- TOC entry 4710 (class 0 OID 0)
-- Dependencies: 227
-- Name: sesiones_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.sesiones_usuario_id_seq', 5, true);


--
-- TOC entry 4711 (class 0 OID 0)
-- Dependencies: 239
-- Name: telemetria_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.telemetria_dispositivo_id_seq', 20, true);


--
-- TOC entry 4712 (class 0 OID 0)
-- Dependencies: 231
-- Name: ubicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.ubicaciones_id_seq', 6, true);


--
-- TOC entry 4713 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 10, true);


--
-- TOC entry 4444 (class 2606 OID 25148)
-- Name: accesos accesos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_pkey PRIMARY KEY (id);


--
-- TOC entry 4458 (class 2606 OID 25244)
-- Name: ajustes_aforo ajustes_aforo_codigo_ajuste_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_codigo_ajuste_key UNIQUE (codigo_ajuste);


--
-- TOC entry 4460 (class 2606 OID 25242)
-- Name: ajustes_aforo ajustes_aforo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_pkey PRIMARY KEY (id);


--
-- TOC entry 4462 (class 2606 OID 25275)
-- Name: alertas alertas_codigo_alerta_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_codigo_alerta_key UNIQUE (codigo_alerta);


--
-- TOC entry 4464 (class 2606 OID 25273)
-- Name: alertas alertas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_pkey PRIMARY KEY (id);


--
-- TOC entry 4470 (class 2606 OID 25337)
-- Name: auditoria auditoria_codigo_accion_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_codigo_accion_key UNIQUE (codigo_accion);


--
-- TOC entry 4472 (class 2606 OID 25335)
-- Name: auditoria auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);


--
-- TOC entry 4452 (class 2606 OID 25204)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_key UNIQUE (dispositivo_id);


--
-- TOC entry 4454 (class 2606 OID 25202)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4446 (class 2606 OID 25173)
-- Name: dispositivos dispositivos_codigo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_codigo_key UNIQUE (codigo);


--
-- TOC entry 4448 (class 2606 OID 25175)
-- Name: dispositivos dispositivos_mac_wifi_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_mac_wifi_key UNIQUE (mac_wifi);


--
-- TOC entry 4450 (class 2606 OID 25171)
-- Name: dispositivos dispositivos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_pkey PRIMARY KEY (id);


--
-- TOC entry 4474 (class 2606 OID 25363)
-- Name: eventos_conteo eventos_conteo_evento_externo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_evento_externo_key UNIQUE (evento_externo);


--
-- TOC entry 4476 (class 2606 OID 25361)
-- Name: eventos_conteo eventos_conteo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_pkey PRIMARY KEY (id);


--
-- TOC entry 4440 (class 2606 OID 25112)
-- Name: intentos_login intentos_login_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_pkey PRIMARY KEY (id);


--
-- TOC entry 4424 (class 2606 OID 25021)
-- Name: modulos modulos_clave_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_clave_key UNIQUE (clave);


--
-- TOC entry 4426 (class 2606 OID 25019)
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);


--
-- TOC entry 4428 (class 2606 OID 25039)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 4430 (class 2606 OID 25041)
-- Name: permisos permisos_rol_id_modulo_id_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_modulo_id_key UNIQUE (rol_id, modulo_id);


--
-- TOC entry 4466 (class 2606 OID 25310)
-- Name: reportes reportes_codigo_reporte_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_codigo_reporte_key UNIQUE (codigo_reporte);


--
-- TOC entry 4468 (class 2606 OID 25308)
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id);


--
-- TOC entry 4420 (class 2606 OID 25007)
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- TOC entry 4422 (class 2606 OID 25005)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4436 (class 2606 OID 25091)
-- Name: sesiones_usuario sesiones_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 4438 (class 2606 OID 25093)
-- Name: sesiones_usuario sesiones_usuario_token_hash_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_token_hash_key UNIQUE (token_hash);


--
-- TOC entry 4456 (class 2606 OID 25222)
-- Name: telemetria_dispositivo telemetria_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_pkey PRIMARY KEY (id);


--
-- TOC entry 4442 (class 2606 OID 25134)
-- Name: ubicaciones ubicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ubicaciones
    ADD CONSTRAINT ubicaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4432 (class 2606 OID 25071)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 4434 (class 2606 OID 25069)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 25149)
-- Name: accesos accesos_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.accesos
    ADD CONSTRAINT accesos_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4486 (class 2606 OID 25245)
-- Name: ajustes_aforo ajustes_aforo_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4487 (class 2606 OID 25250)
-- Name: ajustes_aforo ajustes_aforo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.ajustes_aforo
    ADD CONSTRAINT ajustes_aforo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE RESTRICT;


--
-- TOC entry 4488 (class 2606 OID 25286)
-- Name: alertas alertas_atendida_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_atendida_por_fkey FOREIGN KEY (atendida_por) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4489 (class 2606 OID 25281)
-- Name: alertas alertas_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE SET NULL;


--
-- TOC entry 4490 (class 2606 OID 25276)
-- Name: alertas alertas_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.alertas
    ADD CONSTRAINT alertas_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4493 (class 2606 OID 25338)
-- Name: auditoria auditoria_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4484 (class 2606 OID 25205)
-- Name: configuraciones_dispositivo configuraciones_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.configuraciones_dispositivo
    ADD CONSTRAINT configuraciones_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4483 (class 2606 OID 25176)
-- Name: dispositivos dispositivos_acceso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.dispositivos
    ADD CONSTRAINT dispositivos_acceso_id_fkey FOREIGN KEY (acceso_id) REFERENCES public.accesos(id) ON DELETE CASCADE;


--
-- TOC entry 4494 (class 2606 OID 25364)
-- Name: eventos_conteo eventos_conteo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE RESTRICT;


--
-- TOC entry 4495 (class 2606 OID 25369)
-- Name: eventos_conteo eventos_conteo_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.eventos_conteo
    ADD CONSTRAINT eventos_conteo_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4481 (class 2606 OID 25113)
-- Name: intentos_login intentos_login_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.intentos_login
    ADD CONSTRAINT intentos_login_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE SET NULL;


--
-- TOC entry 4477 (class 2606 OID 25047)
-- Name: permisos permisos_modulo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_modulo_id_fkey FOREIGN KEY (modulo_id) REFERENCES public.modulos(id) ON DELETE CASCADE;


--
-- TOC entry 4478 (class 2606 OID 25042)
-- Name: permisos permisos_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 4491 (class 2606 OID 25316)
-- Name: reportes reportes_generado_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_generado_por_fkey FOREIGN KEY (generado_por) REFERENCES public.usuarios(id) ON DELETE RESTRICT;


--
-- TOC entry 4492 (class 2606 OID 25311)
-- Name: reportes reportes_ubicacion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_ubicacion_id_fkey FOREIGN KEY (ubicacion_id) REFERENCES public.ubicaciones(id) ON DELETE CASCADE;


--
-- TOC entry 4480 (class 2606 OID 25094)
-- Name: sesiones_usuario sesiones_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.sesiones_usuario
    ADD CONSTRAINT sesiones_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


--
-- TOC entry 4485 (class 2606 OID 25223)
-- Name: telemetria_dispositivo telemetria_dispositivo_dispositivo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.telemetria_dispositivo
    ADD CONSTRAINT telemetria_dispositivo_dispositivo_id_fkey FOREIGN KEY (dispositivo_id) REFERENCES public.dispositivos(id) ON DELETE CASCADE;


--
-- TOC entry 4479 (class 2606 OID 25072)
-- Name: usuarios usuarios_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON DELETE RESTRICT;


-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database dump complete
--

\unrestrict p1ThVlXO3XckCsNeO3AjzPdr5NiP2QE9KodwD4Jwkzy4lXEuenu7MhCR5TO7psL

-- Completed on 2026-11-17 06:45:37 PST

--
-- PostgreSQL database cluster dump complete
--

