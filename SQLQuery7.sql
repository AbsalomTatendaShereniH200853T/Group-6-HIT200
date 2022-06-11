USE [Hitevoters]
GO

/****** Object:  Table [dbo].[newvoters]    Script Date: 2022/05/23 15:18:59 ******/
DROP TABLE [dbo].[newvoters]
GO

/****** Object:  Table [dbo].[newvoters]    Script Date: 2022/05/23 15:18:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[newvoters](
	[voterid] [int] NOT NULL,
	[studentid] [nvarchar](50) NOT NULL,
	[candidateid] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL
) ON [PRIMARY]
GO


