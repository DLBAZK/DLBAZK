USE [batj2005]
GO

CREATE TABLE [dbo].[VsZkRank](
	[ID] [int] NULL,
	[LowScore] [varchar](10) NOT NULL,
	[HighScore] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
insert into VsZkRank values(101,'90','100')
insert into VsZkRank values(102,'60','90')
insert into VsZkRank values(103,'0','60')
GO

select * from VsZkRank
