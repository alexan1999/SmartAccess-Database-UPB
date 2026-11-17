# SmartAccess-Database-UPB

Proyecto académico de base de datos relacional para SmartAccess, un sistema de
monitoreo de accesos y aforo mediante dispositivos IoT, desarrollado para la
Universidad Politécnica de Bacalar (UPB).

El esquema separa identidad, permisos, ubicaciones, accesos, dispositivos,
telemetría, conteos, alertas, reportes y auditoría. Los registros generados por
los scripts de integrantes son datos sintéticos para pruebas.

## Equipo y responsabilidades

| Integrante | Responsabilidad en este repositorio |
|---|---|
| Pablo Alexander Méndez Pimienta | Esquema, catálogos, roles y permisos |
| Eliel Alegría Cruz | Sesiones e intentos de autenticación |
| Isaí Rosas Canto | Accesos, dispositivos IoT, telemetría y conteos |
| Johanan | Ajustes de aforo, alertas y reportes |
| Erick Alexander Koyoc Pech | Auditoría y trazabilidad |

## Módulos y tablas

| Módulo | Tablas | Propósito |
|---|---|---|
| Identidad y seguridad | `roles`, `modulos`, `permisos`, `usuarios`, `sesiones_usuario`, `intentos_login` | Acceso al sistema, autorización y trazabilidad de autenticación |
| Espacios y acceso físico | `ubicaciones`, `accesos` | Lugares supervisados y puntos de entrada/salida |
| IoT y monitoreo | `dispositivos`, `configuraciones_dispositivo`, `telemetria_dispositivo`, `eventos_conteo` | Inventario, configuración, salud y conteo de dispositivos |
| Operación | `ajustes_aforo`, `alertas` | Correcciones manuales de aforo e incidentes |
| Analítica y control | `reportes`, `auditoria` | Informes y registro de acciones |

El esquema contiene exactamente estas 16 tablas:

1. `roles`
2. `modulos`
3. `permisos`
4. `usuarios`
5. `sesiones_usuario`
6. `intentos_login`
7. `ubicaciones`
8. `accesos`
9. `dispositivos`
10. `configuraciones_dispositivo`
11. `telemetria_dispositivo`
12. `ajustes_aforo`
13. `alertas`
14. `reportes`
15. `auditoria`
16. `eventos_conteo`

La vista `vw_aforo_actual` calcula el aforo por ubicación con los eventos de
entrada/salida y los ajustes manuales registrados.

## Estructura del repositorio

```text
SmartAccess-Database-UPB/
├── README.md
├── 01_Schemas_y_Estructura/
│   └── 01_schema_16_tablas.sql
├── 02_Datos_por_Integrante/
│   ├── 01_pablo_alexander.sql
│   ├── 02_eliel_alegria.sql
│   ├── 03_isai_rosas.sql
│   ├── 04_johanan.sql
│   └── 05_erick_alexander.sql
├── 03_Consultas_y_Validacion/
│   └── 03_validacion_10_consultas.sql
└── 04_Respaldo_Servidor/
    └── respaldo_completo_Servidor_SmartAccess.sql
```

## Requisitos

- PostgreSQL 14 o posterior.
- pgAdmin 4 (opcional, para ejecutar los scripts visualmente).
- `psql` para restaurar el respaldo completo del servidor.

## Crear y cargar la base de datos con pgAdmin 4

1. Conecta pgAdmin 4 a un servidor PostgreSQL de desarrollo o pruebas.
2. Crea una base nueva, por ejemplo `smartaccess_upb`, con codificación UTF-8.
   No ejecutes el esquema sobre una base que ya contenga objetos SmartAccess.
3. Selecciona la base nueva y abre **Query Tool**.
4. Ejecuta `01_Schemas_y_Estructura/01_schema_16_tablas.sql` una sola vez.
5. Ejecuta los scripts de datos en este orden, para respetar sus llaves foráneas:
   `01_pablo_alexander.sql`, `02_eliel_alegria.sql`, `03_isai_rosas.sql`,
   `04_johanan.sql` y `05_erick_alexander.sql`.
6. Ejecuta `03_Consultas_y_Validacion/03_validacion_10_consultas.sql` y revisa
   el conteo, las llaves foráneas y las consultas analíticas.

Los cinco scripts de datos agregan 60 filas sintéticas cada uno (300 en total
en una base vacía) y se pueden volver a ejecutar sin duplicar sus registros.
Las cuentas de demostración están inactivas y contienen una marca que no es una
contraseña válida; no la sustituyas por credenciales reales.

## Respaldo completo del servidor

`04_Respaldo_Servidor/respaldo_completo_Servidor_SmartAccess.sql` es un dump de
servidor PostgreSQL, no un script de esquema para ejecutar en el Query Tool de
una base existente. Puede incluir roles, bases de datos y comandos de conexión.
Restáuralo únicamente en una instancia aislada de pruebas, después de revisar
su contenido y contar con autorización:

```powershell
psql -U <usuario_admin> -d postgres -f "04_Respaldo_Servidor\respaldo_completo_Servidor_SmartAccess.sql"
```

Una restauración de servidor puede crear o modificar objetos globales y bases
de datos. No la ejecutes sobre producción sin una copia de seguridad y un plan
de recuperación.
