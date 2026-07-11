CREATE TABLE [dbo].[DictatorStageProgress]
(
	[Id] INT NOT NULL PRIMARY KEY iDENTITY(1,1), -- Auto-incrementing primary key
	[DictatorId] UNIQUEIDENTIFIER NOT NULL,                     -- Foreign key to the Dictator table
	[AutocracyStageId] INT NOT NULL,                            -- Foreign key to the AutocracyStages table
	[ProgressPercentage] INT NOT NULL,                     -- Percentage of progress towards this stage
	[DateAchieved] DATE NOT NULL,                               -- Date when the stage was achieved
	[RowVersion] ROWVERSION NOT NULL,                           -- Row version for concurrency control
	CONSTRAINT FK_DictatorStageProgress_DictatorsProfiles FOREIGN KEY ([DictatorId])
		REFERENCES [dbo].[DictatorProfile] ([Id]) ON DELETE CASCADE,
	CONSTRAINT FK_DictatorStageProgress_AutocracyStages FOREIGN KEY ([AutocracyStageId])
		REFERENCES [dbo].[AutocracyStage] ([Id]) ON DELETE CASCADE
)
