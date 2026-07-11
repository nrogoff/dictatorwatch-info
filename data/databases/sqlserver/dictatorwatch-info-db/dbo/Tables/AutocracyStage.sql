CREATE TABLE [dbo].[AutocracyStage]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- Auto-incrementing primary key
	[Title] NVARCHAR(100) NOT NULL,              -- Title of the autocracy stage
	[Description] NVARCHAR(255) NULL,              -- Optional description of the autocracy stage
	[AutocracyOrder] INT NOT NULL,                          -- Expected Order of the autocracy stage
	[RowVersion] ROWVERSION NOT NULL                           -- Row version for concurrency control
)
