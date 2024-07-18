
CREATE DATABASE ASSIGNMENT_VANH_PRJ301
go
USE ASSIGNMENT_VANH_PRJ301
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](250) NULL,
	[role_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nchar](10) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[semester_id] [int] IDENTITY(1,1) NOT NULL,
	[semester_name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[semester_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[student_name] [nvarchar](250) NULL,
	[student_roll_number] [nvarchar](250) NULL,
	[role_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [nvarchar](250) NULL,
	[pt1] [float] NULL,
	[pt2] [float] NULL,
	[ws1] [float] NULL,
	[ws2] [float] NULL,
	[pp] [float] NULL,
	[mt] [float] NULL,
	[assignment] [float] NULL,
	[assignment_1] [float] NULL,
	[assignment_2] [float] NULL,
	[cp] [float] NULL,
	[pe] [float] NULL,
	[fe] [float] NULL,
	[te] [float] NULL,
	[student_id] [int] NULL,
	[class_id] [int] NULL,
	[semester_id] [int] NULL,
	[status] [nvarchar](250) NULL,
	[teacher_id] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_name] [nvarchar](150) NULL,
	[role_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_account]    Script Date: 7/13/2024 11:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_account](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NULL,
	[password] [nvarchar](150) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_user_account] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([admin_id], [admin_name], [role_id], [user_id]) VALUES (1, N'admin', 1, 1)
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[class] ON 

INSERT [dbo].[class] ([class_id], [class_name]) VALUES (1, N'SE1872')
INSERT [dbo].[class] ([class_id], [class_name]) VALUES (2, N'SE1868')
INSERT [dbo].[class] ([class_id], [class_name]) VALUES (3, N'SE1865')
SET IDENTITY_INSERT [dbo].[class] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [role_name]) VALUES (1, N'admin')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (2, N'teacher')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (3, N'student')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([semester_id], [semester_name]) VALUES (1, N'Spring 2024')
INSERT [dbo].[Semester] ([semester_id], [semester_name]) VALUES (2, N'Summer 2024')
INSERT [dbo].[Semester] ([semester_id], [semester_name]) VALUES (3, N'Fall 2024')
SET IDENTITY_INSERT [dbo].[Semester] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([student_id], [student_name], [student_roll_number], [role_id], [user_id]) VALUES (1, N'Đỗ Việt Anh', N'HE173475', 3, 6)
INSERT [dbo].[Student] ([student_id], [student_name], [student_roll_number], [role_id], [user_id]) VALUES (2, N'Nguyễn Văn A', N'HE123', 3, 7)
INSERT [dbo].[Student] ([student_id], [student_name], [student_roll_number], [role_id], [user_id]) VALUES (3, N'Nguyễn Văn B', N'HE888', 3, 8)
INSERT [dbo].[Student] ([student_id], [student_name], [student_roll_number], [role_id], [user_id]) VALUES (4, N'Mra', N'HE345', 3, 9)
INSERT [dbo].[Student] ([student_id], [student_name], [student_roll_number], [role_id], [user_id]) VALUES (5, N'Mrb', N'HE456', 3, 10)
INSERT [dbo].[Student] ([student_id], [student_name], [student_roll_number], [role_id], [user_id]) VALUES (6, N'Mrc', N'HE999', 3, 11)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (1, N'MAS291', 1, 9, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, NULL, 10, NULL, 1, 1, 2, N'active', 3)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (2, N'MAS291', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, NULL, 10, NULL, 4, 1, 2, N'active', 3)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (3, N'MAS291', 1, 5, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, NULL, 10, NULL, 5, 1, 2, N'active', 3)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (4, N'MAS291', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, NULL, 10, NULL, 6, 1, 2, N'active', 3)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (5, N'MAS291', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, NULL, 10, NULL, 2, 3, 2, N'active', 3)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (6, N'MAS291', 9, 8, NULL, NULL, NULL, NULL, NULL, 10, 9, 8, NULL, 10, NULL, 3, 3, 1, N'active', 3)




INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (7, N'PRJ301', 1, 3, 3, 3, NULL, NULL, 3, NULL, NULL, NULL, 3, 3, NULL, 1, 1, 2, N'active', 1)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (8, N'PRJ301', 1, 3, 3, 3, NULL, NULL, 3, NULL, NULL, NULL, 3, 3, NULL, 2, 1, 2, N'active', 1)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (9, N'PRJ301', 1, 3, 3, 3, NULL, NULL, 3, NULL, NULL, NULL, 3, 3, NULL, 3, 2, 2, N'active', 1)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (10, N'PRJ301', 1, 3, 3, 3, NULL, NULL, 3, NULL, NULL, NULL, 3, 3, NULL, 4, 2, 2, N'active', 1)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (11, N'PRJ301', 1, 3, 3, 3, NULL, NULL, 3, NULL, NULL, NULL, 3, 3, NULL, 5, 3, 2, N'active', 2)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (12, N'PRJ301', 1, 3, 3, 3, NULL, NULL, 3, NULL, NULL, NULL, 3, 3, NULL, 6, 3, 2, N'active', 2)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (13, N'JPD123', 8, 8, NULL, NULL, 9, 5, NULL, NULL, NULL, NULL, NULL, 8, NULL, 1, 1, 1, N'active', 4)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (14, N'JPD123', 4, 4, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, 2, 1, 2, N'active', 4)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (15, N'JPD123', 4, 4, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, 3, 1, 2, N'active', 4)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (16, N'JPD123', 4, 4, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, 4, 2, 2, N'active', 4)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (17, N'JPD123', 4, 4, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, 5, 2, 2, N'active', 4)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (18, N'JPD123', 4, 4, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, 6, 3, 2, N'active', 4)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (19, N'CSD201', 3, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, 1, NULL, 1, 3, 1, N'active', 1)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (20, N'CSD201', 3, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, 1, NULL, 2, 1, 2, N'active', 2)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (21, N'CSD201', 3, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, 1, NULL, 3, 1, 2, N'active', 2)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (22, N'CSD201', 3, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, 1, NULL, 4, 2, 2, N'active', 2)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (23, N'CSD201', 3, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, 1, NULL, 5, 2, 2, N'active', 2)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (24, N'CSD201', 3, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1, 1, NULL, 6, 2, 2, N'active', 2)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (25, N'WED201c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 5, 4, 3, 2, N'active', 1)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (26, N'WED201c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 5, 5, 3, 2, N'active', 1)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (27, N'WED201c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 5, 6, 2, 2, N'active', 1)

INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (28, N'WED201c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 8, 1, 1, 1, N'active', 2)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (29, N'WED201c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 5, 2, 1, 1, N'active', 2)
INSERT [dbo].[Subject] ([subject_id], [subject_name], [pt1], [pt2], [ws1], [ws2], [pp], [mt], [assignment], [assignment_1], [assignment_2], [cp], [pe], [fe], [te], [student_id], [class_id], [semester_id], [status], [teacher_id]) VALUES (30, N'WED201c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 5, 3, 2, 1, N'active', 2)


SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([teacher_id], [teacher_name], [role_id], [user_id]) VALUES (1, N'Ngô Tùng Sơn', 2, 2)
INSERT [dbo].[teacher] ([teacher_id], [teacher_name], [role_id], [user_id]) VALUES (2, N'Hoàng Xuân Sơn', 2, 3)
INSERT [dbo].[teacher] ([teacher_id], [teacher_name], [role_id], [user_id]) VALUES (3, N'Dương Thị Việt An', 2, 4)
INSERT [dbo].[teacher] ([teacher_id], [teacher_name], [role_id], [user_id]) VALUES (4, N'Nguyễn Hoàng Anh', 2, 5)


SET IDENTITY_INSERT [dbo].[teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[user_account] ON 

INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (1, N'admin', N'123', 1)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (2, N'sonnt', N'123', 2)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (3, N'sonhx', N'123', 2)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (4, N'andtv', N'123', 2)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (5, N'anhnh', N'123', 2)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (6, N'he173475', N'123', 3)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (7, N'he123', N'123', 3)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (8, N'he888', N'123', 3)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (9, N'he345', N'123', 3)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (10, N'he456', N'123', 3)
INSERT [dbo].[user_account] ([user_id], [username], [password], [role_id]) VALUES (11, N'he999', N'123', 3)


SET IDENTITY_INSERT [dbo].[user_account] OFF
GO
ALTER TABLE [dbo].[admin]  WITH CHECK ADD  CONSTRAINT [FK_admin_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[admin] CHECK CONSTRAINT [FK_admin_role]
GO
ALTER TABLE [dbo].[admin]  WITH CHECK ADD  CONSTRAINT [FK_admin_user_account] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[admin] CHECK CONSTRAINT [FK_admin_user_account]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_role]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_user_account] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_user_account]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_class] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([class_id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_class]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Semester] FOREIGN KEY([semester_id])
REFERENCES [dbo].[Semester] ([semester_id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Semester]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Student] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Student]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_teacher] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[teacher] ([teacher_id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_teacher]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD  CONSTRAINT [FK_teacher_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[teacher] CHECK CONSTRAINT [FK_teacher_role]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD  CONSTRAINT [FK_teacher_user_account] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[teacher] CHECK CONSTRAINT [FK_teacher_user_account]
GO
ALTER TABLE [dbo].[user_account]  WITH CHECK ADD  CONSTRAINT [FK_user_account_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[user_account] CHECK CONSTRAINT [FK_user_account_role]
GO
USE [master]
GO
ALTER DATABASE [ASSIGNMENT_VANH_PRJ301] SET  READ_WRITE 
GO


SELECT *
               FROM dbo.Subject
                WHERE subject_name = 'PRJ301' AND student_id = 1 AND class_id = 1 AND semester_id = 2
