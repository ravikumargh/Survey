USE [SurveyNew]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[Priorities]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[Departments]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[ClientTypes]    Script Date: 11/13/2015 00:50:44 ******/
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
INSERT [dbo].[ClientTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (1, N'C1', 0, CAST(0x0000A54D00126068 AS DateTime), CAST(0x0000A54D00126068 AS DateTime))
INSERT [dbo].[ClientTypes] ([Id], [Name], [IsDeleted], [DateCreated], [DateUpdated]) VALUES (2, N'C2', 0, CAST(0x0000A54D001268B9 AS DateTime), CAST(0x0000A54D001268B9 AS DateTime))
/****** Object:  Table [dbo].[Clients]    Script Date: 11/13/2015 00:50:44 ******/
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
SET IDENTITY_INSERT [dbo].[Clients] OFF
/****** Object:  Table [dbo].[SurveyTypes]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[StatusReasons]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[Status]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/13/2015 00:50:44 ******/
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
/****** Object:  Table [dbo].[ServiceTickets]    Script Date: 11/13/2015 00:50:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTickets](
	[Id] [bigint] NOT NULL,
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
	[SurveyorId] [bigint] NULL,
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
/****** Object:  Default [DF_Clients_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Clients_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Clients_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_ClientTypes_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_ClientTypes_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_ClientTypes_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ClientTypes] ADD  CONSTRAINT [DF_ClientTypes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Departments_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Departments_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Departments_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Priorities_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Priorities] ADD  CONSTRAINT [DF_Priorities_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Priorities_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Priorities] ADD  CONSTRAINT [DF_Priorities_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Priorities_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Priorities] ADD  CONSTRAINT [DF_Priorities_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Roles_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Roles_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Roles_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Table_1_DateCreated1]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_Table_1_DateCreated1]  DEFAULT (getdate()) FOR [TicketCreatedDate]
GO
/****** Object:  Default [DF_ServiceTickets_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_ServiceTickets_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_ServiceTickets_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_ServiceTickets_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_ServiceTickets_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets] ADD  CONSTRAINT [DF_ServiceTickets_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Status_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Status_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Status_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_StatusReasons_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_StatusReasons_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_StatusReasons_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[StatusReasons] ADD  CONSTRAINT [DF_StatusReasons_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_SurveyTypes_IsDeleted]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_SurveyTypes_DateCreated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_SurveyTypes_DateUpdated]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[SurveyTypes] ADD  CONSTRAINT [DF_SurveyTypes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF_Users_PhoneNumberConfirmed]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_PhoneNumberConfirmed]  DEFAULT ((0)) FOR [PhoneNumberConfirmed]
GO
/****** Object:  Default [DF_Users_IsLocked]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  Default [DF_Users_IsDeleted_1]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Users_CreatedDate_1]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedDate_1]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Users_ModifiedDate_1]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ModifiedDate_1]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Clients]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Clients]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Departments]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Departments]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Priorities]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Priorities] FOREIGN KEY([PriorityId])
REFERENCES [dbo].[Priorities] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Priorities]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_Status]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_Status]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_StatusReasons]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_StatusReasons] FOREIGN KEY([StatusReasonId])
REFERENCES [dbo].[StatusReasons] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_StatusReasons]
GO
/****** Object:  ForeignKey [FK_ServiceTickets_SurveyTypes]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[ServiceTickets]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTickets_SurveyTypes] FOREIGN KEY([SurveyTypeId])
REFERENCES [dbo].[SurveyTypes] ([Id])
GO
ALTER TABLE [dbo].[ServiceTickets] CHECK CONSTRAINT [FK_ServiceTickets_SurveyTypes]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 11/13/2015 00:50:44 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
