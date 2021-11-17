CREATE TABLE [dbo].[CFAssociation]
(
	[Id] UNIQUEIDENTIFIER NOT NULL,
    [AssociationType] VARCHAR(200) NOT NULL,   
    [SequenceNumber] INT NULL, 
    [OriginNodeId] VARCHAR(200) NOT NULL,
    [OriginNodeTitle] VARCHAR(200) NOT NULL,
    [DestinationNodeId] VARCHAR(200) NOT NULL,
    [DestinationNodeTitle] VARCHAR(200) NOT NULL,
    [CFAssociationGroupingId] UNIQUEIDENTIFIER NULL,
    [LastChangeDateTime] SMALLDATETIME NOT NULL,
    [CFDocumentId] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_CFAssociation_Id] PRIMARY KEY NONCLUSTERED([Id]),
    CONSTRAINT [FK_CFAssociation_CFAssociationGroupingId] FOREIGN KEY ([CFAssociationGroupingId]) REFERENCES [CFAssociationGrouping]([Id]),
    CONSTRAINT [FK_CFAssociation_CFDocumentId] FOREIGN KEY ([CFDocumentId]) REFERENCES [CFDocument]([Id]),
    --CONSTRAINT [CHK_CFAssociation_AssociationType]
    --    CHECK ([AssociationType] IN
    --            ('isChildOf','isPeerOf','isPartOf',
    --             'exactMatchOf','precedes','isRelatedTo',
    --             'replacedBy','exemplar','hasSkillLevel')),
    
)
