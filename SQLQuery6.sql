USE [Hitevoters]
GO

/****** Object:  Table [dbo].[Voter]    Script Date: 2022/05/23 15:20:44 ******/
DROP TABLE [dbo].[Voter]
GO

/****** Object:  Table [dbo].[Voter]    Script Date: 2022/05/23 15:20:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Voter](
	[VoterId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [nvarchar](50) NOT NULL,
	[CandidateId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Voter] PRIMARY KEY CLUSTERED 
(
	[VoterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


