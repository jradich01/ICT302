USE [master]
GO
/****** Object:  Database [CurriculumMapperv5]    Script Date: 10/22/2018 9:59:12 PM ******/
CREATE DATABASE [CurriculumMapperv7]
GO
USE [CurriculumMapperv7]
GO
/****** Object:  Table [dbo].[AddedUnits]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[Job]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[JobSKA_Backup]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[JobSKAs]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[LearningOutcome]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[ListofUnits]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[OutcomeSKAs]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[RemovedUnits]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemovedUnits](
	[UnitID] [int] NOT NULL,
 CONSTRAINT [PK_RemovedUnits] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SKA]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[SKAType]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[Unit]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  Table [dbo].[ZTemp]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZTemp](
	[UnitAndLo] [nvarchar](100) NULL,
	[Concept] [nvarchar](100) NULL,
	[SKA] [nvarchar](100) NULL,
	[MatchStrength] [decimal](18, 2) NULL,
	[Rel] [decimal](18, 2) NULL,
	[Unit] [nvarchar](100) NULL,
	[LO] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[AddedUnitsSKAList]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  View [dbo].[CourseSKAList]    Script Date: 10/22/2018 9:59:12 PM ******/
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
	(select u.UnitID
from 
	unit u left outer join 
	RemovedUnits r on u.UnitID = r.UnitID
where 
	r.UnitID is null)u on l.UnitID = u.UnitID 


GO
/****** Object:  View [dbo].[JobSKAList]    Script Date: 10/22/2018 9:59:12 PM ******/
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
INSERT [dbo].[AddedUnits] ([UnitID]) VALUES (1)
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 3, CAST(3.50 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (3, 4, CAST(3.25 AS Decimal(18, 2)), CAST(3.62 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (4, 4, CAST(2.75 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (5, 4, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 1, CAST(3.75 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 2, CAST(3.62 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 3, CAST(3.75 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (25, 4, CAST(3.62 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 1, CAST(3.88 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 2, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 3, CAST(4.00 AS Decimal(18, 2)), CAST(4.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (33, 4, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 1, CAST(3.12 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 3, CAST(3.12 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (37, 4, CAST(3.12 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 1, CAST(2.50 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 2, CAST(2.38 AS Decimal(18, 2)), CAST(2.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 3, CAST(2.75 AS Decimal(18, 2)), CAST(2.88 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (46, 4, CAST(2.62 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 2, CAST(2.56 AS Decimal(18, 2)), CAST(2.22 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (71, 3, CAST(2.70 AS Decimal(18, 2)), CAST(2.82 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 1, CAST(3.60 AS Decimal(18, 2)), CAST(4.96 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 2, CAST(3.12 AS Decimal(18, 2)), CAST(3.94 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 3, CAST(2.87 AS Decimal(18, 2)), CAST(3.53 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (72, 4, CAST(3.19 AS Decimal(18, 2)), CAST(3.77 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (73, 4, CAST(2.34 AS Decimal(18, 2)), CAST(2.54 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (75, 3, CAST(2.44 AS Decimal(18, 2)), CAST(3.02 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 2, CAST(2.50 AS Decimal(18, 2)), CAST(2.72 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 3, CAST(2.41 AS Decimal(18, 2)), CAST(2.24 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (78, 4, CAST(2.26 AS Decimal(18, 2)), CAST(2.25 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 2, CAST(2.66 AS Decimal(18, 2)), CAST(2.81 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (79, 3, CAST(2.09 AS Decimal(18, 2)), CAST(2.44 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 2, CAST(2.85 AS Decimal(18, 2)), CAST(3.04 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 3, CAST(3.27 AS Decimal(18, 2)), CAST(3.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (80, 4, CAST(2.48 AS Decimal(18, 2)), CAST(2.21 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (82, 2, CAST(2.01 AS Decimal(18, 2)), CAST(2.55 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 1, CAST(2.79 AS Decimal(18, 2)), CAST(3.31 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 2, CAST(3.25 AS Decimal(18, 2)), CAST(3.75 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 3, CAST(3.64 AS Decimal(18, 2)), CAST(3.95 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (83, 4, CAST(3.21 AS Decimal(18, 2)), CAST(3.88 AS Decimal(18, 2)))
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (91, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (92, 4, CAST(2.88 AS Decimal(18, 2)), CAST(3.25 AS Decimal(18, 2)))
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
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (110, 4, CAST(3.00 AS Decimal(18, 2)), CAST(3.12 AS Decimal(18, 2)))
GO
INSERT [dbo].[JobSKAs] ([SKAID], [JobID], [SKAImportance], [SKALevel]) VALUES (111, 1, CAST(2.88 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
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
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (43, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (44, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (45, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (45, 113)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (47, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (48, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (48, 25)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (49, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (50, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (51, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (51, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (51, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (53, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (53, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (54, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (54, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (54, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (55, 119)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (56, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (58, 79)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (59, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (60, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (60, 105)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (60, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (61, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (62, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (63, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (64, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (66, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (68, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (72, 117)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 46)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (73, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 39)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 90)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (74, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (75, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (76, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 81)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 102)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (77, 103)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 2)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 4)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 12)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 23)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 34)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (78, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (80, 38)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 83)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (82, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (83, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (85, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (86, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (87, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (89, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (89, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (92, 41)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (93, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (93, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (98, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (99, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (101, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (102, 85)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 46)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 113)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (105, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 33)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (107, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (108, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (109, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (110, 83)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (111, 58)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (111, 83)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (112, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (113, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (116, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (118, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (120, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (122, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (123, 40)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (124, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (130, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (132, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (133, 46)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (133, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (133, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (133, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (135, 78)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (136, 22)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (136, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (136, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (137, 46)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (137, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (137, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (137, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (138, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (139, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (139, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (140, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (140, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (141, 87)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (141, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (142, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (145, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (146, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (147, 112)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (149, 112)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (151, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (152, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (153, 60)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (153, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (153, 112)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 40)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (156, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (157, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (158, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (159, 40)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (162, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (164, 40)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (165, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (166, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (167, 106)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (169, 35)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (169, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (169, 67)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (170, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (170, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (171, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (171, 116)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (172, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (173, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (174, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (178, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 113)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (179, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (180, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (181, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (182, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (183, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (183, 95)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (184, 71)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (186, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (187, 85)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (189, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (191, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (192, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (193, 85)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (196, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (197, 65)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (198, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (199, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (200, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (203, 88)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (204, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (204, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (204, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (204, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (205, 82)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (205, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (206, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 97)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 101)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (208, 113)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (209, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 20)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 40)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 79)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (210, 80)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (212, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (212, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (212, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (213, 94)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (214, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (214, 120)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 46)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 104)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (215, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (216, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (217, 93)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 3)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (219, 115)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (221, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 40)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (222, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (223, 118)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (224, 77)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 78)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (226, 89)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 37)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 59)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (228, 107)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 38)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (230, 61)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (232, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (234, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (234, 76)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (234, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (235, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (235, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (236, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (236, 54)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (236, 56)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (236, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (238, 72)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (238, 100)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (239, 5)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (239, 111)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (240, 69)
GO
INSERT [dbo].[OutcomeSKAs] ([LOID], [SKAID]) VALUES (242, 111)
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
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO1', N'Scientific method', N'Science', CAST(0.38 AS Decimal(18, 2)), CAST(0.96 AS Decimal(18, 2)), N'BSC100', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO1', N'Theory', N'Chemistry', CAST(0.35 AS Decimal(18, 2)), CAST(0.76 AS Decimal(18, 2)), N'BSC100', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO1', N'Science', N'Science', CAST(1.00 AS Decimal(18, 2)), CAST(0.61 AS Decimal(18, 2)), N'BSC100', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO1', N'Pseudoscience', N'Science', CAST(0.55 AS Decimal(18, 2)), CAST(0.56 AS Decimal(18, 2)), N'BSC100', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO1', N'Abductive reasoning', N'Deductive Reasoning', CAST(0.75 AS Decimal(18, 2)), CAST(0.56 AS Decimal(18, 2)), N'BSC100', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO1', N'Epistemology', N'Biology', CAST(0.48 AS Decimal(18, 2)), CAST(0.54 AS Decimal(18, 2)), N'BSC100', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO2', N'Statistics', N'Mathematics', CAST(0.52 AS Decimal(18, 2)), CAST(0.91 AS Decimal(18, 2)), N'BSC100', N'UNLO2')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO2', N'Data', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.82 AS Decimal(18, 2)), N'BSC100', N'UNLO2')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO3', N'Kara DioGuardi', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.87 AS Decimal(18, 2)), N'BSC100', N'UNLO3')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC100UNLO4', N'Ethics', N'Mathematics', CAST(0.42 AS Decimal(18, 2)), CAST(0.91 AS Decimal(18, 2)), N'BSC100', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO1', N'Scientific method', N'Science', CAST(0.38 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)), N'BSC150', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO1', N'Science', N'Science', CAST(1.00 AS Decimal(18, 2)), CAST(0.87 AS Decimal(18, 2)), N'BSC150', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO1', N'Deductive reasoning', N'Deductive Reasoning', CAST(0.90 AS Decimal(18, 2)), CAST(0.83 AS Decimal(18, 2)), N'BSC150', N'UNLO1')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO2', N'Scientific method', N'Science', CAST(0.38 AS Decimal(18, 2)), CAST(0.95 AS Decimal(18, 2)), N'BSC150', N'UNLO2')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO3', N'Epistemology', N'Biology', CAST(0.48 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)), N'BSC150', N'UNLO3')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO3', N'Scientific method', N'Science', CAST(0.38 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)), N'BSC150', N'UNLO3')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO3', N'Major', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.82 AS Decimal(18, 2)), N'BSC150', N'UNLO3')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO3', N'Philosophy', N'Philosophy and Theology', CAST(0.63 AS Decimal(18, 2)), CAST(0.75 AS Decimal(18, 2)), N'BSC150', N'UNLO3')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO4', N'Research', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.91 AS Decimal(18, 2)), N'BSC150', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO4', N'Discipline', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)), N'BSC150', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'BSC150UNLO6', N'Science', N'Science', CAST(1.00 AS Decimal(18, 2)), CAST(0.89 AS Decimal(18, 2)), N'BSC150', N'UNLO6')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT171UNLO4', N'Desktop environment', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.91 AS Decimal(18, 2)), N'ICT171', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT171UNLO4', N'Desktop metaphor', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.87 AS Decimal(18, 2)), N'ICT171', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT171UNLO4', N'Common Desktop Environment', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.85 AS Decimal(18, 2)), N'ICT171', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT291UNLO7', N'Internet Protocol', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.86 AS Decimal(18, 2)), N'ICT291', N'UNLO7')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT291UNLO8', N'Application software', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.91 AS Decimal(18, 2)), N'ICT291', N'UNLO8')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT319UNLO4', N'Problem solving', N'Complex Problem Solving', CAST(0.65 AS Decimal(18, 2)), CAST(0.93 AS Decimal(18, 2)), N'ICT319', N'UNLO4')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT380UNLO9', N'Graph', N'Geography', CAST(0.50 AS Decimal(18, 2)), CAST(0.86 AS Decimal(18, 2)), N'ICT380', N'UNLO9')
GO
INSERT [dbo].[ZTemp] ([UnitAndLo], [Concept], [SKA], [MatchStrength], [Rel], [Unit], [LO]) VALUES (N'ICT380UNLO9', N'Wax', N'No Match', CAST(0.00 AS Decimal(18, 2)), CAST(0.85 AS Decimal(18, 2)), N'ICT380', N'UNLO9')
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_UnitDesc]    Script Date: 10/22/2018 9:59:12 PM ******/
ALTER TABLE [dbo].[LearningOutcome] ADD  CONSTRAINT [UN_UnitDesc] UNIQUE NONCLUSTERED 
(
	[UnitID] ASC,
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UN_NameType]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AddSelectedUnits_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddSelectedUnits_SP]
	@param1 as nvarchar(1000),
	@param2 as nvarchar(1) -- 0 add units 1 remove units
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

		if @param2 = '1' begin 
			delete r 
			from 
				RemovedUnits r inner join 
				unit u on r.UnitID = u.UnitID
			where u.UnitCode = @unit
		
			insert into AddedUnits
			select u.UnitID 
			from 
				unit u left outer join AddedUnits a on u.UnitID = a.UnitID 
			where u.UnitCode = @unit and a.UnitID is null 
		end else begin
			delete a  
			from 
				AddedUnits a inner join 
				Unit u on a.UnitID = u.UnitID
			where u.UnitCode = @unit

			insert into RemovedUnits
			select u.UnitID
			from Unit u 
			where u.UnitCode = @unit
		end 

	end 

end 

GO
/****** Object:  StoredProcedure [dbo].[CourseList_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CourseList_SP] as 
select CourseID,CourseName from Course
GO
/****** Object:  StoredProcedure [dbo].[DeleteAddedUnits_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[DeleteAddedUnits_SP]
as 
delete from AddedUnits
delete from RemovedUnits

GO
/****** Object:  StoredProcedure [dbo].[JobAndSKACount_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[JobList_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[JobList_SP] as 
select JobID,JobName from Job
GO
/****** Object:  StoredProcedure [dbo].[NonCourseContributors]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
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
	(		select u.UnitID 
		from 
			unit u left outer join 
			(select l.UnitID 
			from 
				ListofUnits l inner join 
				Course c on l.CourseID = c.CourseID
			where 
				c.CourseName = @param2
			union
				select unitID from AddedUnits 
				)a  on u.UnitID = a.UnitID
		where a.UnitID is null  
		union 
			select UnitID from RemovedUnits)a  on l.UnitID = a.UnitID inner join 
	Unit u on a.UnitID = u.UnitID
	 where s.SKAName =@param1
GO
/****** Object:  StoredProcedure [dbo].[Strengths]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Strengths]
	@param1 as nvarchar(100), -- job
	@param2 as nvarchar(100) -- course
as

select distinct
	j.SKAName as Strengths, j.SKAType as Type
from 
	(select SKAName, SKAType from JobSKAList where JobName =@param1) j 
	INNER JOIN 
	(select SKAName, SKAType from CourseSKAList where CourseName = @param2
		union
	select SKAName, SKAType from AddedUnitsSKAList
	) c on j.SKAName = c.SKAName
GO
/****** Object:  StoredProcedure [dbo].[UnitContributors]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
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
	 (select l.UnitID 
	 from 
		ListofUnits l left outer join 
		RemovedUnits r on l.UnitID = r.UnitID inner join 
		course c on l.CourseID = c.CourseID
	where c.CourseName = @param2  and r.UnitID is null 
		union
	select unitID from AddedUnits)a  on u.UnitID = a.UnitID
	where s.SKAName =@param1
GO
/****** Object:  StoredProcedure [dbo].[UnitRecommendations]    Script Date: 10/22/2018 9:59:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UnitsInDegree_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UnitsInDegree_SP]
@param1 as varchar(50)
as
select distinct UnitCode,'Units' as UnitName 
from( 
	select UnitID 
	from 
		Course c inner join 
		ListofUnits l on c.CourseID = l.CourseID 
	where 
		CourseName = @param1
	union 
	select UnitID from AddedUnits
	)a left outer join 
	RemovedUnits r on a.UnitID = r.UnitID 	inner join 
	Unit u on a.UnitID = u.UnitID
where r.UnitID is null 
order by UnitCode
	
	

GO
/****** Object:  StoredProcedure [dbo].[UnitsNotInDegree_SP]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UnitsNotInDegree_SP]
	@param1 as varchar(100) -- course name
as
select u.UnitCode, 'Units' as UnitName, u.UnitCode + ' - ' + u.UnitName as UnitDesc 
from 
	Unit u left outer join  
	(select distinct UnitID 
	from (
		select l.UnitID 
		from 
			Course c inner join 
			ListofUnits l on l.CourseID = c.CourseID left outer join
			RemovedUnits r on l.UnitID = r.UnitID
		where CourseName = @param1 and r.UnitID is null 
		union 
		select UnitID from AddedUnits)z
	)a  on u.UnitID = a.UnitID
where a.UnitID is null 
order by u.UnitCode




GO
/****** Object:  StoredProcedure [dbo].[Weakness]    Script Date: 10/22/2018 9:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Weakness]
	@param1 as nvarchar(100), -- job
	@param2 as nvarchar(100) -- course
as

select distinct
	j.SKAName as Weaknesses, j.SKAType as Type
from 
	(select SKAName, SKAType from JobSKAList where JobName =@param1
	 ) j left outer join 
	(select SKAName,SKAType from CourseSKAList where CourseName = @param2
			union all 
	 select SKAName, SKAType from AddedUnitsSKAList
	) c on j.SKAName = c.SKAName and j.SKAType = c.SKAType
	WHERE c.SKAName is NULL
GO
USE [master]
GO
ALTER DATABASE [CurriculumMapperv7] SET  READ_WRITE 
GO
