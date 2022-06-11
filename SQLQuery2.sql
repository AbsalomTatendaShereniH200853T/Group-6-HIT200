USE [Hitevoters]
GO

/****** Object:  Table [dbo].[Candidates]    Script Date: 2022/05/23 15:17:14 ******/
/****** Object:  Table [dbo].[Candidates]    Script Date: 2022/05/23 15:17:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Candidates](
	[CandidateId] [nvarchar](50) NOT NULL,
	[StudentId] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Emailaddress] [nvarchar](50) NULL,
	[CandidatePassword] [nvarchar](50) NULL,
	[RegistrationStatus] [nvarchar](50) NULL,
	[DateRegistered] [date] NULL,
	[DateOfBirth] [date] NULL,
 CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


