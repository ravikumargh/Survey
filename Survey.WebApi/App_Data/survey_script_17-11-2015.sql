USE [SurveyNew]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/17/2015 00:36:57 ******/
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
INSERT [dbo].[Roles] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'Admin', NULL, NULL, NULL)
INSERT [dbo].[Roles] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'User', NULL, NULL, NULL)
/****** Object:  Table [dbo].[Priorities]    Script Date: 11/17/2015 00:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priorities](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Priorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Priorities] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'Standard', 0, CAST(0x0000A54F00090C0B AS DateTime), CAST(0x0000A54F00090C0B AS DateTime))
INSERT [dbo].[Priorities] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'High', 0, CAST(0x0000A54F0009147F AS DateTime), CAST(0x0000A54F0009147F AS DateTime))
INSERT [dbo].[Priorities] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'Urgent', 0, CAST(0x0000A54F00091E07 AS DateTime), CAST(0x0000A54F00091E07 AS DateTime))
INSERT [dbo].[Priorities] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (4, N'Critical', 0, CAST(0x0000A54F000928E1 AS DateTime), CAST(0x0000A54F000928E1 AS DateTime))
/****** Object:  Table [dbo].[Departments]    Script Date: 11/17/2015 00:36:56 ******/
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
INSERT [dbo].[Departments] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'Department 1', 0, CAST(0x0000A55000DE9346 AS DateTime), CAST(0x0000A55000DE9346 AS DateTime))
INSERT [dbo].[Departments] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'Department 2', 0, CAST(0x0000A55000DE98B8 AS DateTime), CAST(0x0000A55000DE98B8 AS DateTime))
INSERT [dbo].[Departments] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'Department 3', 0, CAST(0x0000A55000DE9F02 AS DateTime), CAST(0x0000A55000DE9F02 AS DateTime))
/****** Object:  Table [dbo].[ClientTypes]    Script Date: 11/17/2015 00:36:56 ******/
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
INSERT [dbo].[ClientTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'Bank', 0, CAST(0x0000A54D00126068 AS DateTime), CAST(0x0000A54D00126068 AS DateTime))
INSERT [dbo].[ClientTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'Single', 0, CAST(0x0000A54D001268B9 AS DateTime), CAST(0x0000A54D001268B9 AS DateTime))
/****** Object:  Table [dbo].[Clients]    Script Date: 11/17/2015 00:36:56 ******/
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
SET IDENTITY_INSERT [dbo].[Clients] ON
INSERT [dbo].[Clients] ([Id], [Name], [Code], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (7, N'Client 1', N'C1', NULL, CAST(0x0000A54C0009EEC5 AS DateTime), CAST(0x0000A54C0009EEC5 AS DateTime))
INSERT [dbo].[Clients] ([Id], [Name], [Code], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (10, N'Client 1', N'C1', NULL, CAST(0x0000A54C000E9A76 AS DateTime), CAST(0x0000A54C000E9A76 AS DateTime))
INSERT [dbo].[Clients] ([Id], [Name], [Code], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (13, N'aaaasss', N'sss', NULL, CAST(0x0000A54C00129AAA AS DateTime), CAST(0x0000A54C00129AAA AS DateTime))
INSERT [dbo].[Clients] ([Id], [Name], [Code], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (14, N'AAA1', N'AA', NULL, CAST(0x0000A5500185669A AS DateTime), CAST(0x0000A5500185669A AS DateTime))
INSERT [dbo].[Clients] ([Id], [Name], [Code], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (15, N'BB', N'BB', NULL, CAST(0x0000A55201894450 AS DateTime), CAST(0x0000A55201894450 AS DateTime))
SET IDENTITY_INSERT [dbo].[Clients] OFF
/****** Object:  Table [dbo].[Teams]    Script Date: 11/17/2015 00:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[TeamLeadId] [bigint] NULL,
	[ManagerId] [bigint] NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Teams] ON
INSERT [dbo].[Teams] ([Id], [Name], [TeamLeadId], [ManagerId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'Team 1', 0, 0, NULL, CAST(0x0000A55200CDFF8A AS DateTime), CAST(0x0000A55200CDFF8A AS DateTime))
INSERT [dbo].[Teams] ([Id], [Name], [TeamLeadId], [ManagerId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'Team-2', 0, 0, NULL, CAST(0x0000A55201892674 AS DateTime), CAST(0x0000A55201892674 AS DateTime))
SET IDENTITY_INSERT [dbo].[Teams] OFF
/****** Object:  Table [dbo].[SurveyTypes]    Script Date: 11/17/2015 00:36:57 ******/
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
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'Auto', 0, CAST(0x0000A54D00127B2C AS DateTime), CAST(0x0000A54D00127B2C AS DateTime))
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'CPV/AVR', 0, CAST(0x0000A54D001280E2 AS DateTime), CAST(0x0000A54D001280E2 AS DateTime))
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'CPV-PF', 0, CAST(0x0000A54F0001E0B2 AS DateTime), CAST(0x0000A54F0001E0B2 AS DateTime))
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (4, N'Credit card', 0, CAST(0x0000A54F0001F05F AS DateTime), CAST(0x0000A54F0001F05F AS DateTime))
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (5, N'Heavy Equipment ', 0, CAST(0x0000A54F00097806 AS DateTime), CAST(0x0000A54F00097806 AS DateTime))
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (6, N'Mandoob-ILC-Buyer-Trade ', 0, CAST(0x0000A54F000989D9 AS DateTime), CAST(0x0000A54F000989D9 AS DateTime))
INSERT [dbo].[SurveyTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (7, N'Mandoob-WTO-Seller-Wholesale', 0, CAST(0x0000A54F000996F8 AS DateTime), CAST(0x0000A54F000996F8 AS DateTime))
/****** Object:  Table [dbo].[StatusReasons]    Script Date: 11/17/2015 00:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusReasons](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[StatusReasons] ON
INSERT [dbo].[StatusReasons] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'A', NULL, CAST(0x0000A54D00059024 AS DateTime), CAST(0x0000A54D00059024 AS DateTime))
INSERT [dbo].[StatusReasons] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'B', NULL, CAST(0x0000A54D0007DD5F AS DateTime), CAST(0x0000A54D0007DD5F AS DateTime))
INSERT [dbo].[StatusReasons] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (4, N'C', NULL, CAST(0x0000A54D0007F88C AS DateTime), CAST(0x0000A54D0007F88C AS DateTime))
SET IDENTITY_INSERT [dbo].[StatusReasons] OFF
/****** Object:  Table [dbo].[Status]    Script Date: 11/17/2015 00:36:57 ******/
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
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'New', 0, CAST(0x0000A54B017CEACD AS DateTime), CAST(0x0000A54B017CEACD AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'Open', 0, CAST(0x0000A54B017CF17B AS DateTime), CAST(0x0000A54B017CF17B AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'Submitted', 0, CAST(0x0000A54B017D07C2 AS DateTime), CAST(0x0000A54B017D07C2 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (4, N'Verified', 0, CAST(0x0000A54B017D0FD5 AS DateTime), CAST(0x0000A54B017D0FD5 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (5, N'Cancelled', 0, CAST(0x0000A54F000A0816 AS DateTime), CAST(0x0000A54F000A0816 AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (6, N'On-Hold', 0, CAST(0x0000A54F000A1AFF AS DateTime), CAST(0x0000A54F000A1AFF AS DateTime))
INSERT [dbo].[Status] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (7, N's1', 0, CAST(0x0000A55000E4090D AS DateTime), CAST(0x0000A55000E4090D AS DateTime))
/****** Object:  Table [dbo].[Users]    Script Date: 11/17/2015 00:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
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
	[TeamId] [bigint] NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [Email], [EmailConfirmed], [UserName], [Password], [PhoneNumber], [PhoneNumberConfirmed], [Name], [Address], [IsLocked], [AccessFailedCount], [RoleId], [TeamId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'ravikumargh13@gmail.com', 1, N'ravikumargh13@gmail.com', N'P@ssword1', N'9986756756', 0, N'Ravikumar', N'123', 0, 0, 1, NULL, 0, CAST(0x0000A55000DDD671 AS DateTime), CAST(0x0000A55000DDD671 AS DateTime))
INSERT [dbo].[Users] ([Id], [Email], [EmailConfirmed], [UserName], [Password], [PhoneNumber], [PhoneNumberConfirmed], [Name], [Address], [IsLocked], [AccessFailedCount], [RoleId], [TeamId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'ravi@a.com', 0, N'ravi@aaa.com', N'P@ssword1', N'9987456321', 0, N'ravi aa', N'adsf aaa', 0, 0, 2, NULL, NULL, CAST(0x0000A5510005A141 AS DateTime), CAST(0x0000A5510005A141 AS DateTime))
INSERT [dbo].[Users] ([Id], [Email], [EmailConfirmed], [UserName], [Password], [PhoneNumber], [PhoneNumberConfirmed], [Name], [Address], [IsLocked], [AccessFailedCount], [RoleId], [TeamId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (4, N'', 0, N'', N'P@ssword1', N'', 0, N'', N'', 0, 0, 1, NULL, NULL, CAST(0x0000A55100DBE3C7 AS DateTime), CAST(0x0000A55100DBE3C7 AS DateTime))
INSERT [dbo].[Users] ([Id], [Email], [EmailConfirmed], [UserName], [Password], [PhoneNumber], [PhoneNumberConfirmed], [Name], [Address], [IsLocked], [AccessFailedCount], [RoleId], [TeamId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (5, N'user1@a.com', 0, N'user1@a.com', N'P@ssword1', N'2342132132', 0, N'user 1', N'asdfsf', 0, 0, 2, NULL, NULL, CAST(0x0000A55100DC564F AS DateTime), CAST(0x0000A55100DC564F AS DateTime))
INSERT [dbo].[Users] ([Id], [Email], [EmailConfirmed], [UserName], [Password], [PhoneNumber], [PhoneNumberConfirmed], [Name], [Address], [IsLocked], [AccessFailedCount], [RoleId], [TeamId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (6, N'user2@a.com', 0, N'user2@a.com', N'P@ssword1', N'1234', 0, N'user 2', N'dasdasda', 0, 0, 2, NULL, NULL, CAST(0x0000A55100DCC590 AS DateTime), CAST(0x0000A55100DCC590 AS DateTime))
INSERT [dbo].[Users] ([Id], [Email], [EmailConfirmed], [UserName], [Password], [PhoneNumber], [PhoneNumberConfirmed], [Name], [Address], [IsLocked], [AccessFailedCount], [RoleId], [TeamId], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (7, N'user@a.com', 0, N'user@a.com', N'P@ssword1', N'1212', 0, N'User 1', N'aasdsds', 0, 0, 2, 2, NULL, CAST(0x0000A55200D465F5 AS DateTime), CAST(0x0000A55200D465F5 AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[ServiceTickets]    Script Date: 11/17/2015 00:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTickets](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ReferenceNumber] [nvarchar](50) NULL,
	[StatusId] [bigint] NULL,
	[ClientId] [bigint] NULL,
	[DepartmentId] [bigint] NULL,
	[SurveyTypeId] [bigint] NULL,
	[StatusReasonId] [bigint] NULL,
	[PriorityId] [bigint] NULL,
	[DueDate] [datetime] NULL,
	[TicketCreatedDate] [datetime] NULL,
	[TicketSubmissionDate] [datetime] NULL,
	[UserId] [bigint] NULL,
	[CustomerAvailableFrom] [datetime] NULL,
	[CustomerAvailableTo] [datetime] NULL,
	[CompanyName] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Address1] [nvarchar](250) NULL,
	[Address2] [nvarchar](250) NULL,
	[IsDeleted] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_ServiceTickets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ServiceTickets] ON
INSERT [dbo].[ServiceTickets] ([Id], [Name], [Description], [ReferenceNumber], [StatusId], [ClientId], [DepartmentId], [SurveyTypeId], [StatusReasonId], [PriorityId], [DueDate], [TicketCreatedDate], [TicketSubmissionDate], [UserId], [CustomerAvailableFrom], [CustomerAvailableTo], [CompanyName], [Phone], [Mobile], [Address1], [Address2], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'RAVI', N'desc 1', NULL, 1, 7, 1, 1, 2, 1, NULL, NULL, NULL, 3, CAST(0x0000A5520130DEE0 AS DateTime), CAST(0x0000A5540130DEE0 AS DateTime), N'COMPANY 1', N'2343423423', N'234234324', N'sdfasdfd', N'fsdafasdfsdf', NULL, CAST(0x0000A55200040B07 AS DateTime), CAST(0x0000A55200040B07 AS DateTime))
INSERT [dbo].[ServiceTickets] ([Id], [Name], [Description], [ReferenceNumber], [StatusId], [ClientId], [DepartmentId], [SurveyTypeId], [StatusReasonId], [PriorityId], [DueDate], [TicketCreatedDate], [TicketSubmissionDate], [UserId], [CustomerAvailableFrom], [CustomerAvailableTo], [CompanyName], [Phone], [Mobile], [Address1], [Address2], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (3, N'Name 1', N'desc ssdfsdf', NULL, 1, 7, 1, 1, 3, 2, CAST(0x0000A5590130DEE0 AS DateTime), NULL, NULL, 3, CAST(0x0000A5530130DEE0 AS DateTime), CAST(0x0000A5560130DEE0 AS DateTime), N'company name 1', N'1233212322', N'1232123212', N'address 1111', N'address 222', NULL, CAST(0x0000A55200BDDC90 AS DateTime), CAST(0x0000A55200BDDC90 AS DateTime))
SET IDENTITY_INSERT [dbo].[ServiceTickets] OFF
/****** Object:  Default [DF_Clients_IsDeleted]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Clients_DateCreated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Clients_DateUpdated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_ClientTypes_IsDeleted]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_ClientTypes_DateCreated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_ClientTypes_DateUpdated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Departments_IsDeleted]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Departments_DateCreated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Departments_DateUpdated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Priorities_IsDeleted]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Priorities] ADD  CONSTRAINT [DF_Priorities_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Priorities_DateCreated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Priorities] ADD  CONSTRAINT [DF_Priorities_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Priorities_DateUpdated]    Script Date: 11/17/2015 00:36:56 ******/
ALTER TABLE [dbo].[Priorities] ADD  CONSTRAINT [DF_Priorities_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Roles_IsDeleted]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Roles_DateCreated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Roles_DateUpdated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Table_1_DateCreated1]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_Table_1_DateCreated1]  DEFAULT (getdate()) FOR [TicketCreatedDate]
GO
/****** Object:  Default [DF_ServiceTickets_IsDeleted]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_ServiceTickets_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_ServiceTickets_DateCreated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_ServiceTickets_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_ServiceTickets_DateUpdated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_ServiceTickets_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Status_IsDeleted]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Status_DateCreated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Status_DateUpdated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_StatusReasons_IsDeleted]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_StatusReasons_DateCreated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_StatusReasons_DateUpdated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_SurveyTypes_IsDeleted]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_SurveyTypes_DateCreated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_SurveyTypes_DateUpdated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Team_IsDeleted]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [DF_Team_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Team_DateCreated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [DF_Team_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Team_DateUpdated]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [DF_Team_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Users_PhoneNumberConfirmed]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_PhoneNumberConfirmed]  DEFAULT ((0)) FOR [PhoneNumberConfirmed]
GO
/****** Object:  Default [DF_Users_IsLocked]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  Default [DF_Users_IsDeleted_1]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Users_CreatedDate_1]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedDate_1]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Users_ModifiedDate_1]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ModifiedDate_1]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Clients]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Clients]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Departments]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Departments]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Priorities]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Priorities] FOREIGN KEY([PriorityId])
REFERENCES [dbo].[Priorities] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Priorities]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Status]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Status]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_StatusReasons]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_StatusReasons] FOREIGN KEY([StatusReasonId])
REFERENCES [dbo].[StatusReasons] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_StatusReasons]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_SurveyTypes]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_SurveyTypes] FOREIGN KEY([SurveyTypeId])
REFERENCES [dbo].[SurveyTypes] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_SurveyTypes]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Users]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Users]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  ForeignKey [FK_Users_Teams]    Script Date: 11/17/2015 00:36:57 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Teams]
GO
