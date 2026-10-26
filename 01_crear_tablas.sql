-- ESTUDIANTE
CREATE TABLE estudiante (
    documento_identidad  VARCHAR2(15)  NOT NULL,
    nombre               VARCHAR2(60)  NOT NULL,
    apellidos            VARCHAR2(80)  NOT NULL,
    universidad          VARCHAR2(80)  NOT NULL,
    programa             VARCHAR2(80)  NOT NULL,
    correo_institucional VARCHAR2(100) NOT NULL,
    celular              VARCHAR2(10)  NOT NULL,
    CONSTRAINT PK_estudiante PRIMARY KEY (documento_identidad),
    CONSTRAINT UK_estudiante_correo UNIQUE (correo_institucional),
    CONSTRAINT UK_estudiante_celular UNIQUE (celular),
    CONSTRAINT CK_estudiante_correo
        CHECK (REGEXP_LIKE(correo_institucional, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.edu\.co$')),
    CONSTRAINT CK_estudiante_celular
        CHECK (REGEXP_LIKE(celular, '^3[0-9]{9}$'))
);


-- VEHICULO
CREATE TABLE vehiculo (
    placa                VARCHAR2(6)  NOT NULL,
    marca                VARCHAR2(50) NOT NULL,
    modelo               VARCHAR(50)  NOT NULL,
    anio                 NUMBER(4)    NOT NULL,
    color                VARCHAR2(30) NOT NULL,
    capacidad_cupos      NUMBER(1)    NOT NULL,
    documento_conductor  VARCHAR2(15) NOT NULL,
    CONSTRAINT PK_vehiculo PRIMARY KEY (placa),
    CONSTRAINT FK_vehiculo_estudiante FOREIGN KEY (documento_conductor)
        REFERENCES estudiante (documento_identidad) ON DELETE CASCADE,
    CONSTRAINT CK_vehiculo_placa
        CHECK (REGEXP_LIKE(placa, '^[A-Z]{3}[0-9]{3}$')),
    CONSTRAINT CK_vehiculo_anio
        CHECK (anio BETWEEN 1990 AND 2027),
    CONSTRAINT CK_vehiculo_capacidad
        CHECK (capacidad_cupos BETWEEN 1 AND 6)
);

-- LOCALIDAD
CREATE TABLE localidad (
    id_localidad  NUMBER GENERATED ALWAYS AS IDENTITY,
    nombre        VARCHAR2(80) NOT NULL,
    ciudad        VARCHAR2(80) NOT NULL,
    CONSTRAINT PK_localidad PRIMARY KEY (id_localidad),
    CONSTRAINT UK_localidad_nombre_ciudad UNIQUE (nombre, ciudad)
);

-- VIAJE
CREATE TABLE viaje (
    id_viaje          NUMBER GENERATED ALWAYS AS IDENTITY,
    fecha_hora_salida DATE          NOT NULL,
    punto_origen      VARCHAR2(100) NOT NULL,
    ruta_general      VARCHAR2(200) NOT NULL,
    placa_vehiculo    VARCHAR2(6)   NOT NULL,
    cupos_disponibles NUMBER(1)     NOT NULL,
    costo             NUMBER(8)     NOT NULL,
    estado            VARCHAR2(12) DEFAULT 'programado' NOT NULL,
    distancia_est_km  NUMBER(3)     NOT NULL,
    duracion_est_min  NUMBER(4)     NOT NULL,
    CONSTRAINT PK_viaje PRIMARY KEY (id_viaje),
    CONSTRAINT UK_viaje_vehiculo_fecha UNIQUE (placa_vehiculo, fecha_hora_salida),
    CONSTRAINT FK_viaje_vehiculo FOREIGN KEY (placa_vehiculo)
        REFERENCES vehiculo (placa) ON DELETE CASCADE,
    CONSTRAINT CK_viaje_cupos  CHECK (cupos_disponibles BETWEEN 0 AND 6),
    CONSTRAINT CK_viaje_costo  CHECK (costo >= 0),
    CONSTRAINT CK_viaje_estado
        CHECK (estado IN ('programado','en_curso','completado','cancelado')),
    CONSTRAINT CK_viaje_distancia CHECK(distancia_est_km > 0),
    CONSTRAINT CK_viaje_duracion CHECK(duracion_est_min > 0)
);

-- PARADA
CREATE TABLE parada (
    id_parada     NUMBER GENERATED ALWAYS AS IDENTITY,
    direccion     VARCHAR2(150) NOT NULL,
    orden         NUMBER(2)     NOT NULL,
    id_viaje      NUMBER        NOT NULL,
    id_localidad  NUMBER        NOT NULL,
    CONSTRAINT PK_parada PRIMARY KEY (id_parada),
    CONSTRAINT UK_parada_viaje_orden UNIQUE (id_viaje, orden),
    CONSTRAINT FK_parada_viaje FOREIGN KEY (id_viaje)
        REFERENCES viaje (id_viaje) ON DELETE CASCADE,
    CONSTRAINT FK_parada_localidad FOREIGN KEY (id_localidad)
        REFERENCES localidad (id_localidad),
    CONSTRAINT CK_parada_orden CHECK (orden > 0)
);

-- SOLICITUD
CREATE TABLE solicitud (
    id_solicitud        NUMBER GENERATED ALWAYS AS IDENTITY,
    fecha               DATE         DEFAULT SYSDATE NOT NULL,
    estado              VARCHAR2(10) DEFAULT 'pendiente' NOT NULL,
    fecha_cancelacion   DATE,
    documento_pasajero  VARCHAR2(15) NOT NULL,
    id_parada           NUMBER       NOT NULL,
    CONSTRAINT PK_solicitud PRIMARY KEY (id_solicitud),
    CONSTRAINT FK_solicitud_estudiante FOREIGN KEY (documento_pasajero)
        REFERENCES estudiante (documento_identidad) ON DELETE CASCADE,
    CONSTRAINT FK_solicitud_parada FOREIGN KEY (id_parada)
        REFERENCES parada (id_parada),
    CONSTRAINT CK_solicitud_estado
        CHECK (estado IN ('pendiente','aceptada','rechazada','cancelada')),
    CONSTRAINT CK_solicitud_cancelacion
        CHECK (
            (estado = 'cancelada' AND fecha_cancelacion IS NOT NULL AND fecha_cancelacion >= fecha)
         OR (estado <> 'cancelada' AND fecha_cancelacion IS NULL)
        )
);