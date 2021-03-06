/********************************************************************************
        Insert Procedures
********************************************************************************/

CREATE PROCEDURE [dbo].[InsertCFAssociation]
(
    @Id UNIQUEIDENTIFIER,
    @AssociationType VARCHAR(200),
    @SequenceNumber INT = NULL,
    @OriginNodeId VARCHAR(200),
    @DestinationNodeId VARCHAR(200),
    @CFAssociationGroupingId UNIQUEIDENTIFIER = NULL,
    @LastChangeDateTime DATETIME,
    @CFDocumentId UNIQUEIDENTIFIER = NULL
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFAssociation]
        (
            [Id],
            [AssociationType],
            [SequenceNumber],
            [OriginNodeId],
            [DestinationNodeId],
            [CFAssociationGroupingId],
            [LastChangeDateTime],
            [CFDocumentId]
        )
        VALUES
        (
            @Id,
            @AssociationType,
            @SequenceNumber,
            @OriginNodeId,
            @DestinationNodeId,
            @CFAssociationGroupingId,
            @LastChangeDateTime,
            @CFDocumentId
        );
        SELECT * FROM [dbo].[CFAssociation] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFAssociationGrouping]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFAssociationGrouping]
        (
            [Id],
            [Title],
            [Description],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Title,
            @Description,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFAssociationGrouping] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFConcept]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @Keywords VARCHAR(200) = NULL,
    @HierarchyCode VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFConcept]
        (
            [Id],
            [Title],
            [Keywords],
            [HierarchyCode],
            [Description],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Title,
            @Keywords,
            @HierarchyCode,
            @Description,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFConcept] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFDocument]
(
    @Id UNIQUEIDENTIFIER,
    @Creator VARCHAR(200),
    @Title VARCHAR(200),
    @LastChangeDateTime DATETIME,
    @OfficialSourceURL VARCHAR(200) = NULL,
    @Publisher VARCHAR(200) = NULL,
    @Description VARCHAR(200) = NULL,
    @Subject VARCHAR(200) = NULL,
    @SubjectId UNIQUEIDENTIFIER = NULL,
    @Language VARCHAR(200) = NULL,
    @Version VARCHAR(200) = NULL,
    @AdoptionStatus VARCHAR(200) = NULL,
    @StatusStartDate DATE = NULL,
    @StatusEndDate DATE = NULL,
    @LicenseId UNIQUEIDENTIFIER = NULL,
    @Notes VARCHAR(MAX) = NULL
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFDocument]
        (
            [Id],
            [Creator],
            [Title],
            [LastChangeDateTime],
            [OfficialSourceURL],
            [Publisher],
            [Description],
            [Subject],
            [SubjectId],
            [Language],
            [Version],
            [AdoptionStatus],
            [StatusStartDate],
            [StatusEndDate],
            [LicenseId],
            [Notes]
        )
        VALUES
        (
            @Id,
            @Creator,
            @Title,
            @LastChangeDateTime,
            @OfficialSourceURL,
            @Publisher,
            @Description,
            @Subject,
            @SubjectId,
            @Language,
            @Version,
            @AdoptionStatus,
            @StatusStartDate,
            @StatusEndDate,
            @LicenseId,
            @Notes
        );
        SELECT * FROM [dbo].[CFDocument] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFItem]
(
    @Id UNIQUEIDENTIFIER,
    @FullStatement VARCHAR(3000),
    @AlternativeLabel VARCHAR(3000) = NULL,
    @CFItemType VARCHAR(200) = NULL,
    @HumanCodingScheme VARCHAR(200) = NULL,
    @ListEnumeration INT = NULL,
    @AbbreviatedStatement VARCHAR(3000) = NULL,
    @ConceptKeywords VARCHAR(200) = NULL,
    @ConceptKeywordsId UNIQUEIDENTIFIER = NULL,
    @Notes VARCHAR(MAX) = NULL,
    @Language VARCHAR(200) = NULL,
    @EducationLevel VARCHAR(200) = NULL,
    @CFItemTypeId UNIQUEIDENTIFIER = NULL,
    @LicenseId UNIQUEIDENTIFIER = NULL,
    @StatusStartDate DATE = NULL,
    @StatusEndDate DATE = NULL,
    @LastChangeDateTime DATETIME,
    @CFDocumentId UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFItem]
        (
            [Id],
            [FullStatement],
            [AlternativeLabel],
            [CFItemType],
            [HumanCodingScheme],
            [ListEnumeration],
            [AbbreviatedStatement],
            [ConceptKeywords],
            [ConceptKeywordsId],
            [Notes],
            [Language],
            [EducationLevel],
            [CFItemTypeId],
            [LicenseId],
            [StatusStartDate],
            [StatusEndDate],
            [LastChangeDateTime],
            [CFDocumentId]
        )
        VALUES
        (
            @Id,
            @FullStatement,
            @AlternativeLabel,
            @CFItemType,
            @HumanCodingScheme,
            @ListEnumeration,
            @AbbreviatedStatement,
            @ConceptKeywords,
            @ConceptKeywordsId,
            @Notes,
            @Language,
            @EducationLevel,
            @CFItemTypeId,
            @LicenseId,
            @StatusStartDate,
            @StatusEndDate,
            @LastChangeDateTime,
            @CFDocumentId
        );
        SELECT * FROM [dbo].[CFItem] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFItemType]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @HierarchyCode VARCHAR(200),
    @Description VARCHAR(200),
    @TypeCode VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFItemType]
        (
            [Id],
            [Title],
            [HierarchyCode],
            [Description],
            [TypeCode],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Title,
            @HierarchyCode,
            @Description,
            @TypeCode,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFItemType] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFLicense]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LicenseText VARCHAR(MAX),
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFLicense]
        (
            [Id],
            [Title],
            [Description],
            [LicenseText],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Title,
            @Description,
            @LicenseText,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFLicense] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFRubric]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200) = NULL,
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFRubric]
        (
            [Id],
            [Title],
            [Description],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Title,
            @Description,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFRubric] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFRubricCriterion]
(
    @Id UNIQUEIDENTIFIER,
    @Category VARCHAR(200) = NULL,
    @Description VARCHAR(200) = NULL,
    @CFItemId UNIQUEIDENTIFIER = NULL,
    @Weight FLOAT = NULL,
    @Position INT = NULL,
    @RubricId UNIQUEIDENTIFIER = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFRubricCriterion]
        (
            [Id],
            [Category],
            [Description],
            [CFItemId],
            [Weight],
            [Position],
            [RubricId],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Category,
            @Description,
            @CFItemId,
            @Weight,
            @Position,
            @RubricId,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFRubricCriterion] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFRubricCriterionLevel]
(
    @Id UNIQUEIDENTIFIER,
    @Description VARCHAR(200) = NULL,
    @Quality VARCHAR(200) = NULL,
    @Score FLOAT = NULL,
    @Feedback VARCHAR(200) = NULL,
    @Position INT = NULL,
    @LastChangeDateTime DATETIME,
    @RubricCriterionId UNIQUEIDENTIFIER = NULL
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFRubricCriterionLevel]
        (
            [Id],
            [Description],
            [Quality],
            [Score],
            [Feedback],
            [Position],
            [LastChangeDateTime],
            [RubricCriterionId]
        )
        VALUES
        (
            @Id,
            @Description,
            @Quality,
            @Score,
            @Feedback,
            @Position,
            @LastChangeDateTime,
            @RubricCriterionId
        );
        SELECT * FROM [dbo].[CFRubricCriterionLevel] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[InsertCFSubject]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @HierarchyCode VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        INSERT INTO [dbo].[CFSubject]
        (
            [Id],
            [Title],
            [HierarchyCode],
            [Description],
            [LastChangeDateTime]
        )
        VALUES
        (
            @Id,
            @Title,
            @HierarchyCode,
            @Description,
            @LastChangeDateTime
        );
        SELECT * FROM [dbo].[CFSubject] WHERE [Id] = @Id;
    END
GO
/********************************************************************************
        Update Procedures
********************************************************************************/

CREATE PROCEDURE [dbo].[UpdateCFAssociation]
(
    @Id UNIQUEIDENTIFIER,
    @AssociationType VARCHAR(200),
    @SequenceNumber INT = NULL,
    @OriginNodeId VARCHAR(200),
    @DestinationNodeId VARCHAR(200),
    @CFAssociationGroupingId UNIQUEIDENTIFIER = NULL,
    @LastChangeDateTime DATETIME,
    @CFDocumentId UNIQUEIDENTIFIER = NULL
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @SequenceNumber IS NULL
            BEGIN
                SET @SequenceNumber = (SELECT [SequenceNumber] FROM [dbo].[CFAssociation] WHERE @Id = [Id]);
            END
        IF @CFAssociationGroupingId IS NULL
            BEGIN
                SET @CFAssociationGroupingId = (SELECT [CFAssociationGroupingId] FROM [dbo].[CFAssociation] WHERE @Id = [Id]);
            END
        IF @CFDocumentId IS NULL
            BEGIN
                SET @CFDocumentId = (SELECT [CFDocumentId] FROM [dbo].[CFAssociation] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFAssociation]
        SET [AssociationType] = @AssociationType,
        [SequenceNumber] = @SequenceNumber,
        [OriginNodeId] = @OriginNodeId,
        [DestinationNodeId] = @DestinationNodeId,
        [CFAssociationGroupingId] = @CFAssociationGroupingId,
        [LastChangeDateTime] = @LastChangeDateTime,
        [CFDocumentId] = @CFDocumentId
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFAssociation] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFAssociationGrouping]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFAssociationGrouping] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFAssociationGrouping]
        SET [Title] = @Title,
        [Description] = @Description,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFAssociationGrouping] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFConcept]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @Keywords VARCHAR(200) = NULL,
    @HierarchyCode VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Keywords IS NULL
            BEGIN
                SET @Keywords = (SELECT [Keywords] FROM [dbo].[CFConcept] WHERE @Id = [Id]);
            END
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFConcept] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFConcept]
        SET [Title] = @Title,
        [Keywords] = @Keywords,
        [HierarchyCode] = @HierarchyCode,
        [Description] = @Description,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFConcept] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFDocument]
(
    @Id UNIQUEIDENTIFIER,
    @Creator VARCHAR(200),
    @Title VARCHAR(200),
    @LastChangeDateTime DATETIME,
    @OfficialSourceURL VARCHAR(200) = NULL,
    @Publisher VARCHAR(200) = NULL,
    @Description VARCHAR(200) = NULL,
    @Subject VARCHAR(200) = NULL,
    @SubjectId UNIQUEIDENTIFIER = NULL,
    @Language VARCHAR(200) = NULL,
    @Version VARCHAR(200) = NULL,
    @AdoptionStatus VARCHAR(200) = NULL,
    @StatusStartDate DATE = NULL,
    @StatusEndDate DATE = NULL,
    @LicenseId UNIQUEIDENTIFIER = NULL,
    @Notes VARCHAR(MAX) = NULL
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @OfficialSourceURL IS NULL
            BEGIN
                SET @OfficialSourceURL = (SELECT [OfficialSourceURL] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @Publisher IS NULL
            BEGIN
                SET @Publisher = (SELECT [Publisher] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @Subject IS NULL
            BEGIN
                SET @Subject = (SELECT [Subject] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @SubjectId IS NULL
            BEGIN
                SET @SubjectId = (SELECT [SubjectId] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @Language IS NULL
            BEGIN
                SET @Language = (SELECT [Language] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @Version IS NULL
            BEGIN
                SET @Version = (SELECT [Version] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @AdoptionStatus IS NULL
            BEGIN
                SET @AdoptionStatus = (SELECT [AdoptionStatus] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @StatusStartDate IS NULL
            BEGIN
                SET @StatusStartDate = (SELECT [StatusStartDate] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @StatusEndDate IS NULL
            BEGIN
                SET @StatusEndDate = (SELECT [StatusEndDate] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @LicenseId IS NULL
            BEGIN
                SET @LicenseId = (SELECT [LicenseId] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        IF @Notes IS NULL
            BEGIN
                SET @Notes = (SELECT [Notes] FROM [dbo].[CFDocument] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFDocument]
        SET [Creator] = @Creator,
        [Title] = @Title,
        [LastChangeDateTime] = @LastChangeDateTime,
        [OfficialSourceURL] = @OfficialSourceURL,
        [Publisher] = @Publisher,
        [Description] = @Description,
        [Subject] = @Subject,
        [SubjectId] = @SubjectId,
        [Language] = @Language,
        [Version] = @Version,
        [AdoptionStatus] = @AdoptionStatus,
        [StatusStartDate] = @StatusStartDate,
        [StatusEndDate] = @StatusEndDate,
        [LicenseId] = @LicenseId,
        [Notes] = @Notes
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFDocument] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFItem]
(
    @Id UNIQUEIDENTIFIER,
    @FullStatement VARCHAR(3000),
    @AlternativeLabel VARCHAR(3000) = NULL,
    @CFItemType VARCHAR(200) = NULL,
    @HumanCodingScheme VARCHAR(200) = NULL,
    @ListEnumeration INT = NULL,
    @AbbreviatedStatement VARCHAR(3000) = NULL,
    @ConceptKeywords VARCHAR(200) = NULL,
    @ConceptKeywordsId UNIQUEIDENTIFIER = NULL,
    @Notes VARCHAR(MAX) = NULL,
    @Language VARCHAR(200) = NULL,
    @EducationLevel VARCHAR(200) = NULL,
    @CFItemTypeId UNIQUEIDENTIFIER = NULL,
    @LicenseId UNIQUEIDENTIFIER = NULL,
    @StatusStartDate DATE = NULL,
    @StatusEndDate DATE = NULL,
    @LastChangeDateTime DATETIME,
    @CFDocumentId UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @AlternativeLabel IS NULL
            BEGIN
                SET @AlternativeLabel = (SELECT [AlternativeLabel] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @CFItemType IS NULL
            BEGIN
                SET @CFItemType = (SELECT [CFItemType] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @HumanCodingScheme IS NULL
            BEGIN
                SET @HumanCodingScheme = (SELECT [HumanCodingScheme] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @ListEnumeration IS NULL
            BEGIN
                SET @ListEnumeration = (SELECT [ListEnumeration] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @AbbreviatedStatement IS NULL
            BEGIN
                SET @AbbreviatedStatement = (SELECT [AbbreviatedStatement] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @ConceptKeywords IS NULL
            BEGIN
                SET @ConceptKeywords = (SELECT [ConceptKeywords] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @ConceptKeywordsId IS NULL
            BEGIN
                SET @ConceptKeywordsId = (SELECT [ConceptKeywordsId] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @Notes IS NULL
            BEGIN
                SET @Notes = (SELECT [Notes] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @Language IS NULL
            BEGIN
                SET @Language = (SELECT [Language] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @EducationLevel IS NULL
            BEGIN
                SET @EducationLevel = (SELECT [EducationLevel] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @CFItemTypeId IS NULL
            BEGIN
                SET @CFItemTypeId = (SELECT [CFItemTypeId] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @LicenseId IS NULL
            BEGIN
                SET @LicenseId = (SELECT [LicenseId] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @StatusStartDate IS NULL
            BEGIN
                SET @StatusStartDate = (SELECT [StatusStartDate] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        IF @StatusEndDate IS NULL
            BEGIN
                SET @StatusEndDate = (SELECT [StatusEndDate] FROM [dbo].[CFItem] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFItem]
        SET [FullStatement] = @FullStatement,
        [AlternativeLabel] = @AlternativeLabel,
        [CFItemType] = @CFItemType,
        [HumanCodingScheme] = @HumanCodingScheme,
        [ListEnumeration] = @ListEnumeration,
        [AbbreviatedStatement] = @AbbreviatedStatement,
        [ConceptKeywords] = @ConceptKeywords,
        [ConceptKeywordsId] = @ConceptKeywordsId,
        [Notes] = @Notes,
        [Language] = @Language,
        [EducationLevel] = @EducationLevel,
        [CFItemTypeId] = @CFItemTypeId,
        [LicenseId] = @LicenseId,
        [StatusStartDate] = @StatusStartDate,
        [StatusEndDate] = @StatusEndDate,
        [LastChangeDateTime] = @LastChangeDateTime,
        [CFDocumentId] = @CFDocumentId
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFItem] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFItemType]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @HierarchyCode VARCHAR(200),
    @Description VARCHAR(200),
    @TypeCode VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @TypeCode IS NULL
            BEGIN
                SET @TypeCode = (SELECT [TypeCode] FROM [dbo].[CFItemType] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFItemType]
        SET [Title] = @Title,
        [HierarchyCode] = @HierarchyCode,
        [Description] = @Description,
        [TypeCode] = @TypeCode,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFItemType] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFLicense]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LicenseText VARCHAR(MAX),
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFLicense] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFLicense]
        SET [Title] = @Title,
        [Description] = @Description,
        [LicenseText] = @LicenseText,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFLicense] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFRubric]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200) = NULL,
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Title IS NULL
            BEGIN
                SET @Title = (SELECT [Title] FROM [dbo].[CFRubric] WHERE @Id = [Id]);
            END
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFRubric] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFRubric]
        SET [Title] = @Title,
        [Description] = @Description,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFRubric] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFRubricCriterion]
(
    @Id UNIQUEIDENTIFIER,
    @Category VARCHAR(200) = NULL,
    @Description VARCHAR(200) = NULL,
    @CFItemId UNIQUEIDENTIFIER = NULL,
    @Weight FLOAT = NULL,
    @Position INT = NULL,
    @RubricId UNIQUEIDENTIFIER = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Category IS NULL
            BEGIN
                SET @Category = (SELECT [Category] FROM [dbo].[CFRubricCriterion] WHERE @Id = [Id]);
            END
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFRubricCriterion] WHERE @Id = [Id]);
            END
        IF @CFItemId IS NULL
            BEGIN
                SET @CFItemId = (SELECT [CFItemId] FROM [dbo].[CFRubricCriterion] WHERE @Id = [Id]);
            END
        IF @Weight IS NULL
            BEGIN
                SET @Weight = (SELECT [Weight] FROM [dbo].[CFRubricCriterion] WHERE @Id = [Id]);
            END
        IF @Position IS NULL
            BEGIN
                SET @Position = (SELECT [Position] FROM [dbo].[CFRubricCriterion] WHERE @Id = [Id]);
            END
        IF @RubricId IS NULL
            BEGIN
                SET @RubricId = (SELECT [RubricId] FROM [dbo].[CFRubricCriterion] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFRubricCriterion]
        SET [Category] = @Category,
        [Description] = @Description,
        [CFItemId] = @CFItemId,
        [Weight] = @Weight,
        [Position] = @Position,
        [RubricId] = @RubricId,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFRubricCriterion] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFRubricCriterionLevel]
(
    @Id UNIQUEIDENTIFIER,
    @Description VARCHAR(200) = NULL,
    @Quality VARCHAR(200) = NULL,
    @Score FLOAT = NULL,
    @Feedback VARCHAR(200) = NULL,
    @Position INT = NULL,
    @LastChangeDateTime DATETIME,
    @RubricCriterionId UNIQUEIDENTIFIER = NULL
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFRubricCriterionLevel] WHERE @Id = [Id]);
            END
        IF @Quality IS NULL
            BEGIN
                SET @Quality = (SELECT [Quality] FROM [dbo].[CFRubricCriterionLevel] WHERE @Id = [Id]);
            END
        IF @Score IS NULL
            BEGIN
                SET @Score = (SELECT [Score] FROM [dbo].[CFRubricCriterionLevel] WHERE @Id = [Id]);
            END
        IF @Feedback IS NULL
            BEGIN
                SET @Feedback = (SELECT [Feedback] FROM [dbo].[CFRubricCriterionLevel] WHERE @Id = [Id]);
            END
        IF @Position IS NULL
            BEGIN
                SET @Position = (SELECT [Position] FROM [dbo].[CFRubricCriterionLevel] WHERE @Id = [Id]);
            END
        IF @RubricCriterionId IS NULL
            BEGIN
                SET @RubricCriterionId = (SELECT [RubricCriterionId] FROM [dbo].[CFRubricCriterionLevel] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFRubricCriterionLevel]
        SET [Description] = @Description,
        [Quality] = @Quality,
        [Score] = @Score,
        [Feedback] = @Feedback,
        [Position] = @Position,
        [LastChangeDateTime] = @LastChangeDateTime,
        [RubricCriterionId] = @RubricCriterionId
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFRubricCriterionLevel] WHERE [Id] = @Id;
    END
GO
CREATE PROCEDURE [dbo].[UpdateCFSubject]
(
    @Id UNIQUEIDENTIFIER,
    @Title VARCHAR(200),
    @HierarchyCode VARCHAR(200),
    @Description VARCHAR(200) = NULL,
    @LastChangeDateTime DATETIME
)
AS
    BEGIN
        SET NOCOUNT ON;
        IF @Description IS NULL
            BEGIN
                SET @Description = (SELECT [Description] FROM [dbo].[CFSubject] WHERE @Id = [Id]);
            END
        UPDATE [dbo].[CFSubject]
        SET [Title] = @Title,
        [HierarchyCode] = @HierarchyCode,
        [Description] = @Description,
        [LastChangeDateTime] = @LastChangeDateTime
        WHERE [Id] = @Id;
        SELECT * FROM [dbo].[CFSubject] WHERE [Id] = @Id;
    END
GO
/********************************************************************************
        Delete Procedures
********************************************************************************/

CREATE PROCEDURE [dbo].[DeleteCFAssociation]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFAssociation] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFAssociationGrouping]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFAssociationGrouping] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFConcept]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFConcept] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFDocument]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFDocument] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFItem]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFItem] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFItemType]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFItemType] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFLicense]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFLicense] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFRubric]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFRubric] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFRubricCriterion]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFRubricCriterion] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFRubricCriterionLevel]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFRubricCriterionLevel] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO
CREATE PROCEDURE [dbo].[DeleteCFSubject]
(
    @Id UNIQUEIDENTIFIER
)
AS
    BEGIN
        SET NOCOUNT ON;
        DELETE FROM [dbo].[CFSubject] WHERE [Id] = @Id;
        RETURN @@ROWCOUNT;
    END
GO

