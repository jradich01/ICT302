USE [master]
GO
/****** Object:  Database [CurriculumMapperv5]    Script Date: 10/18/2018 12:51:08 PM ******/
CREATE DATABASE [CurriculumMapperv5]
GO
USE [CurriculumMapperv5]
GO
/****** Object:  Table [dbo].[AddedUnits]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddedUnits](
	[UnitID] [int] NOT NULL,
 CONSTRAINT [PK_AddedUnits] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](100) NOT NULL,
	[JobDesc] [nvarchar](500) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobSKA_Backup]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSKA_Backup](
	[SKAID] [int] NOT NULL,
	[JobID] [int] NOT NULL,
	[SKAImportance] [decimal](18, 2) NULL,
	[SKALevel] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobSKAs]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSKAs](
	[SKAID] [int] NOT NULL,
	[JobID] [int] NOT NULL,
	[SKAImportance] [decimal](18, 2) NULL,
	[SKALevel] [decimal](18, 2) NULL,
 CONSTRAINT [PK_JobSKAs] PRIMARY KEY CLUSTERED 
(
	[SKAID] ASC,
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LearningOutcome]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearningOutcome](
	[LOID] [int] IDENTITY(1,1) NOT NULL,
	[UnitID] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[FullDescription] [nvarchar](1000) NULL,
 CONSTRAINT [PK_LearningOutcome] PRIMARY KEY CLUSTERED 
(
	[LOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ListofUnits]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListofUnits](
	[UnitID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_ListofUnits] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OutcomeSKAs]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutcomeSKAs](
	[LOID] [int] NOT NULL,
	[SKAID] [int] NOT NULL,
 CONSTRAINT [PK_OutcomeSkills] PRIMARY KEY CLUSTERED 
(
	[LOID] ASC,
	[SKAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SKA]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKA](
	[SKAID] [int] IDENTITY(1,1) NOT NULL,
	[SKAName] [nvarchar](100) NOT NULL,
	[SKATypeID] [int] NOT NULL,
 CONSTRAINT [PK_SKA] PRIMARY KEY CLUSTERED 
(
	[SKAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SKAType]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKAType](
	[SKATypeID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SKAType] PRIMARY KEY CLUSTERED 
(
	[SKATypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unit]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitCode] [nvarchar](100) NOT NULL,
	[UnitName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ZTemp]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZTemp](
	[outcomeId] [varchar](50) NULL,
	[outcomeDesc] [varchar](1000) NULL,
	[unitCode] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[AddedUnitsSKAList]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create view [dbo].[AddedUnitsSKAList] as 
	select distinct SKAName,st.Description as SKAType 
	from 
		unit u inner join 
		AddedUnits a on u.UnitID = a.UnitID inner join 
		LearningOutcome l on a.UnitID = l.UnitID inner join 
		OutcomeSKAs o on l.LOID = o.LOID inner join 
		SKA s on o.SKAID = s.SKAID inner join 
		SKAType st on s.SKATypeID = st.SKATypeID

GO
/****** Object:  View [dbo].[CourseSKAList]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[CourseSKAList] as 
select	distinct 
	c.CourseName,
	s.SKAName,
	st.Description as SKAType 
from 
	Course c inner join 
	ListofUnits l on c.CourseID = l.CourseID inner join 
	LearningOutcome lo on lo.UnitID = l.UnitID inner join 
	OutcomeSKAs os on os.LOID = lo.LOID inner join 
	SKA s on os.SKAID = s.SKAID inner join 
	SKAType st on st.SKATypeID = s.SKATypeID inner join 
	Unit u on l.UnitID = u.UnitID 

GO
/****** Object:  View [dbo].[JobSKAList]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[JobSKAList] as 
select j.JobName, s.SKAName, st.Description as SKAType
from 
	Job j inner join 
	JobSKAs js on j.JobID = js.JobID inner join 
	SKA s on js.SKAID = s.SKAID inner join 
	SKAType st on s.SKATypeID = st.SKATypeID

GO
SET IDENTITY_INSERT [dbo].[Course] ON 

GO
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (1, N'Computer Science')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (2, N'Cyber Security and forensics')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName]) VALUES (3, N'Internetworking and network security')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

GO
INSERT [dbo].[Job] ([JobID], [JobName], [JobDesc]) VALUES (1, N'Application Software Developer', NULL)
GO
INSERT [dbo].[Job] ([JobID], [JobName], [JobDesc]) VALUES (2, N'Database Administrator', NULL)
GO
INSERT [dbo].[Job] ([JobID], [JobName], [JobDesc]) VALUES (3, N'Information Security Analyst', NULL)
GO
INSERT [dbo].[Job] ([JobID], [JobName], [JobDesc]) VALUES (4, N'Network and Computer Systems Administrator', NULL)
GO
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (1, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (1, 2, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (1, 3, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (1, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (2, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (2, 2, CAST(2.12 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (2, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (2, 4, CAST(2.25 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 1, CAST(3.50 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 2, CAST(3.25 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 3, CAST(3.50 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 2, CAST(2.12 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 2, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 1, CAST(1.75 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 2, CAST(1.50 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 3, CAST(1.75 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 4, CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 1, CAST(1.12 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 2, CAST(1.25 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 3, CAST(1.38 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 4, CAST(1.25 AS Decimal(18, 2)), CAST(0.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 3, CAST(1.62 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 4, CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 1, CAST(2.25 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 2, CAST(2.62 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 3, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 1, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 4, CAST(2.12 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 2, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 1, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 2, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 3, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 4, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 4, CAST(2.50 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 1, CAST(3.38 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 2, CAST(2.50 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 3, CAST(2.25 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 2, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 4, CAST(1.75 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 1, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 2, CAST(3.62 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 3, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 4, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 3, CAST(2.25 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 1, CAST(3.25 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 2, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 4, CAST(3.50 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 1, CAST(3.62 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 2, CAST(3.38 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 3, CAST(3.75 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 1, CAST(3.25 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 2, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 4, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 4, CAST(2.00 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 4, CAST(2.00 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 2, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 3, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 4, CAST(1.75 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 3, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 2, CAST(3.25 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 4, CAST(3.38 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 1, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 3, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 3, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 1, CAST(1.50 AS Decimal(18, 2)), CAST(0.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 2, CAST(1.62 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 3, CAST(1.62 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 4, CAST(1.62 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 1, CAST(2.12 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 2, CAST(2.00 AS Decimal(18, 2)), CAST(2.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 3, CAST(2.12 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 1, CAST(2.62 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 3, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 1, CAST(1.38 AS Decimal(18, 2)), CAST(0.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 2, CAST(1.50 AS Decimal(18, 2)), CAST(0.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 3, CAST(1.38 AS Decimal(18, 2)), CAST(0.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 4, CAST(2.25 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 1, CAST(3.38 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 2, CAST(3.62 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 4, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 2, CAST(3.25 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 3, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (53, 1, CAST(2.53 AS Decimal(18, 2)), CAST(3.09 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (53, 2, CAST(2.95 AS Decimal(18, 2)), CAST(3.23 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (53, 3, CAST(3.68 AS Decimal(18, 2)), CAST(3.79 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (53, 4, CAST(2.97 AS Decimal(18, 2)), CAST(3.64 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (54, 1, CAST(1.02 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (54, 2, CAST(1.02 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (54, 3, CAST(1.04 AS Decimal(18, 2)), CAST(0.08 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (54, 4, CAST(1.13 AS Decimal(18, 2)), CAST(0.32 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (55, 1, CAST(1.08 AS Decimal(18, 2)), CAST(0.13 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (55, 2, CAST(1.32 AS Decimal(18, 2)), CAST(1.20 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (55, 3, CAST(1.34 AS Decimal(18, 2)), CAST(1.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (55, 4, CAST(1.65 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (56, 1, CAST(1.34 AS Decimal(18, 2)), CAST(0.54 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (56, 2, CAST(1.24 AS Decimal(18, 2)), CAST(0.46 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (56, 3, CAST(1.23 AS Decimal(18, 2)), CAST(0.56 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (56, 4, CAST(1.35 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (57, 1, CAST(1.39 AS Decimal(18, 2)), CAST(0.93 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (57, 2, CAST(2.99 AS Decimal(18, 2)), CAST(3.51 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (57, 3, CAST(2.69 AS Decimal(18, 2)), CAST(3.13 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (57, 4, CAST(3.13 AS Decimal(18, 2)), CAST(3.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (58, 1, CAST(2.14 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (58, 2, CAST(2.99 AS Decimal(18, 2)), CAST(3.21 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (58, 3, CAST(2.80 AS Decimal(18, 2)), CAST(2.61 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (58, 4, CAST(2.78 AS Decimal(18, 2)), CAST(2.63 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 1, CAST(4.96 AS Decimal(18, 2)), CAST(6.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 2, CAST(4.46 AS Decimal(18, 2)), CAST(5.17 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 3, CAST(4.35 AS Decimal(18, 2)), CAST(5.97 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 4, CAST(4.92 AS Decimal(18, 2)), CAST(6.74 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 1, CAST(3.04 AS Decimal(18, 2)), CAST(3.52 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 3, CAST(3.42 AS Decimal(18, 2)), CAST(4.14 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 4, CAST(3.63 AS Decimal(18, 2)), CAST(4.69 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 1, CAST(3.32 AS Decimal(18, 2)), CAST(4.22 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 2, CAST(2.31 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 3, CAST(2.40 AS Decimal(18, 2)), CAST(2.76 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 4, CAST(2.79 AS Decimal(18, 2)), CAST(3.46 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 1, CAST(1.38 AS Decimal(18, 2)), CAST(0.66 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 2, CAST(2.06 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 3, CAST(2.29 AS Decimal(18, 2)), CAST(2.17 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 4, CAST(2.07 AS Decimal(18, 2)), CAST(1.69 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 1, CAST(2.15 AS Decimal(18, 2)), CAST(2.79 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 2, CAST(2.93 AS Decimal(18, 2)), CAST(3.83 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 3, CAST(3.19 AS Decimal(18, 2)), CAST(4.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 4, CAST(2.82 AS Decimal(18, 2)), CAST(3.76 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 1, CAST(4.04 AS Decimal(18, 2)), CAST(5.22 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 2, CAST(2.58 AS Decimal(18, 2)), CAST(2.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 3, CAST(3.64 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 4, CAST(3.60 AS Decimal(18, 2)), CAST(4.53 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 1, CAST(3.77 AS Decimal(18, 2)), CAST(4.37 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 2, CAST(3.31 AS Decimal(18, 2)), CAST(3.27 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 3, CAST(4.26 AS Decimal(18, 2)), CAST(4.20 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 4, CAST(3.83 AS Decimal(18, 2)), CAST(3.90 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 1, CAST(1.01 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 3, CAST(1.02 AS Decimal(18, 2)), CAST(0.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 4, CAST(1.08 AS Decimal(18, 2)), CAST(0.16 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 1, CAST(1.01 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 2, CAST(1.04 AS Decimal(18, 2)), CAST(0.08 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 3, CAST(1.02 AS Decimal(18, 2)), CAST(0.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 4, CAST(1.21 AS Decimal(18, 2)), CAST(0.35 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 1, CAST(1.14 AS Decimal(18, 2)), CAST(0.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 2, CAST(1.17 AS Decimal(18, 2)), CAST(0.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 3, CAST(1.31 AS Decimal(18, 2)), CAST(0.67 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 4, CAST(1.53 AS Decimal(18, 2)), CAST(0.78 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 1, CAST(1.55 AS Decimal(18, 2)), CAST(1.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 2, CAST(1.79 AS Decimal(18, 2)), CAST(1.39 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 3, CAST(1.59 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 4, CAST(1.63 AS Decimal(18, 2)), CAST(1.42 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 1, CAST(1.03 AS Decimal(18, 2)), CAST(0.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 2, CAST(1.34 AS Decimal(18, 2)), CAST(0.47 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 3, CAST(1.13 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 4, CAST(1.20 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 1, CAST(1.62 AS Decimal(18, 2)), CAST(1.27 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 2, CAST(2.56 AS Decimal(18, 2)), CAST(2.22 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 3, CAST(2.70 AS Decimal(18, 2)), CAST(2.82 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 4, CAST(2.13 AS Decimal(18, 2)), CAST(2.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 1, CAST(3.60 AS Decimal(18, 2)), CAST(4.96 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.94 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 3, CAST(2.87 AS Decimal(18, 2)), CAST(3.53 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 4, CAST(3.19 AS Decimal(18, 2)), CAST(3.77 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 1, CAST(1.15 AS Decimal(18, 2)), CAST(0.27 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 2, CAST(1.85 AS Decimal(18, 2)), CAST(1.29 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 3, CAST(1.68 AS Decimal(18, 2)), CAST(1.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 4, CAST(2.34 AS Decimal(18, 2)), CAST(2.54 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 1, CAST(1.04 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 3, CAST(1.06 AS Decimal(18, 2)), CAST(0.08 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 4, CAST(1.33 AS Decimal(18, 2)), CAST(0.65 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 1, CAST(1.80 AS Decimal(18, 2)), CAST(1.81 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 2, CAST(1.93 AS Decimal(18, 2)), CAST(1.98 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 3, CAST(2.44 AS Decimal(18, 2)), CAST(3.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 4, CAST(2.19 AS Decimal(18, 2)), CAST(2.15 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 1, CAST(1.05 AS Decimal(18, 2)), CAST(0.13 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 2, CAST(2.14 AS Decimal(18, 2)), CAST(2.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 3, CAST(1.19 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 4, CAST(1.28 AS Decimal(18, 2)), CAST(0.77 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 1, CAST(1.51 AS Decimal(18, 2)), CAST(0.98 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 2, CAST(1.32 AS Decimal(18, 2)), CAST(0.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 3, CAST(1.37 AS Decimal(18, 2)), CAST(0.82 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 4, CAST(1.61 AS Decimal(18, 2)), CAST(1.30 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 1, CAST(1.36 AS Decimal(18, 2)), CAST(0.73 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 2, CAST(2.50 AS Decimal(18, 2)), CAST(2.72 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 3, CAST(2.41 AS Decimal(18, 2)), CAST(2.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 4, CAST(2.26 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 1, CAST(1.34 AS Decimal(18, 2)), CAST(1.46 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 2, CAST(2.66 AS Decimal(18, 2)), CAST(2.81 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 3, CAST(2.09 AS Decimal(18, 2)), CAST(2.44 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 4, CAST(1.68 AS Decimal(18, 2)), CAST(1.18 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 1, CAST(1.33 AS Decimal(18, 2)), CAST(0.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 2, CAST(2.85 AS Decimal(18, 2)), CAST(3.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 3, CAST(3.27 AS Decimal(18, 2)), CAST(3.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 4, CAST(2.48 AS Decimal(18, 2)), CAST(2.21 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 1, CAST(1.69 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 2, CAST(1.55 AS Decimal(18, 2)), CAST(1.01 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 3, CAST(1.51 AS Decimal(18, 2)), CAST(0.92 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 4, CAST(1.69 AS Decimal(18, 2)), CAST(1.47 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 1, CAST(1.15 AS Decimal(18, 2)), CAST(0.28 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 2, CAST(2.01 AS Decimal(18, 2)), CAST(2.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 3, CAST(1.71 AS Decimal(18, 2)), CAST(1.58 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 4, CAST(1.43 AS Decimal(18, 2)), CAST(0.83 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 1, CAST(2.79 AS Decimal(18, 2)), CAST(3.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 2, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 3, CAST(3.64 AS Decimal(18, 2)), CAST(3.95 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 4, CAST(3.21 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 1, CAST(1.03 AS Decimal(18, 2)), CAST(0.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 2, CAST(1.82 AS Decimal(18, 2)), CAST(2.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 3, CAST(1.10 AS Decimal(18, 2)), CAST(0.29 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 4, CAST(1.22 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 1, CAST(1.38 AS Decimal(18, 2)), CAST(0.64 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 2, CAST(1.55 AS Decimal(18, 2)), CAST(0.87 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 3, CAST(1.61 AS Decimal(18, 2)), CAST(0.86 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 4, CAST(1.49 AS Decimal(18, 2)), CAST(0.85 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (86, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (86, 2, CAST(3.50 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (86, 3, CAST(3.25 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (86, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (87, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (87, 2, CAST(3.50 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (87, 3, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (87, 4, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (88, 1, CAST(3.62 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (88, 2, CAST(3.62 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (88, 3, CAST(3.75 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (88, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (89, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (89, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (89, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (89, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (90, 1, CAST(3.62 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (90, 2, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (90, 3, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (90, 4, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 1, CAST(1.25 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 3, CAST(1.62 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 1, CAST(1.88 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 1, CAST(1.75 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 2, CAST(1.62 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 3, CAST(1.50 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 4, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 3, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 1, CAST(3.75 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 2, CAST(3.50 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 4, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 3, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 4, CAST(2.75 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 2, CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 4, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 2, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 3, CAST(2.88 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 3, CAST(2.25 AS Decimal(18, 2)), CAST(2.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 2, CAST(3.38 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 4, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 1, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 2, CAST(2.12 AS Decimal(18, 2)), CAST(2.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 3, CAST(2.62 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 4, CAST(2.50 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 1, CAST(2.00 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 3, CAST(1.75 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 1, CAST(2.75 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 4, CAST(3.38 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 1, CAST(3.50 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 3, CAST(2.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 2, CAST(2.62 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 3, CAST(2.62 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 4, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 1, CAST(4.00 AS Decimal(18, 2)), CAST(4.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 3, CAST(2.62 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 4, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 2, CAST(3.00 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 2, CAST(3.50 AS Decimal(18, 2)), CAST(4.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 4, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 1, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 2, CAST(1.25 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 3, CAST(1.62 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 2, CAST(2.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 4, CAST(2.25 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 3, CAST(2.88 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 1, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 3, CAST(3.62 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 4, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 4, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 2, CAST(3.38 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 3, CAST(2.12 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 4, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 3, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 1, CAST(2.88 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 2, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 3, CAST(2.12 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 3, CAST(3.50 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKA_Backup] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (1, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (2, 4, CAST(2.25 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 3, CAST(3.50 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 1, CAST(1.75 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 3, CAST(1.75 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (6, 4, CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (7, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 1, CAST(1.12 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 3, CAST(1.38 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (8, 4, CAST(1.25 AS Decimal(18, 2)), CAST(0.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (9, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 3, CAST(1.62 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (10, 4, CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 1, CAST(2.25 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 2, CAST(2.62 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (11, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 3, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (12, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (13, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 1, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (14, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (15, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (16, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (17, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (18, 4, CAST(2.12 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 2, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (19, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 1, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 2, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 3, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (20, 4, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (21, 4, CAST(2.50 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 1, CAST(3.38 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (22, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 2, CAST(2.50 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 3, CAST(2.25 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (23, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 2, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (24, 4, CAST(1.75 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 1, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 2, CAST(3.62 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 3, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 4, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (26, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 3, CAST(2.25 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (27, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 1, CAST(3.25 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 2, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (28, 4, CAST(3.50 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 1, CAST(3.62 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 2, CAST(3.38 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 3, CAST(3.75 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (29, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 1, CAST(3.25 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (30, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (31, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (32, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 2, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 4, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (34, 4, CAST(2.00 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (35, 4, CAST(2.00 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 2, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 3, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (36, 4, CAST(1.75 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 3, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (38, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (39, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (40, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 2, CAST(3.25 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (41, 4, CAST(3.38 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 1, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 3, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (42, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (43, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 3, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (44, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 1, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 3, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (45, 4, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 1, CAST(1.50 AS Decimal(18, 2)), CAST(0.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 2, CAST(1.62 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 3, CAST(1.62 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (47, 4, CAST(1.62 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 1, CAST(2.12 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 2, CAST(2.00 AS Decimal(18, 2)), CAST(2.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 3, CAST(2.12 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (48, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 1, CAST(2.62 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 3, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (49, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 1, CAST(1.38 AS Decimal(18, 2)), CAST(0.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 2, CAST(1.50 AS Decimal(18, 2)), CAST(0.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 3, CAST(1.38 AS Decimal(18, 2)), CAST(0.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (50, 4, CAST(2.25 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 1, CAST(3.38 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 2, CAST(3.62 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (51, 4, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 2, CAST(3.25 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 3, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (52, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (53, 4, CAST(2.97 AS Decimal(18, 2)), CAST(3.64 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (54, 4, CAST(1.13 AS Decimal(18, 2)), CAST(0.32 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (55, 4, CAST(1.65 AS Decimal(18, 2)), CAST(1.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (56, 4, CAST(1.35 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (57, 3, CAST(2.69 AS Decimal(18, 2)), CAST(3.13 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (57, 4, CAST(3.13 AS Decimal(18, 2)), CAST(3.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (58, 3, CAST(2.80 AS Decimal(18, 2)), CAST(2.61 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (58, 4, CAST(2.78 AS Decimal(18, 2)), CAST(2.63 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 2, CAST(4.46 AS Decimal(18, 2)), CAST(5.17 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 3, CAST(4.35 AS Decimal(18, 2)), CAST(5.97 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (59, 4, CAST(4.92 AS Decimal(18, 2)), CAST(6.74 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 3, CAST(3.42 AS Decimal(18, 2)), CAST(4.14 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (60, 4, CAST(3.63 AS Decimal(18, 2)), CAST(4.69 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 2, CAST(2.31 AS Decimal(18, 2)), CAST(2.70 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 3, CAST(2.40 AS Decimal(18, 2)), CAST(2.76 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (61, 4, CAST(2.79 AS Decimal(18, 2)), CAST(3.46 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 2, CAST(2.06 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 3, CAST(2.29 AS Decimal(18, 2)), CAST(2.17 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (62, 4, CAST(2.07 AS Decimal(18, 2)), CAST(1.69 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 1, CAST(2.15 AS Decimal(18, 2)), CAST(2.79 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 2, CAST(2.93 AS Decimal(18, 2)), CAST(3.83 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 3, CAST(3.19 AS Decimal(18, 2)), CAST(4.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (63, 4, CAST(2.82 AS Decimal(18, 2)), CAST(3.76 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 1, CAST(4.04 AS Decimal(18, 2)), CAST(5.22 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 2, CAST(2.58 AS Decimal(18, 2)), CAST(2.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 3, CAST(3.64 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (64, 4, CAST(3.60 AS Decimal(18, 2)), CAST(4.53 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 1, CAST(3.77 AS Decimal(18, 2)), CAST(4.37 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 2, CAST(3.31 AS Decimal(18, 2)), CAST(3.27 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 3, CAST(4.26 AS Decimal(18, 2)), CAST(4.20 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (65, 4, CAST(3.83 AS Decimal(18, 2)), CAST(3.90 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 1, CAST(1.01 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 3, CAST(1.02 AS Decimal(18, 2)), CAST(0.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (66, 4, CAST(1.08 AS Decimal(18, 2)), CAST(0.16 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 1, CAST(1.01 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 2, CAST(1.04 AS Decimal(18, 2)), CAST(0.08 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 3, CAST(1.02 AS Decimal(18, 2)), CAST(0.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (67, 4, CAST(1.21 AS Decimal(18, 2)), CAST(0.35 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 1, CAST(1.14 AS Decimal(18, 2)), CAST(0.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 2, CAST(1.17 AS Decimal(18, 2)), CAST(0.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 3, CAST(1.31 AS Decimal(18, 2)), CAST(0.67 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (68, 4, CAST(1.53 AS Decimal(18, 2)), CAST(0.78 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 1, CAST(1.55 AS Decimal(18, 2)), CAST(1.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 2, CAST(1.79 AS Decimal(18, 2)), CAST(1.39 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 3, CAST(1.59 AS Decimal(18, 2)), CAST(1.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (69, 4, CAST(1.63 AS Decimal(18, 2)), CAST(1.42 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 1, CAST(1.03 AS Decimal(18, 2)), CAST(0.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 2, CAST(1.34 AS Decimal(18, 2)), CAST(0.47 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 3, CAST(1.13 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (70, 4, CAST(1.20 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 1, CAST(1.62 AS Decimal(18, 2)), CAST(1.27 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 2, CAST(2.56 AS Decimal(18, 2)), CAST(2.22 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 3, CAST(2.70 AS Decimal(18, 2)), CAST(2.82 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 4, CAST(2.13 AS Decimal(18, 2)), CAST(2.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 1, CAST(3.60 AS Decimal(18, 2)), CAST(4.96 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.94 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 3, CAST(2.87 AS Decimal(18, 2)), CAST(3.53 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 4, CAST(3.19 AS Decimal(18, 2)), CAST(3.77 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 1, CAST(1.15 AS Decimal(18, 2)), CAST(0.27 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 2, CAST(1.85 AS Decimal(18, 2)), CAST(1.29 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 3, CAST(1.68 AS Decimal(18, 2)), CAST(1.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 4, CAST(2.34 AS Decimal(18, 2)), CAST(2.54 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 1, CAST(1.04 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 3, CAST(1.06 AS Decimal(18, 2)), CAST(0.08 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (74, 4, CAST(1.33 AS Decimal(18, 2)), CAST(0.65 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 1, CAST(1.80 AS Decimal(18, 2)), CAST(1.81 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 2, CAST(1.93 AS Decimal(18, 2)), CAST(1.98 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 3, CAST(2.44 AS Decimal(18, 2)), CAST(3.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 4, CAST(2.19 AS Decimal(18, 2)), CAST(2.15 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 1, CAST(1.05 AS Decimal(18, 2)), CAST(0.13 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 2, CAST(2.14 AS Decimal(18, 2)), CAST(2.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 3, CAST(1.19 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (76, 4, CAST(1.28 AS Decimal(18, 2)), CAST(0.77 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 1, CAST(1.51 AS Decimal(18, 2)), CAST(0.98 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 2, CAST(1.32 AS Decimal(18, 2)), CAST(0.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 3, CAST(1.37 AS Decimal(18, 2)), CAST(0.82 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (77, 4, CAST(1.61 AS Decimal(18, 2)), CAST(1.30 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 1, CAST(1.36 AS Decimal(18, 2)), CAST(0.73 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 2, CAST(2.50 AS Decimal(18, 2)), CAST(2.72 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 3, CAST(2.41 AS Decimal(18, 2)), CAST(2.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 4, CAST(2.26 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 1, CAST(1.34 AS Decimal(18, 2)), CAST(1.46 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 2, CAST(2.66 AS Decimal(18, 2)), CAST(2.81 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 3, CAST(2.09 AS Decimal(18, 2)), CAST(2.44 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 4, CAST(1.68 AS Decimal(18, 2)), CAST(1.18 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 1, CAST(1.33 AS Decimal(18, 2)), CAST(0.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 2, CAST(2.85 AS Decimal(18, 2)), CAST(3.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 3, CAST(3.27 AS Decimal(18, 2)), CAST(3.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 4, CAST(2.48 AS Decimal(18, 2)), CAST(2.21 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 1, CAST(1.69 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 2, CAST(1.55 AS Decimal(18, 2)), CAST(1.01 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 3, CAST(1.51 AS Decimal(18, 2)), CAST(0.92 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (81, 4, CAST(1.69 AS Decimal(18, 2)), CAST(1.47 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 1, CAST(1.15 AS Decimal(18, 2)), CAST(0.28 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 2, CAST(2.01 AS Decimal(18, 2)), CAST(2.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 3, CAST(1.71 AS Decimal(18, 2)), CAST(1.58 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 4, CAST(1.43 AS Decimal(18, 2)), CAST(0.83 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 1, CAST(2.79 AS Decimal(18, 2)), CAST(3.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 2, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 3, CAST(3.64 AS Decimal(18, 2)), CAST(3.95 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 4, CAST(3.21 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 1, CAST(1.03 AS Decimal(18, 2)), CAST(0.06 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 2, CAST(1.82 AS Decimal(18, 2)), CAST(2.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 3, CAST(1.10 AS Decimal(18, 2)), CAST(0.29 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (84, 4, CAST(1.22 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 1, CAST(1.38 AS Decimal(18, 2)), CAST(0.64 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 2, CAST(1.55 AS Decimal(18, 2)), CAST(0.87 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 3, CAST(1.61 AS Decimal(18, 2)), CAST(0.86 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (85, 4, CAST(1.49 AS Decimal(18, 2)), CAST(0.85 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (86, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (87, 4, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (88, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (89, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (89, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (90, 2, CAST(3.88 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (90, 4, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 2, CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 1, CAST(1.88 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 1, CAST(1.75 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 2, CAST(1.62 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 3, CAST(1.50 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (93, 4, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 3, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (94, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 1, CAST(3.75 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 2, CAST(3.50 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (95, 4, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 3, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (96, 4, CAST(2.75 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 2, CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (97, 4, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 2, CAST(2.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 3, CAST(1.75 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (98, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 3, CAST(2.88 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (99, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 3, CAST(2.25 AS Decimal(18, 2)), CAST(2.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (100, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 2, CAST(3.38 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (101, 4, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 1, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 2, CAST(2.12 AS Decimal(18, 2)), CAST(2.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 3, CAST(2.62 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (102, 4, CAST(2.50 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 1, CAST(2.00 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 2, CAST(1.88 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 3, CAST(1.75 AS Decimal(18, 2)), CAST(0.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (103, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 1, CAST(2.75 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (104, 4, CAST(3.38 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 1, CAST(3.50 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 3, CAST(2.50 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (105, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 2, CAST(2.62 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 3, CAST(2.62 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (106, 4, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 1, CAST(4.00 AS Decimal(18, 2)), CAST(4.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 3, CAST(2.62 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (107, 4, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 2, CAST(3.00 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (108, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 2, CAST(3.50 AS Decimal(18, 2)), CAST(4.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (109, 4, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 1, CAST(1.12 AS Decimal(18, 2)), CAST(0.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 2, CAST(1.25 AS Decimal(18, 2)), CAST(0.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 3, CAST(1.62 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 2, CAST(2.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 3, CAST(1.88 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 4, CAST(2.25 AS Decimal(18, 2)), CAST(2.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 3, CAST(2.88 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (112, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 2, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (113, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 1, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 3, CAST(3.62 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (114, 4, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 3, CAST(3.38 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (115, 4, CAST(3.88 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 2, CAST(3.38 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.38 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (116, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 3, CAST(2.12 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (117, 4, CAST(2.75 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 2, CAST(3.00 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 3, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (118, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 1, CAST(2.88 AS Decimal(18, 2)), CAST(4.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 2, CAST(2.88 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 3, CAST(2.12 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (119, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 1, CAST(3.00 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 2, CAST(3.38 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 3, CAST(3.50 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (120, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[LearningOutcome] ON 

GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (43, 3, N'UNLO1', N'Design, implement, test and document solutions to problems using the sequence, selection and iteration constructs of structured programming.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (44, 4, N'UNLO1', N'Construct algorithms to solve basic to intermediate problems using a combination of sequence, selection and iteration.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (45, 4, N'UNLO3', N'Apply the methodology of top-down design to the construction of solutions and implement these solutions in a modular way.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (46, 5, N'UNLO2', N'Describe the key functionality of networking protocols and standards, such as IP, TCP, UDP, Ethernet, WiFi/WLANs.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (47, 5, N'UNLO3', N'Design basic switched and routed networks including the designing of address plans.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (48, 6, N'UNLO5', N'Use matrix algebra and derive linear transformations of the plane.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (49, 7, N'UNLO4', N'Demonstrate an understanding of how computer languages are executed at the hardware layer of a computer')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (50, 8, N'UNLO1', N'Apply digital literacy skills to obtain relevant ICT literature')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (51, 8, N'UNLO6', N'Apply project management skills and techniques required for planning, managing and documenting projects ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (52, 8, N'UNLO8', N'Apply written and oral conventions appropriate to ICT research ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (53, 9, N'UNLO1', N'Explain how information systems are used within organisations to fulfil organisational needs')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (54, 9, N'UNLO6', N'Explain the activities involved in systems design, including designing the system environment, application components, user interfaces, database and software')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (55, 10, N'UNLO1', N'design and write good structured and object oriented C++ programs;')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (56, 11, N'UNLO1', N'Explain the importance of databases in information management ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (57, 11, N'UNLO4', N'Demonstrate practical skills in data modelling using entity-relationship modelling')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (58, 11, N'UNLO7', N'Explain and implement security as it applies in the database environment.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (59, 12, N'UNLO1', N' Develop research designs for potential research projects ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (60, 12, N'UNLO2', N'Use project management techniques to plan and manage a group project')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (61, 13, N'UNLO4', N'Develop a system using an object-oriented method and language ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (62, 14, N'UNLO4', N'Be able to choose an appropriate intelligent technique to solve a given problem')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (63, 14, N'UNLO6', N' Explain the importance of representation and search in problem solving')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (64, 15, N'UNLO1', N'Demonstrate a critical understanding of the concepts of process and how the processes are managed in an operating system.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (65, 16, N'UNLO5', N' Apply relevant codes of professional conduct in an interdisciplinary IT project')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (66, 17, N'UNLO1', N' Identify the types and characteristics of server based infrastructure and applications. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (67, 17, N'UNLO4', N'Maintain their own desktop environment and support the modelling and investigation of locally virtualised environments. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (68, 18, N'UNLO1', N'Understand the fundamentals of computer and network security')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (69, 18, N'UNLO5', N'Implement and exploit security vulnerabilities in a lab environment')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (70, 18, N'UNLO6', N'Discuss and describe mitigation strategies for common attacks')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (71, 19, N'UNLO2', N'Use a wide range of open source and proprietary tools and technologies to conduct investigation')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (72, 19, N'UNLO3', N'Have an awareness of the significance of different technology platforms, filesystems and implementation environments')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (73, 20, N'UNLO2', N'Describe the interaction between hardware and security relevant software in a computer system.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (74, 20, N'UNLO3', N'Understand the application of security architecture and access control principles to real-world computer systems.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (75, 21, N'UNLO2', N' Explain the need for contingency planning and discuss how an organization would prepare and execute a test of contingency plans.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (76, 21, N'UNLO6', N' Describe the types of intrusion detection systems and the strategies on which they are based; discuss security practices used to control employee behavior and prevent misuse of information; explain ethical and legal issues associated with the management of information security.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (77, 22, N'UNLO5', N'Be capable of designing and implementing security based on Access Control Lists (ACL).')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (78, 22, N'UNLO6', N'Be able to identify the characteristics of different routing protocols and configure both in an IOS environment.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (79, 22, N'UNLO8', N'Be proficient in the use of GNS3 network emulation software.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (80, 23, N'UNLO3', N' Describe the importance of of wireless regulatory and standards bodies.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (81, 23, N'UNLO8', N'Prepare and deliver an oral research presentation')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (82, 23, N'UNLO9', N'Demonstrate writing and referencing skills to communicate to scientific and general audiences')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (83, 24, N'UNLO4', N'Extend security and availability with cryptography and VPNs.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (84, 25, N'UNLO4', N'Manage Internet traffic according to organisational policy')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (85, 3, N'UNLO12', N'Implement searching and sorting algorithms in a programming language.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (86, 3, N'UNLO2', N'Explain the object-oriented programming paradigm. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (87, 3, N'UNLO6', N'Design and implement appropriate classes for modelling a given problem. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (89, 4, N'UNLO2', N'Implement such algorithms in a common programming language.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (91, 5, N'UNLO5', N'Configure and understand the operation of switched Ethernet LANs.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (92, 6, N'UNLO1', N' Formulate and use recursive definitions in various contexts and applications.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (93, 7, N'UNLO1', N' Demonstrate an understanding of the context in which computer systems exist and the purposes for which they are designed and built')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (94, 8, N'UNLO2', N'Demonstrate awareness of the varying contexts within which ICT research is conducted and the broad range of types of ICT research ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (95, 8, N'UNLO3', N'Identify ICT research problems and formulate research objectives and research questions')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (98, 9, N'UNLO5', N'Model system requirements using UML, including use case diagrams and descriptions, activity diagrams and domain model class diagrams ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (99, 10, N'UNLO2', N'design and write well documented C++ programs that use abstract data structures: both programmer designed and from the Standard Template Library; ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (100, 11, N'UNLO2', N'Demonstrate an understanding of relational database principles and theory ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (101, 11, N'UNLO5', N'Demonstrate practical skills in normalisation and convert a conceptual database design to a logical design in 3NF')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (102, 11, N'UNLO8', N'Explain the issues and approaches involved in the processing of concurrent database transactions ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (103, 12, N'UNLO3', N'Prepare a research proposal for a project designed to address an ICT research problem')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (104, 12, N'UNLO4', N'Conduct a group ICT research project')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (105, 13, N'UNLO1', N'Understand the stages of the Software Development Life Cycle ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (107, 14, N'UNLO7', N'Understand the role of applied knowledge in problem solving')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (108, 14, N'UNLO8', N'Be able to evaluate the capability of an intelligent system to solve a real problem')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (109, 15, N'UNLO7', N'Demonstrate the ability to manage processes in multiple process programs.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (110, 15, N'UNLO9', N'Demonstrate the ability to using signals and appropriate interprocess communication mechanisms in the design and implementation of multiple process programs, including data exchange and process synchronisation.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (111, 16, N'UNLO1', N' Demonstrate effective communication skills in the context of an interdisciplinary IT project')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (112, 16, N'UNLO3', N' Apply an appropriate level of professional knowledge in the solution of complex problems')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (113, 17, N'UNLO2', N'Implement servers and applications using physical and virtualised infrastructure. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (114, 17, N'UNLO5', N'Determine an appropriate server solution and environment to meet client needs.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (116, 18, N'UNLO2', N'2Use a wide range of tools and technologies to evaluate vulnerabilities')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (118, 19, N'UNLO1', N' Understand the fundamentals of cyber forensics')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (120, 20, N'UNLO5', N'Explain the role of authentication in security architectures, including its applications.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (121, 20, N'UNLO8', N'Understand the role non-technical mechanisms play within security architectures.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (122, 21, N'UNLO4', N'Discuss how to plan and staff an organization''s information security program based on its size; recommend an information security management model and explain how it can be customized to meet the needs of a particular organization; identify the skills and requirements for information security positions.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (123, 21, N'UNLO7', N'Understand and discuss the importance of information security governance and its implementation mechanisms; outline the basic components of the COBIT model.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (124, 22, N'UNLO3', N'Be able to apply a network design model as a basis for implementing an enterprise network.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (125, 22, N'UNLO7', N' Have a detailed understanding of Ethernet related protocols and switching technologies.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (128, 23, N'UNLO1', N'Describe, implement and optimise the deployment of 802.11 LANs')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (129, 23, N'UNLO5', N'Differentiate a range of wireless technologies')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (130, 24, N'UNLO2', N'Identify and describe network security principles.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (131, 25, N'UNLO2', N'Select and configure a routing protocol that best addresses the design requirements')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (132, 3, N'UNLO3', N'Use the object-oriented programming approach to design, implement, test and document solutions to problems.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (133, 4, N'UNLO4', N'Be familiar with a number of basic data structures commonly used in computer programming.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (134, 5, N'UNLO1', N'Describe data communication devices and protocols in terms of the layers of the OSI model.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (135, 5, N'UNLO4', N'Configure network devices in accordance with network specifications and design.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (136, 6, N'UNLO6', N'Apply propositional logic to analyse the validity of arguments, express statements in predicate logic and use proof by mathematical induction.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (137, 7, N'UNLO2', N' Describe the fundamental concepts of computer systems with reference to the hardware and software')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (138, 7, N'UNLO5', N'Describe the major roles played by IT professionals and how they relate to computer systems')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (139, 8, N'UNLO4', N' Critically evaluate relevant literature and write a literature review ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (140, 8, N'UNLO7', N' Undertake basic analysis of quantitative and qualitative data ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (141, 9, N'UNLO10', N'Present systems analysis and design documentation in an appropriate, consistent and professional manner.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (142, 9, N'UNLO8', N'Describe tools and techniques for planning, managing and evaluating systems development projects')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (143, 10, N'UNLO7', N'adhere to stated requirements.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (144, 11, N'UNLO10', N'Explain the role of databases in Business Intelligence ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (145, 11, N'UNLO6', N'Create a database from a given design using a DBMS and implement specified constraints using appropriate tools and approaches ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (146, 12, N'UNLO5', N'Communicate research processes and outcomes both orally and in written form ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (147, 13, N'UNLO5', N'Develop a WWW-based client-server system')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (148, 14, N'UNLO5', N' Know how to use off-the-shelf intelligence tools, including expert system shells artificial neural network and other simulators for solving problems')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (149, 15, N'UNLO10', N'Demonstrate the ability to design and implement client and server programs using TCP and UDP protocols.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (150, 15, N'UNLO8', N'Demonstrate the ability to access and manipulate files, directories and various special files in a system program.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (151, 16, N'UNLO2', N' Work collaboratively within an interdisciplinary IT project team')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (152, 16, N'UNLO6', N' Demonstrate an understanding of the client''s problem domain and solve the problems using IT approaches.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (153, 17, N'UNLO3', N'Install and configure a Windows or Linux server. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (155, 18, N'UNLO3', N'Have an awareness of the significance of various security weaknesses')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (156, 18, N'UNLO4', N'Understand the legal and ethical implications of computer security')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (157, 19, N'UNLO4', N'Understand the legal and ethical implications of forensic examination procedures')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (158, 20, N'UNLO4', N'Describe the application of cryptographic primitives to various basic protocols.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (159, 20, N'UNLO9', N' Demonstrate how to install and manage the security of Windows server systems and networks.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (161, 21, N'UNLO8', N'Demonstrate an awareness of information security standards in high-risk industry sectors.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (162, 22, N'UNLO2', N'Understand the hierarchical network design model and the role of the three layers.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (164, 23, N'UNLO4', N'Describe the security issues in wireless networks and implement secure protocols')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (165, 24, N'UNLO3', N'Design and implement a secure network infrastructure.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (166, 25, N'UNLO3', N'Troubleshoot routing problems using a systematic approach')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (167, 3, N'UNLO13', N'Explain the concept of recursion and be able to write recursive solutions for simple to intermediate problems.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (168, 3, N'UNLO4', N'Demonstrate understanding of the mechanics of parameter passing in the context of object-oriented programming. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (169, 6, N'UNLO7', N' Solve basic problems in Boolean algebra and represent a Boolean function as a logic network.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (170, 7, N'UNLO3', N' Demonstrate an understanding of how a modern computer systems are built')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (171, 8, N'UNLO5', N'Demonstrate understanding of a broad range of research approaches including: design research, experimental research, survey research, action research and case study research ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (172, 9, N'UNLO4', N'Use a variety of techniques for analysing and defining business problems and opportunities and determining system requirements')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (173, 9, N'UNLO7', N'Represent early system design using UML, including sequence diagrams, architectural diagrams and design class diagrams')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (174, 10, N'UNLO6', N'design and implement solutions that adhere to given specifications;')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (175, 11, N'UNLO3', N'Demonstrate practical skills in using SQL ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (177, 12, N'UNLO6', N'Understand and apply the guidelines for ethics approval of research projects')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (178, 13, N'UNLO2', N'Understand the various Architectures that can be used in software systems ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (179, 14, N'UNLO3', N'Be able to explain the strengths and weaknesses of state machines, expert systems, fuzzy logic engines, neural networks, genetic algorithms, data mining tools and intelligent agents ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (180, 15, N'UNLO13', N'Develop and demonstrate skills in self-learning, communications, research, trial-and-error, etc., to implement system software.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (181, 15, N'UNLO2', N'Demonstrate a critical understanding of how a typical Unix file system is implemented on a mass storage media such as a hard disk.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (182, 15, N'UNLO4', N'Demonstrate a critical understanding of various memory management schemes and the related hardware support, including paging, segmentation, virtual memory, and various cache technologies for speeding up memory access.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (183, 16, N'UNLO4', N' Apply problem solving, design and decision making methods to meet specified requirements')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (184, 19, N'UNLO5', N'Conduct case research and practical investigation of a digital crime scene')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (185, 20, N'UNLO10', N'Analyse the architectural security of the system to identify underlying weaknesses and suggests the mechanisms necessary to resolve these.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (186, 22, N'UNLO1', N'Configure network devices using the Cisco IOS command line.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (187, 23, N'UNLO2', N'Describe the principles and issues surrounding radio transmission, antennas and interference.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (188, 23, N'UNLO7', N'Describe and implement a range of tunneling and authentication technologies over insecure networks')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (189, 24, N'UNLO1', N'Develop practical application of skills needed to design, implement, and support network security.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (190, 25, N'UNLO1', N'Create a network design that is stable and scalable ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (191, 3, N'UNLO10', N'Write object-oriented programs that use each of the following: arrays, strings, files, lists, stacks and queues.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (192, 3, N'UNLO5', N'Explain how class mechanism supports encapsulation and information hiding. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (193, 5, N'UNLO6', N'Configure and understand the operation of IP routers.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (194, 6, N'UNLO9', N'Present coherent written solutions to various problems related to the material in the Unit.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (195, 8, N'UNLO9', N'Demonstrate understanding of ethical considerations in ICT research')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (196, 9, N'UNLO2', N'Describe the phases and activities typically involved in the systems development life cycle')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (197, 10, N'UNLO4', N'draw high level Unified Modeling Language class diagrams that can be implemented; ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (198, 13, N'UNLO3', N'Perform design for a system given a particular architecture ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (199, 14, N'UNLO1', N'Demonstrate an understanding of basic intelligent systems concepts')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (200, 15, N'UNLO11', N'Have a solid understanding of the standard Unix programming interface and demonstrate the abilities and skills to designing and implementing systems programs that make an efficient use of the system resources via the programming interface.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (202, 3, N'UNLO7', N'Explain the need for range checking and error handling and be able to write robust programs that implement these features.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (203, 6, N'UNLO2', N'Write MATLAB programs to solve various mathematical and applied problems.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (204, 9, N'UNLO3', N'Describe the professional roles, skills and ethical issues involved in systems analysis and design work ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (205, 9, N'UNLO9', N'Describe the key features of several different systems development methodologies')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (206, 10, N'UNLO5', N'discuss (and apply) the theory and application of abstract data structures and the algorithms that use them and are used by them;')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (208, 14, N'UNLO2', N'Be able to explain the theory, operation and strengths and weaknesses of state machines, expert systems, fuzzy logic engines, neural networks, genetic algorithms data mining tools and intelligent agents ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (209, 20, N'UNLO1', N' Identify the different layers of security architectures in computer systems.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (210, 21, N'UNLO3', N' Define what an information security policy is; describe the major types of information security policy and discuss the major components of each.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (211, 22, N'UNLO9', NULL)
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (212, 6, N'UNLO8', N' Appreciate the important role that computing has in mathematics and the essential importance of discrete mathematics for the foundations of computer science.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (213, 10, N'UNLO3', N'design test plans for abstract data structures coded as classes and the application programs that use these classes; ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (214, 11, N'UNLO11', N'Describe some non-relational database approaches, and likely future trends in database technologies and applications')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (215, 15, N'UNLO6', N'Demonstrate an understanding of how the hardware resources are abstracted and made available to the upper layer software as an operating system programming interface. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (216, 21, N'UNLO1', N'Describe and discuss the importance and the key characteristics of information security, as well as the principal components of information security system implementation planning in the organizational planning scheme.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (217, 22, N'UNLO4', N' Be capable of using VLSM (Variable Length Subnet Mask) to create intelligent IP addressing structures.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (218, 23, N'UNLO6', N'Generate and analyse packet capture files')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (219, 3, N'UNLO11', N'Explain algorithm complexity and the need for selecting appropriate algorithms and structures for a given problem. ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (220, 6, N'UNLO3', N' Perform base conversions and explain aspects of computer arithmetic.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (221, 15, N'UNLO3', N'Demonstrate a critical understanding of various interprocess communication mechanisms.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (222, 20, N'UNLO6', N' Discuss the security of networks from an architectural perspective.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (223, 21, N'UNLO5', N' Define risk management and explain how risk is assessed based on the likelihood of adverse events and the possible effects on information assets.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (224, 6, N'UNLO4', N'Use counting techniques and understand the basics of discrete probability.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (225, 11, N'UNLO9', N'Describe common architectural approaches to database distribution ')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (226, 15, N'UNLO5', N'Demonstrate an understanding of concurrency related issues such as deadlock and race conditions and the methods and techniques to handle these issues.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (227, 20, N'UNLO7', N' Analyse systems and software to identify and mitigate basic threats.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (228, 3, N'UNLO9', N'Explain event-driven programming and be able to describe the behaviour of simple GUI programs.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (229, 15, N'UNLO12', N'Have the experience and the skills to work effectively in a team environment.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (230, 3, N'UNLO8', N'Design, implement and test the implementation of hierarchical relationship among objects using a simple class hierarchy and inheritance.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (231, 1, N'UNLO3', N'Understand and apply the rules of academic integrity, by: understanding the principles of referencing and applying a citation method to these principles;b. recognising the importance of the validity of sources used.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (232, 2, N'UNLO6', N'Discuss the role of science in society.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (233, 2, N'UNLO4', N'Identify some commonly used research methods in disciplines outside your home discipline.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (234, 2, N'UNLO3', N'Describe the major ideas developed within the philosophy of science, and recognise real life examples of these ideas being applied to actual scientific research')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (235, 1, N'UNLO4', N'Appreciate the ethical issues underpinning science.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (236, 1, N'UNLO1', N'Explain the scientific method and demonstrate its application.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (237, 1, N'UNLO5', N'Learn autonomously, by:  thinking and reading critically; engaging in self-management, organisation, and critical reflection.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (238, 1, N'UNLO2', N'Understand and identify appropriate mathematical tools to interpret and assess experimental data.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (239, 2, N'UNLO1', N'Identify the common features of scientific methods of inquiry and to contrast these with non-scientific methods of inquiry.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (240, 21, N'UNLO9', N' Have a broad understanding of the components that make up a large scale network.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (241, 2, N'UNLO5', N'Demonstrate an awareness of the different perspectives that can arise from different scientific disciplines, the reasons for these differing perspectives, and their possible consequences.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (242, 2, N'UNLO2', N'Critically evaluate the advantages and limitations of the scientific approach to knowledge.')
GO
INSERT [dbo].[LearningOutcome] ([LOID], [UnitID], [Description], [FullDescription]) VALUES (243, 1, N'UNLO6', N'Effectively explain scientific data, information, and arguments to both scientific peer groups and the broader community in written, oral and interpersonal formats through:  producing summaries and critical analyses of lectures and readings; producing reviews of scientific literature, e.g. as contextual introductions to laboratory reports; providing assessment feedback to peers; and working in a team to produce an analysis or evaluation of scientific technical data or principles.')
GO
SET IDENTITY_INSERT [dbo].[LearningOutcome] OFF
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (1, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (1, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (1, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (2, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (2, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (2, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (3, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (4, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (4, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (4, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (5, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (5, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (5, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (6, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (6, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (6, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (7, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (7, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (7, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (8, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (8, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (8, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (9, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (9, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (9, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (10, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (11, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (11, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (11, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (12, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (12, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (12, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (13, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (14, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (15, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (16, 1)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (16, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (16, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (17, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (17, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (18, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (19, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (20, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (21, 2)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (22, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (23, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (24, 3)
GO
INSERT [dbo].[ListofUnits] ([UnitID], [CourseID]) VALUES (25, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (69, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (70, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (71, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (79, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (81, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (84, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (121, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (125, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (128, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (129, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (131, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (143, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (148, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (150, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (155, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (161, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (168, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (185, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (188, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (190, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (202, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (211, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (218, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 68)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 70)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 73)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 74)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 75)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 91)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 92)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 96)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 98)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 99)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (227, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (229, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 1)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 6)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 7)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 8)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 9)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 10)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 11)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 13)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 14)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 15)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 16)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 17)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 18)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 19)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 21)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 24)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 26)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 27)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 28)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 29)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 30)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 31)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 32)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 53)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 55)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 57)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 62)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 63)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 64)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 66)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 86)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 90)
GO
SET IDENTITY_INSERT [dbo].[SKA] ON 

GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (86, N'Active Learning', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (87, N'Active Listening', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (53, N'Administration and Management', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (1, N'Arm-Hand Steadiness', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (2, N'Auditory Attention', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (54, N'Biology', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (55, N'Building and Construction', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (3, N'Category Flexibility', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (56, N'Chemistry', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (57, N'Clerical', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (58, N'Communications and Media', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (88, N'Complex Problem Solving', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (59, N'Computers and Electronics', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (4, N'Control Precision', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (89, N'Coordination', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (90, N'Critical Thinking', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (60, N'Customer and Personal Service', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (5, N'Deductive Reasoning', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (6, N'Depth Perception', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (61, N'Design', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (7, N'Dynamic Flexibility', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (8, N'Dynamic Strength', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (62, N'Economics and Accounting', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (63, N'Education and Training', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (64, N'Engineering and Technology', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (65, N'English Language', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (91, N'Equipment Maintenance', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (92, N'Equipment Selection', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (9, N'Explosive Strength', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (10, N'Extent Flexibility', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (11, N'Far Vision', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (66, N'Fine Arts', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (12, N'Finger Dexterity', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (13, N'Flexibility of Closure', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (14, N'Fluency of Ideas', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (67, N'Food Production', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (68, N'Foreign Language', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (69, N'Geography', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (15, N'Glare Sensitivity', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (16, N'Gross Body Coordination', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (17, N'Gross Body Equilibrium', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (18, N'Hearing Sensitivity', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (70, N'History and Archeology', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (19, N'Inductive Reasoning', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (20, N'Information Ordering', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (93, N'Installation', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (94, N'Instructing', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (95, N'Judgment and Decision Making', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (71, N'Law and Government', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (96, N'Learning Strategies', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (97, N'Management of Financial Resources', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (98, N'Management of Material Resources', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (99, N'Management of Personnel Resources', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (21, N'Manual Dexterity', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (22, N'Mathematical Reasoning', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (72, N'Mathematics', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (100, N'Mathematics', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (73, N'Mechanical', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (74, N'Medicine and Dentistry', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (23, N'Memorization', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (101, N'Monitoring', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (24, N'Multilimb Coordination', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (25, N'Near Vision', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (102, N'Negotiation', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (26, N'Night Vision', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (27, N'Number Facility', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (103, N'Operation and Control', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (104, N'Operation Monitoring', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (105, N'Operations Analysis', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (28, N'Oral Comprehension', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (29, N'Oral Expression', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (30, N'Originality', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (31, N'Perceptual Speed', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (32, N'Peripheral Vision', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (75, N'Personnel and Human Resources', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (106, N'Persuasion', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (76, N'Philosophy and Theology', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (77, N'Physics', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (33, N'Problem Sensitivity', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (78, N'Production and Processing', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (107, N'Programming', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (79, N'Psychology', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (80, N'Public Safety and Security', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (108, N'Quality Control Analysis', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (34, N'Rate Control', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (35, N'Reaction Time', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (109, N'Reading Comprehension', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (110, N'Repairing', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (36, N'Response Orientation', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (81, N'Sales and Marketing', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (111, N'Science', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (37, N'Selective Attention', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (112, N'Service Orientation', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (113, N'Social Perceptiveness', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (82, N'Sociology and Anthropology', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (38, N'Sound Localization', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (39, N'Spatial Orientation', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (114, N'Speaking', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (40, N'Speech Clarity', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (41, N'Speech Recognition', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (42, N'Speed of Closure', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (43, N'Speed of Limb Movement', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (44, N'Stamina', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (45, N'Static Strength', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (115, N'Systems Analysis', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (116, N'Systems Evaluation', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (117, N'Technology Design', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (83, N'Telecommunications', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (84, N'Therapy and Counseling', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (118, N'Time Management', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (46, N'Time Sharing', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (85, N'Transportation', 2)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (119, N'Troubleshooting', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (47, N'Trunk Strength', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (48, N'Visual Color Discrimination', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (49, N'Visualization', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (50, N'Wrist-Finger Speed', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (120, N'Writing', 3)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (51, N'Written Comprehension', 1)
GO
INSERT [dbo].[SKA] ([SKAID], [SKAName], [SKATypeID]) VALUES (52, N'Written Expression', 1)
GO
SET IDENTITY_INSERT [dbo].[SKA] OFF
GO
SET IDENTITY_INSERT [dbo].[SKAType] ON 

GO
INSERT [dbo].[SKAType] ([SKATypeID], [Description]) VALUES (1, N'Ability')
GO
INSERT [dbo].[SKAType] ([SKATypeID], [Description]) VALUES (2, N'Knowledge')
GO
INSERT [dbo].[SKAType] ([SKATypeID], [Description]) VALUES (3, N'Skill')
GO
SET IDENTITY_INSERT [dbo].[SKAType] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (1, N'BSC100', N'Building blocks for science students')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (2, N'BSC150', N'What is Science')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (3, N'ICT167', N'Principles of computer science')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (4, N'ICT159', N'Foundations of programming ')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (5, N'ICT169', N'Foundations of data communications ')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (6, N'MAS162', N'Foundations of discrete mathematics')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (7, N'ICT170', N'Foundations of computer systems')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (8, N'BSC203', N'Introduction to ICT Research Methods')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (9, N'ICT284', N'Systems Analysis and Design')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (10, N'ICT283', N'Data Structures and Abstractions')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (11, N'ICT285', N'Databases')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (12, N'BSC301', N'Applied Research Skills')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (13, N'ICT373', N'Software Architectures')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (14, N'ICT319', N'Intelligent Systems')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (15, N'ICT374', N'Operating Systems and systems programming')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (16, N'ICT302', N'IT Professional Prac Project')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (17, N'ICT171', N'Introduction to server environments and architectures')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (18, N'ICT287', N'Computer Security')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (19, N'ICT378', N'Cyber forensics and information technology')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (20, N'ICT379', N'Software Architecture and system administration')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (21, N'ICT380', N'Information Security policy and governance')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (22, N'ICT291', N'Network Design and Implementation ')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (23, N'ICT369', N'Wireless and Interactive Networks')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (24, N'ICT377', N'Network Security')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitCode], [UnitName]) VALUES (25, N'ICT372', N'Advanced netowkr design and implementation')
GO
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Explain the scientific method and demonstrate its application.', N'BSC100')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Understand and identify appropriate mathematical tools to interpret and assess experimental data.', N'BSC100')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Understand and apply the rules of academic integrity, by: understanding the principles of referencing and applying a citation method to these principles;b. recognising the importance of the validity of sources used.', N'BSC100')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Appreciate the ethical issues underpinning science.', N'BSC100')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Learn autonomously, by:  thinking and reading critically; engaging in self-management, organisation, and critical reflection.', N'BSC100')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Effectively explain scientific data, information, and arguments to both scientific peer groups and the broader community in written, oral and interpersonal formats through:  producing summaries and critical analyses of lectures and readings; producing reviews of scientific literature, e.g. as contextual introductions to laboratory reports; providing assessment feedback to peers; and working in a team to produce an analysis or evaluation of scientific technical data or principles.', N'BSC100')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Identify the common features of scientific methods of inquiry and to contrast these with non-scientific methods of inquiry.', N'BSC150')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Critically evaluate the advantages and limitations of the scientific approach to knowledge.', N'BSC150')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Describe the major ideas developed within the philosophy of science, and recognise real life examples of these ideas being applied to actual scientific research', N'BSC150')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Identify some commonly used research methods in disciplines outside your home discipline.', N'BSC150')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Demonstrate an awareness of the different perspectives that can arise from different scientific disciplines, the reasons for these differing perspectives, and their possible consequences.', N'BSC150')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Discuss the role of science in society.', N'BSC150')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Design, implement, test and document solutions to problems using the sequence, selection and iteration constructs of structured programming.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Explain the object-oriented programming paradigm. ', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Use the object-oriented programming approach to design, implement, test and document solutions to problems.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Demonstrate understanding of the mechanics of parameter passing in the context of object-oriented programming. ', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Explain how class mechanism supports encapsulation and information hiding. ', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Design and implement appropriate classes for modelling a given problem. ', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Explain the need for range checking and error handling and be able to write robust programs that implement these features.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Design, implement and test the implementation of hierarchical relationship among objects using a simple class hierarchy and inheritance.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Explain event-driven programming and be able to describe the behaviour of simple GUI programs.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO10', N'Write object-oriented programs that use each of the following: arrays, strings, files, lists, stacks and queues.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO11', N'Explain algorithm complexity and the need for selecting appropriate algorithms and structures for a given problem. ', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO12', N'Implement searching and sorting algorithms in a programming language.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO13', N'Explain the concept of recursion and be able to write recursive solutions for simple to intermediate problems.', N'ICT167')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Construct algorithms to solve basic to intermediate problems using a combination of sequence, selection and iteration.', N'ICT159')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Implement such algorithms in a common programming language.', N'ICT159')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Apply the methodology of top-down design to the construction of solutions and implement these solutions in a modular way.', N'ICT159')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Be familiar with a number of basic data structures commonly used in computer programming.', N'ICT159')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Describe data communication devices and protocols in terms of the layers of the OSI model.', N'ICT169')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Describe the key functionality of networking protocols and standards, such as IP, TCP, UDP, Ethernet, WiFi/WLANs.', N'ICT169')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Design basic switched and routed networks including the designing of address plans.', N'ICT169')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Configure network devices in accordance with network specifications and design.', N'ICT169')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Configure and understand the operation of switched Ethernet LANs.', N'ICT169')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Configure and understand the operation of IP routers.', N'ICT169')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Formulate and use recursive definitions in various contexts and applications.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Write MATLAB programs to solve various mathematical and applied problems.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N' Perform base conversions and explain aspects of computer arithmetic.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Use counting techniques and understand the basics of discrete probability.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Use matrix algebra and derive linear transformations of the plane.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Apply propositional logic to analyse the validity of arguments, express statements in predicate logic and use proof by mathematical induction.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N' Solve basic problems in Boolean algebra and represent a Boolean function as a logic network.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N' Appreciate the important role that computing has in mathematics and the essential importance of discrete mathematics for the foundations of computer science.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Present coherent written solutions to various problems related to the material in the Unit.', N'MAS162')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Demonstrate an understanding of the context in which computer systems exist and the purposes for which they are designed and built', N'ICT170')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N' Describe the fundamental concepts of computer systems with reference to the hardware and software', N'ICT170')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N' Demonstrate an understanding of how a modern computer systems are built', N'ICT170')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Demonstrate an understanding of how computer languages are executed at the hardware layer of a computer', N'ICT170')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Describe the major roles played by IT professionals and how they relate to computer systems', N'ICT170')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Apply digital literacy skills to obtain relevant ICT literature', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Demonstrate awareness of the varying contexts within which ICT research is conducted and the broad range of types of ICT research ', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Identify ICT research problems and formulate research objectives and research questions', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N' Critically evaluate relevant literature and write a literature review ', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Demonstrate understanding of a broad range of research approaches including: design research, experimental research, survey research, action research and case study research ', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Apply project management skills and techniques required for planning, managing and documenting projects ', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N' Undertake basic analysis of quantitative and qualitative data ', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Apply written and oral conventions appropriate to ICT research ', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Demonstrate understanding of ethical considerations in ICT research', N'BSC203')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Explain how information systems are used within organisations to fulfil organisational needs', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Describe the phases and activities typically involved in the systems development life cycle', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Describe the professional roles, skills and ethical issues involved in systems analysis and design work ', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Use a variety of techniques for analysing and defining business problems and opportunities and determining system requirements', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Model system requirements using UML, including use case diagrams and descriptions, activity diagrams and domain model class diagrams ', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Explain the activities involved in systems design, including designing the system environment, application components, user interfaces, database and software', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Represent early system design using UML, including sequence diagrams, architectural diagrams and design class diagrams', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Describe tools and techniques for planning, managing and evaluating systems development projects', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Describe the key features of several different systems development methodologies', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO10', N'Present systems analysis and design documentation in an appropriate, consistent and professional manner.', N'ICT284')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'design and write good structured and object oriented C++ programs;', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'design and write well documented C++ programs that use abstract data structures: both programmer designed and from the Standard Template Library; ', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'design test plans for abstract data structures coded as classes and the application programs that use these classes; ', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'draw high level Unified Modeling Language class diagrams that can be implemented; ', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'discuss (and apply) the theory and application of abstract data structures and the algorithms that use them and are used by them;', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'design and implement solutions that adhere to given specifications;', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'adhere to stated requirements.', N'ICT283')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Explain the importance of databases in information management ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Demonstrate an understanding of relational database principles and theory ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Demonstrate practical skills in using SQL ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Demonstrate practical skills in data modelling using entity-relationship modelling', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Demonstrate practical skills in normalisation and convert a conceptual database design to a logical design in 3NF', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Create a database from a given design using a DBMS and implement specified constraints using appropriate tools and approaches ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Explain and implement security as it applies in the database environment.', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Explain the issues and approaches involved in the processing of concurrent database transactions ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Describe common architectural approaches to database distribution ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO10', N'Explain the role of databases in Business Intelligence ', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO11', N'Describe some non-relational database approaches, and likely future trends in database technologies and applications', N'ICT285')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Develop research designs for potential research projects ', N'BSC301')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Use project management techniques to plan and manage a group project', N'BSC301')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Prepare a research proposal for a project designed to address an ICT research problem', N'BSC301')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Conduct a group ICT research project', N'BSC301')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Communicate research processes and outcomes both orally and in written form ', N'BSC301')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Understand and apply the guidelines for ethics approval of research projects', N'BSC301')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Understand the stages of the Software Development Life Cycle ', N'ICT373')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Understand the various Architectures that can be used in software systems ', N'ICT373')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Perform design for a system given a particular architecture ', N'ICT373')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Develop a system using an object-oriented method and language ', N'ICT373')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Develop a WWW-based client-server system', N'ICT373')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Demonstrate an understanding of basic intelligent systems concepts', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Be able to explain the theory, operation and strengths and weaknesses of state machines, expert systems, fuzzy logic engines, neural networks, genetic algorithms data mining tools and intelligent agents ', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Be able to explain the strengths and weaknesses of state machines, expert systems, fuzzy logic engines, neural networks, genetic algorithms, data mining tools and intelligent agents ', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Be able to choose an appropriate intelligent technique to solve a given problem', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N' Know how to use off-the-shelf intelligence tools, including expert system shells artificial neural network and other simulators for solving problems', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N' Explain the importance of representation and search in problem solving', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Understand the role of applied knowledge in problem solving', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Be able to evaluate the capability of an intelligent system to solve a real problem', N'ICT319')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Demonstrate a critical understanding of the concepts of process and how the processes are managed in an operating system.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Demonstrate a critical understanding of how a typical Unix file system is implemented on a mass storage media such as a hard disk.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Demonstrate a critical understanding of various interprocess communication mechanisms.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Demonstrate a critical understanding of various memory management schemes and the related hardware support, including paging, segmentation, virtual memory, and various cache technologies for speeding up memory access.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Demonstrate an understanding of concurrency related issues such as deadlock and race conditions and the methods and techniques to handle these issues.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Demonstrate an understanding of how the hardware resources are abstracted and made available to the upper layer software as an operating system programming interface. ', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Demonstrate the ability to manage processes in multiple process programs.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Demonstrate the ability to access and manipulate files, directories and various special files in a system program.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Demonstrate the ability to using signals and appropriate interprocess communication mechanisms in the design and implementation of multiple process programs, including data exchange and process synchronisation.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO10', N'Demonstrate the ability to design and implement client and server programs using TCP and UDP protocols.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO11', N'Have a solid understanding of the standard Unix programming interface and demonstrate the abilities and skills to designing and implementing systems programs that make an efficient use of the system resources via the programming interface.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO12', N'Have the experience and the skills to work effectively in a team environment.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO13', N'Develop and demonstrate skills in self-learning, communications, research, trial-and-error, etc., to implement system software.', N'ICT374')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Demonstrate effective communication skills in the context of an interdisciplinary IT project', N'ICT302')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N' Work collaboratively within an interdisciplinary IT project team', N'ICT302')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N' Apply an appropriate level of professional knowledge in the solution of complex problems', N'ICT302')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N' Apply problem solving, design and decision making methods to meet specified requirements', N'ICT302')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N' Apply relevant codes of professional conduct in an interdisciplinary IT project', N'ICT302')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N' Demonstrate an understanding of the client''s problem domain and solve the problems using IT approaches.', N'ICT302')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Identify the types and characteristics of server based infrastructure and applications. ', N'ICT171')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Implement servers and applications using physical and virtualised infrastructure. ', N'ICT171')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Install and configure a Windows or Linux server. ', N'ICT171')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Maintain their own desktop environment and support the modelling and investigation of locally virtualised environments. ', N'ICT171')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Determine an appropriate server solution and environment to meet client needs.', N'ICT171')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Understand the fundamentals of computer and network security', N'ICT287')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'2Use a wide range of tools and technologies to evaluate vulnerabilities', N'ICT287')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Have an awareness of the significance of various security weaknesses', N'ICT287')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Understand the legal and ethical implications of computer security', N'ICT287')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Implement and exploit security vulnerabilities in a lab environment', N'ICT287')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Discuss and describe mitigation strategies for common attacks', N'ICT287')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Understand the fundamentals of cyber forensics', N'ICT378')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Use a wide range of open source and proprietary tools and technologies to conduct investigation', N'ICT378')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Have an awareness of the significance of different technology platforms, filesystems and implementation environments', N'ICT378')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Understand the legal and ethical implications of forensic examination procedures', N'ICT378')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Conduct case research and practical investigation of a digital crime scene', N'ICT378')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N' Identify the different layers of security architectures in computer systems.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Describe the interaction between hardware and security relevant software in a computer system.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Understand the application of security architecture and access control principles to real-world computer systems.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Describe the application of cryptographic primitives to various basic protocols.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Explain the role of authentication in security architectures, including its applications.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N' Discuss the security of networks from an architectural perspective.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N' Analyse systems and software to identify and mitigate basic threats.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Understand the role non-technical mechanisms play within security architectures.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N' Demonstrate how to install and manage the security of Windows server systems and networks.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO10', N'Analyse the architectural security of the system to identify underlying weaknesses and suggests the mechanisms necessary to resolve these.', N'ICT379')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Describe and discuss the importance and the key characteristics of information security, as well as the principal components of information security system implementation planning in the organizational planning scheme.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N' Explain the need for contingency planning and discuss how an organization would prepare and execute a test of contingency plans.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N' Define what an information security policy is; describe the major types of information security policy and discuss the major components of each.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Discuss how to plan and staff an organization''s information security program based on its size; recommend an information security management model and explain how it can be customized to meet the needs of a particular organization; identify the skills and requirements for information security positions.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N' Define risk management and explain how risk is assessed based on the likelihood of adverse events and the possible effects on information assets.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N' Describe the types of intrusion detection systems and the strategies on which they are based; discuss security practices used to control employee behavior and prevent misuse of information; explain ethical and legal issues associated with the management of information security.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Understand and discuss the importance of information security governance and its implementation mechanisms; outline the basic components of the COBIT model.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Demonstrate an awareness of information security standards in high-risk industry sectors.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N' Have a broad understanding of the components that make up a large scale network.', N'ICT380')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Configure network devices using the Cisco IOS command line.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Understand the hierarchical network design model and the role of the three layers.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Be able to apply a network design model as a basis for implementing an enterprise network.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N' Be capable of using VLSM (Variable Length Subnet Mask) to create intelligent IP addressing structures.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Be capable of designing and implementing security based on Access Control Lists (ACL).', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Be able to identify the characteristics of different routing protocols and configure both in an IOS environment.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N' Have a detailed understanding of Ethernet related protocols and switching technologies.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Be proficient in the use of GNS3 network emulation software.', N'ICT291')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Describe, implement and optimise the deployment of 802.11 LANs', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Describe the principles and issues surrounding radio transmission, antennas and interference.', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N' Describe the importance of of wireless regulatory and standards bodies.', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Describe the security issues in wireless networks and implement secure protocols', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO5', N'Differentiate a range of wireless technologies', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO6', N'Generate and analyse packet capture files', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO7', N'Describe and implement a range of tunneling and authentication technologies over insecure networks', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO8', N'Prepare and deliver an oral research presentation', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO9', N'Demonstrate writing and referencing skills to communicate to scientific and general audiences', N'ICT369')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Develop practical application of skills needed to design, implement, and support network security.', N'ICT377')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Identify and describe network security principles.', N'ICT377')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Design and implement a secure network infrastructure.', N'ICT377')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Extend security and availability with cryptography and VPNs.', N'ICT377')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO1', N'Create a network design that is stable and scalable ', N'ICT372')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO2', N'Select and configure a routing protocol that best addresses the design requirements', N'ICT372')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO3', N'Troubleshoot routing problems using a systematic approach', N'ICT372')
GO
INSERT [dbo].[ZTemp] ([outcomeId], [outcomeDesc], [unitCode]) VALUES (N'UNLO4', N'Manage Internet traffic according to organisational policy', N'ICT372')
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_UnitDesc]    Script Date: 10/18/2018 12:51:08 PM ******/
ALTER TABLE [dbo].[LearningOutcome] ADD  CONSTRAINT [UN_UnitDesc] UNIQUE NONCLUSTERED 
(
	[UnitID] ASC,
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_NameType]    Script Date: 10/18/2018 12:51:08 PM ******/
ALTER TABLE [dbo].[SKA] ADD  CONSTRAINT [UN_NameType] UNIQUE NONCLUSTERED 
(
	[SKAName] ASC,
	[SKATypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobSKAs]  WITH CHECK ADD  CONSTRAINT [FK_JobSKAs_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobSKAs] CHECK CONSTRAINT [FK_JobSKAs_JobID]
GO
ALTER TABLE [dbo].[JobSKAs]  WITH CHECK ADD  CONSTRAINT [FK_JobSKAs_SKAID] FOREIGN KEY([SKAID])
REFERENCES [dbo].[SKA] ([SKAID])
GO
ALTER TABLE [dbo].[JobSKAs] CHECK CONSTRAINT [FK_JobSKAs_SKAID]
GO
ALTER TABLE [dbo].[LearningOutcome]  WITH CHECK ADD  CONSTRAINT [FK_LearningOutcome_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[LearningOutcome] CHECK CONSTRAINT [FK_LearningOutcome_Unit]
GO
ALTER TABLE [dbo].[ListofUnits]  WITH CHECK ADD  CONSTRAINT [FK_ListofUnits_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[ListofUnits] CHECK CONSTRAINT [FK_ListofUnits_Course]
GO
ALTER TABLE [dbo].[ListofUnits]  WITH CHECK ADD  CONSTRAINT [FK_ListofUnits_UnitID] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[ListofUnits] CHECK CONSTRAINT [FK_ListofUnits_UnitID]
GO
ALTER TABLE [dbo].[OutcomeSKAs]  WITH CHECK ADD  CONSTRAINT [FK_OutcomeSKAs_LOID] FOREIGN KEY([LOID])
REFERENCES [dbo].[LearningOutcome] ([LOID])
GO
ALTER TABLE [dbo].[OutcomeSKAs] CHECK CONSTRAINT [FK_OutcomeSKAs_LOID]
GO
ALTER TABLE [dbo].[OutcomeSKAs]  WITH CHECK ADD  CONSTRAINT [FK_OutcomeSKAs_SkAID] FOREIGN KEY([SKAID])
REFERENCES [dbo].[SKA] ([SKAID])
GO
ALTER TABLE [dbo].[OutcomeSKAs] CHECK CONSTRAINT [FK_OutcomeSKAs_SkAID]
GO
ALTER TABLE [dbo].[SKA]  WITH CHECK ADD  CONSTRAINT [FK_SKA_SKAType] FOREIGN KEY([SKATypeID])
REFERENCES [dbo].[SKAType] ([SKATypeID])
GO
ALTER TABLE [dbo].[SKA] CHECK CONSTRAINT [FK_SKA_SKAType]
GO
/****** Object:  StoredProcedure [dbo].[AddSelectedUnits_SP]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddSelectedUnits_SP]
	@param1 as nvarchar(1000)
as
begin
	declare @comma as int 
	declare @unit as varchar(100)
	set @comma = 1
	
	while @comma <> 0 begin 
		set @comma = CHARINDEX(';',@param1)
		if @comma = 0 
			set @unit = @param1
		else begin
			set @unit = SUBSTRING(@param1,0,@comma)
			set @param1 = SUBSTRING(@param1,@comma + 1, len(@param1) -@comma)
		end 
		print(@unit)
	--	print(@param1)
		insert into AddedUnits
		select u.UnitID 
		from 
			unit u left outer join AddedUnits a on u.UnitID = a.UnitID 
		where u.UnitCode = @unit and a.UnitID is null 


	end 

end 

GO
/****** Object:  StoredProcedure [dbo].[CourseList_SP]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CourseList_SP] as 
select CourseID,CourseName from Course
GO
/****** Object:  StoredProcedure [dbo].[DeleteAddedUnits_SP]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteAddedUnits_SP]
as 
delete from AddedUnits
GO
/****** Object:  StoredProcedure [dbo].[JobAndSKACount_SP]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[JobAndSKACount_SP]
	@param1 as nvarchar(100), -- job
	@param2 as nvarchar(100) -- course
as

select 
	j.SKAType, count(j.SKAName) as JobSKACount, count(a.skaName) as CourseSKACount
from 
	(select * from JobSKAList where JobName = @param1 ) j left outer join 
		(select distinct SKAName,SKAType from 
		(select SKAName,SKAType
	from 
		CourseSKAList c 
	where CourseName = @param2 or CourseName is null 
	union all 
	select * from AddedUnitsSKAList)c)a on j.SKAName = a.SKAName and j.SKAType = a.SKAType
group by j.SKAType
GO
/****** Object:  StoredProcedure [dbo].[JobList_SP]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[JobList_SP] as 
select JobID,JobName from Job
GO
/****** Object:  StoredProcedure [dbo].[Strengths]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Strengths]
	@param1 as nvarchar(100), -- job
	@param2 as nvarchar(100) -- course
as

select 
	j.SKAName as Strengths, j.SKAType as Type
from 
	(select * from JobSKAList where JobName =@param1 ) j INNER JOIN 
	(select * from CourseSKAList where CourseName = @param2) c on j.SKAName = c.SKAName
GO
/****** Object:  StoredProcedure [dbo].[UnitRecommendations]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UnitRecommendations]
	@param1 as nvarchar(100) -- Weakness
as

select distinct 
	u.UnitCode as Unit
from 
	 SKA  s INNER JOIN
	 OutcomeSKAs o on o.SKAID = s.SKAID INNER JOIN
	 LearningOutcome l on l.LOID = o.LOID INNER JOIN
	 Unit u on u.UnitID = l.UnitID
	 where s.SKAName =@param1



GO
/****** Object:  StoredProcedure [dbo].[UnitsNotInDegree_SP]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UnitsNotInDegree_SP]
	@param1 as varchar(100) -- course name
as
select u.UnitCode, u.UnitCode + ' - ' + u.UnitName as UnitDesc 
from 
	Unit u left outer join  
(select distinct UnitID from (
select UnitID 
from 
	Course c inner join 
	ListofUnits l on l.CourseID = c.CourseID
where CourseName = @param1
union 
select UnitID from AddedUnits)z)a 
	on u.UnitID = a.UnitID
where a.UnitID is null 
GO
/****** Object:  StoredProcedure [dbo].[Weakness]    Script Date: 10/18/2018 12:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Weakness]
	@param1 as nvarchar(100), -- job
	@param2 as nvarchar(100) -- course
as

select 
	j.SKAName as Weaknesses, j.SKAType as Type
from 
	(select * from JobSKAList where JobName =@param1 ) j left outer join 
	(select * from CourseSKAList where CourseName = @param2) c on j.SKAName = c.SKAName and j.SKAType = c.SKAType
	WHERE c.SKAName is NULL
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UnitContributors]
	@param1 as nvarchar(100), -- Strength
	@param2 as nvarchar(100) -- Chosen course
as

select 
	 u.UnitCode, u.UnitName
from 
	 SKA  s INNER JOIN
	 OutcomeSKAs o on o.SKAID = s.SKAID INNER JOIN
	 LearningOutcome l on l.LOID = o.LOID INNER JOIN
	 Unit u on u.UnitID = l.UnitID INNER JOIN
	 ListofUnits i on i.UnitID = u.UnitID inner join
	 Course c  on c.CourseID = i.CourseID  
	 where s.SKAName =@param1 AND c.CourseName =@param2
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[NonCourseContributors]
	@param1 as nvarchar(100), -- Strength
	@param2 as nvarchar(100) -- Chosen course
as

select 
	 u.UnitCode, u.UnitName
from 
	 SKA  s INNER JOIN
	 OutcomeSKAs o on o.SKAID = s.SKAID INNER JOIN
	 LearningOutcome l on l.LOID = o.LOID INNER JOIN
	 Unit u on u.UnitID = l.UnitID INNER JOIN
	 ListofUnits i on i.UnitID = u.UnitID inner join
	 Course c  on c.CourseID = i.CourseID  
	 where s.SKAName =@param1 AND c.CourseName !=@param2
GO
ALTER DATABASE [CurriculumMapperv5] SET  READ_WRITE 
