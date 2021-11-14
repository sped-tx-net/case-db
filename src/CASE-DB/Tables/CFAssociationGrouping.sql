CREATE TABLE [dbo].[CFAssociationGrouping]
(
	[Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] VARCHAR(200) NOT NULL, 
    [Description] VARCHAR(200) NULL,
    [LastChangeDateTime] SMALLDATETIME NOT NULL,
    CONSTRAINT [PK_CFAssociationGrouping_Id] PRIMARY KEY NONCLUSTERED([Id]),
)
