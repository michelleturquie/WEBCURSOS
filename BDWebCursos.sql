CREATE DATABASE [BDWebCursos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDWebCursos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDWebCursos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDWebCursos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDWebCursos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
USE [BDWebCursos]
CREATE TABLE [dbo].[Cursos](
	[IdCurso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[Imagen] [varchar](200) NULL,
	[UrlCurso] [varchar](250) NULL,
	[MeGusta] [int] NULL,
	[NoMeGusta] [int] NULL,
	[IdEspecialidad] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 11/10/2021 11:31:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Materia] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 

INSERT [dbo].[Cursos] ([IdCurso], [Nombre], [Descripcion], [Imagen], [UrlCurso], [MeGusta], [NoMeGusta], [IdEspecialidad]) VALUES (1, N'Curso de PHP para principiantes', N'El curso inicia con los fundamentos de PHP, en los cuales aprenderás y dominaras todas las estructuras del lenguaje de programación tales como variables, ciclos, condicionales, arreglos, funciones y programación orientada a objetos.', N'https://www.solucionex.com/sites/default/files/posts/imagen/php.jpg', N'<iframe width="560" height="315" src="https://www.youtube.com/embed/mX0z6wSWJtA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 10, 8, 1)
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
SET IDENTITY_INSERT [dbo].[Especialidades] ON 

INSERT [dbo].[Especialidades] ([IdEspecialidad], [Nombre], [Materia]) VALUES (1, N'Lenguajes', N'Programacion')
INSERT [dbo].[Especialidades] ([IdEspecialidad], [Nombre], [Materia]) VALUES (2, N'Programas Diseño', N'Imagen y Comunicacion')
INSERT [dbo].[Especialidades] ([IdEspecialidad], [Nombre], [Materia]) VALUES (3, N'Metodologías', N'Efsi')
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
GO
USE [BDWebCursos]
GO
ALTER DATABASE [BDWebCursos] SET  READ_WRITE 
GO
