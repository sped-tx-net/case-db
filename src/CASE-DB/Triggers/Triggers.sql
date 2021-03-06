/********************************************************************************
        Triggers
********************************************************************************/

CREATE TRIGGER [dbo].[TGR_CFAssociation_Update] ON [dbo].[CFAssociation]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFAssociation]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFAssociation] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFAssociation updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFAssociationGrouping_Update] ON [dbo].[CFAssociationGrouping]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFAssociationGrouping]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFAssociationGrouping] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFAssociationGrouping updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFConcept_Update] ON [dbo].[CFConcept]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFConcept]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFConcept] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFConcept updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFDocument_Update] ON [dbo].[CFDocument]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFDocument]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFDocument] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFDocument updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFItem_Update] ON [dbo].[CFItem]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFItem]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFItem] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFItem updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFItemType_Update] ON [dbo].[CFItemType]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFItemType]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFItemType] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFItemType updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFLicense_Update] ON [dbo].[CFLicense]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFLicense]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFLicense] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFLicense updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFRubric_Update] ON [dbo].[CFRubric]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFRubric]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFRubric] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFRubric updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFRubricCriterion_Update] ON [dbo].[CFRubricCriterion]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFRubricCriterion]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFRubricCriterion] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFRubricCriterion updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFRubricCriterionLevel_Update] ON [dbo].[CFRubricCriterionLevel]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFRubricCriterionLevel]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFRubricCriterionLevel] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFRubricCriterionLevel updated...');
    END
GO

CREATE TRIGGER [dbo].[TGR_CFSubject_Update] ON [dbo].[CFSubject]
AFTER UPDATE
AS
    BEGIN
        SET NOCOUNT ON;
        UPDATE [dbo].[CFSubject]
        SET [LastChangeDateTime] = GETDATE()
        FROM [dbo].[CFSubject] AS [T]
        INNER JOIN inserted AS [I] ON [T].[Id] = [I].[Id];
        PRINT(N'Table CFSubject updated...');
    END
GO


