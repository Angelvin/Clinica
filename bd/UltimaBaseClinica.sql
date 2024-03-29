SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_examen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_examen](
	[id_tipo_exa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](90) NULL,
 CONSTRAINT [PK_tipo_examen] PRIMARY KEY CLUSTERED 
(
	[id_tipo_exa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_tratamiento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_tratamiento](
	[id_tipo_trata] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_tratamiento] PRIMARY KEY CLUSTERED 
(
	[id_tipo_trata] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_pago](
	[id_tipopago] [int] IDENTITY(1,1) NOT NULL,
	[descrpcion] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_pago] PRIMARY KEY CLUSTERED 
(
	[id_tipopago] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cargo](
	[id_cargo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descrpcion] [varchar](90) NULL,
 CONSTRAINT [PK_cargo] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resultado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[resultado](
	[id_resul] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_resultado] PRIMARY KEY CLUSTERED 
(
	[id_resul] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre_rol] [varchar](50) NULL,
	[descripcion_rol] [varchar](50) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipo_empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](80) NULL,
 CONSTRAINT [PK_tipo_empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[examen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[examen](
	[id_exa] [int] IDENTITY(1,1) NOT NULL,
	[fecha_solicitud] [datetime] NULL,
	[fecha_aplicacion] [datetime] NULL,
	[observaciones] [varchar](50) NULL,
	[id_tipo_exa] [int] NULL,
	[id_resul] [int] NULL,
	[id_hist] [int] NULL,
 CONSTRAINT [PK_examen] PRIMARY KEY CLUSTERED 
(
	[id_exa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[historial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[historial](
	[id_hist] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ini] [datetime] NULL,
	[horario] [varchar](50) NULL,
	[contenido] [varchar](150) NULL,
	[descripcion] [varchar](150) NULL,
	[fecha_final] [datetime] NULL,
	[id_trata] [int] NULL,
 CONSTRAINT [PK_historial] PRIMARY KEY CLUSTERED 
(
	[id_hist] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[factura](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[fecha_creacion] [datetime] NULL,
	[id_pacien] [int] NULL,
	[id_empleado] [int] NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tratamiento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tratamiento](
	[id_trata] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ini] [datetime] NULL,
	[fecha_soli] [datetime] NULL,
	[observaciones] [varchar](150) NULL,
	[fecha_final] [datetime] NULL,
	[id_tipo_trata] [int] NULL,
 CONSTRAINT [PK_tratamiento] PRIMARY KEY CLUSTERED 
(
	[id_trata] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pago](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[valor_pagado] [numeric](18, 0) NULL,
	[id_factura] [int] NULL,
	[id_tipopago] [int] NULL,
 CONSTRAINT [PK_pago] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[empleado](
	[id_emplea] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NOT NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NOT NULL,
	[direccion] [varchar](150) NULL,
	[fecha_nacimient] [datetime] NULL,
	[id_tipoemple] [int] NULL,
	[id_cargo] [int] NULL,
	[id_login] [int] NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_emplea] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[paciente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NOT NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NULL,
	[fecha_nacimient] [datetime] NULL,
	[id_hist] [int] NULL,
 CONSTRAINT [PK_paciente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dieta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dieta](
	[id_dieta] [int] IDENTITY(1,1) NOT NULL,
	[fecha_inic] [datetime] NULL,
	[fecha_final] [varchar](50) NULL,
	[contenido] [varchar](150) NULL,
	[descripcion] [varchar](150) NULL,
	[id_hist] [int] NULL,
 CONSTRAINT [PK_dieta] PRIMARY KEY CLUSTERED 
(
	[id_dieta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[login](
	[id_login] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
	[id_rol] [int] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id_login] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_historial1]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_historial1] FOREIGN KEY([id_hist])
REFERENCES [dbo].[historial] ([id_hist])
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_historial1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_resultado]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_resultado] FOREIGN KEY([id_resul])
REFERENCES [dbo].[resultado] ([id_resul])
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_resultado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_examen_tipo_examen1]') AND parent_object_id = OBJECT_ID(N'[dbo].[examen]'))
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_tipo_examen1] FOREIGN KEY([id_tipo_exa])
REFERENCES [dbo].[tipo_examen] ([id_tipo_exa])
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_tipo_examen1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_historial_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[historial]'))
ALTER TABLE [dbo].[historial]  WITH CHECK ADD  CONSTRAINT [FK_historial_tratamiento] FOREIGN KEY([id_trata])
REFERENCES [dbo].[tratamiento] ([id_trata])
GO
ALTER TABLE [dbo].[historial] CHECK CONSTRAINT [FK_historial_tratamiento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_emplea])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_factura_paciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_paciente] FOREIGN KEY([id_pacien])
REFERENCES [dbo].[paciente] ([id])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_paciente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tratamiento_tipo_tratamiento]') AND parent_object_id = OBJECT_ID(N'[dbo].[tratamiento]'))
ALTER TABLE [dbo].[tratamiento]  WITH CHECK ADD  CONSTRAINT [FK_tratamiento_tipo_tratamiento] FOREIGN KEY([id_tipo_trata])
REFERENCES [dbo].[tipo_tratamiento] ([id_tipo_trata])
GO
ALTER TABLE [dbo].[tratamiento] CHECK CONSTRAINT [FK_tratamiento_tipo_tratamiento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pago_factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[pago]'))
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[factura] ([id_factura])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_factura]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pago_tipo_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[pago]'))
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_tipo_pago] FOREIGN KEY([id_tipopago])
REFERENCES [dbo].[tipo_pago] ([id_tipopago])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_tipo_pago]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_cargo1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_cargo1] FOREIGN KEY([id_cargo])
REFERENCES [dbo].[cargo] ([id_cargo])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_cargo1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_login1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_login1] FOREIGN KEY([id_login])
REFERENCES [dbo].[login] ([id_login])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_login1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_empleado_tipo_empleado1]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleado]'))
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_tipo_empleado1] FOREIGN KEY([id_tipoemple])
REFERENCES [dbo].[tipo_empleado] ([id])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_tipo_empleado1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_paciente_historial1]') AND parent_object_id = OBJECT_ID(N'[dbo].[paciente]'))
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [FK_paciente_historial1] FOREIGN KEY([id_hist])
REFERENCES [dbo].[historial] ([id_hist])
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [FK_paciente_historial1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dieta_historial]') AND parent_object_id = OBJECT_ID(N'[dbo].[dieta]'))
ALTER TABLE [dbo].[dieta]  WITH CHECK ADD  CONSTRAINT [FK_dieta_historial] FOREIGN KEY([id_hist])
REFERENCES [dbo].[historial] ([id_hist])
GO
ALTER TABLE [dbo].[dieta] CHECK CONSTRAINT [FK_dieta_historial]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_login_rol]') AND parent_object_id = OBJECT_ID(N'[dbo].[login]'))
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [FK_login_rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [FK_login_rol]
