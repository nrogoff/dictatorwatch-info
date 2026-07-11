CREATE TABLE [dbo].[DictatorEvent]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- Auto-incrementing primary key
	[DictatorId] UNIQUEIDENTIFIER NOT NULL,                      -- Foreign key to the dictator	
	[EventDate] DATE NOT NULL,                      -- Date of the event
	[EventHeadline] NVARCHAR(200) NOT NULL,          -- Headline of the event
	[EventDescription] NVARCHAR(1000) NULL,          -- Optional description of the event
	[DictatorStagesInfluenced] JSON NULL,        -- JSON array of influenced autocracy stages
	[EventImpactScore] INT NOT NULL,               -- Impact score of the event
	[EventReferenceUrls] JSON NULL,          -- JSON array of reference URLs
	[RowVersion] ROWVERSION NOT NULL,                           -- Row version for concurrency control
    CONSTRAINT FK_DictatorEvent_DictatorProfile FOREIGN KEY ([DictatorId]) 
		REFERENCES [dbo].[DictatorProfile](Id) ON DELETE CASCADE
)
