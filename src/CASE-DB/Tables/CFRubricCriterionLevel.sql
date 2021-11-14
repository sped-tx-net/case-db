CREATE TABLE [dbo].[CFRubricCriterionLevel]
(
	[Id] UNIQUEIDENTIFIER NOT NULL,
    [Description] VARCHAR(200) NULL,
    [Quality] VARCHAR(200) NULL,
    [Score] FLOAT NULL,
    [Feedback] VARCHAR(200) NULL,
    [Position] INT NULL,
    [LastChangeDateTime] SMALLDATETIME NOT NULL,
    [RubricCriterionId] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_CFRubricCriterionLevel_Id] PRIMARY KEY NONCLUSTERED([Id]),
    CONSTRAINT [FK_CFRubricCriterionLevel_RubricCriterionId] FOREIGN KEY ([RubricCriterionId]) REFERENCES [CFRubricCriterion]([Id]),
)
