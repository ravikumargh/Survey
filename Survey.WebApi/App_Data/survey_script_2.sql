USE [master]
GO
/****** Object:  Database [SurveyNew]    Script Date: 11/09/2015 00:16:17 ******/
CREATE DATABASE [SurveyNew] ON  PRIMARY 
( NAME = N'SurveyNew', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SurveyNew.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SurveyNew_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SurveyNew_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SurveyNew] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SurveyNew].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SurveyNew] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SurveyNew] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SurveyNew] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SurveyNew] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SurveyNew] SET ARITHABORT OFF
GO
ALTER DATABASE [SurveyNew] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SurveyNew] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SurveyNew] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SurveyNew] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SurveyNew] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SurveyNew] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SurveyNew] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SurveyNew] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SurveyNew] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SurveyNew] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SurveyNew] SET  DISABLE_BROKER
GO
ALTER DATABASE [SurveyNew] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SurveyNew] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SurveyNew] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SurveyNew] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SurveyNew] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SurveyNew] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SurveyNew] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SurveyNew] SET  READ_WRITE
GO
ALTER DATABASE [SurveyNew] SET RECOVERY FULL
GO
ALTER DATABASE [SurveyNew] SET  MULTI_USER
GO
ALTER DATABASE [SurveyNew] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SurveyNew] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SurveyNew', N'ON'
GO
USE [SurveyNew]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientTypes]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientTypes](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_ClientTypes_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Clients_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyTypes]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyTypes](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_SurveyTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusReasons]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusReasons](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_StatusReasons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/09/2015 00:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](500) NULL,
	[IsLocked] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[RoleId] [bigint] NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[RolesGetAll]    Script Date: 11/09/2015 00:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RolesGetAll] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Roles
END
GO
/****** Object:  Default [DF_Roles_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Roles_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Roles_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Departments_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Departments_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Departments_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_ClientTypes_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_ClientTypes_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_ClientTypes_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Clients_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Clients_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Clients_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_SurveyTypes_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_SurveyTypes_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_SurveyTypes_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_StatusReasons_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_StatusReasons_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_StatusReasons_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Status_IsDeleted]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Status_DateCreated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Status_DateUpdated]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Users_PhoneNumberConfirmed]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_PhoneNumberConfirmed]  DEFAULT ((0)) FOR [PhoneNumberConfirmed]
GO
/****** Object:  Default [DF_Users_IsLocked]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  Default [DF_Users_IsDeleted_1]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Users_CreatedDate_1]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedDate_1]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Users_ModifiedDate_1]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ModifiedDate_1]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 11/09/2015 00:16:19 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
