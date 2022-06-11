USE [Hitevoters]
GO

/****** Object:  Table [dbo].[Students]    Script Date: 2022/05/23 15:19:34 ******/
DROP TABLE [dbo].[Students]
GO

/****** Object:  Table [dbo].[Students]    Script Date: 2022/05/23 15:19:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Students](
	[StudentId] [nvarchar](50) NOT NULL,
	[StudentFirstName] [nvarchar](50) NULL,
	[StudentLastName] [nvarchar](50) NULL,
	[StudentEmail] [nvarchar](50) NULL,
	[StudentCell] [nvarchar](50) NULL,
	[VoterRegStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


