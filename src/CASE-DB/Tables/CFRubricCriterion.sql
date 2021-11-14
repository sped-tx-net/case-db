CREATE TABLE [dbo].[CFRubricCriterion]
(
	[Id] UNIQUEIDENTIFIER NOT NULL,
    [Category] VARCHAR(200) NULL,
    [Description] VARCHAR(200) NULL,
    [CFItemId] UNIQUEIDENTIFIER NULL,
    [Weight] FLOAT NULL,
    [Position] INT NULL,
    [RubricId] UNIQUEIDENTIFIER NULL,
    [LastChangeDateTime] SMALLDATETIME NOT NULL,    
    CONSTRAINT [PK_CFRubricCriterion_Id] PRIMARY KEY NONCLUSTERED([Id]),
    CONSTRAINT [FK_CFRubricCriterion_RubricId] FOREIGN KEY ([RubricId]) REFERENCES [CFRubric]([Id]),
    CONSTRAINT [FK_CFRubricCriterion_CFItemId] FOREIGN KEY ([CFItemId]) REFERENCES [CFItem]([Id]),
)
