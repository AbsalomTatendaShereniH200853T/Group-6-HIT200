USE [Hitevoters]
GO

/****** Object:  Table [dbo].[BallotBox]    Script Date: 2022/05/23 15:16:22 
DROP TABLE [dbo].[BallotBox]
GO
******/
/****** Object:  Table [dbo].[BallotBox]    Script Date: 2022/05/23 15:16:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BallotBox](
	[VoteId] [nvarchar](50) NOT NULL,
	[CandidateId] [nvarchar](50) NOT NULL,
	[StudentId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BallotBox] PRIMARY KEY CLUSTERED 
(
	[VoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


