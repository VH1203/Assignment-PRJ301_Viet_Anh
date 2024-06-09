USE [PRJ_TEST]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[did] [int] NOT NULL,
	[dname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[ename] [varchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[did] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[features](
	[featureid] [int] NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_features] PRIMARY KEY CLUSTERED 
(
	[featureid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 6/5/2024 5:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[roleid] [int] NOT NULL,
	[rolename] [varchar](150) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_features](
	[roleid] [int] NOT NULL,
	[featureid] [int] NOT NULL,
 CONSTRAINT [PK_roles_features] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC,
	[featureid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_roles](
	[username] [varchar](150) NOT NULL,
	[roleid] [int] NOT NULL,
 CONSTRAINT [PK_users_roles] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--INSERT [dbo].[Department] ([did], [dname]) VALUES (1, N'Information System')
--INSERT [dbo].[Department] ([did], [dname]) VALUES (2, N'Software Engineering')
--INSERT [dbo].[Department] ([did], [dname]) VALUES (3, N'Information Assurance')
--INSERT [dbo].[Department] ([did], [dname]) VALUES (4, N'Artificial Intelligent')
--INSERT [dbo].[Department] ([did], [dname]) VALUES (5, N'Internet of Things')
--GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [did]) VALUES (1, N'Nguyen Viet Giang - XXX', 0, CAST(N'2003-06-04' AS Date), 4)
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [did]) VALUES (2, N'Pham Quynh Dung', 0, CAST(N'2003-10-10' AS Date), 2)
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [did]) VALUES (3, N'Dinh Quang Huy', 1, CAST(N'2004-06-09' AS Date), 2)
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [did]) VALUES (4, N'Mr A', 1, CAST(N'2000-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[features] ([featureid], [url]) VALUES (1, N'/emp/list')
INSERT [dbo].[features] ([featureid], [url]) VALUES (2, N'/emp/detail')
INSERT [dbo].[features] ([featureid], [url]) VALUES (3, N'/emp/create')
INSERT [dbo].[features] ([featureid], [url]) VALUES (4, N'/emp/update')
INSERT [dbo].[features] ([featureid], [url]) VALUES (5, N'/emp/remove')
GO
INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (1, N'admin')
INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (2, N'reader')
INSERT [dbo].[roles] ([roleid], [rolename]) VALUES (3, N'editor')
GO
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (1, 1)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (1, 2)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (1, 3)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (1, 4)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (1, 5)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (2, 1)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (2, 2)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (3, 3)
INSERT [dbo].[roles_features] ([roleid], [featureid]) VALUES (3, 4)
GO
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'mra', N'123', N'Mr A')
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'mrb', N'123', N'mr B')
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'mrc', N'123', N'mrc')
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'sonnt', N'123', N'Superman')
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'vietanh', N'123', N'Nhoc Shock, boy xike, Phuc Boy')
GO
INSERT [dbo].[users_roles] ([username], [roleid]) VALUES (N'mra', 2)
INSERT [dbo].[users_roles] ([username], [roleid]) VALUES (N'mra', 3)
INSERT [dbo].[users_roles] ([username], [roleid]) VALUES (N'mrb', 3)
INSERT [dbo].[users_roles] ([username], [roleid]) VALUES (N'sonnt', 1)
INSERT [dbo].[users_roles] ([username], [roleid]) VALUES (N'vietanh', 2)
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([did])
REFERENCES [dbo].[Department] ([did])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[roles_features]  WITH CHECK ADD  CONSTRAINT [FK_roles_features_features] FOREIGN KEY([featureid])
REFERENCES [dbo].[features] ([featureid])
GO
ALTER TABLE [dbo].[roles_features] CHECK CONSTRAINT [FK_roles_features_features]
GO
ALTER TABLE [dbo].[roles_features]  WITH CHECK ADD  CONSTRAINT [FK_roles_features_roles] FOREIGN KEY([roleid])
REFERENCES [dbo].[roles] ([roleid])
GO
ALTER TABLE [dbo].[roles_features] CHECK CONSTRAINT [FK_roles_features_roles]
GO
ALTER TABLE [dbo].[users_roles]  WITH CHECK ADD  CONSTRAINT [FK_users_roles_roles] FOREIGN KEY([roleid])
REFERENCES [dbo].[roles] ([roleid])
GO
ALTER TABLE [dbo].[users_roles] CHECK CONSTRAINT [FK_users_roles_roles]
GO
ALTER TABLE [dbo].[users_roles]  WITH CHECK ADD  CONSTRAINT [FK_users_roles_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[users_roles] CHECK CONSTRAINT [FK_users_roles_users]
GO
