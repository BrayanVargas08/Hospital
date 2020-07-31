
CREATE TABLE [dbo].[Ambulancia](
	[IdAmbulancia] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Placa] [varchar](50) NULL,
	[Coductor] [varchar](50) NULL,
 CONSTRAINT [PK_Ambulancia] PRIMARY KEY CLUSTERED 
(
	[IdAmbulancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitaMedica]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitaMedica](
	[IdCita] [int] IDENTITY(1,1) NOT NULL,
	[FechaHIngreso] [datetime] NULL,
	[Estado] [varchar](50) NULL,
	[Consultorio] [varchar](50) NULL,
	[IdMedico] [int] NULL,
	[IdPaciente] [int] NULL,
	[IdPersonalAdmin] [int] NULL,
	[IdEspecialidad] [int] NULL,
 CONSTRAINT [PK_CitaMedica] PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eps]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eps](
	[IdEps] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Eps] PRIMARY KEY CLUSTERED 
(
	[IdEps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospitalizacion]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospitalizacion](
	[IdHospitalizacion] [int] IDENTITY(1,1) NOT NULL,
	[FechaHIngreso] [datetime] NULL,
	[FechaHSalida] [datetime] NULL,
	[Motivo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Observaciones] [varchar](50) NULL,
	[IdPaciente] [int] NULL,
	[IdUrgencia] [int] NULL,
 CONSTRAINT [PK_Hospitalizacion] PRIMARY KEY CLUSTERED 
(
	[IdHospitalizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicacion]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicacion](
	[IdMedicacion] [int] IDENTITY(1,1) NOT NULL,
	[HoraMedicacion] [varchar](50) NULL,
	[Cantidad] [varchar](50) NULL,
	[MetodoAplicacion] [varchar](50) NULL,
	[IdProcesoGeneral] [int] NULL,
	[IdMedicamento] [int] NULL,
	[IdProcedimiento] [int] NULL,
 CONSTRAINT [PK_Medicacion] PRIMARY KEY CLUSTERED 
(
	[IdMedicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[IdMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Stock] [int] NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[IdMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[IdMedico] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Documento] [varchar](50) NULL,
	[Telefono] [bigint] NULL,
	[email] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[IdEspecialidad] [int] NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[IdPaciente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Documento] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [bigint] NULL,
	[FechaNacimiento] [date] NULL,
	[IdEps] [int] NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalAdministrativo]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalAdministrativo](
	[IdPersonalAdministrativo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Documento] [varchar](50) NULL,
	[Telefono] [bigint] NULL,
	[email] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[IdRol] [int] NULL,
 CONSTRAINT [PK_PersonalAdministrativo] PRIMARY KEY CLUSTERED 
(
	[IdPersonalAdministrativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procedimiento]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procedimiento](
	[IdProcedimiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Observaciones] [varchar](50) NULL,
	[FechaHProcedimiento] [datetime] NULL,
	[IdHospitalizacion] [int] NULL,
 CONSTRAINT [PK_Procedimiento] PRIMARY KEY CLUSTERED 
(
	[IdProcedimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcesoGeneral]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcesoGeneral](
	[IdProcesoGeneral] [int] IDENTITY(1,1) NOT NULL,
	[Diagnostico] [varchar](50) NULL,
	[Valoracion] [varchar](50) NULL,
	[IdCita] [int] NULL,
	[IdUrgencia] [int] NULL,
 CONSTRAINT [PK_ProcesoGeneral] PRIMARY KEY CLUSTERED 
(
	[IdProcesoGeneral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](50) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Traslado]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traslado](
	[IdTraslado] [int] IDENTITY(1,1) NOT NULL,
	[FechaHTraslado] [datetime] NULL,
	[Descripcion] [varchar](50) NULL,
	[Destino] [varchar](50) NULL,
	[IdAmbulancia] [int] NULL,
	[IdHospitalizacion] [int] NULL,
 CONSTRAINT [PK_Traslado] PRIMARY KEY CLUSTERED 
(
	[IdTraslado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Triage]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Triage](
	[IdTriage] [int] IDENTITY(1,1) NOT NULL,
	[Nivel] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Triage] PRIMARY KEY CLUSTERED 
(
	[IdTriage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urgencia]    Script Date: 28/07/2020 18:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urgencia](
	[IdUrgencia] [int] IDENTITY(1,1) NOT NULL,
	[FechaHIngreso] [datetime] NULL,
	[FechaHSalida] [datetime] NULL,
	[Motivo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdTriage] [int] NULL,
	[IdPaciente] [int] NULL,
	[IdMedico] [int] NULL,
 CONSTRAINT [PK_Urgencia] PRIMARY KEY CLUSTERED 
(
	[IdUrgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ambulancia] ON 

INSERT [dbo].[Ambulancia] ([IdAmbulancia], [Codigo], [Placa], [Coductor]) VALUES (1, N'5656', N'XJH 781', N'Jacobo ')
SET IDENTITY_INSERT [dbo].[Ambulancia] OFF
SET IDENTITY_INSERT [dbo].[CitaMedica] ON 

INSERT [dbo].[CitaMedica] ([IdCita], [FechaHIngreso], [Estado], [Consultorio], [IdMedico], [IdPaciente], [IdPersonalAdmin], [IdEspecialidad]) VALUES (1, CAST(N'2017-12-12T00:00:00.000' AS DateTime), N'emfermo', N'12', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[CitaMedica] OFF
SET IDENTITY_INSERT [dbo].[Eps] ON 

INSERT [dbo].[Eps] ([IdEps], [Nombre], [Ciudad]) VALUES (1, N'Nueva EPS', N'Duitama')
SET IDENTITY_INSERT [dbo].[Eps] OFF
SET IDENTITY_INSERT [dbo].[Especialidad] ON 

INSERT [dbo].[Especialidad] ([IdEspecialidad], [Especialidad], [Descripcion]) VALUES (1, N'Neurologia', N'Neurologia cronica')
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
SET IDENTITY_INSERT [dbo].[Hospitalizacion] ON 

INSERT [dbo].[Hospitalizacion] ([IdHospitalizacion], [FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [Observaciones], [IdPaciente], [IdUrgencia]) VALUES (2, CAST(N'2020-12-09T00:00:00.000' AS DateTime), CAST(N'2020-06-22T00:00:00.000' AS DateTime), N'urgencia', N'paciente asmatico', N'paciente casi muerto', 1, 2)
SET IDENTITY_INSERT [dbo].[Hospitalizacion] OFF
SET IDENTITY_INSERT [dbo].[Medicacion] ON 

INSERT [dbo].[Medicacion] ([IdMedicacion], [HoraMedicacion], [Cantidad], [MetodoAplicacion], [IdProcesoGeneral], [IdMedicamento], [IdProcedimiento]) VALUES (1, N'6:00', N'1', N'oral', NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Medicacion] OFF
SET IDENTITY_INSERT [dbo].[Medicamento] ON 

INSERT [dbo].[Medicamento] ([IdMedicamento], [Nombre], [Descripcion], [Stock]) VALUES (1, N'Acetaminofem', N'analgecico', 12)
SET IDENTITY_INSERT [dbo].[Medicamento] OFF
SET IDENTITY_INSERT [dbo].[Medico] ON 

INSERT [dbo].[Medico] ([IdMedico], [Nombre], [Apellido], [Documento], [Telefono], [email], [Direccion], [FechaNacimiento], [IdEspecialidad]) VALUES (1, N'Roine', N'Velandia', N'12131313', 323242421, N'roine@gmail.com', N'Aguazul', CAST(N'2001-11-20' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Medico] OFF
SET IDENTITY_INSERT [dbo].[Paciente] ON 

INSERT [dbo].[Paciente] ([IdPaciente], [Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [IdEps]) VALUES (1, N'Cristian', N'Acosta', N'1002606245', N'acista@gmail.com', N'callle 3 ', 77777, CAST(N'2001-07-09' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Paciente] OFF
SET IDENTITY_INSERT [dbo].[PersonalAdministrativo] ON 

INSERT [dbo].[PersonalAdministrativo] ([IdPersonalAdministrativo], [Nombre], [Apellido], [Documento], [Telefono], [email], [Direccion], [IdRol]) VALUES (1, N'Sandra', N'Rico', N'112223', 223234, N'castro@.com', N'casas naorte', 1)
SET IDENTITY_INSERT [dbo].[PersonalAdministrativo] OFF
SET IDENTITY_INSERT [dbo].[Procedimiento] ON 

INSERT [dbo].[Procedimiento] ([IdProcedimiento], [Descripcion], [Observaciones], [FechaHProcedimiento], [IdHospitalizacion]) VALUES (1, N'Obcservacion', N'casi muere', CAST(N'2009-12-12T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Procedimiento] OFF
SET IDENTITY_INSERT [dbo].[ProcesoGeneral] ON 

INSERT [dbo].[ProcesoGeneral] ([IdProcesoGeneral], [Diagnostico], [Valoracion], [IdCita], [IdUrgencia]) VALUES (1, N'muerte', N'buena', 1, 2)
SET IDENTITY_INSERT [dbo].[ProcesoGeneral] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([IdRol], [Rol]) VALUES (1, N'Administrador')
INSERT [dbo].[Rol] ([IdRol], [Rol]) VALUES (2, N'Usuario General')
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[Traslado] ON 

INSERT [dbo].[Traslado] ([IdTraslado], [FechaHTraslado], [Descripcion], [Destino], [IdAmbulancia], [IdHospitalizacion]) VALUES (5, CAST(N'2002-02-12T00:00:00.000' AS DateTime), N'translado prioritario', N'San Rfael', 1, 2)
SET IDENTITY_INSERT [dbo].[Traslado] OFF
SET IDENTITY_INSERT [dbo].[Triage] ON 

INSERT [dbo].[Triage] ([IdTriage], [Nivel], [Descripcion]) VALUES (1, N'NIvel priotirario', N'dificutad respiratoria')
SET IDENTITY_INSERT [dbo].[Triage] OFF
SET IDENTITY_INSERT [dbo].[Urgencia] ON 

INSERT [dbo].[Urgencia] ([IdUrgencia], [FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [IdTriage], [IdPaciente], [IdMedico]) VALUES (2, CAST(N'2001-11-13T00:00:00.000' AS DateTime), CAST(N'2002-12-21T00:00:00.000' AS DateTime), N'caida', N'se cayo', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Urgencia] OFF
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[Especialidad] ([IdEspecialidad])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Especialidad]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Medico] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[Medico] ([IdMedico])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Medico]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Paciente]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_PersonalAdministrativo] FOREIGN KEY([IdPersonalAdmin])
REFERENCES [dbo].[PersonalAdministrativo] ([IdPersonalAdministrativo])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_PersonalAdministrativo]
GO
ALTER TABLE [dbo].[Hospitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_Hospitalizacion_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[Hospitalizacion] CHECK CONSTRAINT [FK_Hospitalizacion_Paciente]
GO
ALTER TABLE [dbo].[Hospitalizacion]  WITH CHECK ADD  CONSTRAINT [FK_Hospitalizacion_Urgencia] FOREIGN KEY([IdUrgencia])
REFERENCES [dbo].[Urgencia] ([IdUrgencia])
GO
ALTER TABLE [dbo].[Hospitalizacion] CHECK CONSTRAINT [FK_Hospitalizacion_Urgencia]
GO
ALTER TABLE [dbo].[Medicacion]  WITH CHECK ADD  CONSTRAINT [FK_Medicacion_Medicamento] FOREIGN KEY([IdMedicamento])
REFERENCES [dbo].[Medicamento] ([IdMedicamento])
GO
ALTER TABLE [dbo].[Medicacion] CHECK CONSTRAINT [FK_Medicacion_Medicamento]
GO
ALTER TABLE [dbo].[Medicacion]  WITH CHECK ADD  CONSTRAINT [FK_Medicacion_Procedimiento] FOREIGN KEY([IdProcedimiento])
REFERENCES [dbo].[Procedimiento] ([IdProcedimiento])
GO
ALTER TABLE [dbo].[Medicacion] CHECK CONSTRAINT [FK_Medicacion_Procedimiento]
GO
ALTER TABLE [dbo].[Medicacion]  WITH CHECK ADD  CONSTRAINT [FK_Medicacion_Procedimiento1] FOREIGN KEY([IdProcedimiento])
REFERENCES [dbo].[Procedimiento] ([IdProcedimiento])
GO
ALTER TABLE [dbo].[Medicacion] CHECK CONSTRAINT [FK_Medicacion_Procedimiento1]
GO
ALTER TABLE [dbo].[Medicacion]  WITH CHECK ADD  CONSTRAINT [FK_Medicacion_ProcesoGeneral] FOREIGN KEY([IdProcesoGeneral])
REFERENCES [dbo].[ProcesoGeneral] ([IdProcesoGeneral])
GO
ALTER TABLE [dbo].[Medicacion] CHECK CONSTRAINT [FK_Medicacion_ProcesoGeneral]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[Especialidad] ([IdEspecialidad])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Especialidad]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Eps] FOREIGN KEY([IdEps])
REFERENCES [dbo].[Eps] ([IdEps])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Eps]
GO
ALTER TABLE [dbo].[PersonalAdministrativo]  WITH CHECK ADD  CONSTRAINT [FK_PersonalAdministrativo_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[PersonalAdministrativo] CHECK CONSTRAINT [FK_PersonalAdministrativo_Rol]
GO
ALTER TABLE [dbo].[ProcesoGeneral]  WITH CHECK ADD  CONSTRAINT [FK_ProcesoGeneral_Urgencia] FOREIGN KEY([IdUrgencia])
REFERENCES [dbo].[Urgencia] ([IdUrgencia])
GO
ALTER TABLE [dbo].[ProcesoGeneral] CHECK CONSTRAINT [FK_ProcesoGeneral_Urgencia]
GO
ALTER TABLE [dbo].[Traslado]  WITH CHECK ADD  CONSTRAINT [FK_Traslado_Ambulancia] FOREIGN KEY([IdAmbulancia])
REFERENCES [dbo].[Ambulancia] ([IdAmbulancia])
GO
ALTER TABLE [dbo].[Traslado] CHECK CONSTRAINT [FK_Traslado_Ambulancia]
GO
ALTER TABLE [dbo].[Traslado]  WITH CHECK ADD  CONSTRAINT [FK_Traslado_Hospitalizacion] FOREIGN KEY([IdHospitalizacion])
REFERENCES [dbo].[Hospitalizacion] ([IdHospitalizacion])
GO
ALTER TABLE [dbo].[Traslado] CHECK CONSTRAINT [FK_Traslado_Hospitalizacion]
GO
ALTER TABLE [dbo].[Urgencia]  WITH CHECK ADD  CONSTRAINT [FK_Urgencia_Medico] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[Medico] ([IdMedico])
GO
ALTER TABLE [dbo].[Urgencia] CHECK CONSTRAINT [FK_Urgencia_Medico]
GO
ALTER TABLE [dbo].[Urgencia]  WITH CHECK ADD  CONSTRAINT [FK_Urgencia_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[Urgencia] CHECK CONSTRAINT [FK_Urgencia_Paciente]
GO
ALTER TABLE [dbo].[Urgencia]  WITH CHECK ADD  CONSTRAINT [FK_Urgencia_Triage] FOREIGN KEY([IdTriage])
REFERENCES [dbo].[Triage] ([IdTriage])
GO
ALTER TABLE [dbo].[Urgencia] CHECK CONSTRAINT [FK_Urgencia_Triage]
GO
USE [master]
GO
ALTER DATABASE [dbProyectoHM22] SET  READ_WRITE 
GO
